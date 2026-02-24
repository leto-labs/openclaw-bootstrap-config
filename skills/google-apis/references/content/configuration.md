# Content API for Shopping - Configuration

## Enable the API

```bash
gcloud services enable content.googleapis.com
```

Or enable via [Google Cloud Console](https://console.cloud.google.com/apis/library/content.googleapis.com).

## Auth Scopes

| Scope | Description |
|-------|-------------|
| `https://www.googleapis.com/auth/content` | Manage your product listings and accounts for Google Shopping |

## Service Endpoint

- **Root URL**: `https://shoppingcontent.googleapis.com/`
- **Service path**: `content/v2.1/`
- **Batch path**: `batch`

## Authentication Methods

See `references/auth.md` for detailed setup. Quick summary:

1. **OAuth2** - For user data access (Gmail, Drive, Calendar, etc.)
2. **Service Account** - For server-to-server (Cloud APIs, admin tasks)
3. **API Key** - For public data (Maps, YouTube public, Custom Search)
4. **ADC (Application Default Credentials)** - Auto-detects environment

