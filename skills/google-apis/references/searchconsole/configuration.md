# Google Search Console API - Configuration

## Enable the API

```bash
gcloud services enable searchconsole.googleapis.com
```

Or enable via [Google Cloud Console](https://console.cloud.google.com/apis/library/searchconsole.googleapis.com).

## Auth Scopes

| Scope | Description |
|-------|-------------|
| `https://www.googleapis.com/auth/webmasters` | View and manage Search Console data for your verified sites |
| `https://www.googleapis.com/auth/webmasters.readonly` | View Search Console data for your verified sites |

## Service Endpoint

- **Root URL**: `https://searchconsole.googleapis.com/`
- **Service path**: ``
- **Batch path**: `batch`

## Authentication Methods

See `references/auth.md` for detailed setup. Quick summary:

1. **OAuth2** - For user data access (Gmail, Drive, Calendar, etc.)
2. **Service Account** - For server-to-server (Cloud APIs, admin tasks)
3. **API Key** - For public data (Maps, YouTube public, Custom Search)
4. **ADC (Application Default Credentials)** - Auto-detects environment

