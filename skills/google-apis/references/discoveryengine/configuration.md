# Discovery Engine API - Configuration

## Enable the API

```bash
gcloud services enable discoveryengine.googleapis.com
```

Or enable via [Google Cloud Console](https://console.cloud.google.com/apis/library/discoveryengine.googleapis.com).

## Auth Scopes

| Scope | Description |
|-------|-------------|
| `https://www.googleapis.com/auth/cloud-platform` | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account. |
| `https://www.googleapis.com/auth/cloud_search.query` | Search your organization's data in the Cloud Search index |
| `https://www.googleapis.com/auth/discoveryengine.assist.readwrite` | View your Agentspace chat history, including uploaded files and generated reports and visualizations, and interact with the Agentspace assistant on your behalf. |
| `https://www.googleapis.com/auth/discoveryengine.readwrite` | View, edit, create, and delete all your data associated with any Discovery Engine API product, such as Agentspace, Vertex AI Search, or NotebookLM Enterprise, including both end user data and administration or configuration data. |

## Service Endpoint

- **Root URL**: `https://discoveryengine.googleapis.com/`
- **Service path**: ``
- **Batch path**: `batch`

## Authentication Methods

See `references/auth.md` for detailed setup. Quick summary:

1. **OAuth2** - For user data access (Gmail, Drive, Calendar, etc.)
2. **Service Account** - For server-to-server (Cloud APIs, admin tasks)
3. **API Key** - For public data (Maps, YouTube public, Custom Search)
4. **ADC (Application Default Credentials)** - Auto-detects environment

