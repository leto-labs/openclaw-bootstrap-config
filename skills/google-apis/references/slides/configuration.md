# Google Slides API - Configuration

## Enable the API

```bash
gcloud services enable slides.googleapis.com
```

Or enable via [Google Cloud Console](https://console.cloud.google.com/apis/library/slides.googleapis.com).

## Auth Scopes

| Scope | Description |
|-------|-------------|
| `https://www.googleapis.com/auth/drive` | See, edit, create, and delete all of your Google Drive files |
| `https://www.googleapis.com/auth/drive.file` | See, edit, create, and delete only the specific Google Drive files you use with this app |
| `https://www.googleapis.com/auth/drive.readonly` | See and download all your Google Drive files |
| `https://www.googleapis.com/auth/presentations` | See, edit, create, and delete all your Google Slides presentations |
| `https://www.googleapis.com/auth/presentations.readonly` | See all your Google Slides presentations |
| `https://www.googleapis.com/auth/spreadsheets` | See, edit, create, and delete all your Google Sheets spreadsheets |
| `https://www.googleapis.com/auth/spreadsheets.readonly` | See all your Google Sheets spreadsheets |

## Service Endpoint

- **Root URL**: `https://slides.googleapis.com/`
- **Service path**: ``
- **Batch path**: `batch`

## Authentication Methods

See `references/auth.md` for detailed setup. Quick summary:

1. **OAuth2** - For user data access (Gmail, Drive, Calendar, etc.)
2. **Service Account** - For server-to-server (Cloud APIs, admin tasks)
3. **API Key** - For public data (Maps, YouTube public, Custom Search)
4. **ADC (Application Default Credentials)** - Auto-detects environment

