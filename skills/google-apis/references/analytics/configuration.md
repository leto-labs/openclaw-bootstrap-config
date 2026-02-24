# Google Analytics API - Configuration

## Enable the API

```bash
gcloud services enable analytics.googleapis.com
```

Or enable via [Google Cloud Console](https://console.cloud.google.com/apis/library/analytics.googleapis.com).

## Auth Scopes

| Scope | Description |
|-------|-------------|
| `https://www.googleapis.com/auth/analytics` | View and manage your Google Analytics data |
| `https://www.googleapis.com/auth/analytics.edit` | Edit Google Analytics management entities |
| `https://www.googleapis.com/auth/analytics.manage.users` | Manage Google Analytics Account users by email address |
| `https://www.googleapis.com/auth/analytics.manage.users.readonly` | View Google Analytics user permissions |
| `https://www.googleapis.com/auth/analytics.provision` | Create a new Google Analytics account along with its default property and view |
| `https://www.googleapis.com/auth/analytics.readonly` | View your Google Analytics data |
| `https://www.googleapis.com/auth/analytics.user.deletion` | Manage Google Analytics user deletion requests |

## Service Endpoint

- **Root URL**: `https://analytics.googleapis.com/`
- **Service path**: `analytics/v3/`
- **Batch path**: `batch/analytics/v3`

## Authentication Methods

See `references/auth.md` for detailed setup. Quick summary:

1. **OAuth2** - For user data access (Gmail, Drive, Calendar, etc.)
2. **Service Account** - For server-to-server (Cloud APIs, admin tasks)
3. **API Key** - For public data (Maps, YouTube public, Custom Search)
4. **ADC (Application Default Credentials)** - Auto-detects environment

