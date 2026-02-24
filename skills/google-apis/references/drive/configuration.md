# Google Drive API - Configuration

## Enable the API

```bash
gcloud services enable drive.googleapis.com
```

Or enable via [Google Cloud Console](https://console.cloud.google.com/apis/library/drive.googleapis.com).

## Auth Scopes

| Scope | Description |
|-------|-------------|
| `https://www.googleapis.com/auth/drive` | See, edit, create, and delete all of your Google Drive files |
| `https://www.googleapis.com/auth/drive.appdata` | See, create, and delete its own configuration data in your Google Drive |
| `https://www.googleapis.com/auth/drive.apps.readonly` | View your Google Drive apps |
| `https://www.googleapis.com/auth/drive.file` | See, edit, create, and delete only the specific Google Drive files you use with this app |
| `https://www.googleapis.com/auth/drive.meet.readonly` | See and download your Google Drive files that were created or edited by Google Meet. |
| `https://www.googleapis.com/auth/drive.metadata` | View and manage metadata of files in your Google Drive |
| `https://www.googleapis.com/auth/drive.metadata.readonly` | See information about your Google Drive files |
| `https://www.googleapis.com/auth/drive.photos.readonly` | View the photos, videos and albums in your Google Photos |
| `https://www.googleapis.com/auth/drive.readonly` | See and download all your Google Drive files |
| `https://www.googleapis.com/auth/drive.scripts` | Modify your Google Apps Script scripts' behavior |

### Scope Selection Guide

- Use `drive.file` when your app only needs to work with files it creates or the user explicitly opens with your app. This is the narrowest useful scope for most apps.
- Use `drive.readonly` for read-only browsing, backup, or export tools.
- Use `drive.metadata.readonly` when you only need to list/search files without downloading content.
- Use `drive` (full access) only when you need to read/write arbitrary user files (e.g., a file manager app).
- Use `drive.appdata` to store app-specific configuration in the hidden `appDataFolder` space.

## Service Endpoint

- **Root URL**: `https://www.googleapis.com/`
- **Service path**: `drive/v3/`
- **Batch path**: `batch/drive/v3`

## Authentication Methods

See `references/auth.md` for detailed setup. Quick summary:

1. **OAuth2** - For user data access (Gmail, Drive, Calendar, etc.)
2. **Service Account** - For server-to-server (Cloud APIs, admin tasks)
3. **API Key** - For public data (Maps, YouTube public, Custom Search)
4. **ADC (Application Default Credentials)** - Auto-detects environment

**Note**: API Keys are not applicable for Drive -- all Drive data requires user authentication via OAuth2 or a service account with domain-wide delegation.

## Install Client Library (Node.js)

```bash
npm install googleapis @google-cloud/local-auth
```

