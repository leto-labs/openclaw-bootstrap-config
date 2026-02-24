# Backup and DR Service API - API Reference

**Version**: `v1` | **Methods**: 58 | **Schemas**: 129

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `backupdr.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `backupdr.projects.locations.getTrial` | GET | `v1/{+name}` | Gets the Trial state for a given project |
| `backupdr.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `backupdr.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `backupdr.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `backupdr.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `backupdr.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `backupdr.projects.locations.backupPlanAssociations.get` | GET | `v1/{+name}` | Gets details of a single BackupPlanAssociation. |
| `backupdr.projects.locations.backupPlanAssociations.delete` | DELETE | `v1/{+name}` | Deletes a single BackupPlanAssociation. |
| `backupdr.projects.locations.backupPlanAssociations.create` | POST | `v1/{+parent}/backupPlanAssociations` | Create a BackupPlanAssociation |
| `backupdr.projects.locations.backupPlanAssociations.fetchForResourceType` | GET | `v1/{+parent}/backupPlanAssociations:fetchForResourceType` | List BackupPlanAssociations for a given resource type. |
| `backupdr.projects.locations.backupPlanAssociations.list` | GET | `v1/{+parent}/backupPlanAssociations` | Lists BackupPlanAssociations in a given project and location. |
| `backupdr.projects.locations.backupPlanAssociations.triggerBackup` | POST | `v1/{+name}:triggerBackup` | Triggers a new Backup. |
| `backupdr.projects.locations.backupPlanAssociations.patch` | PATCH | `v1/{+name}` | Update a BackupPlanAssociation. |
| `backupdr.projects.locations.backupPlans.delete` | DELETE | `v1/{+name}` | Deletes a single BackupPlan. |
| `backupdr.projects.locations.backupPlans.list` | GET | `v1/{+parent}/backupPlans` | Lists BackupPlans in a given project and location. |
| `backupdr.projects.locations.backupPlans.patch` | PATCH | `v1/{+name}` | Update a BackupPlan. |
| `backupdr.projects.locations.backupPlans.get` | GET | `v1/{+name}` | Gets details of a single BackupPlan. |
| `backupdr.projects.locations.backupPlans.create` | POST | `v1/{+parent}/backupPlans` | Create a BackupPlan |
| `backupdr.projects.locations.backupPlans.revisions.get` | GET | `v1/{+name}` | Gets details of a single BackupPlanRevision. |
| `backupdr.projects.locations.backupPlans.revisions.list` | GET | `v1/{+parent}/revisions` | Lists BackupPlanRevisions in a given project and location. |
| `backupdr.projects.locations.trial.subscribe` | POST | `v1/{+parent}/trial:subscribe` | Subscribes to a trial for a project |
| `backupdr.projects.locations.trial.end` | POST | `v1/{+parent}/trial:end` | Ends the trial for a project |
| `backupdr.projects.locations.managementServers.list` | GET | `v1/{+parent}/managementServers` | Lists ManagementServers in a given project and location. |
| `backupdr.projects.locations.managementServers.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `backupdr.projects.locations.managementServers.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `backupdr.projects.locations.managementServers.create` | POST | `v1/{+parent}/managementServers` | Creates a new ManagementServer in a given project and location. |
| `backupdr.projects.locations.managementServers.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `backupdr.projects.locations.managementServers.get` | GET | `v1/{+name}` | Gets details of a single ManagementServer. |
| `backupdr.projects.locations.managementServers.msComplianceMetadata` | POST | `v1/{+parent}:msComplianceMetadata` | Returns the Assured Workloads compliance metadata for a given project. |
| `backupdr.projects.locations.managementServers.delete` | DELETE | `v1/{+name}` | Deletes a single ManagementServer. |
| `backupdr.projects.locations.resourceBackupConfigs.list` | GET | `v1/{+parent}/resourceBackupConfigs` | Lists ResourceBackupConfigs. |
| `backupdr.projects.locations.backupVaults.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns the caller's permissions on a BackupVault resource. A caller is not required to have Goog... |
| `backupdr.projects.locations.backupVaults.list` | GET | `v1/{+parent}/backupVaults` | Lists BackupVaults in a given project and location. |
| `backupdr.projects.locations.backupVaults.fetchUsable` | GET | `v1/{+parent}/backupVaults:fetchUsable` | FetchUsableBackupVaults lists usable BackupVaults in a given project and location. Usable BackupV... |
| `backupdr.projects.locations.backupVaults.get` | GET | `v1/{+name}` | Gets details of a BackupVault. |
| `backupdr.projects.locations.backupVaults.patch` | PATCH | `v1/{+name}` | Updates the settings of a BackupVault. |
| `backupdr.projects.locations.backupVaults.create` | POST | `v1/{+parent}/backupVaults` | Creates a new BackupVault in a given project and location. |
| `backupdr.projects.locations.backupVaults.delete` | DELETE | `v1/{+name}` | Deletes a BackupVault. |
| `backupdr.projects.locations.backupVaults.dataSources.patch` | PATCH | `v1/{+name}` | Updates the settings of a DataSource. |
| `backupdr.projects.locations.backupVaults.dataSources.list` | GET | `v1/{+parent}/dataSources` | Lists DataSources in a given project and location. |
| `backupdr.projects.locations.backupVaults.dataSources.fetchAccessToken` | POST | `v1/{+name}:fetchAccessToken` | Internal only. Fetch access token for a given data source. |
| `backupdr.projects.locations.backupVaults.dataSources.setInternalStatus` | POST | `v1/{+dataSource}:setInternalStatus` | Sets the internal status of a DataSource. |
| `backupdr.projects.locations.backupVaults.dataSources.remove` | POST | `v1/{+name}:remove` | Deletes a DataSource. This is a custom method instead of a standard delete method because externa... |
| `backupdr.projects.locations.backupVaults.dataSources.finalizeBackup` | POST | `v1/{+dataSource}:finalizeBackup` | Internal only. Finalize a backup that was started by a call to InitiateBackup. |
| `backupdr.projects.locations.backupVaults.dataSources.initiateBackup` | POST | `v1/{+dataSource}:initiateBackup` | Internal only. Initiates a backup. |
| `backupdr.projects.locations.backupVaults.dataSources.abandonBackup` | POST | `v1/{+dataSource}:abandonBackup` | Internal only. Abandons a backup. |
| `backupdr.projects.locations.backupVaults.dataSources.get` | GET | `v1/{+name}` | Gets details of a DataSource. |
| `backupdr.projects.locations.backupVaults.dataSources.backups.list` | GET | `v1/{+parent}/backups` | Lists Backups in a given project and location. |
| `backupdr.projects.locations.backupVaults.dataSources.backups.patch` | PATCH | `v1/{+name}` | Updates the settings of a Backup. |
| `backupdr.projects.locations.backupVaults.dataSources.backups.restore` | POST | `v1/{+name}:restore` | Restore from a Backup |
| `backupdr.projects.locations.backupVaults.dataSources.backups.get` | GET | `v1/{+name}` | Gets details of a Backup. |
| `backupdr.projects.locations.backupVaults.dataSources.backups.fetchForResourceType` | GET | `v1/{+parent}/backups:fetchForResourceType` | Fetch Backups for a given resource type. |
| `backupdr.projects.locations.backupVaults.dataSources.backups.delete` | DELETE | `v1/{+name}` | Deletes a Backup. |
| `backupdr.projects.locations.serviceConfig.initialize` | POST | `v1/{+name}:initialize` | Initializes the service related config for a project. |
| `backupdr.projects.locations.dataSourceReferences.list` | GET | `v1/{+parent}/dataSourceReferences` | Lists DataSourceReferences for a given project and location. |
| `backupdr.projects.locations.dataSourceReferences.get` | GET | `v1/{+name}` | Gets details of a single DataSourceReference. |
| `backupdr.projects.locations.dataSourceReferences.fetchForResourceType` | GET | `v1/{+parent}/dataSourceReferences:fetchForResourceType` | Fetch DataSourceReferences for a given project, location and resource type. |

### `backupdr.projects.locations.list`

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
const res = await backupdr.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.getTrial`

**GET** `v1/{+name}`

Gets the Trial state for a given project

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The project for which trial details need to be retrieved. Format: projects/{project}/locations/{location} S... |

**Response**: `Trial`

```typescript
const res = await backupdr.locations.getTrial({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await backupdr.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await backupdr.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.operations.list`

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

**Response**: `ListOperationsResponse`

```typescript
const res = await backupdr.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await backupdr.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await backupdr.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.backupPlanAssociations.get`

**GET** `v1/{+name}`

Gets details of a single BackupPlanAssociation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the backup plan association resource, in the format `projects/{project}/locations/{location}/backup... |

**Response**: `BackupPlanAssociation`

```typescript
const res = await backupdr.backupPlanAssociations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.backupPlanAssociations.delete`

**DELETE** `v1/{+name}`

Deletes a single BackupPlanAssociation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the backup plan association resource, in the format `projects/{project}/locations/{location}/backup... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `Operation`

```typescript
const res = await backupdr.backupPlanAssociations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.backupPlanAssociations.create`

**POST** `v1/{+parent}/backupPlanAssociations`

Create a BackupPlanAssociation

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The backup plan association project and location in the format `projects/{project_id}/locations/{location}`... |
| `backupPlanAssociationId` | `string` | query | No | Required. The name of the backup plan association to create. The name must be unique for the specified project and lo... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `BackupPlanAssociation`

**Response**: `Operation`

```typescript
const res = await backupdr.backupPlanAssociations.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.backupPlanAssociations.fetchForResourceType`

**GET** `v1/{+parent}/backupPlanAssociations:fetchForResourceType`

List BackupPlanAssociations for a given resource type.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name. Format: projects/{project}/locations/{location} |
| `filter` | `string` | query | No | Optional. A filter expression that filters the results fetched in the response. The expression must specify the field... |
| `orderBy` | `string` | query | No | Optional. A comma-separated list of fields to order by, sorted in ascending order. Use "desc" after a field name for ... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of BackupPlanAssociations to return. The service may return fewer than this value. If un... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous call of `FetchBackupPlanAssociationsForResourceType`. Provide this t... |
| `resourceType` | `string` | query | No | Required. The type of the Google Cloud resource. Ex: sql.googleapis.com/Instance |

**Response**: `FetchBackupPlanAssociationsForResourceTypeResponse`

```typescript
const res = await backupdr.backupPlanAssociations.fetchForResourceType({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.backupPlanAssociations.list`

**GET** `v1/{+parent}/backupPlanAssociations`

Lists BackupPlanAssociations in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location for which to retrieve backup Plan Associations information, in the format `project... |
| `filter` | `string` | query | No | Optional. Filtering results |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListBackupPlanAssociationsResponse`

```typescript
const res = await backupdr.backupPlanAssociations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.backupPlanAssociations.triggerBackup`

**POST** `v1/{+name}:triggerBackup`

Triggers a new Backup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the backup plan association resource, in the format `projects/{project}/locations/{location}/backup... |

**Request body**: `TriggerBackupRequest`

**Response**: `Operation`

```typescript
const res = await backupdr.backupPlanAssociations.triggerBackup({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.backupPlanAssociations.patch`

**PATCH** `v1/{+name}`

Update a BackupPlanAssociation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Identifier. The resource name of BackupPlanAssociation in below format Format : projects/{project}/locat... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Required. The list of fields to update. Field mask is used to specify the fields to be overwritten in the BackupPlanA... |

**Request body**: `BackupPlanAssociation`

**Response**: `Operation`

```typescript
const res = await backupdr.backupPlanAssociations.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.backupPlans.delete`

**DELETE** `v1/{+name}`

Deletes a single BackupPlan.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the `BackupPlan` to delete. Format: `projects/{project}/locations/{location}/backupPla... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `Operation`

```typescript
const res = await backupdr.backupPlans.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.backupPlans.list`

**GET** `v1/{+parent}/backupPlans`

Lists BackupPlans in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location for which to retrieve `BackupPlans` information. Format: `projects/{project}/locat... |
| `filter` | `string` | query | No | Optional. Field match expression used to filter the results. |
| `orderBy` | `string` | query | No | Optional. Field by which to sort the results. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of `BackupPlans` to return in a single response. If not specified, a default value will ... |
| `pageToken` | `string` | query | No | Optional. The value of next_page_token received from a previous `ListBackupPlans` call. Provide this to retrieve the ... |

**Response**: `ListBackupPlansResponse`

```typescript
const res = await backupdr.backupPlans.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.backupPlans.patch`

**PATCH** `v1/{+name}`

Update a BackupPlan.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Identifier. The resource name of the `BackupPlan`. Format: `projects/{project}/locations/{location}/back... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Required. The list of fields to update. Field mask is used to specify the fields to be overwritten in the BackupPlan ... |

**Request body**: `BackupPlan`

**Response**: `Operation`

```typescript
const res = await backupdr.backupPlans.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.backupPlans.get`

**GET** `v1/{+name}`

Gets details of a single BackupPlan.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the `BackupPlan` to retrieve. Format: `projects/{project}/locations/{location}/backupP... |

**Response**: `BackupPlan`

```typescript
const res = await backupdr.backupPlans.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.backupPlans.create`

**POST** `v1/{+parent}/backupPlans`

Create a BackupPlan

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The `BackupPlan` project and location in the format `projects/{project}/locations/{location}`. In Google Cl... |
| `backupPlanId` | `string` | query | No | Required. The name of the `BackupPlan` to create. The name must be unique for the specified project and location.The ... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `BackupPlan`

**Response**: `Operation`

```typescript
const res = await backupdr.backupPlans.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.backupPlans.revisions.get`

**GET** `v1/{+name}`

Gets details of a single BackupPlanRevision.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the `BackupPlanRevision` to retrieve. Format: `projects/{project}/locations/{location}... |

**Response**: `BackupPlanRevision`

```typescript
const res = await backupdr.revisions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.backupPlans.revisions.list`

**GET** `v1/{+parent}/revisions`

Lists BackupPlanRevisions in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location for which to retrieve `BackupPlanRevisions` information. Format: `projects/{projec... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of `BackupPlans` to return in a single response. If not specified, a default value will ... |
| `pageToken` | `string` | query | No | Optional. The value of next_page_token received from a previous `ListBackupPlans` call. Provide this to retrieve the ... |

**Response**: `ListBackupPlanRevisionsResponse`

```typescript
const res = await backupdr.revisions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.trial.subscribe`

**POST** `v1/{+parent}/trial:subscribe`

Subscribes to a trial for a project

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project where this trial will be created. Format: projects/{project}/locations/{location} Supported Loc... |

**Request body**: `SubscribeTrialRequest`

**Response**: `Trial`

```typescript
const res = await backupdr.trial.subscribe({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.trial.end`

**POST** `v1/{+parent}/trial:end`

Ends the trial for a project

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where the trial has been created. Format: projects/{project}/locations/{location} |

**Request body**: `EndTrialRequest`

**Response**: `Trial`

```typescript
const res = await backupdr.trial.end({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.managementServers.list`

**GET** `v1/{+parent}/managementServers`

Lists ManagementServers in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location for which to retrieve management servers information, in the format 'projects/{pro... |
| `filter` | `string` | query | No | Optional. Filtering results. |
| `orderBy` | `string` | query | No | Optional. Hint for how to order the results. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListManagementServersResponse`

```typescript
const res = await backupdr.managementServers.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.managementServers.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await backupdr.managementServers.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.managementServers.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await backupdr.managementServers.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.managementServers.create`

**POST** `v1/{+parent}/managementServers`

Creates a new ManagementServer in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The management server project and location in the format 'projects/{project_id}/locations/{location}'. In C... |
| `managementServerId` | `string` | query | No | Required. The name of the management server to create. The name must be unique for the specified project and location. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `ManagementServer`

**Response**: `Operation`

```typescript
const res = await backupdr.managementServers.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.managementServers.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await backupdr.managementServers.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.managementServers.get`

**GET** `v1/{+name}`

Gets details of a single ManagementServer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the management server resource name, in the format 'projects/{project_id}/locations/{location}/mana... |

**Response**: `ManagementServer`

```typescript
const res = await backupdr.managementServers.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.managementServers.msComplianceMetadata`

**POST** `v1/{+parent}:msComplianceMetadata`

Returns the Assured Workloads compliance metadata for a given project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location to be used to check CSS metadata for target project information, in the format 'pr... |

**Request body**: `FetchMsComplianceMetadataRequest`

**Response**: `FetchMsComplianceMetadataResponse`

```typescript
const res = await backupdr.managementServers.msComplianceMetadata({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.managementServers.delete`

**DELETE** `v1/{+name}`

Deletes a single ManagementServer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `Operation`

```typescript
const res = await backupdr.managementServers.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.resourceBackupConfigs.list`

**GET** `v1/{+parent}/resourceBackupConfigs`

Lists ResourceBackupConfigs.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location for which to retrieve resource backup configs. Format: 'projects/{project_id}/loca... |
| `filter` | `string` | query | No | Optional. Filtering results. |
| `orderBy` | `string` | query | No | Optional. Hint for how to order the results. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will use 100 as d... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListResourceBackupConfigsResponse`

```typescript
const res = await backupdr.resourceBackupConfigs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.backupVaults.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns the caller's permissions on a BackupVault resource. A caller is not required to have Google IAM permission to make this request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await backupdr.backupVaults.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.backupVaults.list`

**GET** `v1/{+parent}/backupVaults`

Lists BackupVaults in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location for which to retrieve backupvault stores information, in the format 'projects/{pro... |
| `filter` | `string` | query | No | Optional. Filtering results. |
| `orderBy` | `string` | query | No | Optional. Hint for how to order the results. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |
| `view` | `string` | query | No | Optional. Reserved for future use to provide a BASIC & FULL view of Backup Vault. |

**Response**: `ListBackupVaultsResponse`

```typescript
const res = await backupdr.backupVaults.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.backupVaults.fetchUsable`

**GET** `v1/{+parent}/backupVaults:fetchUsable`

FetchUsableBackupVaults lists usable BackupVaults in a given project and location. Usable BackupVault are the ones that user has backupdr.backupVaults.get permission.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location for which to retrieve backupvault stores information, in the format 'projects/{pro... |
| `filter` | `string` | query | No | Optional. Filtering results. |
| `orderBy` | `string` | query | No | Optional. Hint for how to order the results. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `FetchUsableBackupVaultsResponse`

```typescript
const res = await backupdr.backupVaults.fetchUsable({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.backupVaults.get`

**GET** `v1/{+name}`

Gets details of a BackupVault.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the backupvault store resource name, in the format 'projects/{project_id}/locations/{location}/back... |
| `view` | `string` | query | No | Optional. Reserved for future use to provide a BASIC & FULL view of Backup Vault |

**Response**: `BackupVault`

```typescript
const res = await backupdr.backupVaults.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.backupVaults.patch`

**PATCH** `v1/{+name}`

Updates the settings of a BackupVault.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Identifier. Name of the backup vault to create. It must have the format`"projects/{project}/locations/{l... |
| `force` | `boolean` | query | No | Optional. If set to true, will not check plan duration against backup vault enforcement duration. |
| `forceUpdateAccessRestriction` | `boolean` | query | No | Optional. If set to true, we will force update access restriction even if some non compliant data sources are present... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the BackupVault resource by the update. The f... |
| `validateOnly` | `boolean` | query | No | Optional. Only validate the request, but do not perform mutations. The default is 'false'. |

**Request body**: `BackupVault`

**Response**: `Operation`

```typescript
const res = await backupdr.backupVaults.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.backupVaults.create`

**POST** `v1/{+parent}/backupVaults`

Creates a new BackupVault in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Value for parent. |
| `backupVaultId` | `string` | query | No | Required. ID of the requesting object If auto-generating ID server-side, remove this field and backup_vault_id from t... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `validateOnly` | `boolean` | query | No | Optional. Only validate the request, but do not perform mutations. The default is 'false'. |

**Request body**: `BackupVault`

**Response**: `Operation`

```typescript
const res = await backupdr.backupVaults.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.backupVaults.delete`

**DELETE** `v1/{+name}`

Deletes a BackupVault.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. |
| `allowMissing` | `boolean` | query | No | Optional. If true and the BackupVault is not found, the request will succeed but no action will be taken. |
| `etag` | `string` | query | No | The current etag of the backup vault. If an etag is provided and does not match the current etag of the connection, d... |
| `force` | `boolean` | query | No | Optional. If set to true, any data source from this backup vault will also be deleted. |
| `ignoreBackupPlanReferences` | `boolean` | query | No | Optional. If set to true, backupvault deletion will proceed even if there are backup plans referencing the backupvaul... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `validateOnly` | `boolean` | query | No | Optional. Only validate the request, but do not perform mutations. The default is 'false'. |

**Response**: `Operation`

```typescript
const res = await backupdr.backupVaults.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.backupVaults.dataSources.patch`

**PATCH** `v1/{+name}`

Updates the settings of a DataSource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Identifier. Name of the datasource to create. It must have the format`"projects/{project}/locations/{loc... |
| `allowMissing` | `boolean` | query | No | Optional. Enable upsert. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the DataSource resource by the update. The fi... |

**Request body**: `DataSource`

**Response**: `Operation`

```typescript
const res = await backupdr.dataSources.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.backupVaults.dataSources.list`

**GET** `v1/{+parent}/dataSources`

Lists DataSources in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location for which to retrieve data sources information, in the format 'projects/{project_i... |
| `filter` | `string` | query | No | Optional. Filtering results. |
| `orderBy` | `string` | query | No | Optional. Hint for how to order the results. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListDataSourcesResponse`

```typescript
const res = await backupdr.dataSources.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.backupVaults.dataSources.fetchAccessToken`

**POST** `v1/{+name}:fetchAccessToken`

Internal only. Fetch access token for a given data source.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name for the location for which static IPs should be returned. Must be in the format 'projects... |

**Request body**: `FetchAccessTokenRequest`

**Response**: `FetchAccessTokenResponse`

```typescript
const res = await backupdr.dataSources.fetchAccessToken({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.backupVaults.dataSources.setInternalStatus`

**POST** `v1/{+dataSource}:setInternalStatus`

Sets the internal status of a DataSource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `dataSource` | `string` | path | Yes | Required. The resource name of the instance, in the format 'projects/*/locations/*/backupVaults/*/dataSources/'. |

**Request body**: `SetInternalStatusRequest`

**Response**: `Operation`

```typescript
const res = await backupdr.dataSources.setInternalStatus({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.backupVaults.dataSources.remove`

**POST** `v1/{+name}:remove`

Deletes a DataSource. This is a custom method instead of a standard delete method because external clients will not delete DataSources except for BackupDR backup appliances.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. |

**Request body**: `RemoveDataSourceRequest`

**Response**: `Operation`

```typescript
const res = await backupdr.dataSources.remove({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.backupVaults.dataSources.finalizeBackup`

**POST** `v1/{+dataSource}:finalizeBackup`

Internal only. Finalize a backup that was started by a call to InitiateBackup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `dataSource` | `string` | path | Yes | Required. The resource name of the instance, in the format 'projects/*/locations/*/backupVaults/*/dataSources/'. |

**Request body**: `FinalizeBackupRequest`

**Response**: `Operation`

```typescript
const res = await backupdr.dataSources.finalizeBackup({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.backupVaults.dataSources.initiateBackup`

**POST** `v1/{+dataSource}:initiateBackup`

Internal only. Initiates a backup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `dataSource` | `string` | path | Yes | Required. The resource name of the instance, in the format 'projects/*/locations/*/backupVaults/*/dataSources/'. |

**Request body**: `InitiateBackupRequest`

**Response**: `InitiateBackupResponse`

```typescript
const res = await backupdr.dataSources.initiateBackup({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.backupVaults.dataSources.abandonBackup`

**POST** `v1/{+dataSource}:abandonBackup`

Internal only. Abandons a backup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `dataSource` | `string` | path | Yes | Required. The resource name of the instance, in the format 'projects/*/locations/*/backupVaults/*/dataSources/'. |

**Request body**: `AbandonBackupRequest`

**Response**: `Operation`

```typescript
const res = await backupdr.dataSources.abandonBackup({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.backupVaults.dataSources.get`

**GET** `v1/{+name}`

Gets details of a DataSource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the data source resource name, in the format 'projects/{project_id}/locations/{location}/backupVaul... |

**Response**: `DataSource`

```typescript
const res = await backupdr.dataSources.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.backupVaults.dataSources.backups.list`

**GET** `v1/{+parent}/backups`

Lists Backups in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location for which to retrieve backup information, in the format 'projects/{project_id}/loc... |
| `filter` | `string` | query | No | Optional. Filtering results. |
| `orderBy` | `string` | query | No | Optional. Hint for how to order the results. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |
| `view` | `string` | query | No | Optional. Reserved for future use to provide a BASIC & FULL view of Backup resource. |

**Response**: `ListBackupsResponse`

```typescript
const res = await backupdr.backups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.backupVaults.dataSources.backups.patch`

**PATCH** `v1/{+name}`

Updates the settings of a Backup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Identifier. Name of the backup to create. It must have the format`"projects//locations//backupVaults//da... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the Backup resource by the update. The fields... |

**Request body**: `Backup`

**Response**: `Operation`

```typescript
const res = await backupdr.backups.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.backupVaults.dataSources.backups.restore`

**POST** `v1/{+name}:restore`

Restore from a Backup

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Backup instance, in the format 'projects/*/locations/*/backupVaults/*/dataSources/... |

**Request body**: `RestoreBackupRequest`

**Response**: `Operation`

```typescript
const res = await backupdr.backups.restore({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.backupVaults.dataSources.backups.get`

**GET** `v1/{+name}`

Gets details of a Backup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the data source resource name, in the format 'projects/{project_id}/locations/{location}/backupVaul... |
| `view` | `string` | query | No | Optional. Reserved for future use to provide a BASIC & FULL view of Backup resource. |

**Response**: `Backup`

```typescript
const res = await backupdr.backups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.backupVaults.dataSources.backups.fetchForResourceType`

**GET** `v1/{+parent}/backups:fetchForResourceType`

Fetch Backups for a given resource type.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Datasources are the parent resource for the backups. Format: projects/{project}/locations/{location}/backup... |
| `filter` | `string` | query | No | Optional. A filter expression that filters the results fetched in the response. The expression must specify the field... |
| `orderBy` | `string` | query | No | Optional. A comma-separated list of fields to order by, sorted in ascending order. Use "desc" after a field name for ... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of Backups to return. The service may return fewer than this value. If unspecified, at m... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous call of `FetchBackupsForResourceType`. Provide this to retrieve the ... |
| `resourceType` | `string` | query | No | Required. The type of the Google Cloud resource. Ex: sqladmin.googleapis.com/Instance |
| `view` | `string` | query | No | Optional. This parameter is used to specify the view of the backup. If not specified, the default view is BASIC. |

**Response**: `FetchBackupsForResourceTypeResponse`

```typescript
const res = await backupdr.backups.fetchForResourceType({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.backupVaults.dataSources.backups.delete`

**DELETE** `v1/{+name}`

Deletes a Backup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `Operation`

```typescript
const res = await backupdr.backups.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.serviceConfig.initialize`

**POST** `v1/{+name}:initialize`

Initializes the service related config for a project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the serviceConfig used to initialize the service. Format: `projects/{project_id}/locat... |

**Request body**: `InitializeServiceRequest`

**Response**: `Operation`

```typescript
const res = await backupdr.serviceConfig.initialize({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.dataSourceReferences.list`

**GET** `v1/{+parent}/dataSourceReferences`

Lists DataSourceReferences for a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name. Format: projects/{project}/locations/{location} |
| `filter` | `string` | query | No | Optional. A filter expression that filters the results listed in the response. The expression must specify the field ... |
| `orderBy` | `string` | query | No | Optional. A comma-separated list of fields to order by, sorted in ascending order. Use "desc" after a field name for ... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of DataSourceReferences to return. The service may return fewer than this value. If unsp... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListDataSourceReferences` call. Provide this to retrieve the subseq... |

**Response**: `ListDataSourceReferencesResponse`

```typescript
const res = await backupdr.dataSourceReferences.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.dataSourceReferences.get`

**GET** `v1/{+name}`

Gets details of a single DataSourceReference.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the DataSourceReference to retrieve. Format: projects/{project}/locations/{location}/dataSource... |

**Response**: `DataSourceReference`

```typescript
const res = await backupdr.dataSourceReferences.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `backupdr.projects.locations.dataSourceReferences.fetchForResourceType`

**GET** `v1/{+parent}/dataSourceReferences:fetchForResourceType`

Fetch DataSourceReferences for a given project, location and resource type.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name. Format: projects/{project}/locations/{location} |
| `filter` | `string` | query | No | Optional. A filter expression that filters the results fetched in the response. The expression must specify the field... |
| `orderBy` | `string` | query | No | Optional. A comma-separated list of fields to order by, sorted in ascending order. Use "desc" after a field name for ... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of DataSourceReferences to return. The service may return fewer than this value. If unsp... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous call of `FetchDataSourceReferencesForResourceType`. Provide this to ... |
| `resourceType` | `string` | query | No | Required. The type of the Google Cloud resource. Ex: sql.googleapis.com/Instance |

**Response**: `FetchDataSourceReferencesForResourceTypeResponse`

```typescript
const res = await backupdr.dataSourceReferences.fetchForResourceType({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AbandonBackupRequest`

request message for AbandonBackup.

| Property | Type | Description |
|----------|------|-------------|
| `requestId` | `string` | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you... |

### `AcceleratorConfig`

A specification of the type and number of accelerator cards attached to the instance.

| Property | Type | Description |
|----------|------|-------------|
| `acceleratorCount` | `integer` | Optional. The number of the guest accelerator cards exposed to this instance. |
| `acceleratorType` | `string` | Optional. Full or partial URL of the accelerator type resource to attach to this instance. |

### `AccessConfig`

An access configuration attached to an instance's network interface. Only one access config per instance is supported.

| Property | Type | Description |
|----------|------|-------------|
| `externalIpv6` | `string` | Optional. The external IPv6 address of this access configuration. |
| `externalIpv6PrefixLength` | `integer` | Optional. The prefix length of the external IPv6 range. |
| `name` | `string` | Optional. The name of this access configuration. |
| `natIP` | `string` | Optional. The external IP address of this access configuration. |
| `networkTier` | `string` | Optional. This signifies the networking tier used for configuring this access |
| `publicPtrDomainName` | `string` | Optional. The DNS domain name for the public PTR record. |
| `setPublicPtr` | `boolean` | Optional. Specifies whether a public DNS 'PTR' record should be created to map the external IP ad... |
| `type` | `string` | Optional. In accessConfigs (IPv4), the default and only option is ONE_TO_ONE_NAT. In ipv6AccessCo... |

### `AdvancedMachineFeatures`

Specifies options for controlling advanced machine features.

| Property | Type | Description |
|----------|------|-------------|
| `enableNestedVirtualization` | `boolean` | Optional. Whether to enable nested virtualization or not (default is false). |
| `enableUefiNetworking` | `boolean` | Optional. Whether to enable UEFI networking for instance creation. |
| `threadsPerCore` | `integer` | Optional. The number of threads per physical core. To disable simultaneous multithreading (SMT) s... |
| `visibleCoreCount` | `integer` | Optional. The number of physical cores to expose to an instance. Multiply by the number of thread... |

### `AliasIpRange`

An alias IP range attached to an instance's network interface.

| Property | Type | Description |
|----------|------|-------------|
| `ipCidrRange` | `string` | Optional. The IP alias ranges to allocate for this interface. |
| `subnetworkRangeName` | `string` | Optional. The name of a subnetwork secondary IP range from which to allocate an IP alias range. I... |

### `AllocationAffinity`

Specifies the reservations that this instance can consume from.

| Property | Type | Description |
|----------|------|-------------|
| `consumeReservationType` | `string` | Optional. Specifies the type of reservation from which this instance can consume |
| `key` | `string` | Optional. Corresponds to the label key of a reservation resource. |
| `values` | `array<string>` | Optional. Corresponds to the label values of a reservation resource. |

### `AlloyDBClusterBackupPlanAssociationProperties`

Properties for an AlloyDB cluster backup plan association.

| Property | Type | Description |
|----------|------|-------------|
| `clusterUid` | `string` | Output only. The cluster UID of the AlloyDB cluster. |

### `AlloyDBClusterDataSourceProperties`

AlloyDBClusterDataSourceProperties represents the properties of a AlloyDB cluster resource that are stored in the DataSource. .

| Property | Type | Description |
|----------|------|-------------|
| `clusterUid` | `string` | Output only. The cluster UID of the AlloyDB cluster backed up by the datasource. |
| `name` | `string` | Output only. Name of the AlloyDB cluster backed up by the datasource. |
| `pitrWindows` | `array<AlloyDbPitrWindow>` | Output only. Point in time recovery windows. The order is guaranteed to be ascending by start time. |

### `AlloyDBClusterDataSourceReferenceProperties`

AlloyDBClusterDataSourceReferenceProperties represents the properties of an AlloyDB cluster that are stored in the DataSourceReference.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Output only. Name of the AlloyDB cluster backed up by the datasource. Format: projects/{project}/... |

### `AlloyDbClusterBackupProperties`

AlloyDbClusterBackupProperties represents AlloyDB cluster backup properties. .

| Property | Type | Description |
|----------|------|-------------|
| `chainId` | `string` | Output only. The chain id of this backup. Backups belonging to the same chain are sharing the sam... |
| `databaseVersion` | `string` | Output only. The PostgreSQL major version of the AlloyDB cluster when the backup was taken. |
| `description` | `string` | An optional text description for the backup. |
| `storedBytes` | `string` | Output only. Storage usage of this particular backup |

### `AlloyDbPitrWindow`

Point in time recovery window for an AlloyDB cluster.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | Output only. The end time of the PITR window. It is not set if the corresponding Backup Plan Asso... |
| `logRetentionDays` | `string` | Output only. Log retention days for the PITR window. |
| `startTime` | `string` | Output only. The start time of the PITR window. |

### `AttachedDisk`

An instance-attached disk resource.

| Property | Type | Description |
|----------|------|-------------|
| `autoDelete` | `boolean` | Optional. Specifies whether the disk will be auto-deleted when the instance is deleted (but not w... |
| `boot` | `boolean` | Optional. Indicates that this is a boot disk. The virtual machine will use the first partition of... |
| `deviceName` | `string` | Optional. This is used as an identifier for the disks. This is the unique name has to provided to... |
| `diskEncryptionKey` | `CustomerEncryptionKey` | Optional. Encrypts or decrypts a disk using a customer-supplied encryption key. |
| `diskInterface` | `string` | Optional. Specifies the disk interface to use for attaching this disk. |
| `diskSizeGb` | `string` | Optional. The size of the disk in GB. |
| `diskType` | `string` | Optional. Output only. The URI of the disk type resource. For example: projects/project/zones/zon... |
| `diskTypeDeprecated` | `string` | Specifies the type of the disk. |
| `guestOsFeature` | `array<GuestOsFeature>` | Optional. A list of features to enable on the guest operating system. Applicable only for bootabl... |
| `index` | `string` | Optional. A zero-based index to this disk, where 0 is reserved for the boot disk. |
| `initializeParams` | `InitializeParams` | Optional. Specifies the parameters to initialize this disk. |
| `kind` | `string` | Optional. Type of the resource. |
| `license` | `array<string>` | Optional. Any valid publicly visible licenses. |
| `mode` | `string` | Optional. The mode in which to attach this disk. |
| `savedState` | `string` | Optional. Output only. The state of the disk. |
| `source` | `string` | Optional. Specifies a valid partial or full URL to an existing Persistent Disk resource. |
| `type` | `string` | Optional. Specifies the type of the disk. |

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

### `Backup`

Message describing a Backup object.

| Property | Type | Description |
|----------|------|-------------|
| `alloyDbBackupProperties` | `AlloyDbClusterBackupProperties` | Output only. AlloyDB specific backup properties. |
| `backupApplianceBackupProperties` | `BackupApplianceBackupProperties` | Output only. Backup Appliance specific backup properties. |
| `backupApplianceLocks` | `array<BackupLock>` | Optional. The list of BackupLocks taken by the accessor Backup Appliance. |
| `backupRetentionInheritance` | `string` | Output only. Setting for how the enforced retention end time is inherited. This value is copied f... |
| `backupType` | `string` | Output only. Type of the backup, unspecified, scheduled or ondemand. |
| `cloudSqlInstanceBackupProperties` | `CloudSqlInstanceBackupProperties` | Output only. Cloud SQL specific backup properties. |
| `computeInstanceBackupProperties` | `ComputeInstanceBackupProperties` | Output only. Compute Engine specific backup properties. |
| `consistencyTime` | `string` | Output only. The point in time when this backup was captured from the source. |
| `createTime` | `string` | Output only. The time when the instance was created. |
| `description` | `string` | Output only. The description of the Backup instance (2048 characters or less). |
| `diskBackupProperties` | `DiskBackupProperties` | Output only. Disk specific backup properties. |
| `enforcedRetentionEndTime` | `string` | Optional. The backup can not be deleted before this time. |
| `etag` | `string` | Optional. Server specified ETag to prevent updates from overwriting each other. |
| `expireTime` | `string` | Optional. When this backup is automatically expired. |
| `gcpBackupPlanInfo` | `GCPBackupPlanInfo` | Output only. Configuration for a Google Cloud resource. |
| `gcpResource` | `BackupGcpResource` | Output only. Unique identifier of the GCP resource that is being backed up. |
| `kmsKeyVersions` | `array<string>` | Optional. Output only. The list of KMS key versions used to encrypt the backup. |
| `labels` | `object` | Optional. Resource labels to represent user provided metadata. No labels currently defined. |
| `name` | `string` | Output only. Identifier. Name of the backup to create. It must have the format`"projects//locatio... |
| `resourceSizeBytes` | `string` | Output only. source resource size in bytes at the time of the backup. |
| `satisfiesPzi` | `boolean` | Optional. Output only. Reserved for future use. |
| `satisfiesPzs` | `boolean` | Optional. Output only. Reserved for future use. |
| `serviceLocks` | `array<BackupLock>` | Output only. The list of BackupLocks taken by the service to prevent the deletion of the backup. |
| `state` | `string` | Output only. The Backup resource instance state. |
| `updateTime` | `string` | Output only. The time when the instance was updated. |

### `BackupApplianceBackupConfig`

BackupApplianceBackupConfig captures the backup configuration for applications that are protected by Backup Appliances.

| Property | Type | Description |
|----------|------|-------------|
| `applicationName` | `string` | The name of the application. |
| `backupApplianceId` | `string` | The ID of the backup appliance. |
| `backupApplianceName` | `string` | The name of the backup appliance. |
| `hostName` | `string` | The name of the host where the application is running. |
| `slaId` | `string` | The ID of the SLA of this application. |
| `slpName` | `string` | The name of the SLP associated with the application. |
| `sltName` | `string` | The name of the SLT associated with the application. |

### `BackupApplianceBackupProperties`

BackupApplianceBackupProperties represents BackupDR backup appliance's properties.

| Property | Type | Description |
|----------|------|-------------|
| `finalizeTime` | `string` | Output only. The time when this backup object was finalized (if none, backup is not finalized). |
| `generationId` | `integer` | Output only. The numeric generation ID of the backup (monotonically increasing). |
| `recoveryRangeEndTime` | `string` | Optional. The latest timestamp of data available in this Backup. |
| `recoveryRangeStartTime` | `string` | Optional. The earliest timestamp of data available in this Backup. |

### `BackupApplianceLockInfo`

BackupApplianceLockInfo contains metadata about the backupappliance that created the lock.

| Property | Type | Description |
|----------|------|-------------|
| `backupApplianceId` | `string` | Required. The ID of the backup/recovery appliance that created this lock. |
| `backupApplianceName` | `string` | Required. The name of the backup/recovery appliance that created this lock. |
| `backupImage` | `string` | The image name that depends on this Backup. |
| `jobName` | `string` | The job name on the backup/recovery appliance that created this lock. |
| `lockReason` | `string` | Required. The reason for the lock: e.g. MOUNT/RESTORE/BACKUP/etc. The value of this string is onl... |
| `slaId` | `string` | The SLA on the backup/recovery appliance that owns the lock. |

### `BackupConfigDetails`

BackupConfigDetails has information about how the resource is configured for backups and about the most recent backup taken for this configuration.

| Property | Type | Description |
|----------|------|-------------|
| `applicableResource` | `string` | Output only. The [full resource name](https://cloud.google.com/asset-inventory/docs/resource-name... |
| `backupConfigSource` | `string` | Output only. The full resource name of the backup config source resource. For example, "//backupd... |
| `backupConfigSourceDisplayName` | `string` | Output only. The display name of the backup config source resource. |
| `backupDrPlanConfig` | `BackupDrPlanConfig` | Google Cloud Backup and DR's Backup Plan specific data. |
| `backupDrTemplateConfig` | `BackupDrTemplateConfig` | Google Cloud Backup and DR's Template specific data. |
| `backupLocations` | `array<BackupLocation>` | The locations where the backups are to be stored. |
| `backupVault` | `string` | Output only. The [full resource name](https://cloud.google.com/asset-inventory/docs/resource-name... |
| `latestSuccessfulBackupTime` | `string` | Output only. Timestamp of the latest successful backup created via this backup configuration. |
| `pitrSettings` | `PitrSettings` | Output only. Point in time recovery settings of the backup configuration resource. |
| `state` | `string` | Output only. The state of the backup config resource. |
| `type` | `string` | Output only. The type of the backup config resource. |

### `BackupConfigInfo`

BackupConfigInfo has information about how the resource is configured for Backup and about the most recent backup to this vault.

| Property | Type | Description |
|----------|------|-------------|
| `backupApplianceBackupConfig` | `BackupApplianceBackupConfig` | Configuration for an application backed up by a Backup Appliance. |
| `gcpBackupConfig` | `GcpBackupConfig` | Configuration for a Google Cloud resource. |
| `lastBackupError` | `Status` | Output only. If the last backup failed, this field has the error message. |
| `lastBackupState` | `string` | Output only. The status of the last backup to this BackupVault |
| `lastSuccessfulBackupConsistencyTime` | `string` | Output only. If the last backup were successful, this field has the consistency date. |

### `BackupDrPlanConfig`

BackupDrPlanConfig has additional information about Google Cloud Backup and DR's Plan backup configuration.

| Property | Type | Description |
|----------|------|-------------|
| `backupDrPlanRules` | `array<BackupDrPlanRule>` | Backup rules of the backup plan resource. |

### `BackupDrPlanRule`

BackupDrPlanRule has rule specific information of the backup plan resource.

| Property | Type | Description |
|----------|------|-------------|
| `lastSuccessfulBackupTime` | `string` | Output only. Timestamp of the latest successful backup created via this backup rule. |
| `ruleId` | `string` | Output only. Unique Id of the backup rule. |

### `BackupDrTemplateConfig`

Provides additional information about Google Cloud Backup and DR's Template backup configuration.

| Property | Type | Description |
|----------|------|-------------|
| `firstPartyManagementUri` | `string` | Output only. The URI of the BackupDr template resource for the first party identity users. |
| `thirdPartyManagementUri` | `string` | Output only. The URI of the BackupDr template resource for the third party identity users. |

### `BackupGcpResource`

Minimum details to identify a Google Cloud resource for a backup.

| Property | Type | Description |
|----------|------|-------------|
| `gcpResourcename` | `string` | Name of the Google Cloud resource. |
| `location` | `string` | Location of the resource: //"global"/"unspecified". |
| `type` | `string` | Type of the resource. Use the Unified Resource Type, eg. compute.googleapis.com/Instance. |

### `BackupLocation`

BackupLocation represents a cloud location where a backup can be stored.

| Property | Type | Description |
|----------|------|-------------|
| `locationId` | `string` | Output only. The id of the cloud location. Example: "us-central1" |
| `type` | `string` | Output only. The type of the location. |

### `BackupLock`

BackupLock represents a single lock on a Backup resource. An unexpired lock on a Backup prevents the Backup from being deleted.

| Property | Type | Description |
|----------|------|-------------|
| `backupApplianceLockInfo` | `BackupApplianceLockInfo` | If the client is a backup and recovery appliance, this contains metadata about why the lock exists. |
| `lockUntilTime` | `string` | Required. The time after which this lock is not considered valid and will no longer protect the B... |
| `serviceLockInfo` | `ServiceLockInfo` | Output only. Contains metadata about the lock exist for Google Cloud native backups. |

### `BackupPlan`

A `BackupPlan` specifies some common fields, such as `description` as well as one or more `BackupRule` messages. Each `BackupRule` has a retention policy and defines a schedule by which the system is to perform backup workloads.

| Property | Type | Description |
|----------|------|-------------|
| `backupRules` | `array<BackupRule>` | Optional. The backup rules for this `BackupPlan`. |
| `backupVault` | `string` | Required. Resource name of backup vault which will be used as storage location for backups. Forma... |
| `backupVaultServiceAccount` | `string` | Output only. The Google Cloud service account to be used by the BackupVault for taking backups. S... |
| `createTime` | `string` | Output only. When the `BackupPlan` was created. |
| `description` | `string` | Optional. The description of the `BackupPlan` resource. The description allows for additional det... |
| `etag` | `string` | Optional. `etag` is returned from the service in the response. As a user of the service, you may ... |
| `labels` | `object` | Optional. This collection of key/value pairs allows for custom labels to be supplied by the user.... |
| `logRetentionDays` | `string` | Optional. Applicable only for Cloud SQL resource_type. Configures how long logs will be stored. I... |
| `maxCustomOnDemandRetentionDays` | `integer` | Optional. Optional field to configure the maximum number of days for which a backup can be retain... |
| `name` | `string` | Output only. Identifier. The resource name of the `BackupPlan`. Format: `projects/{project}/locat... |
| `resourceType` | `string` | Required. The resource type to which the `BackupPlan` will be applied. Examples include, "compute... |
| `revisionId` | `string` | Output only. The user friendly revision ID of the `BackupPlanRevision`. Example: v0, v1, v2, etc. |
| `revisionName` | `string` | Output only. The resource id of the `BackupPlanRevision`. Format: `projects/{project}/locations/{... |
| `state` | `string` | Output only. The `State` for the `BackupPlan`. |
| `supportedResourceTypes` | `array<string>` | Output only. All resource types to which backupPlan can be applied. |
| `updateTime` | `string` | Output only. When the `BackupPlan` was last updated. |

### `BackupPlanAssociation`

A BackupPlanAssociation represents a single BackupPlanAssociation which contains details like workload, backup plan etc

| Property | Type | Description |
|----------|------|-------------|
| `alloydbClusterBackupPlanAssociationProperties` | `AlloyDBClusterBackupPlanAssociationProperties` | Output only. AlloyDB cluster's backup plan association properties. |
| `backupPlan` | `string` | Required. Resource name of backup plan which needs to be applied on workload. Format: projects/{p... |
| `backupPlanRevisionId` | `string` | Output only. The user friendly revision ID of the `BackupPlanRevision`. Example: v0, v1, v2, etc. |
| `backupPlanRevisionName` | `string` | Output only. The resource id of the `BackupPlanRevision`. Format: `projects/{project}/locations/{... |
| `cloudSqlInstanceBackupPlanAssociationProperties` | `CloudSqlInstanceBackupPlanAssociationProperties` | Output only. Cloud SQL instance's backup plan association properties. |
| `createTime` | `string` | Output only. The time when the instance was created. |
| `dataSource` | `string` | Output only. Resource name of data source which will be used as storage location for backups take... |
| `filestoreInstanceBackupPlanAssociationProperties` | `FilestoreInstanceBackupPlanAssociationProperties` | Output only. Filestore instance's backup plan association properties. |
| `name` | `string` | Output only. Identifier. The resource name of BackupPlanAssociation in below format Format : proj... |
| `resource` | `string` | Required. Immutable. Resource name of workload on which the backup plan is applied. The format ca... |
| `resourceType` | `string` | Required. Immutable. Resource type of workload on which backupplan is applied |
| `rulesConfigInfo` | `array<RuleConfigInfo>` | Output only. The config info related to backup rules. |
| `state` | `string` | Output only. The BackupPlanAssociation resource state. |
| `updateTime` | `string` | Output only. The time when the instance was updated. |

### `BackupPlanRevision`

`BackupPlanRevision` represents a snapshot of a `BackupPlan` at a point in time.

| Property | Type | Description |
|----------|------|-------------|
| `backupPlanSnapshot` | `BackupPlan` | The Backup Plan being encompassed by this revision. |
| `createTime` | `string` | Output only. The timestamp that the revision was created. |
| `name` | `string` | Output only. Identifier. The resource name of the `BackupPlanRevision`. Format: `projects/{projec... |
| `revisionId` | `string` | Output only. The user friendly revision ID of the `BackupPlanRevision`. Example: v0, v1, v2, etc. |
| `state` | `string` | Output only. Resource State |

### `BackupRule`

`BackupRule` binds the backup schedule to a retention policy.

| Property | Type | Description |
|----------|------|-------------|
| `backupRetentionDays` | `integer` | Required. Configures the duration for which backup data will be kept. It is defined in “days”. Th... |
| `ruleId` | `string` | Required. Immutable. The unique id of this `BackupRule`. The `rule_id` is unique per `BackupPlan`... |
| `standardSchedule` | `StandardSchedule` | Optional. Defines a schedule that runs within the confines of a defined window of time. |

### `BackupVault`

Message describing a BackupVault object.

| Property | Type | Description |
|----------|------|-------------|
| `accessRestriction` | `string` | Optional. Note: This field is added for future use case and will not be supported in the current ... |
| `annotations` | `object` | Optional. User annotations. See https://google.aip.dev/128#annotations Stores small amounts of ar... |
| `backupCount` | `string` | Output only. The number of backups in this backup vault. |
| `backupMinimumEnforcedRetentionDuration` | `string` | Required. The default and minimum enforced retention for each backup within the backup vault. The... |
| `backupRetentionInheritance` | `string` | Optional. Setting for how a backup's enforced retention end time is inherited. |
| `createTime` | `string` | Output only. The time when the instance was created. |
| `deletable` | `boolean` | Output only. Set to true when there are no backups nested under this resource. |
| `description` | `string` | Optional. The description of the BackupVault instance (2048 characters or less). |
| `effectiveTime` | `string` | Optional. Time after which the BackupVault resource is locked. |
| `encryptionConfig` | `EncryptionConfig` | Optional. The encryption config of the backup vault. |
| `etag` | `string` | Optional. Server specified ETag for the backup vault resource to prevent simultaneous updates fro... |
| `labels` | `object` | Optional. Resource labels to represent user provided metadata. No labels currently defined: |
| `name` | `string` | Output only. Identifier. Name of the backup vault to create. It must have the format`"projects/{p... |
| `serviceAccount` | `string` | Output only. Service account used by the BackupVault Service for this BackupVault. The user shoul... |
| `state` | `string` | Output only. The BackupVault resource instance state. |
| `totalStoredBytes` | `string` | Output only. Total size of the storage used by all backup resources. |
| `uid` | `string` | Output only. Immutable after resource creation until resource deletion. |
| `updateTime` | `string` | Output only. The time when the instance was updated. |

### `BackupWindow`

`BackupWindow` defines a window of the day during which backup jobs will run.

| Property | Type | Description |
|----------|------|-------------|
| `endHourOfDay` | `integer` | Required. The hour of day (1-24) when the window end for example if value of end hour of day is 1... |
| `startHourOfDay` | `integer` | Required. The hour of day (0-23) when the window starts for example if value of start hour of day... |

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `CloudSqlInstanceBackupPlanAssociationProperties`

Cloud SQL instance's BPA properties.

| Property | Type | Description |
|----------|------|-------------|
| `instanceCreateTime` | `string` | Output only. The time when the instance was created. |

### `CloudSqlInstanceBackupProperties`

CloudSqlInstanceBackupProperties represents Cloud SQL Instance Backup properties.

| Property | Type | Description |
|----------|------|-------------|
| `databaseInstalledVersion` | `string` | Output only. The installed database version of the Cloud SQL instance when the backup was taken. |
| `finalBackup` | `boolean` | Output only. Whether the backup is a final backup. |
| `instanceCreateTime` | `string` | Output only. The instance creation timestamp. |
| `instanceDeleteTime` | `string` | Output only. The instance delete timestamp. |
| `instanceTier` | `string` | Output only. The tier (or machine type) for this instance. Example: `db-custom-1-3840` |
| `sourceInstance` | `string` | Output only. The source instance of the backup. Format: projects/{project}/instances/{instance} |

### `CloudSqlInstanceDataSourceProperties`

CloudSqlInstanceDataSourceProperties represents the properties of a Cloud SQL resource that are stored in the DataSource.

| Property | Type | Description |
|----------|------|-------------|
| `databaseInstalledVersion` | `string` | Output only. The installed database version of the Cloud SQL instance. |
| `instanceCreateTime` | `string` | Output only. The instance creation timestamp. |
| `instanceTier` | `string` | Output only. The tier (or machine type) for this instance. Example: `db-custom-1-3840` |
| `name` | `string` | Output only. Name of the Cloud SQL instance backed up by the datasource. Format: projects/{projec... |

### `CloudSqlInstanceDataSourceReferenceProperties`

CloudSqlInstanceDataSourceReferenceProperties represents the properties of a Cloud SQL resource that are stored in the DataSourceReference.

| Property | Type | Description |
|----------|------|-------------|
| `databaseInstalledVersion` | `string` | Output only. The installed database version of the Cloud SQL instance. |
| `instanceCreateTime` | `string` | Output only. The instance creation timestamp. |
| `instanceTier` | `string` | Output only. The tier (or machine type) for this instance. Example: `db-custom-1-3840` |
| `name` | `string` | Output only. Name of the Cloud SQL instance backed up by the datasource. Format: projects/{projec... |

### `CloudSqlInstanceInitializationConfig`

CloudSqlInstanceInitializationConfig contains the configuration for initializing a Cloud SQL instance.

| Property | Type | Description |
|----------|------|-------------|
| `edition` | `string` | Required. The edition of the Cloud SQL instance. |

### `ComputeInstanceBackupProperties`

ComputeInstanceBackupProperties represents Compute Engine instance backup properties.

| Property | Type | Description |
|----------|------|-------------|
| `canIpForward` | `boolean` | Enables instances created based on these properties to send packets with source IP addresses othe... |
| `description` | `string` | An optional text description for the instances that are created from these properties. |
| `disk` | `array<AttachedDisk>` | An array of disks that are associated with the instances that are created from these properties. |
| `guestAccelerator` | `array<AcceleratorConfig>` | A list of guest accelerator cards' type and count to use for instances created from these propert... |
| `keyRevocationActionType` | `string` | KeyRevocationActionType of the instance. Supported options are "STOP" and "NONE". The default val... |
| `labels` | `object` | Labels to apply to instances that are created from these properties. |
| `machineType` | `string` | The machine type to use for instances that are created from these properties. |
| `metadata` | `Metadata` | The metadata key/value pairs to assign to instances that are created from these properties. These... |
| `minCpuPlatform` | `string` | Minimum cpu/platform to be used by instances. The instance may be scheduled on the specified or n... |
| `networkInterface` | `array<NetworkInterface>` | An array of network access configurations for this interface. |
| `scheduling` | `Scheduling` | Specifies the scheduling options for the instances that are created from these properties. |
| `serviceAccount` | `array<ServiceAccount>` | A list of service accounts with specified scopes. Access tokens for these service accounts are av... |
| `sourceInstance` | `string` | The source instance used to create this backup. This can be a partial or full URL to the resource... |
| `tags` | `Tags` | A list of tags to apply to the instances that are created from these properties. The tags identif... |

### `ComputeInstanceDataSourceProperties`

ComputeInstanceDataSourceProperties represents the properties of a ComputeEngine resource that are stored in the DataSource.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | The description of the Compute Engine instance. |
| `machineType` | `string` | The machine type of the instance. |
| `name` | `string` | Name of the compute instance backed up by the datasource. |
| `totalDiskCount` | `string` | The total number of disks attached to the Instance. |
| `totalDiskSizeGb` | `string` | The sum of all the disk sizes. |

### `ComputeInstanceRestoreProperties`

ComputeInstanceRestoreProperties represents Compute Engine instance properties to be overridden during restore.

| Property | Type | Description |
|----------|------|-------------|
| `advancedMachineFeatures` | `AdvancedMachineFeatures` | Optional. Controls for advanced machine-related behavior features. |
| `canIpForward` | `boolean` | Optional. Allows this instance to send and receive packets with non-matching destination or sourc... |
| `confidentialInstanceConfig` | `ConfidentialInstanceConfig` | Optional. Controls Confidential compute options on the instance |
| `deletionProtection` | `boolean` | Optional. Whether the resource should be protected against deletion. |
| `description` | `string` | Optional. An optional description of this resource. Provide this property when you create the res... |
| `disks` | `array<AttachedDisk>` | Optional. Array of disks associated with this instance. Persistent disks must be created before y... |
| `displayDevice` | `DisplayDevice` | Optional. Enables display device for the instance. |
| `guestAccelerators` | `array<AcceleratorConfig>` | Optional. A list of the type and count of accelerator cards attached to the instance. |
| `hostname` | `string` | Optional. Specifies the hostname of the instance. The specified hostname must be RFC1035 complian... |
| `instanceEncryptionKey` | `CustomerEncryptionKey` | Optional. Encrypts suspended data for an instance with a customer-managed encryption key. |
| `keyRevocationActionType` | `string` | Optional. KeyRevocationActionType of the instance. |
| `labels` | `object` | Optional. Labels to apply to this instance. |
| `machineType` | `string` | Optional. Full or partial URL of the machine type resource to use for this instance. |
| `metadata` | `Metadata` | Optional. This includes custom metadata and predefined keys. |
| `minCpuPlatform` | `string` | Optional. Minimum CPU platform to use for this instance. |
| `name` | `string` | Required. Name of the compute instance. |
| `networkInterfaces` | `array<NetworkInterface>` | Optional. An array of network configurations for this instance. These specify how interfaces are ... |
| `networkPerformanceConfig` | `NetworkPerformanceConfig` | Optional. Configure network performance such as egress bandwidth tier. |
| `params` | `InstanceParams` | Input only. Additional params passed with the request, but not persisted as part of resource payl... |
| `privateIpv6GoogleAccess` | `string` | Optional. The private IPv6 google access type for the VM. If not specified, use INHERIT_FROM_SUBN... |
| `reservationAffinity` | `AllocationAffinity` | Optional. Specifies the reservations that this instance can consume from. |
| `resourcePolicies` | `array<string>` | Optional. Resource policies applied to this instance. By default, no resource policies will be ap... |
| `scheduling` | `Scheduling` | Optional. Sets the scheduling options for this instance. |
| `serviceAccounts` | `array<ServiceAccount>` | Optional. A list of service accounts, with their specified scopes, authorized for this instance. ... |
| `tags` | `Tags` | Optional. Tags to apply to this instance. Tags are used to identify valid sources or targets for ... |

### `ComputeInstanceTargetEnvironment`

ComputeInstanceTargetEnvironment represents Compute Engine target environment to be used during restore.

| Property | Type | Description |
|----------|------|-------------|
| `project` | `string` | Required. Target project for the Compute Engine instance. |
| `zone` | `string` | Required. The zone of the Compute Engine instance. |

### `ConfidentialInstanceConfig`

A set of Confidential Instance options.

| Property | Type | Description |
|----------|------|-------------|
| `enableConfidentialCompute` | `boolean` | Optional. Defines whether the instance should have confidential compute enabled. |

### `CustomerEncryptionKey`

A customer-supplied encryption key.

| Property | Type | Description |
|----------|------|-------------|
| `kmsKeyName` | `string` | Optional. The name of the encryption key that is stored in Google Cloud KMS. |
| `kmsKeyServiceAccount` | `string` | Optional. The service account being used for the encryption request for the given KMS key. If abs... |
| `rawKey` | `string` | Optional. Specifies a 256-bit customer-supplied encryption key. |
| `rsaEncryptedKey` | `string` | Optional. RSA-wrapped 2048-bit customer-supplied encryption key to either encrypt or decrypt this... |

### `DataSource`

Message describing a DataSource object. Datasource object used to represent Datasource details for both admin and basic view.

| Property | Type | Description |
|----------|------|-------------|
| `backupBlockedByVaultAccessRestriction` | `boolean` | Output only. This field is set to true if the backup is blocked by vault access restriction. |
| `backupConfigInfo` | `BackupConfigInfo` | Output only. Details of how the resource is configured for backup. |
| `backupCount` | `string` | Number of backups in the data source. |
| `configState` | `string` | Output only. The backup configuration state. |
| `createTime` | `string` | Output only. The time when the instance was created. |
| `dataSourceBackupApplianceApplication` | `DataSourceBackupApplianceApplication` | The backed up resource is a backup appliance application. |
| `dataSourceGcpResource` | `DataSourceGcpResource` | The backed up resource is a Google Cloud resource. The word 'DataSource' was included in the name... |
| `etag` | `string` | Server specified ETag for the ManagementServer resource to prevent simultaneous updates from over... |
| `labels` | `object` | Optional. Resource labels to represent user provided metadata. No labels currently defined: |
| `name` | `string` | Output only. Identifier. Name of the datasource to create. It must have the format`"projects/{pro... |
| `state` | `string` | Output only. The DataSource resource instance state. |
| `totalStoredBytes` | `string` | The number of bytes (metadata and data) stored in this datasource. |
| `updateTime` | `string` | Output only. The time when the instance was updated. |

### `DataSourceBackupApplianceApplication`

BackupApplianceApplication describes a Source Resource when it is an application backed up by a BackupAppliance.

| Property | Type | Description |
|----------|------|-------------|
| `applianceId` | `string` | Appliance Id of the Backup Appliance. |
| `applicationId` | `string` | The appid field of the application within the Backup Appliance. |
| `applicationName` | `string` | The name of the Application as known to the Backup Appliance. |
| `backupAppliance` | `string` | Appliance name. |
| `hostId` | `string` | Hostid of the application host. |
| `hostname` | `string` | Hostname of the host where the application is running. |
| `type` | `string` | The type of the application. e.g. VMBackup |

### `DataSourceBackupConfigInfo`

Information of backup configuration on the DataSource.

| Property | Type | Description |
|----------|------|-------------|
| `lastBackupState` | `string` | Output only. The status of the last backup in this DataSource |
| `lastSuccessfulBackupConsistencyTime` | `string` | Output only. Timestamp of the last successful backup to this DataSource. |

### `DataSourceGcpResource`

DataSourceGcpResource is used for protected resources that are Google Cloud Resources. This name is easeier to understand than GcpResourceDataSource or GcpDataSourceResource

| Property | Type | Description |
|----------|------|-------------|
| `alloyDbClusterDatasourceProperties` | `AlloyDBClusterDataSourceProperties` | Output only. AlloyDBClusterDataSourceProperties has a subset of AlloyDB cluster properties that a... |
| `cloudSqlInstanceDatasourceProperties` | `CloudSqlInstanceDataSourceProperties` | Output only. CloudSqlInstanceDataSourceProperties has a subset of Cloud SQL Instance properties t... |
| `computeInstanceDatasourceProperties` | `ComputeInstanceDataSourceProperties` | ComputeInstanceDataSourceProperties has a subset of Compute Instance properties that are useful a... |
| `diskDatasourceProperties` | `DiskDataSourceProperties` | DiskDataSourceProperties has a subset of Disk properties that are useful at the Datasource level. |
| `gcpResourcename` | `string` | Output only. Full resource pathname URL of the source Google Cloud resource. |
| `location` | `string` | Location of the resource: //"global"/"unspecified". |
| `type` | `string` | The type of the Google Cloud resource. Use the Unified Resource Type, eg. compute.googleapis.com/... |

### `DataSourceGcpResourceInfo`

The Google Cloud resource that the DataSource is associated with.

| Property | Type | Description |
|----------|------|-------------|
| `alloyDbClusterProperties` | `AlloyDBClusterDataSourceReferenceProperties` | Output only. The properties of the AlloyDB cluster. |
| `cloudSqlInstanceProperties` | `CloudSqlInstanceDataSourceReferenceProperties` | Output only. The properties of the Cloud SQL instance. |
| `gcpResourcename` | `string` | Output only. The resource name of the Google Cloud resource. Ex: projects/{project}/zones/{zone}/... |
| `location` | `string` | Output only. The location of the Google Cloud resource. Ex: //"global"/"unspecified" |
| `type` | `string` | Output only. The type of the Google Cloud resource. Ex: compute.googleapis.com/Instance |

### `DataSourceReference`

DataSourceReference is a reference to a DataSource resource.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time when the DataSourceReference was created. |
| `dataSource` | `string` | Output only. The resource name of the DataSource. Format: projects/{project}/locations/{location}... |
| `dataSourceBackupConfigInfo` | `DataSourceBackupConfigInfo` | Output only. Information of backup configuration on the DataSource. |
| `dataSourceBackupConfigState` | `string` | Output only. The backup configuration state of the DataSource. |
| `dataSourceBackupCount` | `string` | Output only. Number of backups in the DataSource. |
| `dataSourceGcpResourceInfo` | `DataSourceGcpResourceInfo` | Output only. The Google Cloud resource that the DataSource is associated with. |
| `name` | `string` | Identifier. The resource name of the DataSourceReference. Format: projects/{project}/locations/{l... |
| `totalStoredBytes` | `string` | Output only. Total size of the storage used by all backup resources for the referenced datasource. |

### `DiskBackupProperties`

DiskBackupProperties represents the properties of a Disk backup.

| Property | Type | Description |
|----------|------|-------------|
| `accessMode` | `string` | The access mode of the source disk. |
| `architecture` | `string` | The architecture of the source disk. Valid values are ARM64 or X86_64. |
| `description` | `string` | A description of the source disk. |
| `enableConfidentialCompute` | `boolean` | Indicates whether the source disk is using confidential compute mode. |
| `guestOsFeature` | `array<GuestOsFeature>` | A list of guest OS features that are applicable to this backup. |
| `labels` | `object` | The labels of the source disk. |
| `licenses` | `array<string>` | A list of publicly available licenses that are applicable to this backup. This is applicable if t... |
| `physicalBlockSizeBytes` | `string` | The physical block size of the source disk. |
| `provisionedIops` | `string` | The number of IOPS provisioned for the source disk. |
| `provisionedThroughput` | `string` | The number of throughput provisioned for the source disk. |
| `region` | `string` | Region and zone are mutually exclusive fields. The URL of the region of the source disk. |
| `replicaZones` | `array<string>` | The URL of the Zones where the source disk should be replicated. |
| `sizeGb` | `string` | Size(in GB) of the source disk. |
| `sourceDisk` | `string` | The source disk used to create this backup. |
| `storagePool` | `string` | The storage pool of the source disk. |
| `type` | `string` | The URL of the type of the disk. |
| `zone` | `string` | The URL of the Zone where the source disk. |

### `DiskDataSourceProperties`

DiskDataSourceProperties represents the properties of a Disk resource that are stored in the DataSource. .

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | The description of the disk. |
| `name` | `string` | Name of the disk backed up by the datasource. |
| `sizeGb` | `string` | The size of the disk in GB. |
| `type` | `string` | The type of the disk. |

### `DiskRestoreProperties`

DiskRestoreProperties represents the properties of a Disk restore.

| Property | Type | Description |
|----------|------|-------------|
| `accessMode` | `string` | Optional. The access mode of the disk. |
| `architecture` | `string` | Optional. The architecture of the source disk. Valid values are ARM64 or X86_64. |
| `description` | `string` | Optional. An optional description of this resource. Provide this property when you create the res... |
| `diskEncryptionKey` | `CustomerEncryptionKey` | Optional. Encrypts the disk using a customer-supplied encryption key or a customer-managed encryp... |
| `enableConfidentialCompute` | `boolean` | Optional. Indicates whether this disk is using confidential compute mode. Encryption with a Cloud... |
| `guestOsFeature` | `array<GuestOsFeature>` | Optional. A list of features to enable in the guest operating system. This is applicable only for... |
| `labels` | `object` | Optional. Labels to apply to this disk. These can be modified later using setLabels method. Label... |
| `licenses` | `array<string>` | Optional. A list of publicly available licenses that are applicable to this backup. This is appli... |
| `name` | `string` | Required. Name of the disk. |
| `physicalBlockSizeBytes` | `string` | Optional. Physical block size of the persistent disk, in bytes. If not present in a request, a de... |
| `provisionedIops` | `string` | Optional. Indicates how many IOPS to provision for the disk. This sets the number of I/O operatio... |
| `provisionedThroughput` | `string` | Optional. Indicates how much throughput to provision for the disk. This sets the number of throug... |
| `resourceManagerTags` | `object` | Optional. Resource manager tags to be bound to the disk. |
| `resourcePolicy` | `array<string>` | Optional. Resource policies applied to this disk. |
| `sizeGb` | `string` | Required. The size of the disk in GB. |
| `storagePool` | `string` | Optional. The storage pool in which the new disk is created. You can provide this as a partial or... |
| `type` | `string` | Required. URL of the disk type resource describing which disk type to use to create the disk. |

### `DiskTargetEnvironment`

DiskTargetEnvironment represents the target environment for the disk.

| Property | Type | Description |
|----------|------|-------------|
| `project` | `string` | Required. Target project for the disk. |
| `zone` | `string` | Required. Target zone for the disk. |

### `DisplayDevice`

A set of Display Device options

| Property | Type | Description |
|----------|------|-------------|
| `enableDisplay` | `boolean` | Optional. Enables display for the Compute Engine VM |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `EncryptionConfig`

Message describing the EncryptionConfig of backup vault. This determines how data within the vault is encrypted at rest.

| Property | Type | Description |
|----------|------|-------------|
| `kmsKeyName` | `string` | Optional. The Cloud KMS key name to encrypt backups in this backup vault. Must be in the same reg... |

### `EndTrialRequest`

Request message for ending a trial.

| Property | Type | Description |
|----------|------|-------------|
| `endReason` | `string` | Required. The reason for ending the trial. |

### `Entry`

A key/value pair to be used for storing metadata.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | Optional. Key for the metadata entry. |
| `value` | `string` | Optional. Value for the metadata entry. These are free-form strings, and only have meaning as int... |

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `FetchAccessTokenRequest`

Request message for FetchAccessToken.

| Property | Type | Description |
|----------|------|-------------|
| `generationId` | `integer` | Required. The generation of the backup to update. |

### `FetchAccessTokenResponse`

Response message for FetchAccessToken.

| Property | Type | Description |
|----------|------|-------------|
| `expireTime` | `string` | The token is valid until this time. |
| `readLocation` | `string` | The location in bucket that can be used for reading. |
| `token` | `string` | The downscoped token that was created. |
| `writeLocation` | `string` | The location in bucket that can be used for writing. |

### `FetchBackupPlanAssociationsForResourceTypeResponse`

Response for the FetchBackupPlanAssociationsForResourceType method.

| Property | Type | Description |
|----------|------|-------------|
| `backupPlanAssociations` | `array<BackupPlanAssociation>` | Output only. The BackupPlanAssociations from the specified parent. |
| `nextPageToken` | `string` | Output only. A token, which can be sent as `page_token` to retrieve the next page. If this field ... |

### `FetchBackupsForResourceTypeResponse`

Response for the FetchBackupsForResourceType method.

| Property | Type | Description |
|----------|------|-------------|
| `backups` | `array<Backup>` | The Backups from the specified parent. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `FetchDataSourceReferencesForResourceTypeResponse`

Response for the FetchDataSourceReferencesForResourceType method.

| Property | Type | Description |
|----------|------|-------------|
| `dataSourceReferences` | `array<DataSourceReference>` | The DataSourceReferences from the specified parent. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `FetchMsComplianceMetadataRequest`

Request message for GetMsComplianceMetadata

| Property | Type | Description |
|----------|------|-------------|
| `projectId` | `string` | Required. The project id of the target project |

### `FetchMsComplianceMetadataResponse`

Response message for GetMsComplianceMetadata

| Property | Type | Description |
|----------|------|-------------|
| `isAssuredWorkload` | `boolean` | The ms compliance metadata of the target project, if the project is an Assured Workloads project,... |

### `FetchUsableBackupVaultsResponse`

Response message for fetching usable BackupVaults.

| Property | Type | Description |
|----------|------|-------------|
| `backupVaults` | `array<BackupVault>` | The list of BackupVault instances in the project for the specified location. If the '{location}' ... |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `FilestoreInstanceBackupPlanAssociationProperties`

Filestore instance's BPA properties.

| Property | Type | Description |
|----------|------|-------------|
| `instanceCreateTime` | `string` | Output only. The time when the instance was created. |

### `FinalizeBackupRequest`

Message for finalizing a Backup.

| Property | Type | Description |
|----------|------|-------------|
| `backupId` | `string` | Required. Resource ID of the Backup resource to be finalized. This must be the same backup_id tha... |
| `consistencyTime` | `string` | The point in time when this backup was captured from the source. This will be assigned to the con... |
| `description` | `string` | This will be assigned to the description field of the newly created Backup. |
| `recoveryRangeEndTime` | `string` | The latest timestamp of data available in this Backup. This will be set on the newly created Backup. |
| `recoveryRangeStartTime` | `string` | The earliest timestamp of data available in this Backup. This will set on the newly created Backup. |
| `requestId` | `string` | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you... |
| `retentionDuration` | `string` | The ExpireTime on the backup will be set to FinalizeTime plus this duration. If the resulting Exp... |

### `GCPBackupPlanInfo`

GCPBackupPlanInfo captures the plan configuration details of Google Cloud resources at the time of backup.

| Property | Type | Description |
|----------|------|-------------|
| `backupPlan` | `string` | Resource name of backup plan by which workload is protected at the time of the backup. Format: pr... |
| `backupPlanRevisionId` | `string` | The user friendly id of the backup plan revision which triggered this backup in case of scheduled... |
| `backupPlanRevisionName` | `string` | Resource name of the backup plan revision which triggered this backup in case of scheduled backup... |
| `backupPlanRuleId` | `string` | The rule id of the backup plan which triggered this backup in case of scheduled backup or used for |

### `GcpBackupConfig`

GcpBackupConfig captures the Backup configuration details for Google Cloud resources. All Google Cloud resources regardless of type are protected with backup plan associations.

| Property | Type | Description |
|----------|------|-------------|
| `backupPlan` | `string` | The name of the backup plan. |
| `backupPlanAssociation` | `string` | The name of the backup plan association. |
| `backupPlanDescription` | `string` | The description of the backup plan. |
| `backupPlanRevisionId` | `string` | The user friendly id of the backup plan revision. E.g. v0, v1 etc. |
| `backupPlanRevisionName` | `string` | The name of the backup plan revision. |
| `backupPlanRules` | `array<string>` | The names of the backup plan rules which point to this backupvault |

### `GcpResource`

Minimum details to identify a Google Cloud resource

| Property | Type | Description |
|----------|------|-------------|
| `gcpResourcename` | `string` | Name of the Google Cloud resource. |
| `location` | `string` | Location of the resource: //"global"/"unspecified". |
| `type` | `string` | Type of the resource. Use the Unified Resource Type, eg. compute.googleapis.com/Instance. |

### `GuestOsFeature`

Feature type of the Guest OS.

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | The ID of a supported feature. |

### `InitializeParams`

Specifies the parameters to initialize this disk.

| Property | Type | Description |
|----------|------|-------------|
| `diskName` | `string` | Optional. Specifies the disk name. If not specified, the default is to use the name of the instance. |
| `replicaZones` | `array<string>` | Optional. URL of the zone where the disk should be created. Required for each regional disk assoc... |

### `InitializeServiceRequest`

Request message for initializing the service.

| Property | Type | Description |
|----------|------|-------------|
| `cloudSqlInstanceInitializationConfig` | `CloudSqlInstanceInitializationConfig` | Optional. The configuration for initializing a Cloud SQL instance. |
| `requestId` | `string` | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you... |
| `resourceType` | `string` | Required. The resource type to which the default service config will be applied. Examples include... |

### `InitiateBackupRequest`

request message for InitiateBackup.

| Property | Type | Description |
|----------|------|-------------|
| `backupId` | `string` | Required. Resource ID of the Backup resource. |
| `requestId` | `string` | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you... |

### `InitiateBackupResponse`

Response message for InitiateBackup.

| Property | Type | Description |
|----------|------|-------------|
| `backup` | `string` | The name of the backup that was created. |
| `baseBackupGenerationId` | `integer` | The generation id of the base backup. It is needed for the incremental backups. |
| `newBackupGenerationId` | `integer` | The generation id of the new backup. |

### `InstanceParams`

Additional instance params.

| Property | Type | Description |
|----------|------|-------------|
| `resourceManagerTags` | `object` | Optional. Resource manager tags to be bound to the instance. |

### `ListBackupPlanAssociationsResponse`

Response message for List BackupPlanAssociation

| Property | Type | Description |
|----------|------|-------------|
| `backupPlanAssociations` | `array<BackupPlanAssociation>` | The list of Backup Plan Associations in the project for the specified location. If the `{location... |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListBackupPlanRevisionsResponse`

The response message for getting a list of `BackupPlanRevision`.

| Property | Type | Description |
|----------|------|-------------|
| `backupPlanRevisions` | `array<BackupPlanRevision>` | The list of `BackupPlanRevisions` in the project for the specified location. If the `{location}` ... |
| `nextPageToken` | `string` | A token which may be sent as page_token in a subsequent `ListBackupPlanRevisions` call to retriev... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListBackupPlansResponse`

The response message for getting a list of `BackupPlan`.

| Property | Type | Description |
|----------|------|-------------|
| `backupPlans` | `array<BackupPlan>` | The list of `BackupPlans` in the project for the specified location. If the `{location}` value in... |
| `nextPageToken` | `string` | A token which may be sent as page_token in a subsequent `ListBackupPlans` call to retrieve the ne... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListBackupVaultsResponse`

Response message for listing BackupVaults.

| Property | Type | Description |
|----------|------|-------------|
| `backupVaults` | `array<BackupVault>` | The list of BackupVault instances in the project for the specified location. If the '{location}' ... |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListBackupsResponse`

Response message for listing Backups.

| Property | Type | Description |
|----------|------|-------------|
| `backups` | `array<Backup>` | The list of Backup instances in the project for the specified location. If the '{location}' value... |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListDataSourceReferencesResponse`

Response for the ListDataSourceReferences method.

| Property | Type | Description |
|----------|------|-------------|
| `dataSourceReferences` | `array<DataSourceReference>` | The DataSourceReferences from the specified parent. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListDataSourcesResponse`

Response message for listing DataSources.

| Property | Type | Description |
|----------|------|-------------|
| `dataSources` | `array<DataSource>` | The list of DataSource instances in the project for the specified location. If the '{location}' v... |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListLocationsResponse`

The response message for Locations.ListLocations.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<Location>` | A list of locations that matches the specified filter in the request. |
| `nextPageToken` | `string` | The standard List next-page token. |

### `ListManagementServersResponse`

Response message for listing management servers.

| Property | Type | Description |
|----------|------|-------------|
| `managementServers` | `array<ManagementServer>` | The list of ManagementServer instances in the project for the specified location. If the '{locati... |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<Operation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `ListResourceBackupConfigsResponse`

Response for ListResourceBackupConfigs.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `resourceBackupConfigs` | `array<ResourceBackupConfig>` | The list of ResourceBackupConfigs for the specified scope. |

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `LocationMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `unsupportedFeatures` | `array<string>` |  |

### `ManagementServer`

ManagementServer describes a single BackupDR ManagementServer instance.

| Property | Type | Description |
|----------|------|-------------|
| `baProxyUri` | `array<string>` | Output only. The hostname or ip address of the exposed AGM endpoints, used by BAs to connect to B... |
| `createTime` | `string` | Output only. The time when the instance was created. |
| `description` | `string` | Optional. The description of the ManagementServer instance (2048 characters or less). |
| `etag` | `string` | Optional. Server specified ETag for the ManagementServer resource to prevent simultaneous updates... |
| `labels` | `object` | Optional. Resource labels to represent user provided metadata. Labels currently defined: 1. migra... |
| `managementUri` | `ManagementURI` | Output only. The hostname or ip address of the exposed AGM endpoints, used by clients to connect ... |
| `name` | `string` | Output only. Identifier. The resource name. |
| `networks` | `array<NetworkConfig>` | Optional. VPC networks to which the ManagementServer instance is connected. For this version, onl... |
| `oauth2ClientId` | `string` | Output only. The OAuth 2.0 client id is required to make API calls to the Backup and DR instance ... |
| `satisfiesPzi` | `boolean` | Output only. Reserved for future use. |
| `satisfiesPzs` | `boolean` | Output only. Reserved for future use. |
| `state` | `string` | Output only. The ManagementServer state. |
| `type` | `string` | Optional. The type of the ManagementServer resource. |
| `updateTime` | `string` | Output only. The time when the instance was updated. |
| `workforceIdentityBasedManagementUri` | `WorkforceIdentityBasedManagementURI` | Output only. The hostnames of the exposed AGM endpoints for both types of user i.e. 1p and 3p, us... |
| `workforceIdentityBasedOauth2ClientId` | `WorkforceIdentityBasedOAuth2ClientID` | Output only. The OAuth client IDs for both types of user i.e. 1p and 3p. |

### `ManagementURI`

ManagementURI for the Management Server resource.

| Property | Type | Description |
|----------|------|-------------|
| `api` | `string` | Output only. The ManagementServer AGM/RD API URL. |
| `webUi` | `string` | Output only. The ManagementServer AGM/RD WebUI URL. |

### `Metadata`

A metadata key/value entry.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<Entry>` | Optional. Array of key/value pairs. The total size of all keys and values must be less than 512 KB. |

### `NetworkConfig`

Network configuration for ManagementServer instance.

| Property | Type | Description |
|----------|------|-------------|
| `network` | `string` | Optional. The resource name of the Google Compute Engine VPC network to which the ManagementServe... |
| `peeringMode` | `string` | Optional. The network connect mode of the ManagementServer instance. For this version, only PRIVA... |

### `NetworkInterface`

A network interface resource attached to an instance. s

| Property | Type | Description |
|----------|------|-------------|
| `accessConfigs` | `array<AccessConfig>` | Optional. An array of configurations for this interface. Currently, only one access config,ONE_TO... |
| `aliasIpRanges` | `array<AliasIpRange>` | Optional. An array of alias IP ranges for this network interface. You can only specify this field... |
| `internalIpv6PrefixLength` | `integer` | Optional. The prefix length of the primary internal IPv6 range. |
| `ipv6AccessConfigs` | `array<AccessConfig>` | Optional. An array of IPv6 access configurations for this interface. Currently, only one IPv6 acc... |
| `ipv6AccessType` | `string` | Optional. [Output Only] One of EXTERNAL, INTERNAL to indicate whether the IP can be accessed from... |
| `ipv6Address` | `string` | Optional. An IPv6 internal network address for this network interface. To use a static internal I... |
| `name` | `string` | Output only. [Output Only] The name of the network interface, which is generated by the server. |
| `network` | `string` | Optional. URL of the VPC network resource for this instance. |
| `networkAttachment` | `string` | Optional. The URL of the network attachment that this interface should connect to in the followin... |
| `networkIP` | `string` | Optional. An IPv4 internal IP address to assign to the instance for this network interface. If no... |
| `nicType` | `string` | Optional. The type of vNIC to be used on this interface. This may be gVNIC or VirtioNet. |
| `queueCount` | `integer` | Optional. The networking queue count that's specified by users for the network interface. Both Rx... |
| `stackType` | `string` | The stack type for this network interface. |
| `subnetwork` | `string` | Optional. The URL of the Subnetwork resource for this instance. |

### `NetworkPerformanceConfig`

Network performance configuration.

| Property | Type | Description |
|----------|------|-------------|
| `totalEgressBandwidthTier` | `string` | Optional. The tier of the total egress bandwidth. |

### `NodeAffinity`

Node Affinity: the configuration of desired nodes onto which this Instance could be scheduled.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | Optional. Corresponds to the label key of Node resource. |
| `operator` | `string` | Optional. Defines the operation of node selection. |
| `values` | `array<string>` | Optional. Corresponds to the label values of Node resource. |

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `OperationMetadata`

Represents the metadata of the long-running operation.

| Property | Type | Description |
|----------|------|-------------|
| `additionalInfo` | `object` | Output only. AdditionalInfo contains additional Info related to backup plan association resource. |
| `apiVersion` | `string` | Output only. API version used to start the operation. |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `requestedCancellation` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. Operations ... |
| `statusMessage` | `string` | Output only. Human-readable status of the operation, if any. |
| `target` | `string` | Output only. Server-defined resource path for the target of the operation. |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `PitrSettings`

Point in time recovery settings of the backup configuration resource.

| Property | Type | Description |
|----------|------|-------------|
| `retentionDays` | `integer` | Output only. Number of days to retain the backup. |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `auditConfigs` | `array<AuditConfig>` | Specifies cloud audit logging configuration for this policy. |
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `RegionDiskTargetEnvironment`

RegionDiskTargetEnvironment represents the target environment for the disk.

| Property | Type | Description |
|----------|------|-------------|
| `project` | `string` | Required. Target project for the disk. |
| `region` | `string` | Required. Target region for the disk. |
| `replicaZones` | `array<string>` | Required. Target URLs of the replica zones for the disk. |

### `RemoveDataSourceRequest`

Message for deleting a DataSource.

| Property | Type | Description |
|----------|------|-------------|
| `requestId` | `string` | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you... |

### `ResourceBackupConfig`

ResourceBackupConfig represents a resource along with its backup configurations.

| Property | Type | Description |
|----------|------|-------------|
| `backupConfigsDetails` | `array<BackupConfigDetails>` | Backup configurations applying to the target resource, including those targeting its related/chil... |
| `backupConfigured` | `boolean` | Output only. Whether the target resource is configured for backup. This is true if the backup_con... |
| `name` | `string` | Identifier. The resource name of the ResourceBackupConfig. Format: projects/{project}/locations/{... |
| `targetResource` | `string` | Output only. The [full resource name](https://cloud.google.com/asset-inventory/docs/resource-name... |
| `targetResourceDisplayName` | `string` | Output only. The human friendly name of the target resource. |
| `targetResourceLabels` | `object` | Labels associated with the target resource. |
| `targetResourceType` | `string` | Output only. The type of the target resource. |
| `uid` | `string` | Output only. The unique identifier of the resource backup config. |
| `vaulted` | `boolean` | Output only. Whether the target resource is protected by a backup vault. This is true if the back... |

### `RestoreBackupRequest`

Request message for restoring from a Backup.

| Property | Type | Description |
|----------|------|-------------|
| `clearOverridesFieldMask` | `string` | Optional. A field mask used to clear server-side default values for fields within the `instance_p... |
| `computeInstanceRestoreProperties` | `ComputeInstanceRestoreProperties` | Compute Engine instance properties to be overridden during restore. |
| `computeInstanceTargetEnvironment` | `ComputeInstanceTargetEnvironment` | Compute Engine target environment to be used during restore. |
| `diskRestoreProperties` | `DiskRestoreProperties` | Disk properties to be overridden during restore. |
| `diskTargetEnvironment` | `DiskTargetEnvironment` | Disk target environment to be used during restore. |
| `regionDiskTargetEnvironment` | `RegionDiskTargetEnvironment` | Region disk target environment to be used during restore. |
| `requestId` | `string` | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you... |

### `RestoreBackupResponse`

Response message for restoring from a Backup.

| Property | Type | Description |
|----------|------|-------------|
| `targetResource` | `TargetResource` | Details of the target resource created/modified as part of restore. |

### `RuleConfigInfo`

Message for rules config info.

| Property | Type | Description |
|----------|------|-------------|
| `lastBackupError` | `Status` | Output only. google.rpc.Status object to store the last backup error. |
| `lastBackupState` | `string` | Output only. The last backup state for rule. |
| `lastSuccessfulBackupConsistencyTime` | `string` | Output only. The point in time when the last successful backup was captured from the source. |
| `ruleId` | `string` | Output only. Backup Rule id fetched from backup plan. |

### `Scheduling`

Sets the scheduling options for an Instance.

| Property | Type | Description |
|----------|------|-------------|
| `automaticRestart` | `boolean` | Optional. Specifies whether the instance should be automatically restarted if it is terminated by... |
| `instanceTerminationAction` | `string` | Optional. Specifies the termination action for the instance. |
| `localSsdRecoveryTimeout` | `SchedulingDuration` | Optional. Specifies the maximum amount of time a Local Ssd Vm should wait while recovery of the L... |
| `minNodeCpus` | `integer` | Optional. The minimum number of virtual CPUs this instance will consume when running on a sole-te... |
| `nodeAffinities` | `array<NodeAffinity>` | Optional. A set of node affinity and anti-affinity configurations. Overrides reservationAffinity. |
| `onHostMaintenance` | `string` | Optional. Defines the maintenance behavior for this instance. |
| `preemptible` | `boolean` | Optional. Defines whether the instance is preemptible. |
| `provisioningModel` | `string` | Optional. Specifies the provisioning model of the instance. |

### `SchedulingDuration`

A SchedulingDuration represents a fixed-length span of time represented as a count of seconds and fractions of seconds at nanosecond resolution. It is independent of any calendar and concepts like "day" or "month". Range is approximately 10,000 years.

| Property | Type | Description |
|----------|------|-------------|
| `nanos` | `integer` | Optional. Span of time that's a fraction of a second at nanosecond resolution. |
| `seconds` | `string` | Optional. Span of time at a resolution of a second. |

### `ServiceAccount`

A service account.

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | Optional. Email address of the service account. |
| `scopes` | `array<string>` | Optional. The list of scopes to be made available for this service account. |

### `ServiceLockInfo`

ServiceLockInfo represents the details of a lock taken by the service on a Backup resource.

| Property | Type | Description |
|----------|------|-------------|
| `operation` | `string` | Output only. The name of the operation that created this lock. The lock will automatically be rel... |

### `SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |
| `updateMask` | `string` | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mas... |

### `SetInternalStatusRequest`

Request message for SetStatusInternal method.

| Property | Type | Description |
|----------|------|-------------|
| `backupConfigState` | `string` | Required. Output only. The new BackupConfigState to set for the DataSource. |
| `requestId` | `string` | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you... |
| `value` | `string` | Required. The value required for this method to work. This field must be the 32-byte SHA256 hash ... |

### `SetInternalStatusResponse`

Response message from SetStatusInternal method.

### `StandardSchedule`

`StandardSchedule` defines a schedule that run within the confines of a defined window of days. We can define recurrence type for schedule as HOURLY, DAILY, WEEKLY, MONTHLY or YEARLY.

| Property | Type | Description |
|----------|------|-------------|
| `backupWindow` | `BackupWindow` | Required. A BackupWindow defines the window of day during which backup jobs will run. Jobs are qu... |
| `daysOfMonth` | `array<integer>` | Optional. Specifies days of months like 1, 5, or 14 on which jobs will run. Values for `days_of_m... |
| `daysOfWeek` | `array<string>` | Optional. Specifies days of week like, MONDAY or TUESDAY, on which jobs will run. This is require... |
| `hourlyFrequency` | `integer` | Optional. Specifies frequency for hourly backups. A hourly frequency of 2 means jobs will run eve... |
| `months` | `array<string>` | Optional. Specifies the months of year, like `FEBRUARY` and/or `MAY`, on which jobs will run. Thi... |
| `recurrenceType` | `string` | Required. Specifies the `RecurrenceType` for the schedule. |
| `timeZone` | `string` | Required. The time zone to be used when interpreting the schedule. The value of this field must b... |
| `weekDayOfMonth` | `WeekDayOfMonth` | Optional. Specifies a week day of the month like, FIRST SUNDAY or LAST MONDAY, on which jobs will... |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `SubscribeTrialRequest`

Request message for subscribing to a trial.

### `Tags`

A set of instance tags.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<string>` | Optional. An array of tags. Each tag must be 1-63 characters long, and comply with RFC1035. |

### `TargetResource`

Details of the target resource created/modified as part of restore.

| Property | Type | Description |
|----------|------|-------------|
| `gcpResource` | `GcpResource` | Details of the native Google Cloud resource created as part of restore. |

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

### `Trial`

Represents a Trial for a project.

| Property | Type | Description |
|----------|------|-------------|
| `endReason` | `string` | Output only. The reason for ending the trial. |
| `endTime` | `string` | Output only. The time when the trial will expire. |
| `name` | `string` | Identifier. The resource name of the trial. Format: projects/{project}/locations/{location}/trial |
| `startTime` | `string` | Output only. The time when the trial was subscribed. |
| `state` | `string` | Output only. The state of the trial. |

### `TriggerBackupRequest`

Request message for triggering a backup.

| Property | Type | Description |
|----------|------|-------------|
| `customRetentionDays` | `integer` | Optional. The duration for which backup data will be kept, while taking an on-demand backup with ... |
| `labels` | `object` | Optional. Labels to be applied on the backup. |
| `requestId` | `string` | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you... |
| `ruleId` | `string` | Optional. backup rule_id for which a backup needs to be triggered. If not specified, on-demand ba... |

### `WeekDayOfMonth`

`WeekDayOfMonth` defines the week day of the month on which the backups will run. The message combines a `WeekOfMonth` and `DayOfWeek` to produce values like `FIRST`/`MONDAY` or `LAST`/`FRIDAY`.

| Property | Type | Description |
|----------|------|-------------|
| `dayOfWeek` | `string` | Required. Specifies the day of the week. |
| `weekOfMonth` | `string` | Required. Specifies the week of the month. |

### `WorkforceIdentityBasedManagementURI`

ManagementURI depending on the Workforce Identity i.e. either 1p or 3p.

| Property | Type | Description |
|----------|------|-------------|
| `firstPartyManagementUri` | `string` | Output only. First party Management URI for Google Identities. |
| `thirdPartyManagementUri` | `string` | Output only. Third party Management URI for External Identity Providers. |

### `WorkforceIdentityBasedOAuth2ClientID`

OAuth Client ID depending on the Workforce Identity i.e. either 1p or 3p,

| Property | Type | Description |
|----------|------|-------------|
| `firstPartyOauth2ClientId` | `string` | Output only. First party OAuth Client ID for Google Identities. |
| `thirdPartyOauth2ClientId` | `string` | Output only. Third party OAuth Client ID for External Identity Providers. |

