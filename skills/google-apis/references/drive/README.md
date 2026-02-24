# Google Drive API

> The Google Drive API lets you create, manage, and search for files and folders in Google Drive, including uploading/downloading content, managing permissions, and working with Shared Drives.

## Overview

- **API**: `drive`
- **Version**: `v3`
- **Base URL**: `https://www.googleapis.com/drive/v3/`
- **Upload URL**: `https://www.googleapis.com/upload/drive/v3/`
- **Docs**: [https://developers.google.com/workspace/drive/](https://developers.google.com/workspace/drive/)

## When to Use

Use the Drive API when you need to:

- **Upload files** to Google Drive (simple, multipart, or resumable uploads for files up to 5 TB)
- **Download or export files** from Drive, including exporting Google Docs/Sheets/Slides to formats like PDF, DOCX, XLSX
- **Search for files and folders** using query syntax (by name, MIME type, parent folder, owner, full-text content, custom properties)
- **Manage file metadata** such as names, descriptions, starred status, properties, and custom indexable text
- **Share files and folders** by creating, updating, or removing permissions for users, groups, domains, or "anyone"
- **Organize content** by creating folders, moving files between folders, and managing parent relationships
- **Work with Shared Drives** (formerly Team Drives) for organization-owned content with distinct permission models
- **Watch for changes** to files or the user's Drive via push notifications (webhooks)
- **Convert files** between formats (e.g., upload a CSV and convert to Google Sheets, upload DOCX and convert to Google Docs)
- **Store application-specific data** in the hidden `appDataFolder` space, invisible to users
- **Manage revisions** to track and restore previous versions of files
- **Create shortcuts** to files or folders as lightweight metadata-only pointers

### Concrete Scenarios

| Scenario | Key Methods |
|----------|-------------|
| Backup local files to Drive | `files.create` with resumable upload |
| Build a file browser UI | `files.list` with query filters, pagination |
| Auto-share reports with a team | `files.create` + `permissions.create` |
| Sync a folder of documents | `changes.list` + `changes.getStartPageToken` |
| Export Google Docs as PDF | `files.export` with `mimeType=application/pdf` |
| Import CSV as Google Sheet | `files.create` with `mimeType=application/vnd.google-apps.spreadsheet` |
| Manage team content in Shared Drive | `drives.list`, `files.list` with `corpora=drive` |
| Store app config per user | `files.create` in `appDataFolder` space |

## Key Concepts

- **File ID**: A unique, stable, opaque identifier for every file and folder. IDs persist even when files are renamed or moved.
- **MIME Types**: Folders use `application/vnd.google-apps.folder`. Google Docs use `application/vnd.google-apps.document`, Sheets use `application/vnd.google-apps.spreadsheet`, Slides use `application/vnd.google-apps.presentation`.
- **Spaces**: Isolated storage areas -- `drive` (user-visible files) and `appDataFolder` (app-private per-user data).
- **Corpora**: Search scope -- `user` (My Drive + Shared with me), `drive` (specific Shared Drive), `domain`, `allDrives`.
- **Fields Parameter**: Always use the `fields` parameter to request only needed fields -- reduces response size and latency.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

const drive = google.drive('v3');

// Authenticate (see references/auth.md)
const auth = new google.auth.GoogleAuth({
  scopes: ['https://www.googleapis.com/auth/drive'],
});
google.options({ auth });

// List first 10 files
const res = await drive.files.list({
  pageSize: 10,
  fields: 'nextPageToken, files(id, name, mimeType)',
});
console.log('Files:', res.data.files);
```

### curl

```bash
# List files
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://www.googleapis.com/drive/v3/files?pageSize=10&fields=nextPageToken,files(id,name,mimeType)"

# Upload a file (simple upload)
curl -X POST \
  -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  -H "Content-Type: image/jpeg" \
  --data-binary @photo.jpg \
  "https://www.googleapis.com/upload/drive/v3/files?uploadType=media"
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes, enable API, project setup |
| `api.md` | Full method reference with parameters |
| `patterns.md` | Common workflow patterns |
| `gotchas.md` | Rate limits, common errors, debugging |

