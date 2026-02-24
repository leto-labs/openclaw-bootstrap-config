# Google Drive API - Gotchas & Troubleshooting

## Rate Limits

- **Default per-user limit**: 12,000 queries per user per 60 seconds (approximately 200 queries/second per user). Applies to read requests.
- **Per-project limit**: Varies by billing status; typically 1,000,000,000 queries per day for paid projects.
- **Upload limits**: Maximum file size is 5,120 GB (5 TB). Simple/multipart uploads are limited to 5 MB; use resumable upload for larger files.
- **Export limits**: `files.export` is limited to 10 MB for exported content. For larger Google Workspace files, use the `files.download` method instead.
- Check quotas at [Google Cloud Console > APIs & Services > Quotas](https://console.cloud.google.com/apis/api/drive.googleapis.com/quotas)
- Monitor usage via the Cloud Console metrics dashboard.

### Avoiding Rate Limits

- Use `fields` parameter to request only needed fields -- reduces server processing.
- Use batch requests to combine multiple operations into a single HTTP request.
- Cache file metadata locally when possible.
- Use `changes.list` to detect modifications instead of polling `files.list` repeatedly.

## Upload Gotchas

### Upload Type Selection

| Scenario | Upload Type | Max Size |
|----------|------------|----------|
| Small file, no metadata needed | `uploadType=media` (simple) | 5 MB |
| Small file, with metadata | `uploadType=multipart` | 5 MB |
| Large file or unreliable network | `uploadType=resumable` | 5 TB |

- **Always use resumable upload** for files over 5 MB. The Node.js client library handles this transparently.
- Resumable session URIs **expire after 1 week**.
- Chunked resumable uploads must use **256 KB-aligned chunks** (multiples of 262,144 bytes), except for the final chunk.
- For idempotent retries of uploads, use **pre-generated IDs** via `files.generateIds`. If the upload already succeeded, retry returns `409 Conflict` instead of creating a duplicate.
- Pre-generated IDs do **not** work for Google Workspace file types (except `application/vnd.google-apps.folder` and `application/vnd.google-apps.drive-sdk`).

### PATCH vs. PUT for Uploads

- Use the HTTP verb documented in the API reference for the **initial** request of a resumable upload or for simple/multipart uploads (typically `POST` for create, `PATCH` for update).
- Use `PUT` for **all subsequent** requests in a resumable upload session, regardless of whether the original operation was create or update.

## MIME Type Handling

- Google Drive attempts to auto-detect MIME type from uploaded content when none is specified.
- **Always set MIME type explicitly** for reliable results, especially for uncommon file types.
- Folders are `application/vnd.google-apps.folder` -- they contain no binary content.
- Google Workspace files (Docs, Sheets, Slides) have `application/vnd.google-apps.*` MIME types and **cannot be downloaded directly** -- you must use `files.export`.
- To convert on upload (e.g., CSV to Sheets), set the **target** Google Workspace `mimeType` in `requestBody` and the **source** MIME type in `media.mimeType`.

### Key MIME Types

| Type | MIME |
|------|------|
| Folder | `application/vnd.google-apps.folder` |
| Google Docs | `application/vnd.google-apps.document` |
| Google Sheets | `application/vnd.google-apps.spreadsheet` |
| Google Slides | `application/vnd.google-apps.presentation` |
| Shortcut | `application/vnd.google-apps.shortcut` |

## Shared Drives (Formerly Team Drives)

- **Always pass `supportsAllDrives: true`** on any request that might touch Shared Drive files. Without this flag, operations on Shared Drive content fail.
- **`includeItemsFromAllDrives: true`** is required when listing files that may span both My Drive and Shared Drives.
- Use the `corpora` parameter to control search scope:
  - `corpora: 'user'` -- My Drive + Shared with me (default)
  - `corpora: 'drive'` -- A specific Shared Drive (must also pass `driveId`)
  - `corpora: 'allDrives'` -- Everything (use sparingly, can be slow)
  - `corpora: 'domain'` -- All searchable domain files
- Files in Shared Drives have **exactly one parent**.
- The `owners` and `permissions` fields are **not populated** for Shared Drive items. Use `capabilities` to check effective access.
- Shared Drive files are **owned by the organization**, not individual users. Ownership transfer does not apply.
- Deprecated fields: Use `driveId` instead of `teamDriveId`, `supportsAllDrives` instead of `supportsTeamDrives`.

## File vs. Folder Distinction

- Folders are just files with `mimeType = 'application/vnd.google-apps.folder'`.
- To list only folders: `q: "mimeType = 'application/vnd.google-apps.folder'"`.
- To list contents of a folder: `q: "'<FOLDER_ID>' in parents"`.
- Deleting a folder **does not** automatically delete children in My Drive; they become orphaned. In Shared Drives, trashing a folder trashes all children.

## The `fields` Parameter

- **Always specify `fields`** to avoid fetching the enormous default File resource (100+ fields).
- Use `fields: 'files(id, name, mimeType)'` on list calls, `fields: 'id, name'` on get/create calls.
- Nested fields: `fields: 'files(id, name, owners(emailAddress))'`.
- Requesting fields you do not have permission to read silently returns `null` (no error).

## Common Errors

| Code | Meaning | Fix |
|------|---------|-----|
| 400 | Invalid request | Check parameter types, required fields, and query syntax |
| 401 | Unauthenticated | Refresh token or check credentials |
| 403 `forbidden` | Insufficient permissions | Check scopes, verify the user has access to the file |
| 403 `rateLimitExceeded` | Rate limited | Implement exponential backoff with jitter |
| 403 `storageQuotaExceeded` | User's storage is full | Cannot upload; user must free space |
| 403 `appNotAuthorizedToFile` | App not allowed | Use `drive.file` scope and ensure user opened file with your app |
| 404 | Not found | Verify file ID; file may be trashed or user lacks access |
| 409 | Conflict | File already exists (common with pre-generated IDs on retry) |
| 429 | Too many requests | Backoff; you have hit per-user or per-project quota |
| 500 | Server error | Retry with exponential backoff |
| 503 | Service unavailable | Retry with exponential backoff |

## Exponential Backoff

Google APIs require exponential backoff for retries:

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

- Always enable `drive.googleapis.com` in your GCP project before making calls.
- Use `fields` parameter to request only needed fields (reduces response size and latency).
- For Workspace APIs, ensure the OAuth consent screen is configured.
- Service accounts need **domain-wide delegation** for Workspace APIs acting on behalf of users.
- Use `orderBy` parameter in list calls for sorting (e.g., `orderBy: 'modifiedTime desc'`).
- The `files.list` default scope is the user's My Drive files. To include shared content or Shared Drives, use `corpora` and the `includeItemsFromAllDrives` flag.
- **Trashed files are excluded by default** from `files.list`. To include them, omit `trashed = false` from the query or set `q: "trashed = true"` to list only trashed items.
- `webViewLink` opens a file in the browser; `webContentLink` provides a direct download link (only for binary files).
- The `files.watch` channel expiration maximum is typically around 24 hours; set up a cron job to renew the channel before it expires.

