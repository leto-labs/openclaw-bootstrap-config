# Cloud Identity API - Configuration

## Enable the API

```bash
gcloud services enable cloudidentity.googleapis.com
```

Or enable via [Google Cloud Console](https://console.cloud.google.com/apis/library/cloudidentity.googleapis.com).

## Auth Scopes

| Scope | Description |
|-------|-------------|
| `https://www.googleapis.com/auth/cloud-identity.devices` | Private Service: https://www.googleapis.com/auth/cloud-identity.devices |
| `https://www.googleapis.com/auth/cloud-identity.devices.lookup` | See your device details |
| `https://www.googleapis.com/auth/cloud-identity.devices.readonly` | Private Service: https://www.googleapis.com/auth/cloud-identity.devices.readonly |
| `https://www.googleapis.com/auth/cloud-identity.groups` | See, change, create, and delete any of the Cloud Identity Groups that you can access, including the members of each group |
| `https://www.googleapis.com/auth/cloud-identity.groups.readonly` | See any Cloud Identity Groups that you can access, including group members and their emails |
| `https://www.googleapis.com/auth/cloud-identity.inboundsso` | See and edit all of the Inbound SSO profiles and their assignments to any Org Units or Google Groups in your Cloud Identity Organization. |
| `https://www.googleapis.com/auth/cloud-identity.inboundsso.readonly` | See all of the Inbound SSO profiles and their assignments to any Org Units or Google Groups in your Cloud Identity Organization. |
| `https://www.googleapis.com/auth/cloud-identity.policies` | See and edit policies in your Cloud Identity Organization. |
| `https://www.googleapis.com/auth/cloud-identity.policies.readonly` | See policies in your Cloud Identity Organization. |
| `https://www.googleapis.com/auth/cloud-platform` | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account. |

## Service Endpoint

- **Root URL**: `https://cloudidentity.googleapis.com/`
- **Service path**: ``
- **Batch path**: `batch`

## Authentication Methods

See `references/auth.md` for detailed setup. Quick summary:

1. **OAuth2** - For user data access (Gmail, Drive, Calendar, etc.)
2. **Service Account** - For server-to-server (Cloud APIs, admin tasks)
3. **API Key** - For public data (Maps, YouTube public, Custom Search)
4. **ADC (Application Default Credentials)** - Auto-detects environment

