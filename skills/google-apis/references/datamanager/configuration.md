# Data Manager API - Configuration

## Enable the API

```bash
gcloud services enable datamanager.googleapis.com
```

Or enable via [Google Cloud Console](https://console.cloud.google.com/apis/library/datamanager.googleapis.com).

## Auth Scopes

| Scope | Description |
|-------|-------------|
| `https://www.googleapis.com/auth/datamanager` | See, edit, create, import, or delete your customer data in Google Ads, Google Marketing Platform (Campaign Manager 360, Search Ads 360, Display & Video 360), and Google Analytics |

## Service Endpoint

- **Root URL**: `https://datamanager.googleapis.com/`
- **Service path**: ``
- **Batch path**: `batch`

## Authentication Methods

See `references/auth.md` for detailed setup. Quick summary:

1. **OAuth2** - For user data access (Gmail, Drive, Calendar, etc.)
2. **Service Account** - For server-to-server (Cloud APIs, admin tasks)
3. **API Key** - For public data (Maps, YouTube public, Custom Search)
4. **ADC (Application Default Credentials)** - Auto-detects environment

