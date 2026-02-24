# Groups Settings API - Configuration

## Enable the API

```bash
gcloud services enable groupssettings.googleapis.com
```

Or enable via [Google Cloud Console](https://console.cloud.google.com/apis/library/groupssettings.googleapis.com).

## Auth Scopes

| Scope | Description |
|-------|-------------|
| `https://www.googleapis.com/auth/apps.groups.settings` | View and manage the settings of a G Suite group |

## Service Endpoint

- **Root URL**: `https://www.googleapis.com/`
- **Service path**: `groups/v1/groups/`
- **Batch path**: `batch/groupssettings/v1`

## Authentication Methods

See `references/auth.md` for detailed setup. Quick summary:

1. **OAuth2** - For user data access (Gmail, Drive, Calendar, etc.)
2. **Service Account** - For server-to-server (Cloud APIs, admin tasks)
3. **API Key** - For public data (Maps, YouTube public, Custom Search)
4. **ADC (Application Default Credentials)** - Auto-detects environment

