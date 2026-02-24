# Cloud Natural Language API - Configuration

## Enable the API

```bash
gcloud services enable language.googleapis.com
```

Or enable via [Google Cloud Console](https://console.cloud.google.com/apis/library/language.googleapis.com).

## Auth Scopes

| Scope | Description |
|-------|-------------|
| `https://www.googleapis.com/auth/cloud-language` | Apply machine learning models to reveal the structure and meaning of text |
| `https://www.googleapis.com/auth/cloud-platform` | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account. |

## Service Endpoint

- **Root URL**: `https://language.googleapis.com/`
- **Service path**: ``
- **Batch path**: `batch`

## Authentication Methods

See `references/auth.md` for detailed setup. Quick summary:

1. **OAuth2** - For user data access (Gmail, Drive, Calendar, etc.)
2. **Service Account** - For server-to-server (Cloud APIs, admin tasks)
3. **API Key** - For public data (Maps, YouTube public, Custom Search)
4. **ADC (Application Default Credentials)** - Auto-detects environment

