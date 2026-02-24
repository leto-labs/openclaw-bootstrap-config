# Firebase Realtime Database Management API - API Reference

**Version**: `v1beta` | **Methods**: 7 | **Schemas**: 5

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `firebasedatabase.projects.locations.instances.create` | POST | `v1beta/{+parent}/instances` | Requests that a new DatabaseInstance be created. The state of a successfully created DatabaseInst... |
| `firebasedatabase.projects.locations.instances.get` | GET | `v1beta/{+name}` | Gets the DatabaseInstance identified by the specified resource name. |
| `firebasedatabase.projects.locations.instances.list` | GET | `v1beta/{+parent}/instances` | Lists each DatabaseInstance associated with the specified parent project. The list items are retu... |
| `firebasedatabase.projects.locations.instances.delete` | DELETE | `v1beta/{+name}` | Marks a DatabaseInstance to be deleted. The DatabaseInstance will be set to the DELETED state for... |
| `firebasedatabase.projects.locations.instances.undelete` | POST | `v1beta/{+name}:undelete` | Restores a DatabaseInstance that was previously marked to be deleted. After the delete method is ... |
| `firebasedatabase.projects.locations.instances.disable` | POST | `v1beta/{+name}:disable` | Disables a DatabaseInstance. The database can be re-enabled later using ReenableDatabaseInstance.... |
| `firebasedatabase.projects.locations.instances.reenable` | POST | `v1beta/{+name}:reenable` | Enables a DatabaseInstance. The database must have been disabled previously using DisableDatabase... |

### `firebasedatabase.projects.locations.instances.create`

**POST** `v1beta/{+parent}/instances`

Requests that a new DatabaseInstance be created. The state of a successfully created DatabaseInstance is ACTIVE. Only available for projects on the Blaze plan. Projects can be upgraded using the Cloud Billing API https://cloud.google.com/billing/reference/rest/v1/projects/updateBillingInfo. Note that it might take a few minutes for billing enablement state to propagate to Firebase systems.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent project for which to create a database instance, in the form: `projects/{project-number}/locatio... |
| `databaseId` | `string` | query | No | The globally unique identifier of the database instance. |
| `validateOnly` | `boolean` | query | No | When set to true, the request will be validated but not submitted. |

**Request body**: `DatabaseInstance`

**Response**: `DatabaseInstance`

```typescript
const res = await firebasedatabase.instances.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebasedatabase.projects.locations.instances.get`

**GET** `v1beta/{+name}`

Gets the DatabaseInstance identified by the specified resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified resource name of the database instance, in the form: `projects/{project-number}/locatio... |

**Response**: `DatabaseInstance`

```typescript
const res = await firebasedatabase.instances.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/firebase`
- `https://www.googleapis.com/auth/firebase.readonly`

---

### `firebasedatabase.projects.locations.instances.list`

**GET** `v1beta/{+parent}/instances`

Lists each DatabaseInstance associated with the specified parent project. The list items are returned in no particular order, but will be a consistent view of the database instances when additional requests are made with a `pageToken`. The resulting list contains instances in any STATE. The list results may be stale by a few seconds. Use GetDatabaseInstance for consistent reads.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent project for which to list database instances, in the form: `projects/{project-number}/locations/... |
| `pageSize` | `integer` | query | No | The maximum number of database instances to return in the response. The server may return fewer than this at its disc... |
| `pageToken` | `string` | query | No | Token returned from a previous call to `ListDatabaseInstances` indicating where in the set of database instances to r... |
| `showDeleted` | `boolean` | query | No | Indicate that DatabaseInstances in the `DELETED` state should also be returned. |

**Response**: `ListDatabaseInstancesResponse`

```typescript
const res = await firebasedatabase.instances.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`
- `https://www.googleapis.com/auth/firebase`
- `https://www.googleapis.com/auth/firebase.readonly`

---

### `firebasedatabase.projects.locations.instances.delete`

**DELETE** `v1beta/{+name}`

Marks a DatabaseInstance to be deleted. The DatabaseInstance will be set to the DELETED state for 20 days, and will be purged within 30 days. The default database cannot be deleted. IDs for deleted database instances may never be recovered or re-used. The Database may only be deleted if it is already in a DISABLED state.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified resource name of the database instance, in the form: `projects/{project-number}/locatio... |

**Response**: `DatabaseInstance`

```typescript
const res = await firebasedatabase.instances.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebasedatabase.projects.locations.instances.undelete`

**POST** `v1beta/{+name}:undelete`

Restores a DatabaseInstance that was previously marked to be deleted. After the delete method is used, DatabaseInstances are set to the DELETED state for 20 days, and will be purged within 30 days. Databases in the DELETED state can be undeleted without losing any data. This method may only be used on a DatabaseInstance in the DELETED state. Purged DatabaseInstances may not be recovered.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified resource name of the database instance, in the form: `projects/{project-number}/locatio... |

**Request body**: `UndeleteDatabaseInstanceRequest`

**Response**: `DatabaseInstance`

```typescript
const res = await firebasedatabase.instances.undelete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebasedatabase.projects.locations.instances.disable`

**POST** `v1beta/{+name}:disable`

Disables a DatabaseInstance. The database can be re-enabled later using ReenableDatabaseInstance. When a database is disabled, all reads and writes are denied, including view access in the Firebase console.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified resource name of the database instance, in the form: `projects/{project-number}/locatio... |

**Request body**: `DisableDatabaseInstanceRequest`

**Response**: `DatabaseInstance`

```typescript
const res = await firebasedatabase.instances.disable({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

### `firebasedatabase.projects.locations.instances.reenable`

**POST** `v1beta/{+name}:reenable`

Enables a DatabaseInstance. The database must have been disabled previously using DisableDatabaseInstance. The state of a successfully reenabled DatabaseInstance is ACTIVE.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified resource name of the database instance, in the form: `projects/{project-number}/locatio... |

**Request body**: `ReenableDatabaseInstanceRequest`

**Response**: `DatabaseInstance`

```typescript
const res = await firebasedatabase.instances.reenable({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/firebase`

---

## Schemas

### `DatabaseInstance`

Representation of a Realtime Database instance. Details on interacting with contents of a DatabaseInstance can be found at: https://firebase.google.com/docs/database/rest/start.

| Property | Type | Description |
|----------|------|-------------|
| `databaseUrl` | `string` | Output only. Output Only. The globally unique hostname of the database. |
| `name` | `string` | The fully qualified resource name of the database instance, in the form: `projects/{project-numbe... |
| `project` | `string` | Output only. The resource name of the project this instance belongs to. For example: `projects/{p... |
| `state` | `string` | Output only. The database's lifecycle state. Read-only. |
| `type` | `string` | Immutable. The database instance type. On creation only USER_DATABASE is allowed, which is also t... |

### `DisableDatabaseInstanceRequest`

The request sent to the DisableDatabaseInstance method.

### `ListDatabaseInstancesResponse`

The response from the ListDatabaseInstances method.

| Property | Type | Description |
|----------|------|-------------|
| `instances` | `array<DatabaseInstance>` | List of each DatabaseInstance that is in the parent Firebase project. |
| `nextPageToken` | `string` | If the result list is too large to fit in a single response, then a token is returned. If the str... |

### `ReenableDatabaseInstanceRequest`

The request sent to the ReenableDatabaseInstance method.

### `UndeleteDatabaseInstanceRequest`

The request sent to UndeleteDatabaseInstance method.

