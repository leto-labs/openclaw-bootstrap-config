# DoubleClick Bid Manager API - Configuration

## Enable the API

```bash
gcloud services enable doubleclickbidmanager.googleapis.com
```

Or enable via [Google Cloud Console](https://console.cloud.google.com/apis/library/doubleclickbidmanager.googleapis.com).

## Auth Scopes

| Scope | Description |
|-------|-------------|
| `https://www.googleapis.com/auth/doubleclickbidmanager` | View and manage your reports in DoubleClick Bid Manager |

## Service Endpoint

- **Root URL**: `https://doubleclickbidmanager.googleapis.com/`
- **Service path**: `v2/`
- **Batch path**: `batch`

## Authentication Methods

See `references/auth.md` for detailed setup. Quick summary:

1. **OAuth2** - For user data access (Gmail, Drive, Calendar, etc.)
2. **Service Account** - For server-to-server (Cloud APIs, admin tasks)
3. **API Key** - For public data (Maps, YouTube public, Custom Search)
4. **ADC (Application Default Credentials)** - Auto-detects environment

