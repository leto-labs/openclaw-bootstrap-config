# Cloud Storage JSON API - Common Patterns

## Upload Objects

### Simple Upload (small files, no metadata)

For objects up to ~5 MiB. The entire object is sent in one HTTP request.

```typescript
// @google-cloud/storage
await storage.bucket('my-bucket').upload('./small-file.txt', {
  destination: 'uploads/small-file.txt',
});
```

```bash
# curl (JSON API media upload)
curl -X POST --data-binary @small-file.txt \
  -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  -H "Content-Type: text/plain" \
  "https://storage.googleapis.com/upload/storage/v1/b/my-bucket/o?uploadType=media&name=uploads/small-file.txt"
```

### Multipart Upload (object data + metadata in one request)

Send both object data and metadata (content-type, custom metadata, ACLs) in a single `multipart/related` request. Recommended for small files where you also need to set metadata.

```bash
# Create a multipart/related payload
cat > /tmp/upload.multipart <<'EOF'
--boundary_string
Content-Type: application/json; charset=UTF-8

{"name":"uploads/doc.txt","metadata":{"category":"reports"}}

--boundary_string
Content-Type: text/plain

This is the file content.
--boundary_string--
EOF

curl -X POST --data-binary @/tmp/upload.multipart \
  -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  -H "Content-Type: multipart/related; boundary=boundary_string" \
  "https://storage.googleapis.com/upload/storage/v1/b/my-bucket/o?uploadType=multipart"
```

### Resumable Upload (large files, unreliable networks)

Recommended for files over 5 MiB or on unreliable connections. Can be resumed from the last byte received. Sessions expire after **7 days**.

```typescript
// @google-cloud/storage -- resumable is the default for files > 5 MiB
await storage.bucket('my-bucket').upload('./large-video.mp4', {
  destination: 'videos/large-video.mp4',
  resumable: true,
  metadata: {
    contentType: 'video/mp4',
    metadata: { source: 'camera-upload' },
  },
});
```

```bash
# Step 1: Initiate resumable upload, get session URI
SESSION_URI=$(curl -s -i -X POST \
  -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  -H "Content-Type: application/json" \
  -H "X-Upload-Content-Type: video/mp4" \
  -d '{"name":"videos/large-video.mp4"}' \
  "https://storage.googleapis.com/upload/storage/v1/b/my-bucket/o?uploadType=resumable" \
  | grep -i 'location:' | tr -d '\r' | cut -d' ' -f2)

# Step 2: Upload the file to the session URI
curl -X PUT --data-binary @large-video.mp4 \
  -H "Content-Type: video/mp4" \
  "$SESSION_URI"
```

### XML API Multipart Upload (S3-compatible, very large files)

The XML API supports splitting a file into up to **10,000 parts** (5 MiB to 5 GiB each), uploading in parallel. Best for multi-GiB files.

```bash
# The gcloud CLI handles parallel composite uploads automatically:
gcloud storage cp ./huge-dataset.tar.gz gs://my-bucket/datasets/huge-dataset.tar.gz
```

## Download Objects

### Simple Download

```typescript
// @google-cloud/storage
await storage.bucket('my-bucket')
  .file('path/to/object.txt')
  .download({ destination: '/tmp/downloaded.txt' });
```

```bash
# gcloud CLI
gcloud storage cp gs://my-bucket/path/to/object.txt /tmp/downloaded.txt

# curl (JSON API -- note alt=media to get object data)
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://storage.googleapis.com/storage/v1/b/my-bucket/o/path%2Fto%2Fobject.txt?alt=media" \
  -o /tmp/downloaded.txt
```

### Stream into Memory

```typescript
const [contents] = await storage.bucket('my-bucket')
  .file('config.json')
  .download();
const config = JSON.parse(contents.toString('utf-8'));
```

```python
from google.cloud import storage
client = storage.Client()
blob = client.bucket('my-bucket').blob('config.json')
contents = blob.download_as_text()
```

## List Objects with Prefix Filtering

GCS is a flat namespace (unless HNS is enabled). Use `prefix` and `delimiter` to simulate directory listing.

```typescript
// List "direct children" under a prefix
const [files] = await storage.bucket('my-bucket').getFiles({
  prefix: 'images/photos/',
  delimiter: '/',
});
files.forEach(file => console.log(file.name));
```

```bash
# gcloud
gcloud storage ls gs://my-bucket/images/photos/

# curl (JSON API)
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://storage.googleapis.com/storage/v1/b/my-bucket/o?prefix=images/photos/&delimiter=/"
```

### Pagination for Large Listings

```typescript
let pageToken: string | undefined;
const allFiles: string[] = [];
do {
  const [files, , apiResponse] = await storage.bucket('my-bucket').getFiles({
    prefix: 'logs/',
    maxResults: 1000,
    pageToken,
  });
  allFiles.push(...files.map(f => f.name));
  pageToken = apiResponse?.nextPageToken;
} while (pageToken);
```

## Signed URLs

Generate a URL that provides time-limited access to a specific object without requiring caller credentials.

### Signed URL for Download (Read)

```typescript
const [url] = await storage.bucket('my-bucket')
  .file('reports/q4-summary.pdf')
  .getSignedUrl({
    version: 'v4',
    action: 'read',
    expires: Date.now() + 60 * 60 * 1000, // 1 hour
  });
console.log('Download URL:', url);
```

### Signed URL for Upload (Write)

```typescript
const [url] = await storage.bucket('my-bucket')
  .file('uploads/user-photo.jpg')
  .getSignedUrl({
    version: 'v4',
    action: 'write',
    expires: Date.now() + 15 * 60 * 1000, // 15 minutes
    contentType: 'image/jpeg',
  });
// Client uploads with: PUT <url> -H "Content-Type: image/jpeg" --data-binary @photo.jpg
```

```bash
# gcloud CLI
gcloud storage sign-url gs://my-bucket/reports/q4-summary.pdf --duration=1h
```

## Lifecycle Management

Automatically transition storage classes, delete old objects, or clean up incomplete uploads.

```typescript
await storage.bucket('my-bucket').setMetadata({
  lifecycle: {
    rule: [
      {
        action: { type: 'SetStorageClass', storageClass: 'NEARLINE' },
        condition: { age: 30 },  // Move to Nearline after 30 days
      },
      {
        action: { type: 'SetStorageClass', storageClass: 'COLDLINE' },
        condition: { age: 90 },  // Move to Coldline after 90 days
      },
      {
        action: { type: 'Delete' },
        condition: { age: 365 },  // Delete after 1 year
      },
      {
        action: { type: 'AbortIncompleteMultipartUpload' },
        condition: { age: 7 },  // Clean up abandoned uploads
      },
    ],
  },
});
```

```bash
# gcloud -- set lifecycle via JSON file
cat > /tmp/lifecycle.json << 'EOF'
{
  "rule": [
    {"action": {"type": "Delete"}, "condition": {"age": 365}},
    {"action": {"type": "SetStorageClass", "storageClass": "NEARLINE"}, "condition": {"age": 30}}
  ]
}
EOF
gcloud storage buckets update gs://my-bucket --lifecycle-file=/tmp/lifecycle.json
```

## Bucket Notifications (Pub/Sub)

Trigger events when objects are created, deleted, or archived. Max 100 notification configs per bucket; max 10 per specific event type.

```bash
# Create a Pub/Sub notification for object creation
gcloud storage buckets notifications create \
  gs://my-bucket \
  --topic=projects/my-project/topics/gcs-events \
  --event-types=OBJECT_FINALIZE

# List notifications
gcloud storage buckets notifications list gs://my-bucket
```

```typescript
// Process notifications in a Cloud Function
export const processGcsEvent = (event: any) => {
  const { bucket, name, metageneration, timeCreated } = event;
  console.log(`New object: gs://${bucket}/${name} created at ${timeCreated}`);
};
```

## Compose Objects

Combine up to **32** source objects into a single destination object without re-uploading data. Chain composes for more.

```typescript
const bucket = storage.bucket('my-bucket');
await bucket.combine(
  ['part-001.csv', 'part-002.csv', 'part-003.csv'],
  'combined/full-dataset.csv'
);
```

```bash
gcloud storage objects compose \
  gs://my-bucket/part-001.csv \
  gs://my-bucket/part-002.csv \
  gs://my-bucket/part-003.csv \
  gs://my-bucket/combined/full-dataset.csv
```

## Copy and Move Objects

### Copy (within or across buckets)

```typescript
await storage.bucket('source-bucket')
  .file('original.txt')
  .copy(storage.bucket('dest-bucket').file('copy.txt'));
```

```bash
gcloud storage cp gs://source-bucket/original.txt gs://dest-bucket/copy.txt
```

### Move / Rename (copy + delete)

GCS has no native rename. A "move" is copy + delete.

```typescript
await storage.bucket('my-bucket')
  .file('old-name.txt')
  .move('new-name.txt');
```

```bash
gcloud storage mv gs://my-bucket/old-name.txt gs://my-bucket/new-name.txt
```

For **HNS buckets**, folder renames are atomic and much faster than object-by-object copy+delete.

## ACLs vs Uniform Bucket-Level Access (IAM)

Google recommends **Uniform bucket-level access** for most use cases (disables per-object ACLs, uses only IAM).

```bash
# Enable uniform bucket-level access
gcloud storage buckets update gs://my-bucket --uniform-bucket-level-access

# Grant a role at the bucket level
gcloud storage buckets add-iam-policy-binding gs://my-bucket \
  --member="serviceAccount:my-sa@my-project.iam.gserviceaccount.com" \
  --role="roles/storage.objectViewer"
```

If per-object ACLs are needed (rare):

```typescript
await storage.bucket('my-bucket')
  .file('shared-doc.pdf')
  .acl.add({ entity: 'user-someone@example.com', role: 'READER' });
```

## Preconditions (Avoiding Race Conditions)

Use generation-match preconditions to prevent accidental overwrites:

```typescript
// Only upload if the object does not already exist
await storage.bucket('my-bucket').upload('./file.txt', {
  destination: 'unique-file.txt',
  preconditionOpts: { ifGenerationMatch: 0 },
});

// Only update if the object hasn't changed since we read it
const [metadata] = await storage.bucket('my-bucket').file('data.json').getMetadata();
await storage.bucket('my-bucket').file('data.json').save(newContent, {
  preconditionOpts: { ifGenerationMatch: metadata.generation },
});
```

## Error Handling

```typescript
try {
  const [file] = await storage.bucket('my-bucket').file('data.json').download();
} catch (err: any) {
  if (err.code === 404) {
    // Object not found
  } else if (err.code === 403) {
    // Permission denied -- check IAM roles, scopes, or bucket policy
  } else if (err.code === 429) {
    // Rate limited -- implement exponential backoff
  } else if (err.code === 412) {
    // Precondition failed -- generation/metageneration mismatch
  }
  console.error(err.message);
}
```

## Batch Requests

For multiple independent operations, use batch requests to reduce round trips:

```typescript
// googleapis supports batching via gaxios or manual HTTP batch
// See references/googleapis-client.md for batch patterns
```

JSON API batch requests are limited to **100 calls** per batch, with a total payload under **10 MiB**.
