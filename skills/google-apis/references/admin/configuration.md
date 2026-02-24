# Admin SDK API - Configuration

## Enable the API

```bash
gcloud services enable admin.googleapis.com
```

Or enable via [Google Cloud Console](https://console.cloud.google.com/apis/library/admin.googleapis.com).

## Auth Scopes

### Directory API Scopes

| Scope | Description |
|-------|-------------|
| `https://www.googleapis.com/auth/admin.directory.user` | Full user management (create, update, delete) |
| `https://www.googleapis.com/auth/admin.directory.user.readonly` | View users and user profiles |
| `https://www.googleapis.com/auth/admin.directory.group` | Full group management |
| `https://www.googleapis.com/auth/admin.directory.group.readonly` | View groups and group membership |
| `https://www.googleapis.com/auth/admin.directory.orgunit` | Full organizational unit management |
| `https://www.googleapis.com/auth/admin.directory.orgunit.readonly` | View organizational units |
| `https://www.googleapis.com/auth/admin.directory.device.mobile` | Full mobile device management |
| `https://www.googleapis.com/auth/admin.directory.device.mobile.readonly` | View mobile devices |
| `https://www.googleapis.com/auth/admin.directory.device.mobile.action` | Take actions on mobile devices |
| `https://www.googleapis.com/auth/admin.directory.device.chromeos` | Full Chrome OS device management |
| `https://www.googleapis.com/auth/admin.directory.device.chromeos.readonly` | View Chrome OS devices |
| `https://www.googleapis.com/auth/admin.directory.domain` | Full domain management |
| `https://www.googleapis.com/auth/admin.directory.domain.readonly` | View domains |
| `https://www.googleapis.com/auth/admin.directory.customer` | Full customer management |
| `https://www.googleapis.com/auth/admin.directory.customer.readonly` | View customer info |
| `https://www.googleapis.com/auth/admin.directory.rolemanagement` | Manage admin roles |
| `https://www.googleapis.com/auth/admin.directory.rolemanagement.readonly` | View admin roles |
| `https://www.googleapis.com/auth/admin.directory.userschema` | Manage custom user schemas |
| `https://www.googleapis.com/auth/admin.directory.userschema.readonly` | View custom user schemas |

### Reports API Scopes

| Scope | Description |
|-------|-------------|
| `https://www.googleapis.com/auth/admin.reports.audit.readonly` | View audit reports for your Google Workspace domain |
| `https://www.googleapis.com/auth/admin.reports.usage.readonly` | View usage reports for your Google Workspace domain |

## Service Endpoint

- **Root URL**: `https://admin.googleapis.com/`
- **Service path**: ``
- **Batch path**: `batch`

## Authentication Methods

See `references/auth.md` for detailed setup. Quick summary:

1. **OAuth2** - For user data access (Gmail, Drive, Calendar, etc.)
2. **Service Account** - For server-to-server (Cloud APIs, admin tasks)
3. **API Key** - For public data (Maps, YouTube public, Custom Search)
4. **ADC (Application Default Credentials)** - Auto-detects environment

