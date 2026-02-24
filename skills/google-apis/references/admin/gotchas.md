# Admin SDK API - Gotchas & Troubleshooting

## Rate Limits

### Per-User Rate Limits

- **Default**: 2,400 queries per minute per user per Google Cloud project
- This limit is configurable -- increase it from the [Admin SDK API Quotas page](https://console.cloud.google.com/apis/api/admin.googleapis.com/quotas) in the Google Cloud Console
- When exceeded, the API returns HTTP `403` with reason `userRateLimitExceeded`

### Per-Account Rate Limits (Not Configurable)

- HTTP `429` with reason `rateLimitExceeded` indicates you have hit a per-Workspace-account concurrent request limit
- This limit applies across **all** API clients and users for the entire Workspace account
- This limit **cannot** be increased -- you must slow down requests

### Resource-Specific Rate Limits

| Resource | Operation | Limit |
|----------|-----------|-------|
| Users | Create | 10 per domain per second |
| Users | Rename propagation | Up to 10 minutes to propagate |
| Organizational Units | Create/Update | 1 per customer per second |
| Mobile devices | Action requests | 20 per second |
| Mobile devices | Delete requests | 20 per second |
| Mobile devices | Get requests | 10 per second |
| Mobile devices | List requests | 10 per second |

### Quotas & Size Limits

| Resource | Quota |
|----------|-------|
| Users per page (`maxResults`) | Default 100, max 500 |
| Groups per page (`maxResults`) | Default and max 200 |
| Group members per page | Default and max 200 |
| Chrome/Mobile devices per page | Default and max 100 |
| User aliases per account | 30 |
| Domain aliases | 20 max |
| Domains per account | 600 (1 primary + 599 additional) |
| Group description length | 4,096 characters |
| OU hierarchy depth | 35 levels max |
| OUs per customer | 40,000 max |
| OU user move batch | 20 users at a time |
| Chrome device `annotatedLocation` | 200 characters |
| Chrome device `notes` | 500 characters |
| Chrome device `user` | 100 characters |
| User first/last name | 40 characters max; supports Unicode/UTF-8 |
| Password | 8-100 ASCII characters (cleartext) or valid hash key |

- Check quotas at [Google Cloud Console > APIs & Services > Quotas](https://console.cloud.google.com/apis/api/admin.googleapis.com/quotas)
- Monitor usage via `X-RateLimit-*` response headers (when available)

---

## Permissions & Authentication

### Super Admin vs Delegated Admin

- **Super admins** have full access to all Directory API operations
- **Delegated admins** have limited scope based on their assigned admin roles and can only manage resources within their assigned organizational units
- The `isAdmin` field indicates a super admin; `isDelegatedAdmin` indicates a delegated admin
- Some operations (e.g., `users.makeAdmin`) require super admin privileges
- Editing read-only fields like `isAdmin` in a request body is silently ignored

### Domain-Wide Delegation (Service Accounts)

- Service accounts **must** have domain-wide delegation enabled to call Admin SDK APIs
- Configure delegation in the Admin console under **Security > API Controls > Domain-wide delegation**
- The service account must impersonate an admin user:

```typescript
const auth = new google.auth.GoogleAuth({
  keyFile: "service-account-key.json",
  scopes: ["https://www.googleapis.com/auth/admin.directory.user"],
  clientOptions: {
    subject: "admin@example.com", // must be a real admin account
  },
});
```

- Without `subject` (impersonation), all calls will fail with `403 Not Authorized to access this resource/api`

### Auth Scopes: Read-Only vs Read-Write

| Scope | Access Level |
|-------|-------------|
| `admin.directory.user.readonly` | Read user profiles (list, get) |
| `admin.directory.user` | Full user management (create, update, delete) |
| `admin.directory.group.readonly` | Read groups and membership |
| `admin.directory.group` | Full group management |
| `admin.directory.orgunit.readonly` | Read org units |
| `admin.directory.orgunit` | Full org unit management |
| `admin.directory.device.mobile.readonly` | Read mobile devices |
| `admin.directory.device.mobile.action` | Take actions on mobile devices |
| `admin.directory.device.chromeos.readonly` | Read Chrome OS devices |
| `admin.directory.device.chromeos` | Full Chrome OS device management |
| `admin.reports.audit.readonly` | Read audit logs |
| `admin.reports.usage.readonly` | Read usage reports |

- Always use the **narrowest scope** that satisfies your needs
- Non-admin users can read public user profiles with `admin.directory.user.readonly` and `viewType: "domain_public"`

---

## Common Errors

| Code | Reason | Meaning | Fix |
|------|--------|---------|-----|
| 400 | `invalid` | Invalid request | Check parameter types and required fields |
| 401 | `unauthorized` | Unauthenticated | Refresh token or check credentials |
| 403 | `forbidden` | Forbidden | Enable API in console, check scopes, verify admin privileges |
| 403 | `userRateLimitExceeded` | Per-user rate limit hit | Increase quota in Cloud Console or slow down |
| 403 | `quotaExceeded` | Concurrent request limit | Retry with exponential backoff |
| 404 | `notFound` | Not found | Verify resource ID/email and API version |
| 409 | `duplicate` | Conflict | Entity already exists (e.g., duplicate email) |
| 429 | `rateLimitExceeded` | Per-account rate limit (cannot increase) | Exponential backoff; this is account-wide |
| 500 | `internalError` | Server error | Retry with backoff |
| 503 | `serviceUnavailable` | Service unavailable | Retry with backoff |

---

## Exponential Backoff

Google APIs require exponential backoff for retries. The formula is `(2^n) + random_milliseconds` where `n` starts at 0 and increments each retry, up to a max of 5 retries (~32 seconds total).

```typescript
async function withBackoff<T>(fn: () => Promise<T>, maxRetries = 5): Promise<T> {
  for (let i = 0; i < maxRetries; i++) {
    try {
      return await fn();
    } catch (err: any) {
      if (i === maxRetries - 1 || ![403, 429, 500, 503].includes(err.code)) throw err;
      // Only retry 403 if it's a rate limit (userRateLimitExceeded / quotaExceeded)
      if (err.code === 403) {
        const reason = err.errors?.[0]?.reason;
        if (reason !== "userRateLimitExceeded" && reason !== "quotaExceeded") throw err;
      }
      const delay = Math.pow(2, i) * 1000 + Math.random() * 1000;
      await new Promise(r => setTimeout(r, delay));
    }
  }
  throw new Error('Unreachable');
}
```

---

## Google API Error Response Format

All Google APIs return errors in this format:

```json
{
  "error": {
    "code": 403,
    "message": "The caller does not have permission",
    "status": "PERMISSION_DENIED",
    "errors": [{ "domain": "global", "reason": "forbidden" }]
  }
}
```

---

## Common Gotchas

### User Management

- **Renaming users is slow**: Changing `primaryEmail` takes up to 10 minutes to propagate. Log the user out first. The old email becomes an alias automatically and is not available as a new username.
- **Undelete requires user ID, not email**: You must use the unique numeric user ID from `users.list({ showDeleted: true })`, not the email address.
- **Deleted users expire after 20 days**: After that, the account cannot be restored.
- **Mailbox setup is async**: New user accounts with mail licenses get their mailbox provisioned asynchronously -- it may take a few minutes before `isMailboxSetup` is `true`.
- **Creating users costs money on flexible plans**: Each `users.insert` call on a flexible billing plan creates a new license charge.
- **Password requirements**: If `hashFunction` is set, password must be a valid hash. If not, it must be 8-100 ASCII characters in cleartext.

### Group Management

- **Nested group propagation delay**: When adding a group as a member of another group, it may take up to 10 minutes for the child group's members to appear as members of the parent group.
- **Cyclic membership is forbidden**: `GROUP_CANNOT_CONTAIN_CYCLE` -- if group1 is in group2, group2 cannot be in group1.
- **Deleting a group does NOT delete member accounts**: Only the group entity and its membership records are removed.
- **Cannot combine `customer` and `userKey`**: When listing groups, using both `customer` and `userKey` parameters together returns an error. Make two separate requests.
- **Legacy edition limits**: G Suite Legacy Free Edition is limited to 10 groups and 100 members per group. Other editions have no limits.

### Pagination

- **User aliases and org units do NOT paginate**: They return all results in a single response.
- **Always include `nextPageToken` in your field mask**: When using the `fields` parameter, include `nextPageToken` in your field projection or pagination will break silently.
- **Results are sorted alphabetically by email**: Users are always returned in case-insensitive alphabetical order by primary email.

### Organizational Units

- **Hierarchy limit**: Max 35 levels of depth and 40,000 total OUs per customer.
- **Rate limit**: Only 1 create/update per customer per second.
- **Moving users between OUs changes service access**: A user's OU determines which Google Workspace services they can access.

---

## Tips

- Always enable `admin.googleapis.com` in your GCP project before making calls
- Use the `fields` parameter to request only needed fields (reduces response size and latency)
- For Workspace APIs, ensure the OAuth consent screen is configured (set to **Internal** for org-only access)
- Service accounts need domain-wide delegation for Workspace APIs acting on behalf of users
- Use `my_customer` as a shorthand for your account's `customerId` in most API calls
- Use `viewType: "domain_public"` for non-admin users to read public user profiles
- Do not use group or user email addresses as persistent keys -- they can change. Use the unique `id` field instead.
- The `customer` query string for multi-domain accounts retrieves users/groups across **all** domains
