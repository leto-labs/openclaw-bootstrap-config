# Apps Script API - Configuration

## Enable the API

```bash
gcloud services enable script.googleapis.com
```

Or enable via [Google Cloud Console](https://console.cloud.google.com/apis/library/script.googleapis.com).

## Auth Scopes

| Scope | Description |
|-------|-------------|
| `https://mail.google.com/` | Read, compose, send, and permanently delete all your email from Gmail |
| `https://www.google.com/calendar/feeds` | See, edit, share, and permanently delete all the calendars you can access using Google Calendar |
| `https://www.google.com/m8/feeds` | See, edit, download, and permanently delete your contacts |
| `https://www.googleapis.com/auth/admin.directory.group` | View and manage the provisioning of groups on your domain |
| `https://www.googleapis.com/auth/admin.directory.user` | View and manage the provisioning of users on your domain |
| `https://www.googleapis.com/auth/documents` | See, edit, create, and delete all your Google Docs documents |
| `https://www.googleapis.com/auth/drive` | See, edit, create, and delete all of your Google Drive files |
| `https://www.googleapis.com/auth/forms` | View and manage your forms in Google Drive |
| `https://www.googleapis.com/auth/forms.currentonly` | View and manage forms that this application has been installed in |
| `https://www.googleapis.com/auth/groups` | View and manage your Google Groups |
| `https://www.googleapis.com/auth/script.deployments` | Create and update Google Apps Script deployments |
| `https://www.googleapis.com/auth/script.deployments.readonly` | View Google Apps Script deployments |
| `https://www.googleapis.com/auth/script.metrics` | View Google Apps Script project's metrics |
| `https://www.googleapis.com/auth/script.processes` | View Google Apps Script processes |
| `https://www.googleapis.com/auth/script.projects` | Create and update Google Apps Script projects |
| `https://www.googleapis.com/auth/script.projects.readonly` | View Google Apps Script projects |
| `https://www.googleapis.com/auth/spreadsheets` | See, edit, create, and delete all your Google Sheets spreadsheets |
| `https://www.googleapis.com/auth/userinfo.email` | See your primary Google Account email address |

## Service Endpoint

- **Root URL**: `https://script.googleapis.com/`
- **Service path**: ``
- **Batch path**: `batch`

## Authentication Methods

See `references/auth.md` for detailed setup. Quick summary:

1. **OAuth2** - For user data access (Gmail, Drive, Calendar, etc.)
2. **Service Account** - For server-to-server (Cloud APIs, admin tasks)
3. **API Key** - For public data (Maps, YouTube public, Custom Search)
4. **ADC (Application Default Credentials)** - Auto-detects environment

