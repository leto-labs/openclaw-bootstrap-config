# Gmail Postmaster Tools API - Configuration

## Enable the API

```bash
gcloud services enable gmailpostmastertools.googleapis.com
```

Or enable via [Google Cloud Console](https://console.cloud.google.com/apis/library/gmailpostmastertools.googleapis.com).

## Auth Scopes

| Scope | Description |
|-------|-------------|
| `https://www.googleapis.com/auth/postmaster` | Get email traffic metrics, manage domains, and manage domain users for the domains you have registered with Postmaster Tools |
| `https://www.googleapis.com/auth/postmaster.domain` | View and manage the domains you have registered with Postmaster Tools |
| `https://www.googleapis.com/auth/postmaster.traffic.readonly` | Get email traffic metrics for the domains you have registered with Postmaster Tools |

## Service Endpoint

- **Root URL**: `https://gmailpostmastertools.googleapis.com/`
- **Service path**: ``
- **Batch path**: `batch`

## Authentication Methods

See `references/auth.md` for detailed setup. Quick summary:

1. **OAuth2** - For user data access (Gmail, Drive, Calendar, etc.)
2. **Service Account** - For server-to-server (Cloud APIs, admin tasks)
3. **API Key** - For public data (Maps, YouTube public, Custom Search)
4. **ADC (Application Default Credentials)** - Auto-detects environment

