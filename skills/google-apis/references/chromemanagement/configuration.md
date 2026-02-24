# Chrome Management API - Configuration

## Enable the API

```bash
gcloud services enable chromemanagement.googleapis.com
```

Or enable via [Google Cloud Console](https://console.cloud.google.com/apis/library/chromemanagement.googleapis.com).

## Auth Scopes

| Scope | Description |
|-------|-------------|
| `https://www.googleapis.com/auth/chrome.management.appdetails.readonly` | See detailed information about apps installed on Chrome browsers and devices managed by your organization |
| `https://www.googleapis.com/auth/chrome.management.profiles` | See, edit, delete, and take other necessary actions on Chrome browser profiles managed by your organization |
| `https://www.googleapis.com/auth/chrome.management.profiles.readonly` | See Chrome browser profiles managed by your organization |
| `https://www.googleapis.com/auth/chrome.management.reports.readonly` | See reports about devices and Chrome browsers managed within your organization |
| `https://www.googleapis.com/auth/chrome.management.telemetry.readonly` | See basic device and telemetry information collected from ChromeOS devices or users managed within your organization |

## Service Endpoint

- **Root URL**: `https://chromemanagement.googleapis.com/`
- **Service path**: ``
- **Batch path**: `batch`

## Authentication Methods

See `references/auth.md` for detailed setup. Quick summary:

1. **OAuth2** - For user data access (Gmail, Drive, Calendar, etc.)
2. **Service Account** - For server-to-server (Cloud APIs, admin tasks)
3. **API Key** - For public data (Maps, YouTube public, Custom Search)
4. **ADC (Application Default Credentials)** - Auto-detects environment

