# Compute Engine API - Configuration

## Enable the API

```bash
gcloud services enable compute.googleapis.com
```

Or enable via [Google Cloud Console](https://console.cloud.google.com/apis/library/compute.googleapis.com).

## Auth Scopes

| Scope | Description |
|-------|-------------|
| `https://www.googleapis.com/auth/cloud-platform` | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account. |
| `https://www.googleapis.com/auth/compute` | View and manage your Google Compute Engine resources |
| `https://www.googleapis.com/auth/compute.readonly` | View your Google Compute Engine resources |
| `https://www.googleapis.com/auth/devstorage.full_control` | Manage your data and permissions in Cloud Storage and see the email address for your Google Account |
| `https://www.googleapis.com/auth/devstorage.read_only` | View your data in Google Cloud Storage |
| `https://www.googleapis.com/auth/devstorage.read_write` | Manage your data in Cloud Storage and see the email address of your Google Account |

## Service Endpoint

- **Root URL**: `https://compute.googleapis.com/`
- **Service path**: `compute/v1/`
- **Batch path**: `batch/compute/v1`

## Authentication Methods

See `references/auth.md` for detailed setup. Quick summary:

1. **OAuth2** - For user data access (Gmail, Drive, Calendar, etc.)
2. **Service Account** - For server-to-server (Cloud APIs, admin tasks)
3. **API Key** - For public data (Maps, YouTube public, Custom Search)
4. **ADC (Application Default Credentials)** - Auto-detects environment

