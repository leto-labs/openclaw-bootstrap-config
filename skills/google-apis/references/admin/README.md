# Admin SDK API

> The Admin SDK lets administrators of Google Workspace domains programmatically manage users, groups, organizational units, devices, domains, and roles. It also provides audit logs and usage reports for the entire domain.

## Overview

- **API**: `admin`
- **Versions**: `directory_v1` (Directory API), `reports_v1` (Reports API)
- **Base URL**: `https://admin.googleapis.com/`
- **Docs**: [https://developers.google.com/workspace/admin/](https://developers.google.com/workspace/admin/)

## When to Use

Use the Admin SDK when you need to:

- **Provision and manage user accounts** -- create, update, suspend, delete, or undelete users across one or multiple domains in your Workspace account. Automate onboarding/offboarding workflows.
- **Manage groups and membership** -- create distribution lists or security groups, add/remove members, change roles (MEMBER, MANAGER, OWNER). Sync group membership with an external directory (LDAP, HR system).
- **Organize users into organizational units (OUs)** -- create and manage the OU hierarchy to control which Workspace services and policies apply to different sets of users.
- **Manage domains** -- list and retrieve information about primary and additional domains associated with the Workspace account.
- **Manage mobile devices** -- list enrolled mobile devices, approve or block them, trigger remote wipes for lost or compromised devices.
- **Manage Chrome OS devices** -- annotate, disable, deprovision, or move Chrome OS devices between organizational units.
- **Audit admin and user activity** -- retrieve audit logs for admin console actions, Drive activity, login events, OAuth token grants, and more.
- **Generate usage reports** -- pull aggregated usage statistics for the entire customer account or individual users (storage, app adoption, login frequency).
- **Manage admin roles and privileges** -- assign and revoke delegated admin roles programmatically.
- **Manage customer settings** -- retrieve or update account-level settings like postal address and language.

## Quick Start

### googleapis (Node.js)

```typescript
import { google } from "googleapis";

// Authenticate with a service account that has domain-wide delegation
const auth = new google.auth.GoogleAuth({
  keyFile: "service-account-key.json",
  scopes: ["https://www.googleapis.com/auth/admin.directory.user"],
  clientOptions: {
    subject: "admin@example.com", // impersonate an admin user
  },
});

// Directory API -- manage users, groups, devices, org units
const directory = google.admin({ version: "directory_v1", auth });

// List the first 10 users
const res = await directory.users.list({
  customer: "my_customer",
  maxResults: 10,
  orderBy: "email",
});
const users = res.data.users || [];
users.forEach((u) => console.log(`${u.primaryEmail} (${u.name?.fullName})`));

// Reports API -- audit logs and usage reports
const reports = google.admin({ version: "reports_v1", auth });

const activities = await reports.activities.list({
  userKey: "all",
  applicationName: "admin",
  maxResults: 10,
});
```

### curl

```bash
# List users
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://admin.googleapis.com/admin/directory/v1/users?customer=my_customer&maxResults=10"

# Get a specific user
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://admin.googleapis.com/admin/directory/v1/users/liz@example.com"

# List groups
curl -H "Authorization: Bearer $(gcloud auth print-access-token)" \
  "https://admin.googleapis.com/admin/directory/v1/groups?customer=my_customer"
```

## Reference Files

| File | Contents |
|------|----------|
| `configuration.md` | Auth scopes (read-only vs read-write), enable API, project setup |
| `api.md` | Full method reference with parameters (Reports API) |
| `patterns.md` | Real-world patterns: user CRUD, groups, membership, OUs, devices, reports |
| `gotchas.md` | Rate limits, permissions, pagination limits, common errors, debugging |
