# Google Analytics Admin API - Configuration

## Enable the API

```bash
gcloud services enable analyticsadmin.googleapis.com
```

Or enable via [Google Cloud Console](https://console.cloud.google.com/apis/library/analyticsadmin.googleapis.com).

## Auth Scopes

| Scope | Description |
|-------|-------------|
| `https://www.googleapis.com/auth/analytics.edit` | Edit Google Analytics management entities |
| `https://www.googleapis.com/auth/analytics.readonly` | See and download your Google Analytics data |

## Service Endpoint

- **Root URL**: `https://analyticsadmin.googleapis.com/`
- **Service path**: ``
- **Batch path**: `batch`

## Authentication Methods

See `references/auth.md` for detailed setup. Quick summary:

1. **OAuth2** - For user data access (Gmail, Drive, Calendar, etc.)
2. **Service Account** - For server-to-server (Cloud APIs, admin tasks)
3. **API Key** - For public data (Maps, YouTube public, Custom Search)
4. **ADC (Application Default Credentials)** - Auto-detects environment

