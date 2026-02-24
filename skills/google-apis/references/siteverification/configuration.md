# Google Site Verification API - Configuration

## Enable the API

```bash
gcloud services enable siteVerification.googleapis.com
```

Or enable via [Google Cloud Console](https://console.cloud.google.com/apis/library/siteVerification.googleapis.com).

## Auth Scopes

| Scope | Description |
|-------|-------------|
| `https://www.googleapis.com/auth/siteverification` | Manage the list of sites and domains you control |
| `https://www.googleapis.com/auth/siteverification.verify_only` | Manage your new site verifications with Google |

## Service Endpoint

- **Root URL**: `https://www.googleapis.com/`
- **Service path**: `siteVerification/v1/`
- **Batch path**: `batch/siteVerification/v1`

## Authentication Methods

See `references/auth.md` for detailed setup. Quick summary:

1. **OAuth2** - For user data access (Gmail, Drive, Calendar, etc.)
2. **Service Account** - For server-to-server (Cloud APIs, admin tasks)
3. **API Key** - For public data (Maps, YouTube public, Custom Search)
4. **ADC (Application Default Credentials)** - Auto-detects environment

