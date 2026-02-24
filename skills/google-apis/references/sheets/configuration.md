# Google Sheets API - Configuration

## Enable the API

```bash
gcloud services enable sheets.googleapis.com
```

Or enable via [Google Cloud Console](https://console.cloud.google.com/apis/library/sheets.googleapis.com).

## Auth Scopes

| Scope | Description |
|-------|-------------|
| `https://www.googleapis.com/auth/spreadsheets` | Read and write access to all spreadsheets |
| `https://www.googleapis.com/auth/spreadsheets.readonly` | Read-only access to all spreadsheets |
| `https://www.googleapis.com/auth/drive` | Full Drive access (includes Sheets, needed for creating spreadsheets) |
| `https://www.googleapis.com/auth/drive.file` | Access only to files created or opened by the app |
| `https://www.googleapis.com/auth/drive.readonly` | Read-only access to all Drive files (includes Sheets) |

**Recommendation**: Use the most restrictive scope that satisfies your use case. For read-only operations, use `spreadsheets.readonly`. For read/write on cell values and formatting, use `spreadsheets`. Only use `drive` or `drive.file` if you also need to create/delete spreadsheets.

## Service Endpoint

- **Root URL**: `https://sheets.googleapis.com/`
- **Service path**: `v4/spreadsheets/`
- **Batch path**: `batch`

## Authentication Methods

See `references/auth.md` for detailed setup. Quick summary:

1. **OAuth2** - For user data access (reading/writing user spreadsheets)
2. **Service Account** - For server-to-server (automated pipelines, shared spreadsheets)
3. **API Key** - Not typically useful for Sheets (most spreadsheets require auth)
4. **ADC (Application Default Credentials)** - Auto-detects environment

### Service Account Notes

When using a service account with Sheets:

- The service account has its own email address (e.g., `my-bot@project.iam.gserviceaccount.com`)
- To access an existing spreadsheet, share the spreadsheet with the service account email
- For Google Workspace users, domain-wide delegation lets a service account impersonate users
- Service accounts can create spreadsheets, but those are owned by the service account (not a real user)

## Install Client Library (Node.js)

```bash
npm install googleapis@105 @google-cloud/local-auth@2.1.0
```

## Spreadsheet ID

Extract from the spreadsheet URL:

```
https://docs.google.com/spreadsheets/d/SPREADSHEET_ID/edit#gid=SHEET_ID
```

The `SPREADSHEET_ID` is the long alphanumeric string between `/d/` and `/edit`.
