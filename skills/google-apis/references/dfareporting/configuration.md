# Campaign Manager 360 API - Configuration

## Enable the API

```bash
gcloud services enable dfareporting.googleapis.com
```

Or enable via [Google Cloud Console](https://console.cloud.google.com/apis/library/dfareporting.googleapis.com).

## Auth Scopes

| Scope | Description |
|-------|-------------|
| `https://www.googleapis.com/auth/ddmconversions` | Manage DoubleClick Digital Marketing conversions |
| `https://www.googleapis.com/auth/dfareporting` | View and manage DoubleClick for Advertisers reports |
| `https://www.googleapis.com/auth/dfatrafficking` | View and manage your DoubleClick Campaign Manager's (DCM) display ad campaigns |

## Service Endpoint

- **Root URL**: `https://dfareporting.googleapis.com/`
- **Service path**: `dfareporting/v5/`
- **Batch path**: `batch`

## Authentication Methods

See `references/auth.md` for detailed setup. Quick summary:

1. **OAuth2** - For user data access (Gmail, Drive, Calendar, etc.)
2. **Service Account** - For server-to-server (Cloud APIs, admin tasks)
3. **API Key** - For public data (Maps, YouTube public, Custom Search)
4. **ADC (Application Default Credentials)** - Auto-detects environment

