# Chrome Web Store API - Configuration

## Enable the API

```bash
gcloud services enable chromewebstore.googleapis.com
```

Or enable via [Google Cloud Console](https://console.cloud.google.com/apis/library/chromewebstore.googleapis.com).

## Auth Scopes

| Scope | Description |
|-------|-------------|
| `https://www.googleapis.com/auth/chromewebstore` | See, edit, update, or publish your Chrome Web Store extensions, themes, apps, and licences you have access to |
| `https://www.googleapis.com/auth/chromewebstore.readonly` | See and download your Chrome Web Store extensions and apps, and see licenses you have access to |

## Service Endpoint

- **Root URL**: `https://chromewebstore.googleapis.com/`
- **Service path**: ``
- **Batch path**: `batch`

## Authentication Methods

See `references/auth.md` for detailed setup. Quick summary:

1. **OAuth2** - For user data access (Gmail, Drive, Calendar, etc.)
2. **Service Account** - For server-to-server (Cloud APIs, admin tasks)
3. **API Key** - For public data (Maps, YouTube public, Custom Search)
4. **ADC (Application Default Credentials)** - Auto-detects environment

