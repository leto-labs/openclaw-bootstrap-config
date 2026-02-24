# Google Identity Toolkit API - Configuration

## Enable the API

```bash
gcloud services enable identitytoolkit.googleapis.com
```

Or enable via [Google Cloud Console](https://console.cloud.google.com/apis/library/identitytoolkit.googleapis.com).

## Auth Scopes

| Scope | Description |
|-------|-------------|
| `https://www.googleapis.com/auth/cloud-platform` | View and manage your data across Google Cloud Platform services |
| `https://www.googleapis.com/auth/firebase` | View and administer all your Firebase data and settings |

## Service Endpoint

- **Root URL**: `https://www.googleapis.com/`
- **Service path**: `identitytoolkit/v3/relyingparty/`
- **Batch path**: `batch/identitytoolkit/v3`

## Authentication Methods

See `references/auth.md` for detailed setup. Quick summary:

1. **OAuth2** - For user data access (Gmail, Drive, Calendar, etc.)
2. **Service Account** - For server-to-server (Cloud APIs, admin tasks)
3. **API Key** - For public data (Maps, YouTube public, Custom Search)
4. **ADC (Application Default Credentials)** - Auto-detects environment

