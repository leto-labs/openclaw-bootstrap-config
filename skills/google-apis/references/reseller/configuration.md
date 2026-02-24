# Google Workspace Reseller API - Configuration

## Enable the API

```bash
gcloud services enable reseller.googleapis.com
```

Or enable via [Google Cloud Console](https://console.cloud.google.com/apis/library/reseller.googleapis.com).

## Auth Scopes

| Scope | Description |
|-------|-------------|
| `https://www.googleapis.com/auth/apps.order` | Manage users on your domain |
| `https://www.googleapis.com/auth/apps.order.readonly` | Manage users on your domain |

## Service Endpoint

- **Root URL**: `https://reseller.googleapis.com/`
- **Service path**: ``
- **Batch path**: `batch`

## Authentication Methods

See `references/auth.md` for detailed setup. Quick summary:

1. **OAuth2** - For user data access (Gmail, Drive, Calendar, etc.)
2. **Service Account** - For server-to-server (Cloud APIs, admin tasks)
3. **API Key** - For public data (Maps, YouTube public, Custom Search)
4. **ADC (Application Default Credentials)** - Auto-detects environment

