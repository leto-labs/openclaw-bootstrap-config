# Display & Video 360 API - Configuration

## Enable the API

```bash
gcloud services enable displayvideo.googleapis.com
```

Or enable via [Google Cloud Console](https://console.cloud.google.com/apis/library/displayvideo.googleapis.com).

## Auth Scopes

| Scope | Description |
|-------|-------------|
| `https://www.googleapis.com/auth/display-video` | Create, see, edit, and permanently delete your Display & Video 360 entities and reports |
| `https://www.googleapis.com/auth/display-video-mediaplanning` | Create, see, and edit Display & Video 360 Campaign entities and see billing invoices |
| `https://www.googleapis.com/auth/display-video-user-management` | Private Service: https://www.googleapis.com/auth/display-video-user-management |
| `https://www.googleapis.com/auth/doubleclickbidmanager` | View and manage your reports in DoubleClick Bid Manager |

## Service Endpoint

- **Root URL**: `https://displayvideo.googleapis.com/`
- **Service path**: ``
- **Batch path**: `batch`

## Authentication Methods

See `references/auth.md` for detailed setup. Quick summary:

1. **OAuth2** - For user data access (Gmail, Drive, Calendar, etc.)
2. **Service Account** - For server-to-server (Cloud APIs, admin tasks)
3. **API Key** - For public data (Maps, YouTube public, Custom Search)
4. **ADC (Application Default Credentials)** - Auto-detects environment

