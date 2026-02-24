# Drive Labels API - Configuration

## Enable the API

```bash
gcloud services enable drivelabels.googleapis.com
```

Or enable via [Google Cloud Console](https://console.cloud.google.com/apis/library/drivelabels.googleapis.com).

## Auth Scopes

| Scope | Description |
|-------|-------------|
| `https://www.googleapis.com/auth/drive.admin.labels` | See, edit, create, and delete all Google Drive labels in your organization, and see your organization's label-related admin policies |
| `https://www.googleapis.com/auth/drive.admin.labels.readonly` | See all Google Drive labels and label-related admin policies in your organization |
| `https://www.googleapis.com/auth/drive.labels` | See, edit, create, and delete your Google Drive labels |
| `https://www.googleapis.com/auth/drive.labels.readonly` | See your Google Drive labels |

## Service Endpoint

- **Root URL**: `https://drivelabels.googleapis.com/`
- **Service path**: ``
- **Batch path**: `batch`

## Authentication Methods

See `references/auth.md` for detailed setup. Quick summary:

1. **OAuth2** - For user data access (Gmail, Drive, Calendar, etc.)
2. **Service Account** - For server-to-server (Cloud APIs, admin tasks)
3. **API Key** - For public data (Maps, YouTube public, Custom Search)
4. **ADC (Application Default Credentials)** - Auto-detects environment

