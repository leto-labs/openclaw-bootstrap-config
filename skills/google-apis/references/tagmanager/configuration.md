# Tag Manager API - Configuration

## Enable the API

```bash
gcloud services enable tagmanager.googleapis.com
```

Or enable via [Google Cloud Console](https://console.cloud.google.com/apis/library/tagmanager.googleapis.com).

## Auth Scopes

| Scope | Description |
|-------|-------------|
| `https://www.googleapis.com/auth/tagmanager.delete.containers` | Delete your Google Tag Manager containers |
| `https://www.googleapis.com/auth/tagmanager.edit.containers` | Manage your Google Tag Manager container and its subcomponents, excluding versioning and publishing |
| `https://www.googleapis.com/auth/tagmanager.edit.containerversions` | Manage your Google Tag Manager container versions |
| `https://www.googleapis.com/auth/tagmanager.manage.accounts` | View and manage your Google Tag Manager accounts |
| `https://www.googleapis.com/auth/tagmanager.manage.users` | Manage user permissions of your Google Tag Manager account and container |
| `https://www.googleapis.com/auth/tagmanager.publish` | Publish your Google Tag Manager container versions |
| `https://www.googleapis.com/auth/tagmanager.readonly` | View your Google Tag Manager container and its subcomponents |

## Service Endpoint

- **Root URL**: `https://tagmanager.googleapis.com/`
- **Service path**: ``
- **Batch path**: `batch`

## Authentication Methods

See `references/auth.md` for detailed setup. Quick summary:

1. **OAuth2** - For user data access (Gmail, Drive, Calendar, etc.)
2. **Service Account** - For server-to-server (Cloud APIs, admin tasks)
3. **API Key** - For public data (Maps, YouTube public, Custom Search)
4. **ADC (Application Default Credentials)** - Auto-detects environment

