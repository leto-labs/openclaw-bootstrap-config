# Backup for GKE API - API Reference

**Version**: `v1` | **Methods**: 67 | **Schemas**: 76

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `gkebackup.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `gkebackup.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `gkebackup.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `gkebackup.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `gkebackup.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `gkebackup.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `gkebackup.projects.locations.restoreChannels.list` | GET | `v1/{+parent}/restoreChannels` | Lists RestoreChannels in a given location. |
| `gkebackup.projects.locations.restoreChannels.get` | GET | `v1/{+name}` | Retrieve the details of a single RestoreChannel. |
| `gkebackup.projects.locations.restoreChannels.patch` | PATCH | `v1/{+name}` | Update a RestoreChannel. |
| `gkebackup.projects.locations.restoreChannels.create` | POST | `v1/{+parent}/restoreChannels` | Creates a new RestoreChannel in a given location. |
| `gkebackup.projects.locations.restoreChannels.delete` | DELETE | `v1/{+name}` | Deletes an existing RestoreChannel. |
| `gkebackup.projects.locations.restoreChannels.restorePlanBindings.get` | GET | `v1/{+name}` | Retrieve the details of a single RestorePlanBinding. |
| `gkebackup.projects.locations.restoreChannels.restorePlanBindings.list` | GET | `v1/{+parent}/restorePlanBindings` | Lists RestorePlanBindings in a given location. |
| `gkebackup.projects.locations.restorePlans.getTags` | GET | `v1/{+name}:getTags` | Returns tags directly bound to a GCP resource. |
| `gkebackup.projects.locations.restorePlans.delete` | DELETE | `v1/{+name}` | Deletes an existing RestorePlan. |
| `gkebackup.projects.locations.restorePlans.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `gkebackup.projects.locations.restorePlans.patch` | PATCH | `v1/{+name}` | Update a RestorePlan. |
| `gkebackup.projects.locations.restorePlans.get` | GET | `v1/{+name}` | Retrieve the details of a single RestorePlan. |
| `gkebackup.projects.locations.restorePlans.setTags` | POST | `v1/{+name}:setTags` | Updates tags directly bound to a GCP resource. |
| `gkebackup.projects.locations.restorePlans.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `gkebackup.projects.locations.restorePlans.list` | GET | `v1/{+parent}/restorePlans` | Lists RestorePlans in a given location. |
| `gkebackup.projects.locations.restorePlans.create` | POST | `v1/{+parent}/restorePlans` | Creates a new RestorePlan in a given location. |
| `gkebackup.projects.locations.restorePlans.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `gkebackup.projects.locations.restorePlans.restores.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `gkebackup.projects.locations.restorePlans.restores.get` | GET | `v1/{+name}` | Retrieves the details of a single Restore. |
| `gkebackup.projects.locations.restorePlans.restores.delete` | DELETE | `v1/{+name}` | Deletes an existing Restore. |
| `gkebackup.projects.locations.restorePlans.restores.patch` | PATCH | `v1/{+name}` | Update a Restore. |
| `gkebackup.projects.locations.restorePlans.restores.list` | GET | `v1/{+parent}/restores` | Lists the Restores for a given RestorePlan. |
| `gkebackup.projects.locations.restorePlans.restores.create` | POST | `v1/{+parent}/restores` | Creates a new Restore for the given RestorePlan. |
| `gkebackup.projects.locations.restorePlans.restores.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `gkebackup.projects.locations.restorePlans.restores.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `gkebackup.projects.locations.restorePlans.restores.volumeRestores.get` | GET | `v1/{+name}` | Retrieve the details of a single VolumeRestore. |
| `gkebackup.projects.locations.restorePlans.restores.volumeRestores.list` | GET | `v1/{+parent}/volumeRestores` | Lists the VolumeRestores for a given Restore. |
| `gkebackup.projects.locations.restorePlans.restores.volumeRestores.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `gkebackup.projects.locations.restorePlans.restores.volumeRestores.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `gkebackup.projects.locations.restorePlans.restores.volumeRestores.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `gkebackup.projects.locations.backupPlans.setTags` | POST | `v1/{+name}:setTags` | Updates tags directly bound to a GCP resource. |
| `gkebackup.projects.locations.backupPlans.create` | POST | `v1/{+parent}/backupPlans` | Creates a new BackupPlan in a given location. |
| `gkebackup.projects.locations.backupPlans.delete` | DELETE | `v1/{+name}` | Deletes an existing BackupPlan. |
| `gkebackup.projects.locations.backupPlans.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `gkebackup.projects.locations.backupPlans.get` | GET | `v1/{+name}` | Retrieve the details of a single BackupPlan. |
| `gkebackup.projects.locations.backupPlans.list` | GET | `v1/{+parent}/backupPlans` | Lists BackupPlans in a given location. |
| `gkebackup.projects.locations.backupPlans.patch` | PATCH | `v1/{+name}` | Update a BackupPlan. |
| `gkebackup.projects.locations.backupPlans.getTags` | GET | `v1/{+name}:getTags` | Returns tags directly bound to a GCP resource. |
| `gkebackup.projects.locations.backupPlans.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `gkebackup.projects.locations.backupPlans.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `gkebackup.projects.locations.backupPlans.backups.create` | POST | `v1/{+parent}/backups` | Creates a Backup for the given BackupPlan. |
| `gkebackup.projects.locations.backupPlans.backups.get` | GET | `v1/{+name}` | Retrieve the details of a single Backup. |
| `gkebackup.projects.locations.backupPlans.backups.getBackupIndexDownloadUrl` | GET | `v1/{+backup}:getBackupIndexDownloadUrl` | Retrieve the link to the backupIndex. |
| `gkebackup.projects.locations.backupPlans.backups.list` | GET | `v1/{+parent}/backups` | Lists the Backups for a given BackupPlan. |
| `gkebackup.projects.locations.backupPlans.backups.patch` | PATCH | `v1/{+name}` | Update a Backup. |
| `gkebackup.projects.locations.backupPlans.backups.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `gkebackup.projects.locations.backupPlans.backups.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `gkebackup.projects.locations.backupPlans.backups.delete` | DELETE | `v1/{+name}` | Deletes an existing Backup. |
| `gkebackup.projects.locations.backupPlans.backups.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `gkebackup.projects.locations.backupPlans.backups.volumeBackups.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `gkebackup.projects.locations.backupPlans.backups.volumeBackups.get` | GET | `v1/{+name}` | Retrieve the details of a single VolumeBackup. |
| `gkebackup.projects.locations.backupPlans.backups.volumeBackups.list` | GET | `v1/{+parent}/volumeBackups` | Lists the VolumeBackups for a given Backup. |
| `gkebackup.projects.locations.backupPlans.backups.volumeBackups.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `gkebackup.projects.locations.backupPlans.backups.volumeBackups.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `gkebackup.projects.locations.backupChannels.create` | POST | `v1/{+parent}/backupChannels` | Creates a new BackupChannel in a given location. |
| `gkebackup.projects.locations.backupChannels.list` | GET | `v1/{+parent}/backupChannels` | Lists BackupChannels in a given location. |
| `gkebackup.projects.locations.backupChannels.delete` | DELETE | `v1/{+name}` | Deletes an existing BackupChannel. |
| `gkebackup.projects.locations.backupChannels.get` | GET | `v1/{+name}` | Retrieve the details of a single BackupChannel. |
| `gkebackup.projects.locations.backupChannels.patch` | PATCH | `v1/{+name}` | Update a BackupChannel. |
| `gkebackup.projects.locations.backupChannels.backupPlanBindings.get` | GET | `v1/{+name}` | Retrieve the details of a single BackupPlanBinding. |
| `gkebackup.projects.locations.backupChannels.backupPlanBindings.list` | GET | `v1/{+parent}/backupPlanBindings` | Lists BackupPlanBindings in a given location. |

### `gkebackup.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await gkebackup.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.list`

**GET** `v1/{+name}/locations`

Lists information about the supported locations for this service. This method can be called in two ways: * **List all public locations:** Use the path `GET /v1/locations`. * **List project-visible locations:** Use the path `GET /v1/projects/{project_id}/locations`. This may include public locations as well as private or other locations specifically visible to the project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource that owns the locations collection, if applicable. |
| `extraLocationTypes` | `string` | query | No | Optional. Do not use this field. It is unsupported and is ignored unless explicitly documented otherwise. This is pri... |
| `filter` | `string` | query | No | A filter to narrow down results to a preferred subset. The filtering language accepts strings like `"displayName=toky... |
| `pageSize` | `integer` | query | No | The maximum number of results to return. If not set, the service selects a default. |
| `pageToken` | `string` | query | No | A page token received from the `next_page_token` field in the response. Send that page token to receive the subsequen... |

**Response**: `ListLocationsResponse`

```typescript
const res = await gkebackup.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await gkebackup.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.operations.list`

**GET** `v1/{+name}/operations`

Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation's parent resource. |
| `filter` | `string` | query | No | The standard list filter. |
| `pageSize` | `integer` | query | No | The standard list page size. |
| `pageToken` | `string` | query | No | The standard list page token. |
| `returnPartialSuccess` | `boolean` | query | No | When set to `true`, operations that are reachable are returned as normal, and those that are unreachable are returned... |

**Response**: `GoogleLongrunningListOperationsResponse`

```typescript
const res = await gkebackup.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `GoogleLongrunningCancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await gkebackup.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await gkebackup.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.restoreChannels.list`

**GET** `v1/{+parent}/restoreChannels`

Lists RestoreChannels in a given location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The location that contains the RestoreChannels to list. Format: `projects/*/locations/*` |
| `filter` | `string` | query | No | Optional. Field match expression used to filter the results. |
| `orderBy` | `string` | query | No | Optional. Field by which to sort the results. |
| `pageSize` | `integer` | query | No | Optional. The target number of results to return in a single response. If not specified, a default value will be chos... |
| `pageToken` | `string` | query | No | Optional. The value of next_page_token received from a previous `ListRestoreChannels` call. Provide this to retrieve ... |

**Response**: `ListRestoreChannelsResponse`

```typescript
const res = await gkebackup.restoreChannels.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.restoreChannels.get`

**GET** `v1/{+name}`

Retrieve the details of a single RestoreChannel.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Fully qualified RestoreChannel name. Format: `projects/*/locations/*/restoreChannels/*` |

**Response**: `RestoreChannel`

```typescript
const res = await gkebackup.restoreChannels.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.restoreChannels.patch`

**PATCH** `v1/{+name}`

Update a RestoreChannel.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The fully qualified name of the RestoreChannel. `projects/*/locations/*/restoreChannels/*` |
| `updateMask` | `string` | query | No | Optional. This is used to specify the fields to be overwritten in the RestoreChannel targeted for update. The values ... |

**Request body**: `RestoreChannel`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await gkebackup.restoreChannels.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.restoreChannels.create`

**POST** `v1/{+parent}/restoreChannels`

Creates a new RestoreChannel in a given location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The location within which to create the RestoreChannel. Format: `projects/*/locations/*` |
| `restoreChannelId` | `string` | query | No | Optional. The client-provided short name for the RestoreChannel resource. This name must: - be between 1 and 63 chara... |

**Request body**: `RestoreChannel`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await gkebackup.restoreChannels.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.restoreChannels.delete`

**DELETE** `v1/{+name}`

Deletes an existing RestoreChannel.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Fully qualified RestoreChannel name. Format: `projects/*/locations/*/restoreChannels/*` |
| `etag` | `string` | query | No | Optional. If provided, this value must match the current value of the target RestoreChannel's etag field or the reque... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await gkebackup.restoreChannels.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.restoreChannels.restorePlanBindings.get`

**GET** `v1/{+name}`

Retrieve the details of a single RestorePlanBinding.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Fully qualified RestorePlanBinding name. Format: `projects/*/locations/*/restoreChannels/*/restorePlanBindi... |

**Response**: `RestorePlanBinding`

```typescript
const res = await gkebackup.restorePlanBindings.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.restoreChannels.restorePlanBindings.list`

**GET** `v1/{+parent}/restorePlanBindings`

Lists RestorePlanBindings in a given location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The RestoreChannel that contains the ListRestorePlanBindings to list. Format: `projects/*/locations/*/resto... |
| `filter` | `string` | query | No | Optional. Field match expression used to filter the results. |
| `orderBy` | `string` | query | No | Optional. Field by which to sort the results. |
| `pageSize` | `integer` | query | No | Optional. The target number of results to return in a single response. If not specified, a default value will be chos... |
| `pageToken` | `string` | query | No | Optional. The value of next_page_token received from a previous `ListRestorePlanBindings` call. Provide this to retri... |

**Response**: `ListRestorePlanBindingsResponse`

```typescript
const res = await gkebackup.restorePlanBindings.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.restorePlans.getTags`

**GET** `v1/{+name}:getTags`

Returns tags directly bound to a GCP resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the service resource. |

**Response**: `GetTagsResponse`

```typescript
const res = await gkebackup.restorePlans.getTags({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.restorePlans.delete`

**DELETE** `v1/{+name}`

Deletes an existing RestorePlan.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Fully qualified RestorePlan name. Format: `projects/*/locations/*/restorePlans/*` |
| `etag` | `string` | query | No | Optional. If provided, this value must match the current value of the target RestorePlan's etag field or the request ... |
| `force` | `boolean` | query | No | Optional. If set to true, any Restores below this RestorePlan will also be deleted. Otherwise, the request will only ... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await gkebackup.restorePlans.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.restorePlans.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await gkebackup.restorePlans.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.restorePlans.patch`

**PATCH** `v1/{+name}`

Update a RestorePlan.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Identifier. The full name of the RestorePlan resource. Format: `projects/*/locations/*/restorePlans/*`. |
| `updateMask` | `string` | query | No | Optional. This is used to specify the fields to be overwritten in the RestorePlan targeted for update. The values for... |

**Request body**: `RestorePlan`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await gkebackup.restorePlans.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.restorePlans.get`

**GET** `v1/{+name}`

Retrieve the details of a single RestorePlan.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Fully qualified RestorePlan name. Format: `projects/*/locations/*/restorePlans/*` |

**Response**: `RestorePlan`

```typescript
const res = await gkebackup.restorePlans.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.restorePlans.setTags`

**POST** `v1/{+name}:setTags`

Updates tags directly bound to a GCP resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the service resource. |

**Request body**: `SetTagsRequest`

**Response**: `SetTagsResponse`

```typescript
const res = await gkebackup.restorePlans.setTags({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.restorePlans.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await gkebackup.restorePlans.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.restorePlans.list`

**GET** `v1/{+parent}/restorePlans`

Lists RestorePlans in a given location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The location that contains the RestorePlans to list. Format: `projects/*/locations/*` |
| `filter` | `string` | query | No | Optional. Field match expression used to filter the results. |
| `orderBy` | `string` | query | No | Optional. Field by which to sort the results. |
| `pageSize` | `integer` | query | No | Optional. The target number of results to return in a single response. If not specified, a default value will be chos... |
| `pageToken` | `string` | query | No | Optional. The value of next_page_token received from a previous `ListRestorePlans` call. Provide this to retrieve the... |

**Response**: `ListRestorePlansResponse`

```typescript
const res = await gkebackup.restorePlans.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.restorePlans.create`

**POST** `v1/{+parent}/restorePlans`

Creates a new RestorePlan in a given location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The location within which to create the RestorePlan. Format: `projects/*/locations/*` |
| `restorePlanId` | `string` | query | No | Required. The client-provided short name for the RestorePlan resource. This name must: - be between 1 and 63 characte... |

**Request body**: `RestorePlan`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await gkebackup.restorePlans.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.restorePlans.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await gkebackup.restorePlans.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.restorePlans.restores.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await gkebackup.restores.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.restorePlans.restores.get`

**GET** `v1/{+name}`

Retrieves the details of a single Restore.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the restore resource. Format: `projects/*/locations/*/restorePlans/*/restores/*` |

**Response**: `Restore`

```typescript
const res = await gkebackup.restores.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.restorePlans.restores.delete`

**DELETE** `v1/{+name}`

Deletes an existing Restore.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Full name of the Restore Format: `projects/*/locations/*/restorePlans/*/restores/*` |
| `etag` | `string` | query | No | Optional. If provided, this value must match the current value of the target Restore's etag field or the request is r... |
| `force` | `boolean` | query | No | Optional. If set to true, any VolumeRestores below this restore will also be deleted. Otherwise, the request will onl... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await gkebackup.restores.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.restorePlans.restores.patch`

**PATCH** `v1/{+name}`

Update a Restore.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Identifier. The full name of the Restore resource. Format: `projects/*/locations/*/restorePlans/*/restor... |
| `updateMask` | `string` | query | No | Optional. This is used to specify the fields to be overwritten in the Restore targeted for update. The values for eac... |

**Request body**: `Restore`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await gkebackup.restores.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.restorePlans.restores.list`

**GET** `v1/{+parent}/restores`

Lists the Restores for a given RestorePlan.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The RestorePlan that contains the Restores to list. Format: `projects/*/locations/*/restorePlans/*` |
| `filter` | `string` | query | No | Optional. Field match expression used to filter the results. |
| `orderBy` | `string` | query | No | Optional. Field by which to sort the results. |
| `pageSize` | `integer` | query | No | Optional. The target number of results to return in a single response. If not specified, a default value will be chos... |
| `pageToken` | `string` | query | No | Optional. The value of next_page_token received from a previous `ListRestores` call. Provide this to retrieve the sub... |

**Response**: `ListRestoresResponse`

```typescript
const res = await gkebackup.restores.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.restorePlans.restores.create`

**POST** `v1/{+parent}/restores`

Creates a new Restore for the given RestorePlan.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The RestorePlan within which to create the Restore. Format: `projects/*/locations/*/restorePlans/*` |
| `restoreId` | `string` | query | No | Required. The client-provided short name for the Restore resource. This name must: - be between 1 and 63 characters l... |

**Request body**: `Restore`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await gkebackup.restores.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.restorePlans.restores.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await gkebackup.restores.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.restorePlans.restores.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await gkebackup.restores.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.restorePlans.restores.volumeRestores.get`

**GET** `v1/{+name}`

Retrieve the details of a single VolumeRestore.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Full name of the VolumeRestore resource. Format: `projects/*/locations/*/restorePlans/*/restores/*/volumeRe... |

**Response**: `VolumeRestore`

```typescript
const res = await gkebackup.volumeRestores.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.restorePlans.restores.volumeRestores.list`

**GET** `v1/{+parent}/volumeRestores`

Lists the VolumeRestores for a given Restore.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The Restore that contains the VolumeRestores to list. Format: `projects/*/locations/*/restorePlans/*/restor... |
| `filter` | `string` | query | No | Optional. Field match expression used to filter the results. |
| `orderBy` | `string` | query | No | Optional. Field by which to sort the results. |
| `pageSize` | `integer` | query | No | Optional. The target number of results to return in a single response. If not specified, a default value will be chos... |
| `pageToken` | `string` | query | No | Optional. The value of next_page_token received from a previous `ListVolumeRestores` call. Provide this to retrieve t... |

**Response**: `ListVolumeRestoresResponse`

```typescript
const res = await gkebackup.volumeRestores.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.restorePlans.restores.volumeRestores.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await gkebackup.volumeRestores.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.restorePlans.restores.volumeRestores.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await gkebackup.volumeRestores.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.restorePlans.restores.volumeRestores.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await gkebackup.volumeRestores.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.backupPlans.setTags`

**POST** `v1/{+name}:setTags`

Updates tags directly bound to a GCP resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the service resource. |

**Request body**: `SetTagsRequest`

**Response**: `SetTagsResponse`

```typescript
const res = await gkebackup.backupPlans.setTags({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.backupPlans.create`

**POST** `v1/{+parent}/backupPlans`

Creates a new BackupPlan in a given location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The location within which to create the BackupPlan. Format: `projects/*/locations/*` |
| `backupPlanId` | `string` | query | No | Required. The client-provided short name for the BackupPlan resource. This name must: - be between 1 and 63 character... |

**Request body**: `BackupPlan`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await gkebackup.backupPlans.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.backupPlans.delete`

**DELETE** `v1/{+name}`

Deletes an existing BackupPlan.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Fully qualified BackupPlan name. Format: `projects/*/locations/*/backupPlans/*` |
| `etag` | `string` | query | No | Optional. If provided, this value must match the current value of the target BackupPlan's etag field or the request i... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await gkebackup.backupPlans.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.backupPlans.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await gkebackup.backupPlans.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.backupPlans.get`

**GET** `v1/{+name}`

Retrieve the details of a single BackupPlan.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Fully qualified BackupPlan name. Format: `projects/*/locations/*/backupPlans/*` |

**Response**: `BackupPlan`

```typescript
const res = await gkebackup.backupPlans.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.backupPlans.list`

**GET** `v1/{+parent}/backupPlans`

Lists BackupPlans in a given location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The location that contains the BackupPlans to list. Format: `projects/*/locations/*` |
| `filter` | `string` | query | No | Optional. Field match expression used to filter the results. |
| `orderBy` | `string` | query | No | Optional. Field by which to sort the results. |
| `pageSize` | `integer` | query | No | Optional. The target number of results to return in a single response. If not specified, a default value will be chos... |
| `pageToken` | `string` | query | No | Optional. The value of next_page_token received from a previous `ListBackupPlans` call. Provide this to retrieve the ... |

**Response**: `ListBackupPlansResponse`

```typescript
const res = await gkebackup.backupPlans.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.backupPlans.patch`

**PATCH** `v1/{+name}`

Update a BackupPlan.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Identifier. The full name of the BackupPlan resource. Format: `projects/*/locations/*/backupPlans/*` |
| `updateMask` | `string` | query | No | Optional. This is used to specify the fields to be overwritten in the BackupPlan targeted for update. The values for ... |

**Request body**: `BackupPlan`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await gkebackup.backupPlans.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.backupPlans.getTags`

**GET** `v1/{+name}:getTags`

Returns tags directly bound to a GCP resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the service resource. |

**Response**: `GetTagsResponse`

```typescript
const res = await gkebackup.backupPlans.getTags({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.backupPlans.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await gkebackup.backupPlans.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.backupPlans.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await gkebackup.backupPlans.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.backupPlans.backups.create`

**POST** `v1/{+parent}/backups`

Creates a Backup for the given BackupPlan.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The BackupPlan within which to create the Backup. Format: `projects/*/locations/*/backupPlans/*` |
| `backupId` | `string` | query | No | Optional. The client-provided short name for the Backup resource. This name must: - be between 1 and 63 characters lo... |

**Request body**: `Backup`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await gkebackup.backups.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.backupPlans.backups.get`

**GET** `v1/{+name}`

Retrieve the details of a single Backup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Full name of the Backup resource. Format: `projects/*/locations/*/backupPlans/*/backups/*` |

**Response**: `Backup`

```typescript
const res = await gkebackup.backups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.backupPlans.backups.getBackupIndexDownloadUrl`

**GET** `v1/{+backup}:getBackupIndexDownloadUrl`

Retrieve the link to the backupIndex.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `backup` | `string` | path | Yes | Required. Full name of Backup resource. Format: projects/{project}/locations/{location}/backupPlans/{backup_plan}/bac... |

**Response**: `GetBackupIndexDownloadUrlResponse`

```typescript
const res = await gkebackup.backups.getBackupIndexDownloadUrl({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.backupPlans.backups.list`

**GET** `v1/{+parent}/backups`

Lists the Backups for a given BackupPlan.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The BackupPlan that contains the Backups to list. Format: `projects/*/locations/*/backupPlans/*` |
| `filter` | `string` | query | No | Optional. Field match expression used to filter the results. |
| `orderBy` | `string` | query | No | Optional. Field by which to sort the results. |
| `pageSize` | `integer` | query | No | Optional. The target number of results to return in a single response. If not specified, a default value will be chos... |
| `pageToken` | `string` | query | No | Optional. The value of next_page_token received from a previous `ListBackups` call. Provide this to retrieve the subs... |
| `returnPartialSuccess` | `boolean` | query | No | Optional. If set to true, the response will return partial results when some regions are unreachable and the unreacha... |

**Response**: `ListBackupsResponse`

```typescript
const res = await gkebackup.backups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.backupPlans.backups.patch`

**PATCH** `v1/{+name}`

Update a Backup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Identifier. The fully qualified name of the Backup. `projects/*/locations/*/backupPlans/*/backups/*` |
| `updateMask` | `string` | query | No | Optional. This is used to specify the fields to be overwritten in the Backup targeted for update. The values for each... |

**Request body**: `Backup`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await gkebackup.backups.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.backupPlans.backups.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await gkebackup.backups.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.backupPlans.backups.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await gkebackup.backups.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.backupPlans.backups.delete`

**DELETE** `v1/{+name}`

Deletes an existing Backup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the Backup resource. Format: `projects/*/locations/*/backupPlans/*/backups/*` |
| `etag` | `string` | query | No | Optional. If provided, this value must match the current value of the target Backup's etag field or the request is re... |
| `force` | `boolean` | query | No | Optional. If set to true, any VolumeBackups below this Backup will also be deleted. Otherwise, the request will only ... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await gkebackup.backups.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.backupPlans.backups.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await gkebackup.backups.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.backupPlans.backups.volumeBackups.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await gkebackup.volumeBackups.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.backupPlans.backups.volumeBackups.get`

**GET** `v1/{+name}`

Retrieve the details of a single VolumeBackup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Full name of the VolumeBackup resource. Format: `projects/*/locations/*/backupPlans/*/backups/*/volumeBacku... |

**Response**: `VolumeBackup`

```typescript
const res = await gkebackup.volumeBackups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.backupPlans.backups.volumeBackups.list`

**GET** `v1/{+parent}/volumeBackups`

Lists the VolumeBackups for a given Backup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The Backup that contains the VolumeBackups to list. Format: `projects/*/locations/*/backupPlans/*/backups/*` |
| `filter` | `string` | query | No | Optional. Field match expression used to filter the results. |
| `orderBy` | `string` | query | No | Optional. Field by which to sort the results. |
| `pageSize` | `integer` | query | No | Optional. The target number of results to return in a single response. If not specified, a default value will be chos... |
| `pageToken` | `string` | query | No | Optional. The value of next_page_token received from a previous `ListVolumeBackups` call. Provide this to retrieve th... |

**Response**: `ListVolumeBackupsResponse`

```typescript
const res = await gkebackup.volumeBackups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.backupPlans.backups.volumeBackups.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await gkebackup.volumeBackups.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.backupPlans.backups.volumeBackups.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await gkebackup.volumeBackups.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.backupChannels.create`

**POST** `v1/{+parent}/backupChannels`

Creates a new BackupChannel in a given location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The location within which to create the BackupChannel. Format: `projects/*/locations/*` |
| `backupChannelId` | `string` | query | No | Optional. The client-provided short name for the BackupChannel resource. This name must: - be between 1 and 63 charac... |

**Request body**: `BackupChannel`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await gkebackup.backupChannels.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.backupChannels.list`

**GET** `v1/{+parent}/backupChannels`

Lists BackupChannels in a given location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The location that contains the BackupChannels to list. Format: `projects/*/locations/*` |
| `filter` | `string` | query | No | Optional. Field match expression used to filter the results. |
| `orderBy` | `string` | query | No | Optional. Field by which to sort the results. |
| `pageSize` | `integer` | query | No | Optional. The target number of results to return in a single response. If not specified, a default value will be chos... |
| `pageToken` | `string` | query | No | Optional. The value of next_page_token received from a previous `ListBackupChannels` call. Provide this to retrieve t... |

**Response**: `ListBackupChannelsResponse`

```typescript
const res = await gkebackup.backupChannels.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.backupChannels.delete`

**DELETE** `v1/{+name}`

Deletes an existing BackupChannel.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Fully qualified BackupChannel name. Format: `projects/*/locations/*/backupChannels/*` |
| `etag` | `string` | query | No | Optional. If provided, this value must match the current value of the target BackupChannel's etag field or the reques... |
| `force` | `boolean` | query | No | Optional. If set to true, any BackupPlanAssociations below this BackupChannel will also be deleted. Otherwise, the re... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await gkebackup.backupChannels.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.backupChannels.get`

**GET** `v1/{+name}`

Retrieve the details of a single BackupChannel.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Fully qualified BackupChannel name. Format: `projects/*/locations/*/backupChannels/*` |

**Response**: `BackupChannel`

```typescript
const res = await gkebackup.backupChannels.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.backupChannels.patch`

**PATCH** `v1/{+name}`

Update a BackupChannel.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The fully qualified name of the BackupChannel. `projects/*/locations/*/backupChannels/*` |
| `updateMask` | `string` | query | No | Optional. This is used to specify the fields to be overwritten in the BackupChannel targeted for update. The values f... |

**Request body**: `BackupChannel`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await gkebackup.backupChannels.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.backupChannels.backupPlanBindings.get`

**GET** `v1/{+name}`

Retrieve the details of a single BackupPlanBinding.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Fully qualified BackupPlanBinding name. Format: `projects/*/locations/*/backupChannels/*/backupPlanBindings/*` |

**Response**: `BackupPlanBinding`

```typescript
const res = await gkebackup.backupPlanBindings.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkebackup.projects.locations.backupChannels.backupPlanBindings.list`

**GET** `v1/{+parent}/backupPlanBindings`

Lists BackupPlanBindings in a given location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The BackupChannel that contains the BackupPlanBindings to list. Format: `projects/*/locations/*/backupChann... |
| `filter` | `string` | query | No | Optional. Field match expression used to filter the results. |
| `orderBy` | `string` | query | No | Optional. Field by which to sort the results. |
| `pageSize` | `integer` | query | No | Optional. The target number of results to return in a single response. If not specified, a default value will be chos... |
| `pageToken` | `string` | query | No | Optional. The value of next_page_token received from a previous `ListBackupPlanBindings` call. Provide this to retrie... |

**Response**: `ListBackupPlanBindingsResponse`

```typescript
const res = await gkebackup.backupPlanBindings.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AuditConfig`

Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both `allServices` and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { "audit_configs": [ { "service": "allServices", "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" }, { "log_type": "ADMIN_READ" } ] }, { "service": "sampleservice.googleapis.com", "audit_log_configs": [ { "log_type": "DATA_READ" }, { "log_type": "DATA_WRITE", "exempted_members": [ "user:aliya@example.com" ] } ] } ] } For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com` from DATA_WRITE logging.

| Property | Type | Description |
|----------|------|-------------|
| `auditLogConfigs` | `array<AuditLogConfig>` | The configuration for logging of each type of permission. |
| `service` | `string` | Specifies a service that will be enabled for audit logging. For example, `storage.googleapis.com`... |

### `AuditLogConfig`

Provides the configuration for logging a type of permissions. Example: { "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.

| Property | Type | Description |
|----------|------|-------------|
| `exemptedMembers` | `array<string>` | Specifies the identities that do not cause logging for this type of permission. Follows the same ... |
| `logType` | `string` | The log type that this config enables. |

### `BDRBackupPlanJobLog`

Log entry for BDRBackupPlanJobLog for resources using BackupPlan based protection.

| Property | Type | Description |
|----------|------|-------------|
| `backupPlanName` | `string` | Canonical resource name for Backup Plan Plan of the job. |
| `endTime` | `string` | End time of the job. |
| `errorCode` | `integer` | The error code. Only populated in error scenarios. |
| `errorMessage` | `string` | The user readable error message. Only populated in error scenarios. |
| `errorType` | `string` | The name of the error type eg. PERMISSION_DENIED. Only populated in error scenarios. |
| `jobCategory` | `string` | The category field displays the category of the job. Can be one of [UPDATE_BACKUP_PLAN]. |
| `jobId` | `string` | The job_id field displays the identifier of the job being reported. |
| `jobStatus` | `string` | The status field displays the status of the job. Can be one of [RUNNING,SUCCESSFUL, FAILED]. |
| `newBackupPlanRevisionId` | `string` | User friendly revision id e.g. v0, v1 etc. |
| `newBackupPlanRevisionName` | `string` | Full resource name for new backup plan revision |
| `previousBackupPlanRevisionId` | `string` | User friendly revision id e.g. v0, v1 etc. |
| `previousBackupPlanRevisionName` | `string` | Full resource name for previous backup plan revision |
| `previousBackupRules` | `array<BackupRuleDetail>` | Previous Backup Plan rules. |
| `resourceType` | `string` | The resource_type field displays the type of the protected resource. |
| `revisedBackupRules` | `array<BackupRuleDetail>` | Revised Backup Plan rules. |
| `startTime` | `string` | Start time of the job. |
| `workloadsAffectedCount` | `integer` | The total number of workloads affected by the job. |

### `BDRBackupRestoreJobLog`

Log entry for Backup and Restore Job for resources using BackupPlan based protection. Next Id: 23

| Property | Type | Description |
|----------|------|-------------|
| `backupConsistencyTime` | `string` | Backup consistency time. |
| `backupName` | `string` | Full resource name of the backup created in backup jobs and used in restore jobs. |
| `backupPlanName` | `string` | Full resource name for Backup Plan of the job. Only populated for Scheduled Backup and Adhoc Backup. |
| `backupRetentionDays` | `integer` | Backup retention in days. |
| `backupRule` | `string` | Name of the backup rule. Only populated for Scheduled Backup and Adhoc Backup. |
| `backupVaultName` | `string` | Full resource name backup vault name |
| `endTime` | `string` | End time of the job. |
| `errorCode` | `integer` | The error code. Only populated in error scenarios. |
| `errorMessage` | `string` | The user readable error message. Only populated in error scenarios. |
| `errorType` | `string` | The name of the error type eg. PERMISSION_DENIED. Only populated in error scenarios. |
| `incrementalBackupSizeGib` | `number` | The amount of incremental backup data copied. |
| `jobCategory` | `string` | The category field displays the category of the job. |
| `jobId` | `string` | The job_id field displays the identifier of the job being logged. |
| `jobStatus` | `string` | The status field displays the status of the job. |
| `recoveryPointTime` | `string` | Recovery point time. |
| `resourceType` | `string` | The resource_type field displays the type of the protected resource. |
| `restoreResourceLocation` | `string` | Restore resource location. |
| `restoreResourceName` | `string` | Full resource name of the restore resource. Only populated in restore jobs. |
| `sourceResourceId` | `string` | The source resource ID. |
| `sourceResourceLocation` | `string` | Source resource location. |
| `sourceResourceName` | `string` | Full resource name of the protected resource. |
| `startTime` | `string` | Start time of the job. |

### `Backup`

Represents a request to perform a single point-in-time capture of some portion of the state of a GKE cluster, the record of the backup operation itself, and an anchor for the underlying artifacts that comprise the Backup (the config backup and VolumeBackups).

| Property | Type | Description |
|----------|------|-------------|
| `allNamespaces` | `boolean` | Output only. If True, all namespaces were included in the Backup. |
| `clusterMetadata` | `ClusterMetadata` | Output only. Information about the GKE cluster from which this Backup was created. |
| `completeTime` | `string` | Output only. Completion time of the Backup |
| `configBackupSizeBytes` | `string` | Output only. The size of the config backup in bytes. |
| `containsSecrets` | `boolean` | Output only. Whether or not the Backup contains Kubernetes Secrets. Controlled by the parent Back... |
| `containsVolumeData` | `boolean` | Output only. Whether or not the Backup contains volume data. Controlled by the parent BackupPlan'... |
| `createTime` | `string` | Output only. The timestamp when this Backup resource was created. |
| `deleteLockDays` | `integer` | Optional. Minimum age for this Backup (in days). If this field is set to a non-zero value, the Ba... |
| `deleteLockExpireTime` | `string` | Output only. The time at which an existing delete lock will expire for this backup (calculated fr... |
| `description` | `string` | Optional. User specified descriptive string for this Backup. |
| `encryptionKey` | `EncryptionKey` | Output only. The customer managed encryption key that was used to encrypt the Backup's artifacts.... |
| `etag` | `string` | Output only. `etag` is used for optimistic concurrency control as a way to help prevent simultane... |
| `labels` | `object` | Optional. A set of custom labels supplied by user. |
| `manual` | `boolean` | Output only. This flag indicates whether this Backup resource was created manually by a user or v... |
| `name` | `string` | Output only. Identifier. The fully qualified name of the Backup. `projects/*/locations/*/backupPl... |
| `namespaceCount` | `integer` | Output only. The total number of user managed namespaces contained in the Backup. |
| `permissiveMode` | `boolean` | Output only. If false, Backup will fail when Backup for GKE detects Kubernetes configuration that... |
| `podCount` | `integer` | Output only. The total number of Kubernetes Pods contained in the Backup. |
| `resourceCount` | `integer` | Output only. The total number of Kubernetes resources included in the Backup. |
| `retainDays` | `integer` | Optional. The age (in days) after which this Backup will be automatically deleted. Must be an int... |
| `retainExpireTime` | `string` | Output only. The time at which this Backup will be automatically deleted (calculated from create_... |
| `satisfiesPzi` | `boolean` | Output only. [Output Only] Reserved for future use. |
| `satisfiesPzs` | `boolean` | Output only. [Output Only] Reserved for future use. |
| `selectedApplications` | `NamespacedNames` | Output only. If set, the list of ProtectedApplications whose resources were included in the Backup. |
| `selectedNamespaceLabels` | `ResourceLabels` | Output only. If set, the list of labels whose constituent namespaces were included in the Backup. |
| `selectedNamespaces` | `Namespaces` | Output only. If set, the list of namespaces that were included in the Backup. |
| `sizeBytes` | `string` | Output only. The total size of the Backup in bytes = config backup size + sum(volume backup sizes) |
| `state` | `string` | Output only. Current state of the Backup |
| `stateReason` | `string` | Output only. Human-readable description of why the backup is in the current `state`. This field i... |
| `troubleshootingInfo` | `TroubleshootingInfo` | Output only. Information about the troubleshooting steps which will provide debugging information... |
| `uid` | `string` | Output only. Server generated global unique identifier of [UUID4](https://en.wikipedia.org/wiki/U... |
| `updateTime` | `string` | Output only. The timestamp when this Backup resource was last updated. |
| `volumeCount` | `integer` | Output only. The total number of volume backups contained in the Backup. |

### `BackupChannel`

A BackupChannel imposes constraints on where clusters can be backed up. The BackupChannel should be in the same project and region as the cluster being backed up. The backup can be created only in destination_project.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The timestamp when this BackupChannel resource was created. |
| `description` | `string` | Optional. User specified descriptive string for this BackupChannel. |
| `destinationProject` | `string` | Required. Immutable. The project where Backups are allowed to be stored. The format is `projects/... |
| `destinationProjectId` | `string` | Output only. The project_id where Backups are allowed to be stored. Example Project ID: "my-proje... |
| `etag` | `string` | Output only. `etag` is used for optimistic concurrency control as a way to help prevent simultane... |
| `labels` | `object` | Optional. A set of custom labels supplied by user. |
| `name` | `string` | Identifier. The fully qualified name of the BackupChannel. `projects/*/locations/*/backupChannels/*` |
| `uid` | `string` | Output only. Server generated global unique identifier of [UUID](https://en.wikipedia.org/wiki/Un... |
| `updateTime` | `string` | Output only. The timestamp when this BackupChannel resource was last updated. |

### `BackupConfig`

BackupConfig defines the configuration of Backups created via this BackupPlan.

| Property | Type | Description |
|----------|------|-------------|
| `allNamespaces` | `boolean` | If True, include all namespaced resources |
| `encryptionKey` | `EncryptionKey` | Optional. This defines a customer managed encryption key that will be used to encrypt the "config... |
| `includeSecrets` | `boolean` | Optional. This flag specifies whether Kubernetes Secret resources should be included when they fa... |
| `includeVolumeData` | `boolean` | Optional. This flag specifies whether volume data should be backed up when PVCs are included in t... |
| `permissiveMode` | `boolean` | Optional. If false, Backups will fail when Backup for GKE detects Kubernetes configuration that i... |
| `selectedApplications` | `NamespacedNames` | If set, include just the resources referenced by the listed ProtectedApplications. |
| `selectedNamespaceLabels` | `ResourceLabels` | If set, the list of labels whose constituent namespaces were included in the Backup. |
| `selectedNamespaces` | `Namespaces` | If set, include just the resources in the listed namespaces. |

### `BackupConfigDetails`

BackupConfigDetails defines the configuration of Backups created via this BackupPlan.

| Property | Type | Description |
|----------|------|-------------|
| `allNamespaces` | `boolean` | Output only. If True, include all namespaced resources |
| `encryptionKey` | `EncryptionKey` | Output only. This defines a customer managed encryption key that will be used to encrypt the "con... |
| `includeSecrets` | `boolean` | Output only. This flag specifies whether Kubernetes Secret resources should be included when they... |
| `includeVolumeData` | `boolean` | Output only. This flag specifies whether volume data should be backed up when PVCs are included i... |
| `selectedApplications` | `NamespacedNames` | Output only. If set, include just the resources referenced by the listed ProtectedApplications. |
| `selectedNamespaces` | `Namespaces` | Output only. If set, include just the resources in the listed namespaces. |

### `BackupPlan`

Defines the configuration and scheduling for a "line" of Backups.

| Property | Type | Description |
|----------|------|-------------|
| `backupChannel` | `string` | Output only. The fully qualified name of the BackupChannel to be used to create a backup. This fi... |
| `backupConfig` | `BackupConfig` | Optional. Defines the configuration of Backups created via this BackupPlan. |
| `backupSchedule` | `Schedule` | Optional. Defines a schedule for automatic Backup creation via this BackupPlan. |
| `cluster` | `string` | Required. Immutable. The source cluster from which Backups will be created via this BackupPlan. V... |
| `createTime` | `string` | Output only. The timestamp when this BackupPlan resource was created. |
| `deactivated` | `boolean` | Optional. This flag indicates whether this BackupPlan has been deactivated. Setting this field to... |
| `description` | `string` | Optional. User specified descriptive string for this BackupPlan. |
| `etag` | `string` | Output only. `etag` is used for optimistic concurrency control as a way to help prevent simultane... |
| `labels` | `object` | Optional. A set of custom labels supplied by user. |
| `lastSuccessfulBackupTime` | `string` | Output only. Completion time of the last successful Backup. This is sourced from a successful Bac... |
| `name` | `string` | Output only. Identifier. The full name of the BackupPlan resource. Format: `projects/*/locations/... |
| `protectedNamespaceCount` | `integer` | Output only. The number of user managed namespaces backed up in the last successful Backup create... |
| `protectedPodCount` | `integer` | Output only. The number of Kubernetes Pods backed up in the last successful Backup created via th... |
| `retentionPolicy` | `RetentionPolicy` | Optional. RetentionPolicy governs lifecycle of Backups created under this plan. |
| `rpoRiskLevel` | `integer` | Output only. A number that represents the current risk level of this BackupPlan from RPO perspect... |
| `rpoRiskReason` | `string` | Output only. Human-readable description of why the BackupPlan is in the current rpo_risk_level an... |
| `state` | `string` | Output only. State of the BackupPlan. This State field reflects the various stages a BackupPlan c... |
| `stateReason` | `string` | Output only. Human-readable description of why BackupPlan is in the current `state`. This field i... |
| `uid` | `string` | Output only. Server generated global unique identifier of [UUID](https://en.wikipedia.org/wiki/Un... |
| `updateTime` | `string` | Output only. The timestamp when this BackupPlan resource was last updated. |

### `BackupPlanBinding`

A BackupPlanBinding binds a BackupPlan with a BackupChannel. This resource is created automatically when a BackupPlan is created using a BackupChannel. This also serves as a holder for cross-project fields that need to be displayed in the current project.

| Property | Type | Description |
|----------|------|-------------|
| `backupPlan` | `string` | Output only. Immutable. The fully qualified name of the BackupPlan bound with the parent BackupCh... |
| `backupPlanDetails` | `BackupPlanDetails` | Output only. Contains details about the backup plan/backup. |
| `cluster` | `string` | Output only. Immutable. The fully qualified name of the cluster that is being backed up Valid for... |
| `createTime` | `string` | Output only. The timestamp when this binding was created. |
| `etag` | `string` | Output only. `etag` is used for optimistic concurrency control as a way to help prevent simultane... |
| `name` | `string` | Identifier. The fully qualified name of the BackupPlanBinding. `projects/*/locations/*/backupChan... |
| `uid` | `string` | Output only. Server generated global unique identifier of [UUID4](https://en.wikipedia.org/wiki/U... |
| `updateTime` | `string` | Output only. The timestamp when this binding was created. |

### `BackupPlanDetails`

Contains metadata about the backup plan/backup.

| Property | Type | Description |
|----------|------|-------------|
| `backupConfigDetails` | `BackupConfigDetails` | Output only. Contains details about the BackupConfig of Backups created via this BackupPlan. |
| `lastSuccessfulBackup` | `string` | Output only. The fully qualified name of the last successful Backup created under this BackupPlan... |
| `lastSuccessfulBackupTime` | `string` | Output only. Completion time of the last successful Backup. This is sourced from a successful Bac... |
| `nextScheduledBackupTime` | `string` | Output only. Start time of next scheduled backup under this BackupPlan by either cron_schedule or... |
| `protectedPodCount` | `integer` | Output only. The number of Kubernetes Pods backed up in the last successful Backup created via th... |
| `retentionPolicyDetails` | `RetentionPolicyDetails` | Output only. Contains details about the RetentionPolicy of Backups created via this BackupPlan. |
| `rpoRiskLevel` | `integer` | Output only. A number that represents the current risk level of this BackupPlan from RPO perspect... |
| `state` | `string` | Output only. State of the BackupPlan. |

### `BackupRuleDetail`

| Property | Type | Description |
|----------|------|-------------|
| `backupWindow` | `string` | Backup Window For Eg. “00:00 to 06:00” |
| `backupWindowTimezone` | `string` | Backup Window Timezone in IANA format. For Eg. “America/Los_Angeles” |
| `recurrence` | `string` | Recurrence Type. For Eg. “Weekly”,” Monthly” or “Daily”. |
| `recurrenceSchedule` | `string` | Recurrence Repeat Schedule. For Eg. “1st and 25th day of the month.” |
| `retentionDays` | `integer` | Backup Retention in Days. |
| `ruleName` | `string` | Backup Rule Name. |

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `ClusterMetadata`

Information about the GKE cluster from which this Backup was created.

| Property | Type | Description |
|----------|------|-------------|
| `anthosVersion` | `string` | Output only. Anthos version |
| `backupCrdVersions` | `object` | Output only. A list of the Backup for GKE CRD versions found in the cluster. |
| `cluster` | `string` | Output only. The source cluster from which this Backup was created. Valid formats: - `projects/*/... |
| `gkeVersion` | `string` | Output only. GKE version |
| `k8sVersion` | `string` | Output only. The Kubernetes server version of the source cluster. |

### `ClusterResourceRestoreScope`

Defines the scope of cluster-scoped resources to restore. Some group kinds are not reasonable choices for a restore, and will cause an error if selected here. Any scope selection that would restore "all valid" resources automatically excludes these group kinds. - Node - ComponentStatus - gkebackup.gke.io/BackupJob - gkebackup.gke.io/RestoreJob - metrics.k8s.io/NodeMetrics - migration.k8s.io/StorageState - migration.k8s.io/StorageVersionMigration - snapshot.storage.k8s.io/VolumeSnapshotContent - storage.k8s.io/CSINode - storage.k8s.io/VolumeAttachment Some group kinds are driven by restore configuration elsewhere, and will cause an error if selected here. - Namespace - PersistentVolume

| Property | Type | Description |
|----------|------|-------------|
| `allGroupKinds` | `boolean` | Optional. If True, all valid cluster-scoped resources will be restored. Mutually exclusive to any... |
| `excludedGroupKinds` | `array<GroupKind>` | Optional. A list of cluster-scoped resource group kinds to NOT restore from the backup. If specif... |
| `noGroupKinds` | `boolean` | Optional. If True, no cluster-scoped resources will be restored. This has the same restore scope ... |
| `selectedGroupKinds` | `array<GroupKind>` | Optional. A list of cluster-scoped resource group kinds to restore from the backup. If specified,... |

### `Date`

Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by ... |
| `month` | `integer` | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `year` | `integer` | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

### `DayOfWeekList`

Holds repeated DaysOfWeek values as a container.

| Property | Type | Description |
|----------|------|-------------|
| `daysOfWeek` | `array<string>` | Optional. A list of days of week. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `EncryptionKey`

Defined a customer managed encryption key that will be used to encrypt Backup artifacts.

| Property | Type | Description |
|----------|------|-------------|
| `gcpKmsEncryptionKey` | `string` | Optional. Google Cloud KMS encryption key. Format: `projects/*/locations/*/keyRings/*/cryptoKeys/*` |

### `ExclusionWindow`

Defines a time window during which no backup should happen. All time and date are in UTC.

| Property | Type | Description |
|----------|------|-------------|
| `daily` | `boolean` | The exclusion window occurs every day if set to "True". Specifying this field to "False" is an er... |
| `daysOfWeek` | `DayOfWeekList` | The exclusion window occurs on these days of each week in UTC. |
| `duration` | `string` | Required. Specifies duration of the window. Duration must be >= 5 minutes and < (target RPO - 20 ... |
| `singleOccurrenceDate` | `Date` | No recurrence. The exclusion window occurs only once and on this date in UTC. |
| `startTime` | `TimeOfDay` | Optional. Specifies the start time of the window using time of the day in UTC. |

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `Filter`

Defines the filter for `Restore`. This filter can be used to further refine the resource selection of the `Restore` beyond the coarse-grained scope defined in the `RestorePlan`. `exclusion_filters` take precedence over `inclusion_filters`. If a resource matches both `inclusion_filters` and `exclusion_filters`, it will not be restored.

| Property | Type | Description |
|----------|------|-------------|
| `exclusionFilters` | `array<ResourceSelector>` | Optional. Excludes resources from restoration. If specified, a resource will not be restored if i... |
| `inclusionFilters` | `array<ResourceSelector>` | Optional. Selects resources for restoration. If specified, only resources which match `inclusion_... |

### `GetBackupIndexDownloadUrlResponse`

Response message for GetBackupIndexDownloadUrl.

| Property | Type | Description |
|----------|------|-------------|
| `signedUrl` | `string` | Required. The signed URL for downloading the backup index. |

### `GetTagsRequest`

Request message for GetTags.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. The full resource name of the service resource. |

### `GetTagsResponse`

Response message for GetTags.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | A checksum based on the current bindings. This field is always set in server responses. |
| `name` | `string` | Required. The full resource name of the service resource. |
| `tags` | `object` | Required. Tag keys/values directly bound to this resource. Each item in the map must be expressed... |

### `GoogleLongrunningCancelOperationRequest`

The request message for Operations.CancelOperation.

### `GoogleLongrunningListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<GoogleLongrunningOperation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `GoogleLongrunningOperation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `GoogleRpcStatus` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `GoogleRpcStatus`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `GroupKind`

This is a direct map to the Kubernetes GroupKind type [GroupKind](https://godoc.org/k8s.io/apimachinery/pkg/runtime/schema#GroupKind) and is used for identifying specific "types" of resources to restore.

| Property | Type | Description |
|----------|------|-------------|
| `resourceGroup` | `string` | Optional. API group string of a Kubernetes resource, e.g. "apiextensions.k8s.io", "storage.k8s.io... |
| `resourceKind` | `string` | Optional. Kind of a Kubernetes resource, must be in UpperCamelCase (PascalCase) and singular form... |

### `GroupKindDependency`

Defines a dependency between two group kinds.

| Property | Type | Description |
|----------|------|-------------|
| `requiring` | `GroupKind` | Required. The requiring group kind requires that the other group kind be restored first. |
| `satisfying` | `GroupKind` | Required. The satisfying group kind must be restored first in order to satisfy the dependency. |

### `Label`

A single Kubernetes label-value pair.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | Optional. The key/name of the label. |
| `value` | `string` | Optional. The value of the label. |

### `ListBackupChannelsResponse`

Response message for ListBackupChannels.

| Property | Type | Description |
|----------|------|-------------|
| `backupChannels` | `array<BackupChannel>` | The list of BackupChannels matching the given criteria. |
| `nextPageToken` | `string` | A token which may be sent as page_token in a subsequent `ListBackupChannels` call to retrieve the... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListBackupPlanBindingsResponse`

Response message for ListBackupPlanBindings.

| Property | Type | Description |
|----------|------|-------------|
| `backupPlanBindings` | `array<BackupPlanBinding>` | The list of BackupPlanBindings matching the given criteria. |
| `nextPageToken` | `string` | A token which may be sent as page_token in a subsequent `ListBackupPlanBindingss` call to retriev... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListBackupPlansResponse`

Response message for ListBackupPlans.

| Property | Type | Description |
|----------|------|-------------|
| `backupPlans` | `array<BackupPlan>` | The list of BackupPlans matching the given criteria. |
| `nextPageToken` | `string` | A token which may be sent as page_token in a subsequent `ListBackupPlans` call to retrieve the ne... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListBackupsResponse`

Response message for ListBackups.

| Property | Type | Description |
|----------|------|-------------|
| `backups` | `array<Backup>` | The list of Backups matching the given criteria. |
| `nextPageToken` | `string` | A token which may be sent as page_token in a subsequent `ListBackups` call to retrieve the next p... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListLocationsResponse`

The response message for Locations.ListLocations.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<Location>` | A list of locations that matches the specified filter in the request. |
| `nextPageToken` | `string` | The standard List next-page token. |

### `ListRestoreChannelsResponse`

Response message for ListRestoreChannels.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token which may be sent as page_token in a subsequent `ListRestoreChannels` call to retrieve th... |
| `restoreChannels` | `array<RestoreChannel>` | The list of RestoreChannels matching the given criteria. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListRestorePlanBindingsResponse`

Response message for ListRestorePlanBindings.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token which may be sent as page_token in a subsequent `ListRestorePlanBindings` call to retriev... |
| `restorePlanBindings` | `array<RestorePlanBinding>` | The list of RestorePlanBindings matching the given criteria. |
| `unreachable` | `array<string>` | Unordered list. Locations that could not be reached. |

### `ListRestorePlansResponse`

Response message for ListRestorePlans.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token which may be sent as page_token in a subsequent `ListRestorePlans` call to retrieve the n... |
| `restorePlans` | `array<RestorePlan>` | The list of RestorePlans matching the given criteria. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListRestoresResponse`

Response message for ListRestores.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token which may be sent as page_token in a subsequent `ListRestores` call to retrieve the next ... |
| `restores` | `array<Restore>` | The list of Restores matching the given criteria. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListVolumeBackupsResponse`

Response message for ListVolumeBackups.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token which may be sent as page_token in a subsequent `ListVolumeBackups` call to retrieve the ... |
| `volumeBackups` | `array<VolumeBackup>` | The list of VolumeBackups matching the given criteria. |

### `ListVolumeRestoresResponse`

Response message for ListVolumeRestores.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token which may be sent as page_token in a subsequent `ListVolumeRestores` call to retrieve the... |
| `volumeRestores` | `array<VolumeRestore>` | The list of VolumeRestores matching the given criteria. |

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `NamespacedName`

A reference to a namespaced resource in Kubernetes.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Optional. The name of the Kubernetes resource. |
| `namespace` | `string` | Optional. The Namespace of the Kubernetes resource. |

### `NamespacedNames`

A list of namespaced Kubernetes resources.

| Property | Type | Description |
|----------|------|-------------|
| `namespacedNames` | `array<NamespacedName>` | Optional. A list of namespaced Kubernetes resources. |

### `Namespaces`

A list of Kubernetes Namespaces.

| Property | Type | Description |
|----------|------|-------------|
| `namespaces` | `array<string>` | Optional. A list of Kubernetes Namespaces. |

### `OperationMetadata`

Represents the metadata of the long-running operation.

| Property | Type | Description |
|----------|------|-------------|
| `apiVersion` | `string` | Output only. API version used to start the operation. |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `requestedCancellation` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. Operations ... |
| `statusMessage` | `string` | Output only. Human-readable status of the operation, if any. |
| `target` | `string` | Output only. Server-defined resource path for the target of the operation. |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `auditConfigs` | `array<AuditConfig>` | Specifies cloud audit logging configuration for this policy. |
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `ResourceFilter`

ResourceFilter specifies matching criteria to limit the scope of a change to a specific set of kubernetes resources that are selected for restoration from a backup.

| Property | Type | Description |
|----------|------|-------------|
| `groupKinds` | `array<GroupKind>` | Optional. (Filtering parameter) Any resource subject to transformation must belong to one of the ... |
| `jsonPath` | `string` | Optional. This is a [JSONPath] (https://github.com/json-path/JsonPath/blob/master/README.md) expr... |
| `namespaces` | `array<string>` | Optional. (Filtering parameter) Any resource subject to transformation must be contained within o... |

### `ResourceLabels`

A list of Kubernetes labels.

| Property | Type | Description |
|----------|------|-------------|
| `resourceLabels` | `array<Label>` | Optional. A list of Kubernetes label-value pairs. |

### `ResourceSelector`

Defines a selector to identify a single or a group of resources. Conditions in the selector are optional, but at least one field should be set to a non-empty value. If a condition is not specified, no restrictions will be applied on that dimension. If more than one condition is specified, a resource will be selected if and only if all conditions are met.

| Property | Type | Description |
|----------|------|-------------|
| `groupKind` | `GroupKind` | Optional. Selects resources using their Kubernetes GroupKinds. If specified, only resources of pr... |
| `labels` | `object` | Optional. Selects resources using Kubernetes [labels](https://kubernetes.io/docs/concepts/overvie... |
| `name` | `string` | Optional. Selects resources using their resource names. If specified, only resources with the pro... |
| `namespace` | `string` | Optional. Selects resources using their namespaces. This only applies to namespace scoped resourc... |

### `Restore`

Represents both a request to Restore some portion of a Backup into a target GKE cluster and a record of the restore operation itself.

| Property | Type | Description |
|----------|------|-------------|
| `backup` | `string` | Required. Immutable. A reference to the Backup used as the source from which this Restore will re... |
| `cluster` | `string` | Output only. The target cluster into which this Restore will restore data. Valid formats: - `proj... |
| `completeTime` | `string` | Output only. Timestamp of when the restore operation completed. |
| `createTime` | `string` | Output only. The timestamp when this Restore resource was created. |
| `description` | `string` | Optional. User specified descriptive string for this Restore. |
| `etag` | `string` | Output only. `etag` is used for optimistic concurrency control as a way to help prevent simultane... |
| `filter` | `Filter` | Optional. Immutable. Filters resources for `Restore`. If not specified, the scope of the restore ... |
| `labels` | `object` | A set of custom labels supplied by user. |
| `name` | `string` | Output only. Identifier. The full name of the Restore resource. Format: `projects/*/locations/*/r... |
| `resourcesExcludedCount` | `integer` | Output only. Number of resources excluded during the restore execution. |
| `resourcesFailedCount` | `integer` | Output only. Number of resources that failed to be restored during the restore execution. |
| `resourcesRestoredCount` | `integer` | Output only. Number of resources restored during the restore execution. |
| `restoreConfig` | `RestoreConfig` | Output only. Configuration of the Restore. Inherited from parent RestorePlan's restore_config. |
| `state` | `string` | Output only. The current state of the Restore. |
| `stateReason` | `string` | Output only. Human-readable description of why the Restore is in its current state. This field is... |
| `troubleshootingInfo` | `TroubleshootingInfo` | Output only. Information about the troubleshooting steps which will provide debugging information... |
| `uid` | `string` | Output only. Server generated global unique identifier of [UUID](https://en.wikipedia.org/wiki/Un... |
| `updateTime` | `string` | Output only. The timestamp when this Restore resource was last updated. |
| `volumeDataRestorePolicyOverrides` | `array<VolumeDataRestorePolicyOverride>` | Optional. Immutable. Overrides the volume data restore policies selected in the Restore Config fo... |
| `volumesRestoredCount` | `integer` | Output only. Number of volumes restored during the restore execution. |

### `RestoreChannel`

A RestoreChannel imposes constraints on where backups can be restored. The RestoreChannel should be in the same project and region as the backups. The backups can only be restored in the `destination_project`.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The timestamp when this RestoreChannel was created. |
| `description` | `string` | Optional. User specified descriptive string for this RestoreChannel. |
| `destinationProject` | `string` | Required. Immutable. The project into which the backups will be restored. The format is `projects... |
| `destinationProjectId` | `string` | Output only. The project_id where backups will be restored. Example Project ID: "my-project-id". ... |
| `etag` | `string` | Output only. `etag` is used for optimistic concurrency control as a way to help prevent simultane... |
| `labels` | `object` | Optional. A set of custom labels supplied by user. |
| `name` | `string` | Identifier. The fully qualified name of the RestoreChannel. `projects/*/locations/*/restoreChanne... |
| `uid` | `string` | Output only. Server generated global unique identifier of [UUID](https://en.wikipedia.org/wiki/Un... |
| `updateTime` | `string` | Output only. The timestamp when this RestoreChannel was last updated. |

### `RestoreConfig`

Configuration of a restore.

| Property | Type | Description |
|----------|------|-------------|
| `allNamespaces` | `boolean` | Restore all namespaced resources in the Backup if set to "True". Specifying this field to "False"... |
| `clusterResourceConflictPolicy` | `string` | Optional. Defines the behavior for handling the situation where cluster-scoped resources being re... |
| `clusterResourceRestoreScope` | `ClusterResourceRestoreScope` | Optional. Identifies the cluster-scoped resources to restore from the Backup. Not specifying it m... |
| `excludedNamespaces` | `Namespaces` | A list of selected namespaces excluded from restoration. All namespaces except those in this list... |
| `namespacedResourceRestoreMode` | `string` | Optional. Defines the behavior for handling the situation where sets of namespaced resources bein... |
| `noNamespaces` | `boolean` | Do not restore any namespaced resources if set to "True". Specifying this field to "False" is not... |
| `restoreOrder` | `RestoreOrder` | Optional. RestoreOrder contains custom ordering to use on a Restore. |
| `selectedApplications` | `NamespacedNames` | A list of selected ProtectedApplications to restore. The listed ProtectedApplications and all the... |
| `selectedNamespaces` | `Namespaces` | A list of selected Namespaces to restore from the Backup. The listed Namespaces and all resources... |
| `substitutionRules` | `array<SubstitutionRule>` | Optional. A list of transformation rules to be applied against Kubernetes resources as they are s... |
| `transformationRules` | `array<TransformationRule>` | Optional. A list of transformation rules to be applied against Kubernetes resources as they are s... |
| `volumeDataRestorePolicy` | `string` | Optional. Specifies the mechanism to be used to restore volume data. Default: VOLUME_DATA_RESTORE... |
| `volumeDataRestorePolicyBindings` | `array<VolumeDataRestorePolicyBinding>` | Optional. A table that binds volumes by their scope to a restore policy. Bindings must have a uni... |

### `RestoreOrder`

Allows customers to specify dependencies between resources that Backup for GKE can use to compute a resasonable restore order.

| Property | Type | Description |
|----------|------|-------------|
| `groupKindDependencies` | `array<GroupKindDependency>` | Optional. Contains a list of group kind dependency pairs provided by the customer, that is used b... |

### `RestorePlan`

The configuration of a potential series of Restore operations to be performed against Backups belong to a particular BackupPlan.

| Property | Type | Description |
|----------|------|-------------|
| `backupPlan` | `string` | Required. Immutable. A reference to the BackupPlan from which Backups may be used as the source f... |
| `cluster` | `string` | Required. Immutable. The target cluster into which Restores created via this RestorePlan will res... |
| `createTime` | `string` | Output only. The timestamp when this RestorePlan resource was created. |
| `description` | `string` | Optional. User specified descriptive string for this RestorePlan. |
| `etag` | `string` | Output only. `etag` is used for optimistic concurrency control as a way to help prevent simultane... |
| `labels` | `object` | Optional. A set of custom labels supplied by user. |
| `name` | `string` | Output only. Identifier. The full name of the RestorePlan resource. Format: `projects/*/locations... |
| `restoreChannel` | `string` | Output only. The fully qualified name of the RestoreChannel to be used to create a RestorePlan. T... |
| `restoreConfig` | `RestoreConfig` | Required. Configuration of Restores created via this RestorePlan. |
| `state` | `string` | Output only. State of the RestorePlan. This State field reflects the various stages a RestorePlan... |
| `stateReason` | `string` | Output only. Human-readable description of why RestorePlan is in the current `state`. This field ... |
| `uid` | `string` | Output only. Server generated global unique identifier of [UUID](https://en.wikipedia.org/wiki/Un... |
| `updateTime` | `string` | Output only. The timestamp when this RestorePlan resource was last updated. |

### `RestorePlanBinding`

A RestorePlanBinding binds a RestorePlan with a RestoreChannel. This resource is created automatically when a RestorePlan is created using a RestoreChannel. This also serves as a holder for cross-project fields that need to be displayed in the current project.

| Property | Type | Description |
|----------|------|-------------|
| `backupPlan` | `string` | Output only. The fully qualified name of the BackupPlan bound to the specified RestorePlan. `proj... |
| `createTime` | `string` | Output only. The timestamp when this binding was created. |
| `etag` | `string` | Output only. `etag` is used for optimistic concurrency control as a way to help prevent simultane... |
| `name` | `string` | Identifier. The fully qualified name of the RestorePlanBinding. `projects/*/locations/*/restoreCh... |
| `restorePlan` | `string` | Output only. The fully qualified name of the RestorePlan bound to this RestoreChannel. `projects/... |
| `uid` | `string` | Output only. Server generated global unique identifier of [UUID4](https://en.wikipedia.org/wiki/U... |
| `updateTime` | `string` | Output only. The timestamp when this binding was created. |

### `RetentionPolicy`

RetentionPolicy defines a Backup retention policy for a BackupPlan.

| Property | Type | Description |
|----------|------|-------------|
| `backupDeleteLockDays` | `integer` | Optional. Minimum age for Backups created via this BackupPlan (in days). This field MUST be an in... |
| `backupRetainDays` | `integer` | Optional. The default maximum age of a Backup created via this BackupPlan. This field MUST be an ... |
| `locked` | `boolean` | Optional. This flag denotes whether the retention policy of this BackupPlan is locked. If set to ... |

### `RetentionPolicyDetails`

RetentionPolicyDetails defines a Backup retention policy for a BackupPlan.

| Property | Type | Description |
|----------|------|-------------|
| `backupDeleteLockDays` | `integer` | Optional. Minimum age for Backups created via this BackupPlan (in days). This field MUST be an in... |
| `backupRetainDays` | `integer` | Optional. The default maximum age of a Backup created via this BackupPlan. This field MUST be an ... |

### `RpoConfig`

Defines RPO scheduling configuration for automatically creating Backups via this BackupPlan.

| Property | Type | Description |
|----------|------|-------------|
| `exclusionWindows` | `array<ExclusionWindow>` | Optional. User specified time windows during which backup can NOT happen for this BackupPlan - ba... |
| `targetRpoMinutes` | `integer` | Required. Defines the target RPO for the BackupPlan in minutes, which means the target maximum da... |

### `Schedule`

Defines scheduling parameters for automatically creating Backups via this BackupPlan.

| Property | Type | Description |
|----------|------|-------------|
| `cronSchedule` | `string` | Optional. A standard [cron](https://wikipedia.com/wiki/cron) string that defines a repeating sche... |
| `nextScheduledBackupTime` | `string` | Output only. Start time of next scheduled backup under this BackupPlan by either cron_schedule or... |
| `paused` | `boolean` | Optional. This flag denotes whether automatic Backup creation is paused for this BackupPlan. Defa... |
| `rpoConfig` | `RpoConfig` | Optional. Defines the RPO schedule configuration for this BackupPlan. This is mutually exclusive ... |

### `SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |
| `updateMask` | `string` | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mas... |

### `SetTagsRequest`

Request message for SetTags.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Optional. A checksum based on the current bindings which can be passed to prevent race conditions... |
| `name` | `string` | Required. The full resource name of the service resource. |
| `requestId` | `string` | Optional. A unique identifier for this request. Must be a valid UUID. This request is only idempo... |
| `tags` | `object` | Required. These bindings will override any bindings previously set and will be effective immediat... |

### `SetTagsResponse`

Response message for SetTags.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | A checksum based on the current bindings. This field is always set in server responses. |
| `name` | `string` | Required. The full resource name of the service resource. |
| `tags` | `object` | Required. Tag keys/values directly bound to this resource. Each item in the map must be expressed... |

### `SubstitutionRule`

A transformation rule to be applied against Kubernetes resources as they are selected for restoration from a Backup. A rule contains both filtering logic (which resources are subject to substitution) and substitution logic.

| Property | Type | Description |
|----------|------|-------------|
| `newValue` | `string` | Optional. This is the new value to set for any fields that pass the filtering and selection crite... |
| `originalValuePattern` | `string` | Optional. (Filtering parameter) This is a [regular expression] (https://en.wikipedia.org/wiki/Reg... |
| `targetGroupKinds` | `array<GroupKind>` | Optional. (Filtering parameter) Any resource subject to substitution must belong to one of the li... |
| `targetJsonPath` | `string` | Required. This is a [JSONPath] (https://kubernetes.io/docs/reference/kubectl/jsonpath/) expressio... |
| `targetNamespaces` | `array<string>` | Optional. (Filtering parameter) Any resource subject to substitution must be contained within one... |

### `TestIamPermissionsRequest`

Request message for `TestIamPermissions` method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | The set of permissions to check for the `resource`. Permissions with wildcards (such as `*` or `s... |

### `TestIamPermissionsResponse`

Response message for `TestIamPermissions` method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | A subset of `TestPermissionsRequest.permissions` that the caller is allowed. |

### `TimeOfDay`

Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and `google.protobuf.Timestamp`.

| Property | Type | Description |
|----------|------|-------------|
| `hours` | `integer` | Hours of a day in 24 hour format. Must be greater than or equal to 0 and typically must be less t... |
| `minutes` | `integer` | Minutes of an hour. Must be greater than or equal to 0 and less than or equal to 59. |
| `nanos` | `integer` | Fractions of seconds, in nanoseconds. Must be greater than or equal to 0 and less than or equal t... |
| `seconds` | `integer` | Seconds of a minute. Must be greater than or equal to 0 and typically must be less than or equal ... |

### `TransformationRule`

A transformation rule to be applied against Kubernetes resources as they are selected for restoration from a Backup. A rule contains both filtering logic (which resources are subject to transform) and transformation logic.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. The description is a user specified string description of the transformation rule. |
| `fieldActions` | `array<TransformationRuleAction>` | Required. A list of transformation rule actions to take against candidate resources. Actions are ... |
| `resourceFilter` | `ResourceFilter` | Optional. This field is used to specify a set of fields that should be used to determine which re... |

### `TransformationRuleAction`

TransformationRuleAction defines a TransformationRule action based on the JSON Patch RFC (https://www.rfc-editor.org/rfc/rfc6902)

| Property | Type | Description |
|----------|------|-------------|
| `fromPath` | `string` | Optional. A string containing a JSON Pointer value that references the location in the target doc... |
| `op` | `string` | Required. op specifies the operation to perform. |
| `path` | `string` | Optional. A string containing a JSON-Pointer value that references a location within the target d... |
| `value` | `string` | Optional. A string that specifies the desired value in string format to use for transformation. |

### `TroubleshootingInfo`

Stores information about troubleshooting doc for debugging a particular state of an operation (eg - backup/restore). This will be used by the end user to debug their operation failure scenario easily.

| Property | Type | Description |
|----------|------|-------------|
| `stateReasonCode` | `string` | Output only. Unique code for each backup/restore operation failure message which helps user ident... |
| `stateReasonUri` | `string` | Output only. URL for the troubleshooting doc which will help the user fix the failing backup/rest... |

### `VolumeBackup`

Represents the backup of a specific persistent volume as a component of a Backup - both the record of the operation and a pointer to the underlying storage-specific artifacts.

| Property | Type | Description |
|----------|------|-------------|
| `completeTime` | `string` | Output only. The timestamp when the associated underlying volume backup operation completed. |
| `createTime` | `string` | Output only. The timestamp when this VolumeBackup resource was created. |
| `diskSizeBytes` | `string` | Output only. The minimum size of the disk to which this VolumeBackup can be restored. |
| `etag` | `string` | Output only. `etag` is used for optimistic concurrency control as a way to help prevent simultane... |
| `format` | `string` | Output only. The format used for the volume backup. |
| `name` | `string` | Output only. The full name of the VolumeBackup resource. Format: `projects/*/locations/*/backupPl... |
| `satisfiesPzi` | `boolean` | Output only. [Output Only] Reserved for future use. |
| `satisfiesPzs` | `boolean` | Output only. [Output Only] Reserved for future use. |
| `sourcePvc` | `NamespacedName` | Output only. A reference to the source Kubernetes PVC from which this VolumeBackup was created. |
| `state` | `string` | Output only. The current state of this VolumeBackup. |
| `stateMessage` | `string` | Output only. A human readable message explaining why the VolumeBackup is in its current state. Th... |
| `storageBytes` | `string` | Output only. The aggregate size of the underlying artifacts associated with this VolumeBackup in ... |
| `uid` | `string` | Output only. Server generated global unique identifier of [UUID](https://en.wikipedia.org/wiki/Un... |
| `updateTime` | `string` | Output only. The timestamp when this VolumeBackup resource was last updated. |
| `volumeBackupHandle` | `string` | Output only. A storage system-specific opaque handle to the underlying volume backup. |

### `VolumeDataRestorePolicyBinding`

Binds resources in the scope to the given VolumeDataRestorePolicy.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `string` | Required. The VolumeDataRestorePolicy to apply when restoring volumes in scope. |
| `volumeType` | `string` | The volume type, as determined by the PVC's bound PV, to apply the policy to. |

### `VolumeDataRestorePolicyOverride`

Defines an override to apply a VolumeDataRestorePolicy for scoped resources.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `string` | Required. The VolumeDataRestorePolicy to apply when restoring volumes in scope. |
| `selectedPvcs` | `NamespacedNames` | A list of PVCs to apply the policy override to. |

### `VolumeRestore`

Represents the operation of restoring a volume from a VolumeBackup.

| Property | Type | Description |
|----------|------|-------------|
| `completeTime` | `string` | Output only. The timestamp when the associated underlying volume restoration completed. |
| `createTime` | `string` | Output only. The timestamp when this VolumeRestore resource was created. |
| `etag` | `string` | Output only. `etag` is used for optimistic concurrency control as a way to help prevent simultane... |
| `name` | `string` | Output only. Full name of the VolumeRestore resource. Format: `projects/*/locations/*/restorePlan... |
| `state` | `string` | Output only. The current state of this VolumeRestore. |
| `stateMessage` | `string` | Output only. A human readable message explaining why the VolumeRestore is in its current state. |
| `targetPvc` | `NamespacedName` | Output only. The reference to the target Kubernetes PVC to be restored. |
| `uid` | `string` | Output only. Server generated global unique identifier of [UUID](https://en.wikipedia.org/wiki/Un... |
| `updateTime` | `string` | Output only. The timestamp when this VolumeRestore resource was last updated. |
| `volumeBackup` | `string` | Output only. The full name of the VolumeBackup from which the volume will be restored. Format: `p... |
| `volumeHandle` | `string` | Output only. A storage system-specific opaque handler to the underlying volume created for the ta... |
| `volumeType` | `string` | Output only. The type of volume provisioned |

