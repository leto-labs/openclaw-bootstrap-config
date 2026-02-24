# Groups Migration API - API Reference

**Version**: `v1` | **Methods**: 1 | **Schemas**: 1

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `groupsmigration.archive.insert` | POST | `groups/v1/groups/{groupId}/archive` | Inserts a new mail into the archive of the Google group. |

### `groupsmigration.archive.insert`

**POST** `groups/v1/groups/{groupId}/archive`

Inserts a new mail into the archive of the Google group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `groupId` | `string` | path | Yes | The group ID |

**Response**: `Groups`

```typescript
const res = await groupsmigration.archive.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/apps.groups.migration`

---

## Schemas

### `Groups`

JSON response template for groups migration API.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | The kind of insert resource this is. |
| `responseCode` | `string` | The status of the insert request. |

