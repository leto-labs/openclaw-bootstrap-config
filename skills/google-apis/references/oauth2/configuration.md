# Google OAuth2 API - Configuration

## Enable the API

```bash
gcloud services enable oauth2.googleapis.com
```

Or enable via [Google Cloud Console](https://console.cloud.google.com/apis/library/oauth2.googleapis.com).

## Auth Scopes

| Scope | Description |
|-------|-------------|
| `https://www.googleapis.com/auth/userinfo.email` | See your primary Google Account email address |
| `https://www.googleapis.com/auth/userinfo.profile` | See your personal info, including any personal info you've made publicly available |
| `openid` | Associate you with your personal info on Google |

## Service Endpoint

- **Root URL**: `https://www.googleapis.com/`
- **Service path**: ``
- **Batch path**: `batch/oauth2/v2`

## Authentication Methods

See `references/auth.md` for detailed setup. Quick summary:

1. **OAuth2** - For user data access (Gmail, Drive, Calendar, etc.)
2. **Service Account** - For server-to-server (Cloud APIs, admin tasks)
3. **API Key** - For public data (Maps, YouTube public, Custom Search)
4. **ADC (Application Default Credentials)** - Auto-detects environment

