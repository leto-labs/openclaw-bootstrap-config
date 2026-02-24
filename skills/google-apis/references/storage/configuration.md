# Cloud Storage JSON API - Configuration

## Enable the API

```bash
gcloud services enable storage.googleapis.com
```

Or enable via [Google Cloud Console](https://console.cloud.google.com/apis/library/storage.googleapis.com).

## Auth Scopes

| Scope | Description |
|-------|-------------|
| `https://www.googleapis.com/auth/cloud-platform` | View and manage your data across Google Cloud Platform services |
| `https://www.googleapis.com/auth/cloud-platform.read-only` | View your data across Google Cloud Platform services |
| `https://www.googleapis.com/auth/devstorage.full_control` | Manage your data and permissions in Google Cloud Storage |
| `https://www.googleapis.com/auth/devstorage.read_only` | View your data in Google Cloud Storage |
| `https://www.googleapis.com/auth/devstorage.read_write` | Manage your data in Google Cloud Storage |

## Service Endpoint

- **Root URL**: `https://storage.googleapis.com/`
- **Service path**: `storage/v1/`
- **Batch path**: `batch/storage/v1`

## Authentication Methods

See `references/auth.md` for detailed setup. Quick summary:

1. **OAuth2** - For user data access (Gmail, Drive, Calendar, etc.)
2. **Service Account** - For server-to-server (Cloud APIs, admin tasks)
3. **API Key** - For public data (Maps, YouTube public, Custom Search)
4. **ADC (Application Default Credentials)** - Auto-detects environment

