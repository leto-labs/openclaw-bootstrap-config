# Google Drive API - Common Patterns

## Upload Files

### Simple Upload (files up to 5 MB, no metadata)

Use `uploadType=media` when the file is small and you do not need to set metadata (name, parent folder, etc.) in the same request.

```typescript
import fs from 'node:fs';
import { google } from 'googleapis';

const drive = google.drive({ version: 'v3', auth });

const res = await drive.files.create({
  requestBody: { name: 'photo.jpg' },
  media: {
    mimeType: 'image/jpeg',
    body: fs.createReadStream('photo.jpg'),
  },
  fields: 'id',
});
console.log('File ID:', res.data.id);
```

### Multipart Upload (files up to 5 MB, with metadata)

Sends metadata and file content in a single request. The `googleapis` Node.js client uses multipart by default when you supply both `requestBody` and `media`.

```typescript
const res = await drive.files.create({
  requestBody: {
    name: 'report.pdf',
    parents: ['<FOLDER_ID>'],
    description: 'Q4 sales report',
  },
  media: {
    mimeType: 'application/pdf',
    body: fs.createReadStream('report.pdf'),
  },
  fields: 'id, name, webViewLink',
});
```

### Resumable Upload (files > 5 MB or unreliable network)

Resumable uploads allow resumption after a network failure. Recommended for any file over 5 MB. The Node.js client library handles resumable uploads automatically for large files.

```typescript
const res = await drive.files.create({
  requestBody: {
    name: 'large-video.mp4',
    parents: ['<FOLDER_ID>'],
  },
  media: {
    mimeType: 'video/mp4',
    body: fs.createReadStream('large-video.mp4'),
  },
  fields: 'id, name, size',
});
```

#### Manual Resumable Upload (HTTP)

```
POST https://www.googleapis.com/upload/drive/v3/files?uploadType=resumable
Content-Type: application/json; charset=UTF-8
X-Upload-Content-Type: video/mp4
X-Upload-Content-Length: 200000000

{"name": "large-video.mp4", "parents": ["<FOLDER_ID>"]}
```

The response includes a `Location` header with the resumable session URI (valid for one week). Then PUT the content to that URI, optionally in 256 KB-aligned chunks.

### Upload with Format Conversion (Import)

Upload a file and convert it to a Google Workspace format by setting the target `mimeType` in metadata:

```typescript
// Convert CSV to Google Sheets
const res = await drive.files.create({
  requestBody: {
    name: 'My Spreadsheet',
    mimeType: 'application/vnd.google-apps.spreadsheet',  // target format
  },
  media: {
    mimeType: 'text/csv',
    body: fs.createReadStream('data.csv'),
  },
  fields: 'id, webViewLink',
});
```

Common import conversions:

| Source | Target MIME Type |
|--------|-----------------|
| DOCX, RTF, TXT, HTML | `application/vnd.google-apps.document` |
| XLSX, CSV, TSV | `application/vnd.google-apps.spreadsheet` |
| PPTX, ODP | `application/vnd.google-apps.presentation` |
| JPEG, PNG, GIF, PDF (OCR) | `application/vnd.google-apps.document` |

## Download Files

### Download Binary Files

```typescript
const fileId = '<FILE_ID>';
const res = await drive.files.get(
  { fileId, alt: 'media' },
  { responseType: 'stream' },
);

const dest = fs.createWriteStream('downloaded-file.jpg');
res.data.pipe(dest);
await new Promise((resolve, reject) => {
  dest.on('finish', resolve);
  dest.on('error', reject);
});
```

### Export Google Workspace Documents

Google Docs, Sheets, and Slides cannot be downloaded directly -- use `files.export` to convert them:

```typescript
// Export a Google Doc as PDF
const res = await drive.files.export(
  { fileId: '<DOC_ID>', mimeType: 'application/pdf' },
  { responseType: 'stream' },
);

const dest = fs.createWriteStream('document.pdf');
res.data.pipe(dest);
```

Common export MIME types:

| Google Format | Export As | MIME Type |
|--------------|-----------|-----------|
| Docs | PDF | `application/pdf` |
| Docs | DOCX | `application/vnd.openxmlformats-officedocument.wordprocessingml.document` |
| Docs | Plain text | `text/plain` |
| Sheets | XLSX | `application/vnd.openxmlformats-officedocument.spreadsheetml.sheet` |
| Sheets | CSV | `text/csv` |
| Slides | PPTX | `application/vnd.openxmlformats-officedocument.presentationml.presentation` |
| Slides | PDF | `application/pdf` |

## Search for Files

The `files.list` method supports a `q` parameter with a query language for filtering.

### Query Syntax Examples

```typescript
// Search by name
const res = await drive.files.list({
  q: "name = 'Budget 2024'",
  fields: 'files(id, name, mimeType)',
});

// Search by MIME type (find all spreadsheets)
const res = await drive.files.list({
  q: "mimeType = 'application/vnd.google-apps.spreadsheet'",
  fields: 'files(id, name)',
});

// Files in a specific folder
const res = await drive.files.list({
  q: "'<FOLDER_ID>' in parents",
  fields: 'files(id, name, mimeType)',
});

// Full-text search across file content
const res = await drive.files.list({
  q: "fullText contains 'quarterly revenue'",
  fields: 'files(id, name)',
});

// Combine conditions
const res = await drive.files.list({
  q: "mimeType = 'application/pdf' and name contains 'invoice' and trashed = false",
  fields: 'files(id, name, modifiedTime)',
  orderBy: 'modifiedTime desc',
});

// Files shared with me
const res = await drive.files.list({
  q: "sharedWithMe = true",
  fields: 'files(id, name, sharingUser)',
});

// Files modified after a date
const res = await drive.files.list({
  q: "modifiedTime > '2024-01-01T00:00:00'",
  fields: 'files(id, name, modifiedTime)',
});
```

### Query Operators Reference

| Operator | Example | Notes |
|----------|---------|-------|
| `=` | `name = 'Report'` | Exact match |
| `!=` | `mimeType != 'application/pdf'` | Not equal |
| `contains` | `name contains 'budget'` | Substring match (case-insensitive) |
| `in` | `'<ID>' in parents` | Membership test |
| `and` | `name = 'x' and trashed = false` | Logical AND |
| `or` | `name = 'x' or name = 'y'` | Logical OR |
| `not` | `not name contains 'draft'` | Negation |
| `has` | `properties has { key='status' and value='active' }` | Custom properties |
| `>`, `<`, `>=`, `<=` | `modifiedTime > '2024-01-01T00:00:00'` | Date/time comparison |

## Manage Permissions and Sharing

### Share a File with a User

```typescript
await drive.permissions.create({
  fileId: '<FILE_ID>',
  requestBody: {
    type: 'user',
    role: 'writer',
    emailAddress: 'colleague@example.com',
  },
  sendNotificationEmail: true,
});
```

### Share with Anyone (Public Link)

```typescript
await drive.permissions.create({
  fileId: '<FILE_ID>',
  requestBody: {
    type: 'anyone',
    role: 'reader',
  },
});

// Get the shareable link
const file = await drive.files.get({
  fileId: '<FILE_ID>',
  fields: 'webViewLink',
});
console.log('Share link:', file.data.webViewLink);
```

### Permission Roles

| Role | Can Do |
|------|--------|
| `owner` | Full control, transfer ownership |
| `organizer` | Manage Shared Drive members and content (Shared Drives only) |
| `fileOrganizer` | Manage content within Shared Drive (cannot manage members) |
| `writer` | Edit, comment, share (if allowed) |
| `commenter` | View and comment |
| `reader` | View only |

### List Permissions on a File

```typescript
const res = await drive.permissions.list({
  fileId: '<FILE_ID>',
  fields: 'permissions(id, type, role, emailAddress)',
});
```

### Remove a Permission

```typescript
await drive.permissions.delete({
  fileId: '<FILE_ID>',
  permissionId: '<PERMISSION_ID>',
});
```

## Create and Manage Folders

### Create a Folder

```typescript
const res = await drive.files.create({
  requestBody: {
    name: 'My New Folder',
    mimeType: 'application/vnd.google-apps.folder',
  },
  fields: 'id',
});
console.log('Folder ID:', res.data.id);
```

### Create a Subfolder

```typescript
const res = await drive.files.create({
  requestBody: {
    name: 'Subfolder',
    mimeType: 'application/vnd.google-apps.folder',
    parents: ['<PARENT_FOLDER_ID>'],
  },
  fields: 'id',
});
```

### Move a File to a Folder

```typescript
const file = await drive.files.get({
  fileId: '<FILE_ID>',
  fields: 'parents',
});

const previousParents = file.data.parents?.join(',') || '';

await drive.files.update({
  fileId: '<FILE_ID>',
  addParents: '<NEW_FOLDER_ID>',
  removeParents: previousParents,
  fields: 'id, parents',
});
```

## Work with Shared Drives

### List Shared Drives

```typescript
const res = await drive.drives.list({
  pageSize: 10,
  fields: 'drives(id, name)',
});
```

### List Files in a Shared Drive

```typescript
const res = await drive.files.list({
  corpora: 'drive',
  driveId: '<SHARED_DRIVE_ID>',
  includeItemsFromAllDrives: true,
  supportsAllDrives: true,
  q: "trashed = false",
  fields: 'files(id, name, mimeType)',
});
```

### Create a File in a Shared Drive

```typescript
const res = await drive.files.create({
  requestBody: {
    name: 'Team Document',
    parents: ['<SHARED_DRIVE_ID>'],
  },
  media: {
    mimeType: 'text/plain',
    body: 'Hello from the API',
  },
  supportsAllDrives: true,
  fields: 'id, name',
});
```

## Watch for Changes (Push Notifications)

### Get Start Page Token

```typescript
const startRes = await drive.changes.getStartPageToken({});
let savedStartPageToken = startRes.data.startPageToken;
```

### Poll for Changes

```typescript
let pageToken = savedStartPageToken;
let hasMore = true;

while (hasMore) {
  const res = await drive.changes.list({
    pageToken,
    fields: 'newStartPageToken, nextPageToken, changes(fileId, file(name, mimeType), removed, time)',
  });

  for (const change of res.data.changes || []) {
    if (change.removed) {
      console.log(`File removed: ${change.fileId}`);
    } else {
      console.log(`File changed: ${change.file?.name} (${change.fileId})`);
    }
  }

  if (res.data.newStartPageToken) {
    savedStartPageToken = res.data.newStartPageToken;
    hasMore = false;
  }
  pageToken = res.data.nextPageToken || savedStartPageToken;
}
```

### Set Up Webhook (Push Notifications)

```typescript
const res = await drive.files.watch({
  fileId: '<FILE_ID>',
  requestBody: {
    id: 'unique-channel-id',
    type: 'web_hook',
    address: 'https://your-app.example.com/webhook/drive',
    expiration: String(Date.now() + 86400000), // 24 hours from now
  },
});
// Webhook channels expire; you must renew before expiration.
```

## Pagination

Most `list` methods support pagination with `pageToken`/`nextPageToken`:

```typescript
let pageToken: string | undefined;
const allFiles = [];
do {
  const res = await drive.files.list({
    pageToken,
    pageSize: 100,
    q: "trashed = false",
    fields: 'nextPageToken, files(id, name)',
  });
  allFiles.push(...(res.data.files || []));
  pageToken = res.data.nextPageToken;
} while (pageToken);
```

## Error Handling

```typescript
try {
  const res = await drive.files.get({ fileId: 'invalid-id' });
} catch (err: any) {
  if (err.code === 429) {
    // Rate limited -- implement exponential backoff
  } else if (err.code === 403) {
    // Permission denied -- check scopes, API enablement, or sharing
  } else if (err.code === 404) {
    // Not found -- verify fileId and that user has access
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

