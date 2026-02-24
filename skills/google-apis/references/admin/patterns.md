# Admin SDK API - Common Patterns

> The Admin SDK includes two main APIs: the **Directory API** (`directory_v1`) for managing users, groups, devices, and org units, and the **Reports API** (`reports_v1`) for audit and usage data. Most patterns below target the Directory API.

## Initialization

```typescript
import { google } from "googleapis";

// Directory API (users, groups, orgunits, devices)
const directory = google.admin({ version: "directory_v1", auth });

// Reports API (audit logs, usage reports)
const reports = google.admin({ version: "reports_v1", auth });
```

---

## User Management

### List All Users in the Domain

```typescript
const res = await directory.users.list({
  customer: "my_customer", // or specific customerId
  maxResults: 500, // max 500 per page for users
  orderBy: "email",
});
const users = res.data.users || [];
```

### List Users with Pagination (All Users)

```typescript
let pageToken: string | undefined;
const allUsers = [];
do {
  const res = await directory.users.list({
    customer: "my_customer",
    maxResults: 500,
    orderBy: "email",
    pageToken,
  });
  allUsers.push(...(res.data.users || []));
  pageToken = res.data.nextPageToken;
} while (pageToken);
```

### List Users in a Specific Domain

```typescript
const res = await directory.users.list({
  domain: "subdomain.example.com",
  maxResults: 500,
  orderBy: "email",
});
```

### Search Users by Query

```typescript
// Search by name, email, or other fields
const res = await directory.users.list({
  customer: "my_customer",
  query: "givenName:John", // or "email:john*", "orgName:Engineering"
  maxResults: 500,
});
```

### Get a Single User

```typescript
// userKey can be: primary email, alias email, or unique user ID
const res = await directory.users.get({
  userKey: "liz@example.com",
});
const user = res.data;
```

### Create a User

```typescript
const res = await directory.users.insert({
  requestBody: {
    primaryEmail: "newuser@example.com",
    name: {
      givenName: "Jane",
      familyName: "Doe",
    },
    password: "a-secure-password", // 8-100 chars; or hash with hashFunction
    changePasswordAtNextLogin: true,
    orgUnitPath: "/Engineering", // optional, defaults to "/"
  },
});
```

**Note**: You cannot create more than 10 users per domain per second.

### Update a User

```typescript
// Supports patch semantics -- only send fields you want to change
const res = await directory.users.update({
  userKey: "liz@example.com",
  requestBody: {
    name: { givenName: "Liz" },
    suspended: false,
    orgUnitPath: "/Sales",
  },
});
```

**Note**: Renaming a user (changing `primaryEmail`) can take up to 10 minutes to propagate. The old email becomes an alias automatically.

### Delete a User

```typescript
await directory.users.delete({
  userKey: "liz@example.com",
});
```

### Undelete a User (within 20 days)

```typescript
// Must use the unique user ID, not email
await directory.users.undelete({
  userKey: "12309329403209438205",
  requestBody: {
    orgUnitPath: "/", // required: target OU for the restored user
  },
});
```

### List Recently Deleted Users

```typescript
const res = await directory.users.list({
  customer: "my_customer",
  showDeleted: "true",
  maxResults: 500,
});
```

### Make a User a Super Administrator

```typescript
await directory.users.makeAdmin({
  userKey: "liz@example.com",
  requestBody: { status: true },
});
```

---

## Group Management

### Create a Group

```typescript
const res = await directory.groups.insert({
  requestBody: {
    email: "engineering@example.com",
    name: "Engineering Team",
    description: "All engineers", // max 4,096 chars
  },
});
```

### Update a Group

```typescript
const res = await directory.groups.update({
  groupKey: "engineering@example.com", // or group ID or alias
  requestBody: {
    name: "Engineering & Platform Team",
  },
});
```

### List All Groups

```typescript
let pageToken: string | undefined;
const allGroups = [];
do {
  const res = await directory.groups.list({
    customer: "my_customer",
    maxResults: 200, // max 200 per page for groups
    pageToken,
  });
  allGroups.push(...(res.data.groups || []));
  pageToken = res.data.nextPageToken;
} while (pageToken);
```

### List Groups for a Specific Member

```typescript
const res = await directory.groups.list({
  userKey: "liz@example.com", // cannot combine with `customer` param
  maxResults: 200,
});
```

### Delete a Group

```typescript
await directory.groups.delete({
  groupKey: "engineering@example.com",
});
// Note: members are removed but their user accounts are NOT deleted
```

---

## Group Membership Management

### Add a Member to a Group

```typescript
const res = await directory.members.insert({
  groupKey: "engineering@example.com",
  requestBody: {
    email: "newmember@example.com",
    role: "MEMBER", // MEMBER, MANAGER, or OWNER
  },
});
```

### List Members of a Group

```typescript
let pageToken: string | undefined;
const allMembers = [];
do {
  const res = await directory.members.list({
    groupKey: "engineering@example.com",
    maxResults: 200,
    pageToken,
  });
  allMembers.push(...(res.data.members || []));
  pageToken = res.data.nextPageToken;
} while (pageToken);
```

### Check if a User is a Member

```typescript
try {
  const res = await directory.members.get({
    groupKey: "engineering@example.com",
    memberKey: "liz@example.com",
  });
  console.log(`Role: ${res.data.role}`); // MEMBER, MANAGER, or OWNER
} catch (err: any) {
  if (err.code === 404) {
    console.log("Not a member");
  }
}
```

### Update a Member's Role

```typescript
await directory.members.update({
  groupKey: "engineering@example.com",
  memberKey: "liz@example.com",
  requestBody: {
    role: "MANAGER",
  },
});
```

### Remove a Member from a Group

```typescript
await directory.members.delete({
  groupKey: "engineering@example.com",
  memberKey: "liz@example.com",
});
```

---

## Organizational Units (OUs)

### List All OUs

```typescript
const res = await directory.orgunits.list({
  customerId: "my_customer",
  type: "all", // "all" for full tree, "children" for immediate children only
});
const orgunits = res.data.organizationUnits || [];
```

### Create an OU

```typescript
const res = await directory.orgunits.insert({
  customerId: "my_customer",
  requestBody: {
    name: "Engineering",
    parentOrgUnitPath: "/", // parent OU path
    description: "Engineering department",
  },
});
```

**Note**: Max 1 OU create/update per customer per second. Hierarchy limited to 35 levels deep. Max 40,000 OUs per customer.

### Update an OU

```typescript
const res = await directory.orgunits.update({
  customerId: "my_customer",
  orgUnitPath: "Engineering", // path without leading "/"
  requestBody: {
    description: "Engineering and Platform",
  },
});
```

### Delete an OU

```typescript
await directory.orgunits.delete({
  customerId: "my_customer",
  orgUnitPath: "Engineering/SubTeam",
});
```

---

## Domain Management

### List All Domains

```typescript
const res = await directory.domains.list({
  customer: "my_customer",
});
const domains = res.data.domains || [];
```

### Get a Specific Domain

```typescript
const res = await directory.domains.get({
  customer: "my_customer",
  domainName: "example.com",
});
```

---

## Mobile Device Management

### List Mobile Devices

```typescript
const res = await directory.mobiledevices.list({
  customerId: "my_customer",
  maxResults: 100, // max 100 per page for devices
});
```

### Take Action on a Mobile Device (Wipe, Block, etc.)

```typescript
await directory.mobiledevices.action({
  customerId: "my_customer",
  resourceId: "device-resource-id",
  requestBody: {
    action: "admin_remote_wipe", // or "admin_account_wipe", "approve", "block", "cancel_remote_wipe_then_activate", "cancel_remote_wipe_then_block"
  },
});
```

**Rate limits for mobile devices**: 20 action/s, 20 delete/s, 10 get/s, 10 list/s.

---

## Chrome OS Device Management

### List Chrome OS Devices

```typescript
const res = await directory.chromeosdevices.list({
  customerId: "my_customer",
  maxResults: 100,
  orderBy: "serialNumber",
});
```

### Update Chrome OS Device (Annotate)

```typescript
await directory.chromeosdevices.update({
  customerId: "my_customer",
  deviceId: "device-id",
  requestBody: {
    annotatedUser: "liz@example.com", // max 100 chars
    annotatedLocation: "Building 42, Floor 3", // max 200 chars
    notes: "Assigned to Liz in Engineering", // max 500 chars
    orgUnitPath: "/Laptops",
  },
});
```

### Take Action on a Chrome OS Device

```typescript
await directory.chromeosdevices.action({
  customerId: "my_customer",
  resourceId: "device-resource-id",
  requestBody: {
    action: "deprovision", // or "disable", "reenable"
    deprovisionReason: "retiring_device", // required for deprovision
  },
});
```

---

## Admin Reports & Audit Logs

### List Admin Audit Activities

```typescript
const res = await reports.activities.list({
  userKey: "all", // "all" or a specific user email
  applicationName: "admin", // admin, drive, login, calendar, token, etc.
  maxResults: 1000,
  startTime: "2025-01-01T00:00:00.000Z", // RFC 3339
  endTime: "2025-01-31T23:59:59.999Z",
});
const activities = res.data.items || [];
```

### List Login Events

```typescript
const res = await reports.activities.list({
  userKey: "all",
  applicationName: "login",
  eventName: "login_success", // or "login_failure"
  maxResults: 1000,
});
```

### Get Customer Usage Report

```typescript
// Date format: yyyy-mm-dd, based on UTC-8 (Pacific Time)
const res = await reports.customerUsageReports.get({
  date: "2025-01-15",
});
```

### Get User Usage Report

```typescript
const res = await reports.userUsageReport.get({
  userKey: "all", // or specific user email
  date: "2025-01-15",
  parameters: "accounts:num_users,accounts:used_quota_in_mb",
});
```

---

## Customer Management

### Get Customer Info

```typescript
const res = await directory.customers.get({
  customerKey: "my_customer", // or specific customerId
});
const customer = res.data;
// customer.id, customer.customerDomain, customer.postalAddress, etc.
```

### Update Customer Info

```typescript
const res = await directory.customers.update({
  customerKey: "my_customer",
  requestBody: {
    language: "en",
    postalAddress: {
      contactName: "Admin",
      organizationName: "Acme Corp",
      countryCode: "US",
    },
  },
});
```

---

## Standard Patterns

### Pagination

Most `list` methods support pagination with `pageToken`/`nextPageToken`. Max page sizes differ by resource:

| Resource | Default per page | Maximum per page |
|----------|-----------------|-----------------|
| Users | 100 | 500 |
| Groups | 200 | 200 |
| Group members | 200 | 200 |
| Chrome/Mobile devices | 100 | 100 |

```typescript
let pageToken: string | undefined;
const allItems = [];
do {
  const res = await directory.users.list({
    customer: "my_customer",
    maxResults: 500,
    pageToken,
  });
  allItems.push(...(res.data.users || []));
  pageToken = res.data.nextPageToken;
} while (pageToken);
```

### Using the `fields` Parameter

Reduce response size and latency by requesting only needed fields:

```typescript
const res = await directory.users.list({
  customer: "my_customer",
  maxResults: 500,
  fields: "users(primaryEmail,name,orgUnitPath),nextPageToken",
});
```

### Error Handling

```typescript
try {
  const res = await directory.users.get({ userKey: "liz@example.com" });
} catch (err: any) {
  if (err.code === 429) {
    // Rate limited -- implement exponential backoff
  } else if (err.code === 403) {
    // Permission denied -- check scopes, admin privileges, API enablement
    // Could also be userRateLimitExceeded (2,400 queries/min/user default)
  } else if (err.code === 404) {
    // Not found -- verify user/group exists
  } else if (err.code === 409) {
    // Conflict -- entity already exists (e.g., duplicate email)
  }
  console.error(err.message);
}
```

### Batch Requests

For multiple independent operations, use batch requests to reduce round trips:

```typescript
// googleapis supports batching via gaxios or manual HTTP batch
// See references/googleapis-client.md for batch patterns
```
