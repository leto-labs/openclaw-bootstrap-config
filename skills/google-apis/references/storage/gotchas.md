# Cloud Storage JSON API - Gotchas & Troubleshooting

## Quotas & Rate Limits

### Object Operations

| Limit | Value | Notes |
|-------|-------|-------|
| Max object size | **5 TiB** | Applies regardless of upload method (simple, resumable, multipart, compose) |
| Max object name length (flat bucket) | 1024 bytes (UTF-8) | Includes the full "path" with `/` delimiters |
| Max object name length (HNS bucket) | 512 bytes folder + 512 bytes base name | Hierarchical namespace buckets split the limit |
| Write to same object name | **1 write/second** | Rapid overwrites are throttled; use unique names or generation preconditions |
| Object metadata update rate | **1 update/second** per object | Updating metadata more frequently causes throttling errors |
| Initial write QPS per bucket | ~1,000 writes/second | Scales automatically over time with sustained traffic |
| Initial read QPS per bucket | ~5,000 reads/second | Scales automatically; subject to bandwidth limits |
| Custom metadata per object | 8 KiB total (keys + values) | |
| Max ACL entries per object | 100 | Prefer Uniform bucket-level access (IAM) instead |

### Bucket Operations

| Limit | Value | Notes |
|-------|-------|-------|
| Bucket name length | 3-63 characters (222 if contains dots) | Globally unique across all of Google Cloud |
| Bucket create/delete rate | ~1 request every 2 seconds per project | Pre-create buckets; never create/delete on critical paths |
| Bucket metadata update rate | 1 update/second per bucket | Changing CORS, lifecycle, etc. is throttled |
| Pub/Sub notification configs per bucket | 100 total | Max 10 configs for a specific event type |
| IAM principals per bucket | 1,500 (all roles) / 100 (legacy roles) | |
| Lifecycle matchesPrefix/matchesSuffix entries | 1,000 total across all rules | |
| Soft delete max retention | 90 days | Default is 7 days |
| Bucket Lock max retention | 100 years (3,155,760,000 seconds) | |

### Compose Limits

| Limit | Value | Notes |
|-------|-------|-------|
| Source objects per compose request | **32** | Chain composes for more; compose intermediates then compose those |
| Components in a composite object | Unlimited | `componentCount` metadata saturates at 2,147,483,647 |

### Upload Limits

| Limit | Value | Notes |
|-------|-------|-------|
| Resumable upload session duration | **7 days** | After 7 days, session expires and must be restarted |
| XML API multipart upload parts | 10,000 max | Each part: min 5 MiB, max 5 GiB (last part has no minimum) |
| JSON API batch request payload | < 10 MiB | Max 100 calls per batch request |

### Bandwidth Quotas

| Quota | Default Value | Notes |
|-------|---------------|-------|
| Egress to Google services per region | 200 Gbps | Per-project; increase requestable |
| Internet egress per region | 200 Gbps | Per-project; increase requestable |
| Dual-region egress | 200 Gbps per constituent region | Separate quota per region in the pair |

When bandwidth is exceeded, requests are throttled or rejected with a retryable `429 - rateLimitExceeded` error.

## Consistency Model

Cloud Storage provides **strong global consistency** for all operations:

- **Read-after-write**: An object is immediately readable after a successful upload
- **Read-after-metadata-update**: Metadata changes are immediately visible
- **Read-after-delete**: A deleted object is immediately gone from listings and reads
- **List-after-write**: A newly created object appears in list operations immediately

There is no eventual consistency for any operation.

## Storage Classes & Cost Implications

| Class | Min Storage Duration | Use Case | Retrieval Fee |
|-------|---------------------|----------|---------------|
| Standard | None | Frequently accessed data | None |
| Nearline | 30 days | Accessed < 1x/month | Per-GB retrieval |
| Coldline | 90 days | Accessed < 1x/quarter | Higher per-GB |
| Archive | 365 days | Accessed < 1x/year | Highest per-GB |

**Early deletion charge**: Deleting or overwriting an object before the minimum storage duration incurs a charge equal to the remaining storage cost. For example, deleting a Coldline object after 30 days incurs a charge for the remaining 60 days.

**Per-object override**: Storage class can be set per-object, overriding the bucket default. Check object-level storage class if costs are unexpected.

## Network Egress Costs

| Traffic Type | Cost |
|-------------|------|
| Ingress (upload) | **Free** |
| Egress to same region (e.g., GCS to Compute Engine in us-central1) | **Free** |
| Egress to different region within same continent | Charged |
| Egress to internet | Charged (tiered by volume) |
| Egress to other Google Cloud services (same region) | **Free** |

Multi-region buckets may serve data from any constituent region. Egress costs depend on which region serves the request, not just the bucket location.

## Common Errors

| Code | Meaning | Fix |
|------|---------|-----|
| 400 | Invalid request | Check parameter types, object names, bucket names |
| 401 | Unauthenticated | Refresh token, check credentials or ADC config |
| 403 | Forbidden | Enable API in console, check IAM roles/scopes, verify billing, check VPC Service Controls |
| 404 | Not found | Verify bucket name (globally unique), object name (URL-encode `/` as `%2F`), API version |
| 409 | Conflict | Bucket name already taken globally; or object already exists with `ifGenerationMatch: 0` precondition |
| 412 | Precondition failed | Generation or metageneration mismatch; the object was modified between your read and write |
| 429 | Rate limited | Implement exponential backoff; check bandwidth quota and request rate limits |
| 500 | Server error | Retry with backoff |
| 503 | Service unavailable | Retry with backoff |

## Object Naming Pitfalls

- **No leading `/`**: Object names should not start with `/`. The name `//file.txt` is valid but confusing.
- **URL encoding**: In JSON API URLs, `/` in object names must be encoded as `%2F`. `images/photo.png` becomes `images%2Fphoto.png` in the URL path.
- **Special characters**: Avoid `#`, `[`, `]`, `*`, `?` as they cause issues with some tools and `gcloud` glob patterns.
- **Trailing `/`**: An object named `folder/` is a valid object (sometimes used as a placeholder for "empty folders"). Distinct from the `folder/` prefix used for listing.
- **Case sensitivity**: Object names are case-sensitive. `File.txt` and `file.txt` are different objects.

## Signed URL Gotchas

- **Requires a service account key** (or impersonation): You cannot generate V4 signed URLs with user credentials alone. Use a service account JSON key, HMAC key, or the IAM `signBlob` API with impersonation.
- **Max expiration**: V4 signed URLs expire in at most **7 days** (604,800 seconds).
- **Content-Type must match**: If you set a `Content-Type` in the signed URL, the client must send the exact same header or the request is rejected.
- **Clock skew**: The signing timestamp uses UTC. Ensure server clocks are synchronized.

## Exponential Backoff

Google Cloud Storage requires exponential backoff for retries on 429, 500, and 503 errors:

```typescript
async function withBackoff<T>(fn: () => Promise<T>, maxRetries = 5): Promise<T> {
  for (let i = 0; i < maxRetries; i++) {
    try {
      return await fn();
    } catch (err: any) {
      if (i === maxRetries - 1 || ![429, 500, 503].includes(err.code)) throw err;
      const delay = Math.pow(2, i) * 1000 + Math.random() * 1000;
      await new Promise(r => setTimeout(r, delay));
    }
  }
  throw new Error('Unreachable');
}
```

The `@google-cloud/storage` client library handles retries automatically for idempotent operations:

```typescript
const storage = new Storage({
  retryOptions: {
    autoRetry: true,
    maxRetries: 5,
    retryDelayMultiplier: 2,
    totalTimeout: 600,  // seconds
  },
});
```

## Google API Error Response Format

All Google APIs return errors in this format:

```json
{
  "error": {
    "code": 403,
    "message": "The caller does not have permission",
    "status": "PERMISSION_DENIED",
    "errors": [{ "domain": "global", "reason": "forbidden" }]
  }
}
```

## Tips

- Always enable `storage.googleapis.com` in your GCP project before making calls
- Use `fields` parameter to request only needed fields (reduces response size and latency)
- Use `projection=noAcl` when listing objects if you do not need ACL data (significantly faster for large listings)
- Pre-create buckets: bucket creation is rate-limited and uses a global namespace -- never create buckets on the critical path
- Use generation preconditions to avoid race conditions when multiple writers target the same object
- Prefer Uniform bucket-level access over per-object ACLs for simpler, more secure access control
- Set lifecycle rules to auto-delete or transition objects -- prevents cost surprises from forgotten data
- Use `gcloud storage` (not the older `gsutil`) for the latest features and performance optimizations
- Monitor bandwidth via Cloud Monitoring to avoid hitting egress quotas unexpectedly
- For HNS buckets: initial QPS is up to 8x higher, and folder renames are atomic -- best for analytics/ML workloads with many small files
