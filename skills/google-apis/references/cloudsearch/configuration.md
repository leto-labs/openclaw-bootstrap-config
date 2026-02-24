# Cloud Search API - Configuration

## Enable the API

```bash
gcloud services enable cloudsearch.googleapis.com
```

Or enable via [Google Cloud Console](https://console.cloud.google.com/apis/library/cloudsearch.googleapis.com).

## Auth Scopes

| Scope | Description |
|-------|-------------|
| `https://www.googleapis.com/auth/cloud_search` | Index and serve your organization's data with Cloud Search |
| `https://www.googleapis.com/auth/cloud_search.debug` | Index and serve your organization's data with Cloud Search |
| `https://www.googleapis.com/auth/cloud_search.indexing` | Index and serve your organization's data with Cloud Search |
| `https://www.googleapis.com/auth/cloud_search.query` | Search your organization's data in the Cloud Search index |
| `https://www.googleapis.com/auth/cloud_search.settings` | Index and serve your organization's data with Cloud Search |
| `https://www.googleapis.com/auth/cloud_search.settings.indexing` | Index and serve your organization's data with Cloud Search |
| `https://www.googleapis.com/auth/cloud_search.settings.query` | Index and serve your organization's data with Cloud Search |
| `https://www.googleapis.com/auth/cloud_search.stats` | Index and serve your organization's data with Cloud Search |
| `https://www.googleapis.com/auth/cloud_search.stats.indexing` | Index and serve your organization's data with Cloud Search |

## Service Endpoint

- **Root URL**: `https://cloudsearch.googleapis.com/`
- **Service path**: ``
- **Batch path**: `batch`

## Authentication Methods

See `references/auth.md` for detailed setup. Quick summary:

1. **OAuth2** - For user data access (Gmail, Drive, Calendar, etc.)
2. **Service Account** - For server-to-server (Cloud APIs, admin tasks)
3. **API Key** - For public data (Maps, YouTube public, Custom Search)
4. **ADC (Application Default Credentials)** - Auto-detects environment

