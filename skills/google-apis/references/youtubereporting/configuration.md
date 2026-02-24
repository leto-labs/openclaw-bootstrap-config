# YouTube Reporting API - Configuration

## Enable the API

```bash
gcloud services enable youtubereporting.googleapis.com
```

Or enable via [Google Cloud Console](https://console.cloud.google.com/apis/library/youtubereporting.googleapis.com).

## Auth Scopes

| Scope | Description |
|-------|-------------|
| `https://www.googleapis.com/auth/yt-analytics-monetary.readonly` | View monetary and non-monetary YouTube Analytics reports for your YouTube content |
| `https://www.googleapis.com/auth/yt-analytics.readonly` | View YouTube Analytics reports for your YouTube content |

## Service Endpoint

- **Root URL**: `https://youtubereporting.googleapis.com/`
- **Service path**: ``
- **Batch path**: `batch`

## Authentication Methods

See `references/auth.md` for detailed setup. Quick summary:

1. **OAuth2** - For user data access (Gmail, Drive, Calendar, etc.)
2. **Service Account** - For server-to-server (Cloud APIs, admin tasks)
3. **API Key** - For public data (Maps, YouTube public, Custom Search)
4. **ADC (Application Default Credentials)** - Auto-detects environment

