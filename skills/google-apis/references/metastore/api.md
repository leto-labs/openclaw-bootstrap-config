# Dataproc Metastore API - API Reference

**Version**: `v1` | **Methods**: 48 | **Schemas**: 69

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `metastore.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `metastore.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `metastore.projects.locations.services.get` | GET | `v1/{+name}` | Gets the details of a single service. |
| `metastore.projects.locations.services.completeMigration` | POST | `v1/{+service}:completeMigration` | Completes the managed migration process. The Dataproc Metastore service will switch to using its ... |
| `metastore.projects.locations.services.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single service. |
| `metastore.projects.locations.services.cancelMigration` | POST | `v1/{+service}:cancelMigration` | Cancels the ongoing Managed Migration process. |
| `metastore.projects.locations.services.exportMetadata` | POST | `v1/{+service}:exportMetadata` | Exports metadata from a service. |
| `metastore.projects.locations.services.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy.Can return... |
| `metastore.projects.locations.services.restore` | POST | `v1/{+service}:restore` | Restores a service from a backup. |
| `metastore.projects.locations.services.delete` | DELETE | `v1/{+name}` | Deletes a single service. |
| `metastore.projects.locations.services.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `metastore.projects.locations.services.create` | POST | `v1/{+parent}/services` | Creates a metastore service in a project and location. |
| `metastore.projects.locations.services.startMigration` | POST | `v1/{+service}:startMigration` | Starts the Managed Migration process. |
| `metastore.projects.locations.services.alterLocation` | POST | `v1/{+service}:alterLocation` | Alter metadata resource location. The metadata resource can be a database, table, or partition. T... |
| `metastore.projects.locations.services.alterTableProperties` | POST | `v1/{+service}:alterTableProperties` | Alter metadata table properties. |
| `metastore.projects.locations.services.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `metastore.projects.locations.services.moveTableToDatabase` | POST | `v1/{+service}:moveTableToDatabase` | Move a table to another database. |
| `metastore.projects.locations.services.list` | GET | `v1/{+parent}/services` | Lists services in a project and location. |
| `metastore.projects.locations.services.queryMetadata` | POST | `v1/{+service}:queryMetadata` | Query Dataproc Metastore metadata. |
| `metastore.projects.locations.services.migrationExecutions.delete` | DELETE | `v1/{+name}` | Deletes a single migration execution. |
| `metastore.projects.locations.services.migrationExecutions.list` | GET | `v1/{+parent}/migrationExecutions` | Lists migration executions on a service. |
| `metastore.projects.locations.services.migrationExecutions.get` | GET | `v1/{+name}` | Gets details of a single migration execution. |
| `metastore.projects.locations.services.backups.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `metastore.projects.locations.services.backups.get` | GET | `v1/{+name}` | Gets details of a single backup. |
| `metastore.projects.locations.services.backups.create` | POST | `v1/{+parent}/backups` | Creates a new backup in a given project and location. |
| `metastore.projects.locations.services.backups.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy.Can return... |
| `metastore.projects.locations.services.backups.delete` | DELETE | `v1/{+name}` | Deletes a single backup. |
| `metastore.projects.locations.services.backups.list` | GET | `v1/{+parent}/backups` | Lists backups in a service. |
| `metastore.projects.locations.services.databases.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `metastore.projects.locations.services.databases.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy.Can return... |
| `metastore.projects.locations.services.databases.tables.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `metastore.projects.locations.services.databases.tables.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy.Can return... |
| `metastore.projects.locations.services.metadataImports.get` | GET | `v1/{+name}` | Gets details of a single import. |
| `metastore.projects.locations.services.metadataImports.patch` | PATCH | `v1/{+name}` | Updates a single import. Only the description field of MetadataImport is supported to be updated. |
| `metastore.projects.locations.services.metadataImports.create` | POST | `v1/{+parent}/metadataImports` | Creates a new MetadataImport in a given project and location. |
| `metastore.projects.locations.services.metadataImports.list` | GET | `v1/{+parent}/metadataImports` | Lists imports in a service. |
| `metastore.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `metastore.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `metastore.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `metastore.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `metastore.projects.locations.federations.delete` | DELETE | `v1/{+name}` | Deletes a single federation. |
| `metastore.projects.locations.federations.list` | GET | `v1/{+parent}/federations` | Lists federations in a project and location. |
| `metastore.projects.locations.federations.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `metastore.projects.locations.federations.patch` | PATCH | `v1/{+name}` | Updates the fields of a federation. |
| `metastore.projects.locations.federations.create` | POST | `v1/{+parent}/federations` | Creates a metastore federation in a project and location. |
| `metastore.projects.locations.federations.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy.Can return... |
| `metastore.projects.locations.federations.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `metastore.projects.locations.federations.get` | GET | `v1/{+name}` | Gets the details of a single federation. |

### `metastore.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await metastore.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.list`

**GET** `v1/{+name}/locations`

Lists information about the supported locations for this service. This method can be called in two ways: List all public locations: Use the path GET /v1/locations. List project-visible locations: Use the path GET /v1/projects/{project_id}/locations. This may include public locations as well as private or other locations specifically visible to the project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource that owns the locations collection, if applicable. |
| `extraLocationTypes` | `string` | query | No | Optional. Do not use this field. It is unsupported and is ignored unless explicitly documented otherwise. This is pri... |
| `filter` | `string` | query | No | A filter to narrow down results to a preferred subset. The filtering language accepts strings like "displayName=tokyo... |
| `pageSize` | `integer` | query | No | The maximum number of results to return. If not set, the service selects a default. |
| `pageToken` | `string` | query | No | A page token received from the next_page_token field in the response. Send that page token to receive the subsequent ... |

**Response**: `ListLocationsResponse`

```typescript
const res = await metastore.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.services.get`

**GET** `v1/{+name}`

Gets the details of a single service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The relative resource name of the metastore service to retrieve, in the following form:projects/{project_nu... |

**Response**: `Service`

```typescript
const res = await metastore.services.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.services.completeMigration`

**POST** `v1/{+service}:completeMigration`

Completes the managed migration process. The Dataproc Metastore service will switch to using its own backend database after successful migration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `service` | `string` | path | Yes | Required. The relative resource name of the metastore service to complete the migration to, in the following format:p... |

**Request body**: `CompleteMigrationRequest`

**Response**: `Operation`

```typescript
const res = await metastore.services.completeMigration({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.services.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Identifier. The relative resource name of the metastore service, in the following format:projects/{project... |
| `requestId` | `string` | query | No | Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. Th... |
| `updateMask` | `string` | query | No | Required. A field mask used to specify the fields to be overwritten in the metastore service resource by the update. ... |

**Request body**: `Service`

**Response**: `Operation`

```typescript
const res = await metastore.services.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.services.cancelMigration`

**POST** `v1/{+service}:cancelMigration`

Cancels the ongoing Managed Migration process.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `service` | `string` | path | Yes | Required. The relative resource name of the metastore service to cancel the ongoing migration to, in the following fo... |

**Request body**: `CancelMigrationRequest`

**Response**: `Operation`

```typescript
const res = await metastore.services.cancelMigration({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.services.exportMetadata`

**POST** `v1/{+service}:exportMetadata`

Exports metadata from a service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `service` | `string` | path | Yes | Required. The relative resource name of the metastore service to run export, in the following form:projects/{project_... |

**Request body**: `ExportMetadataRequest`

**Response**: `Operation`

```typescript
const res = await metastore.services.exportMetadata({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.services.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await metastore.services.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.services.restore`

**POST** `v1/{+service}:restore`

Restores a service from a backup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `service` | `string` | path | Yes | Required. The relative resource name of the metastore service to run restore, in the following form:projects/{project... |

**Request body**: `RestoreServiceRequest`

**Response**: `Operation`

```typescript
const res = await metastore.services.restore({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.services.delete`

**DELETE** `v1/{+name}`

Deletes a single service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The relative resource name of the metastore service to delete, in the following form:projects/{project_numb... |
| `requestId` | `string` | query | No | Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. Th... |

**Response**: `Operation`

```typescript
const res = await metastore.services.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.services.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/des... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests sp... |

**Response**: `Policy`

```typescript
const res = await metastore.services.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.services.create`

**POST** `v1/{+parent}/services`

Creates a metastore service in a project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The relative resource name of the location in which to create a metastore service, in the following form:pr... |
| `requestId` | `string` | query | No | Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. Th... |
| `serviceId` | `string` | query | No | Required. The ID of the metastore service, which is used as the final component of the metastore service's name.This ... |

**Request body**: `Service`

**Response**: `Operation`

```typescript
const res = await metastore.services.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.services.startMigration`

**POST** `v1/{+service}:startMigration`

Starts the Managed Migration process.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `service` | `string` | path | Yes | Required. The relative resource name of the metastore service to start migrating to, in the following format:projects... |

**Request body**: `StartMigrationRequest`

**Response**: `Operation`

```typescript
const res = await metastore.services.startMigration({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.services.alterLocation`

**POST** `v1/{+service}:alterLocation`

Alter metadata resource location. The metadata resource can be a database, table, or partition. This functionality only updates the parent directory for the respective metadata resource and does not transfer any existing data to the new location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `service` | `string` | path | Yes | Required. The relative resource name of the metastore service to mutate metadata, in the following format:projects/{p... |

**Request body**: `AlterMetadataResourceLocationRequest`

**Response**: `Operation`

```typescript
const res = await metastore.services.alterLocation({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.services.alterTableProperties`

**POST** `v1/{+service}:alterTableProperties`

Alter metadata table properties.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `service` | `string` | path | Yes | Required. The relative resource name of the Dataproc Metastore service that's being used to mutate metadata table pro... |

**Request body**: `AlterTablePropertiesRequest`

**Response**: `Operation`

```typescript
const res = await metastore.services.alterTableProperties({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.services.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/a... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await metastore.services.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.services.moveTableToDatabase`

**POST** `v1/{+service}:moveTableToDatabase`

Move a table to another database.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `service` | `string` | path | Yes | Required. The relative resource name of the metastore service to mutate metadata, in the following format:projects/{p... |

**Request body**: `MoveTableToDatabaseRequest`

**Response**: `Operation`

```typescript
const res = await metastore.services.moveTableToDatabase({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.services.list`

**GET** `v1/{+parent}/services`

Lists services in a project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The relative resource name of the location of metastore services to list, in the following form:projects/{p... |
| `filter` | `string` | query | No | Optional. The filter to apply to list results. |
| `orderBy` | `string` | query | No | Optional. Specify the ordering of results as described in Sorting Order (https://cloud.google.com/apis/design/design_... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of services to return. The response may contain less than the maximum number. If unspeci... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous DataprocMetastore.ListServices call. Provide this token to retrieve ... |

**Response**: `ListServicesResponse`

```typescript
const res = await metastore.services.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.services.queryMetadata`

**POST** `v1/{+service}:queryMetadata`

Query Dataproc Metastore metadata.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `service` | `string` | path | Yes | Required. The relative resource name of the metastore service to query metadata, in the following format:projects/{pr... |

**Request body**: `QueryMetadataRequest`

**Response**: `Operation`

```typescript
const res = await metastore.services.queryMetadata({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.services.migrationExecutions.delete`

**DELETE** `v1/{+name}`

Deletes a single migration execution.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The relative resource name of the migrationExecution to delete, in the following form:projects/{project_num... |
| `requestId` | `string` | query | No | Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. Th... |

**Response**: `Operation`

```typescript
const res = await metastore.migrationExecutions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.services.migrationExecutions.list`

**GET** `v1/{+parent}/migrationExecutions`

Lists migration executions on a service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The relative resource name of the service whose migration executions to list, in the following form:project... |
| `filter` | `string` | query | No | Optional. The filter to apply to list results. |
| `orderBy` | `string` | query | No | Optional. Specify the ordering of results as described in Sorting Order (https://cloud.google.com/apis/design/design_... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of migration executions to return. The response may contain less than the maximum number... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous DataprocMetastore.ListMigrationExecutions call. Provide this token t... |

**Response**: `ListMigrationExecutionsResponse`

```typescript
const res = await metastore.migrationExecutions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.services.migrationExecutions.get`

**GET** `v1/{+name}`

Gets details of a single migration execution.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The relative resource name of the migration execution to retrieve, in the following form:projects/{project_... |

**Response**: `MigrationExecution`

```typescript
const res = await metastore.migrationExecutions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.services.backups.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/des... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests sp... |

**Response**: `Policy`

```typescript
const res = await metastore.backups.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.services.backups.get`

**GET** `v1/{+name}`

Gets details of a single backup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The relative resource name of the backup to retrieve, in the following form:projects/{project_number}/locat... |

**Response**: `Backup`

```typescript
const res = await metastore.backups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.services.backups.create`

**POST** `v1/{+parent}/backups`

Creates a new backup in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The relative resource name of the service in which to create a backup of the following form:projects/{proje... |
| `backupId` | `string` | query | No | Required. The ID of the backup, which is used as the final component of the backup's name.This value must be between ... |
| `requestId` | `string` | query | No | Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. Th... |

**Request body**: `Backup`

**Response**: `Operation`

```typescript
const res = await metastore.backups.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.services.backups.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await metastore.backups.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.services.backups.delete`

**DELETE** `v1/{+name}`

Deletes a single backup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The relative resource name of the backup to delete, in the following form:projects/{project_number}/locatio... |
| `requestId` | `string` | query | No | Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. Th... |

**Response**: `Operation`

```typescript
const res = await metastore.backups.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.services.backups.list`

**GET** `v1/{+parent}/backups`

Lists backups in a service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The relative resource name of the service whose backups to list, in the following form:projects/{project_nu... |
| `filter` | `string` | query | No | Optional. The filter to apply to list results. |
| `orderBy` | `string` | query | No | Optional. Specify the ordering of results as described in Sorting Order (https://cloud.google.com/apis/design/design_... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of backups to return. The response may contain less than the maximum number. If unspecif... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous DataprocMetastore.ListBackups call. Provide this token to retrieve t... |

**Response**: `ListBackupsResponse`

```typescript
const res = await metastore.backups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.services.databases.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/des... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests sp... |

**Response**: `Policy`

```typescript
const res = await metastore.databases.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.services.databases.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await metastore.databases.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.services.databases.tables.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/des... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests sp... |

**Response**: `Policy`

```typescript
const res = await metastore.tables.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.services.databases.tables.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await metastore.tables.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.services.metadataImports.get`

**GET** `v1/{+name}`

Gets details of a single import.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The relative resource name of the metadata import to retrieve, in the following form:projects/{project_numb... |

**Response**: `MetadataImport`

```typescript
const res = await metastore.metadataImports.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.services.metadataImports.patch`

**PATCH** `v1/{+name}`

Updates a single import. Only the description field of MetadataImport is supported to be updated.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Identifier. The relative resource name of the metadata import, of the form:projects/{project_number}/locat... |
| `requestId` | `string` | query | No | Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. Th... |
| `updateMask` | `string` | query | No | Required. A field mask used to specify the fields to be overwritten in the metadata import resource by the update. Fi... |

**Request body**: `MetadataImport`

**Response**: `Operation`

```typescript
const res = await metastore.metadataImports.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.services.metadataImports.create`

**POST** `v1/{+parent}/metadataImports`

Creates a new MetadataImport in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The relative resource name of the service in which to create a metastore import, in the following form:proj... |
| `metadataImportId` | `string` | query | No | Required. The ID of the metadata import, which is used as the final component of the metadata import's name.This valu... |
| `requestId` | `string` | query | No | Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. Th... |

**Request body**: `MetadataImport`

**Response**: `Operation`

```typescript
const res = await metastore.metadataImports.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.services.metadataImports.list`

**GET** `v1/{+parent}/metadataImports`

Lists imports in a service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The relative resource name of the service whose metadata imports to list, in the following form:projects/{p... |
| `filter` | `string` | query | No | Optional. The filter to apply to list results. |
| `orderBy` | `string` | query | No | Optional. Specify the ordering of results as described in Sorting Order (https://cloud.google.com/apis/design/design_... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of imports to return. The response may contain less than the maximum number. If unspecif... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous DataprocMetastore.ListServices call. Provide this token to retrieve ... |

**Response**: `ListMetadataImportsResponse`

```typescript
const res = await metastore.metadataImports.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await metastore.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns google.rpc.Code.UNIMPLEMENTED. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to Code.CANCELLED.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await metastore.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.operations.list`

**GET** `v1/{+name}/operations`

Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns UNIMPLEMENTED.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation's parent resource. |
| `filter` | `string` | query | No | The standard list filter. |
| `pageSize` | `integer` | query | No | The standard list page size. |
| `pageToken` | `string` | query | No | The standard list page token. |
| `returnPartialSuccess` | `boolean` | query | No | When set to true, operations that are reachable are returned as normal, and those that are unreachable are returned i... |

**Response**: `ListOperationsResponse`

```typescript
const res = await metastore.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns google.rpc.Code.UNIMPLEMENTED.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await metastore.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.federations.delete`

**DELETE** `v1/{+name}`

Deletes a single federation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The relative resource name of the metastore federation to delete, in the following form:projects/{project_n... |
| `requestId` | `string` | query | No | Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. Th... |

**Response**: `Operation`

```typescript
const res = await metastore.federations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.federations.list`

**GET** `v1/{+parent}/federations`

Lists federations in a project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The relative resource name of the location of metastore federations to list, in the following form: project... |
| `filter` | `string` | query | No | Optional. The filter to apply to list results. |
| `orderBy` | `string` | query | No | Optional. Specify the ordering of results as described in Sorting Order (https://cloud.google.com/apis/design/design_... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of federations to return. The response may contain less than the maximum number. If unsp... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous ListFederationServices call. Provide this token to retrieve the subs... |

**Response**: `ListFederationsResponse`

```typescript
const res = await metastore.federations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.federations.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error.Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See Resource names (https://cloud.google.com/a... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await metastore.federations.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.federations.patch`

**PATCH** `v1/{+name}`

Updates the fields of a federation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The relative resource name of the federation, of the form: projects/{project_number}/locations/{location_i... |
| `requestId` | `string` | query | No | Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. Th... |
| `updateMask` | `string` | query | No | Required. A field mask used to specify the fields to be overwritten in the metastore federation resource by the updat... |

**Request body**: `Federation`

**Response**: `Operation`

```typescript
const res = await metastore.federations.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.federations.create`

**POST** `v1/{+parent}/federations`

Creates a metastore federation in a project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The relative resource name of the location in which to create a federation service, in the following form:p... |
| `federationId` | `string` | query | No | Required. The ID of the metastore federation, which is used as the final component of the metastore federation's name... |
| `requestId` | `string` | query | No | Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. Th... |

**Request body**: `Federation`

**Response**: `Operation`

```typescript
const res = await metastore.federations.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.federations.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy.Can return NOT_FOUND, INVALID_ARGUMENT, and PERMISSION_DENIED errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See Resource names (https://cloud.google.com/apis/des... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await metastore.federations.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.federations.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See Resource names (https://cloud.google.com/apis/des... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy.Valid values are 0, 1, and 3. Requests sp... |

**Response**: `Policy`

```typescript
const res = await metastore.federations.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `metastore.projects.locations.federations.get`

**GET** `v1/{+name}`

Gets the details of a single federation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The relative resource name of the metastore federation to retrieve, in the following form:projects/{project... |

**Response**: `Federation`

```typescript
const res = await metastore.federations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AlterMetadataResourceLocationRequest`

Request message for DataprocMetastore.AlterMetadataResourceLocation.

| Property | Type | Description |
|----------|------|-------------|
| `locationUri` | `string` | Required. The new location URI for the metadata resource. |
| `resourceName` | `string` | Required. The relative metadata resource name in the following format.databases/{database_id} or ... |

### `AlterMetadataResourceLocationResponse`

Response message for DataprocMetastore.AlterMetadataResourceLocation.

### `AlterTablePropertiesRequest`

Request message for DataprocMetastore.AlterTableProperties.

| Property | Type | Description |
|----------|------|-------------|
| `properties` | `object` | A map that describes the desired values to mutate. If update_mask is empty, the properties will n... |
| `tableName` | `string` | Required. The name of the table containing the properties you're altering in the following format... |
| `updateMask` | `string` | A field mask that specifies the metadata table properties that are overwritten by the update. Fie... |

### `AuditConfig`

Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs.If there are AuditConfigs for both allServices and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditLogConfig are exempted.Example Policy with multiple AuditConfigs: { "audit_configs": [ { "service": "allServices", "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" }, { "log_type": "ADMIN_READ" } ] }, { "service": "sampleservice.googleapis.com", "audit_log_configs": [ { "log_type": "DATA_READ" }, { "log_type": "DATA_WRITE", "exempted_members": [ "user:aliya@example.com" ] } ] } ] } For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts jose@example.com from DATA_READ logging, and aliya@example.com from DATA_WRITE logging.

| Property | Type | Description |
|----------|------|-------------|
| `auditLogConfigs` | `array<AuditLogConfig>` | The configuration for logging of each type of permission. |
| `service` | `string` | Specifies a service that will be enabled for audit logging. For example, storage.googleapis.com, ... |

### `AuditLogConfig`

Provides the configuration for logging a type of permissions. Example: { "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.

| Property | Type | Description |
|----------|------|-------------|
| `exemptedMembers` | `array<string>` | Specifies the identities that do not cause logging for this type of permission. Follows the same ... |
| `logType` | `string` | The log type that this config enables. |

### `AutoscalingConfig`

Represents the autoscaling configuration of a metastore service.

| Property | Type | Description |
|----------|------|-------------|
| `autoscalingEnabled` | `boolean` | Optional. Whether or not autoscaling is enabled for this service. |
| `autoscalingFactor` | `number` | Output only. The scaling factor of a service with autoscaling enabled. |
| `limitConfig` | `LimitConfig` | Optional. The LimitConfig of the service. |

### `AuxiliaryVersionConfig`

Configuration information for the auxiliary service versions.

| Property | Type | Description |
|----------|------|-------------|
| `configOverrides` | `object` | Optional. A mapping of Hive metastore configuration key-value pairs to apply to the auxiliary Hiv... |
| `networkConfig` | `NetworkConfig` | Output only. The network configuration contains the endpoint URI(s) of the auxiliary Hive metasto... |
| `version` | `string` | Optional. The Hive metastore version of the auxiliary service. It must be less than the primary H... |

### `BackendMetastore`

Represents a backend metastore for the federation.

| Property | Type | Description |
|----------|------|-------------|
| `metastoreType` | `string` | The type of the backend metastore. |
| `name` | `string` | The relative resource name of the metastore that is being federated. The formats of the relative ... |

### `Backup`

The details of a backup resource.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time when the backup was started. |
| `description` | `string` | Optional. The description of the backup. |
| `endTime` | `string` | Output only. The time when the backup finished creating. |
| `name` | `string` | Immutable. Identifier. The relative resource name of the backup, in the following form:projects/{... |
| `restoringServices` | `array<string>` | Output only. Services that are restoring from the backup. |
| `serviceRevision` | `Service` | Output only. The revision of the service at the time of backup. |
| `state` | `string` | Output only. The current state of the backup. |

### `Binding`

Associates members, or principals, with a role.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding.If the condition evaluates to true, then this ... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. members can have the foll... |
| `role` | `string` | Role that is assigned to the list of members, or principals. For example, roles/viewer, roles/edi... |

### `CancelMigrationRequest`

Request message for DataprocMetastore.CancelMigration.

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `CdcConfig`

Configuration information to start the Change Data Capture (CDC) streams from customer database to backend database of Dataproc Metastore.

| Property | Type | Description |
|----------|------|-------------|
| `bucket` | `string` | Optional. The bucket to write the intermediate stream event data in. The bucket name must be with... |
| `password` | `string` | Required. Input only. The password for the user that Datastream service should use for the MySQL ... |
| `reverseProxySubnet` | `string` | Required. The URL of the subnetwork resource to create the VM instance hosting the reverse proxy ... |
| `rootPath` | `string` | Optional. The root path inside the Cloud Storage bucket. The stream event data will be written to... |
| `subnetIpRange` | `string` | Required. A /29 CIDR IP range for peering with datastream. |
| `username` | `string` | Required. The username that the Datastream service should use for the MySQL connection. |
| `vpcNetwork` | `string` | Required. Fully qualified name of the Cloud SQL instance's VPC network or the shared VPC network ... |

### `CloudSQLConnectionConfig`

Configuration information to establish customer database connection before the cutover phase of migration

| Property | Type | Description |
|----------|------|-------------|
| `hiveDatabaseName` | `string` | Required. The hive database name. |
| `instanceConnectionName` | `string` | Required. Cloud SQL database connection name (project_id:region:instance_name) |
| `ipAddress` | `string` | Required. The private IP address of the Cloud SQL instance. |
| `natSubnet` | `string` | Required. The relative resource name of the subnetwork to be used for Private Service Connect. No... |
| `password` | `string` | Required. Input only. The password for the user that Dataproc Metastore service will be using to ... |
| `port` | `integer` | Required. The network port of the database. |
| `proxySubnet` | `string` | Required. The relative resource name of the subnetwork to deploy the SOCKS5 proxy service in. The... |
| `username` | `string` | Required. The username that Dataproc Metastore service will use to connect to the database. |

### `CloudSQLMigrationConfig`

Configuration information for migrating from self-managed hive metastore on Google Cloud using Cloud SQL as the backend database to Dataproc Metastore.

| Property | Type | Description |
|----------|------|-------------|
| `cdcConfig` | `CdcConfig` | Required. Configuration information to start the Change Data Capture (CDC) streams from customer ... |
| `cloudSqlConnectionConfig` | `CloudSQLConnectionConfig` | Required. Configuration information to establish customer database connection before the cutover ... |

### `CompleteMigrationRequest`

Request message for DataprocMetastore.CompleteMigration.

### `Consumer`

Contains information of the customer's network configurations.

| Property | Type | Description |
|----------|------|-------------|
| `endpointLocation` | `string` | Output only. The location of the endpoint URI. Format: projects/{project}/locations/{location}. |
| `endpointUri` | `string` | Output only. The URI of the endpoint used to access the metastore service. |
| `subnetwork` | `string` | Immutable. The subnetwork of the customer project from which an IP address is reserved and used a... |

### `CustomRegionMetadata`

Deprecated: Use a single region service instead. Metadata about a custom region. This is only populated if the region is a custom region. For single/multi regions, it will be empty.

| Property | Type | Description |
|----------|------|-------------|
| `optionalReadOnlyRegions` | `array<string>` | The read-only regions for this custom region. |
| `requiredReadWriteRegions` | `array<string>` | The read-write regions for this custom region. |
| `witnessRegion` | `string` | The Spanner witness region for this custom region. |

### `DataCatalogConfig`

Specifies how metastore metadata should be integrated with the Data Catalog service.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Optional. Defines whether the metastore metadata should be synced to Data Catalog. The default va... |

### `DatabaseDump`

A specification of the location of and metadata about a database dump from a relational database management system.

| Property | Type | Description |
|----------|------|-------------|
| `databaseType` | `string` | The type of the database. |
| `gcsUri` | `string` | Optional. A Cloud Storage object or folder URI that specifies the source from which to import met... |
| `sourceDatabase` | `string` | Optional. The name of the source database. |
| `type` | `string` | Optional. The type of the database dump. If unspecified, defaults to MYSQL. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `EncryptionConfig`

Encryption settings for the service.

| Property | Type | Description |
|----------|------|-------------|
| `kmsKey` | `string` | Optional. The fully qualified customer provided Cloud KMS key name to use for customer data encry... |

### `ErrorDetails`

Error details in public error message for DataprocMetastore.QueryMetadata.

| Property | Type | Description |
|----------|------|-------------|
| `details` | `object` | Additional structured details about this error.Keys define the failure items. Value describes the... |

### `ExportMetadataRequest`

Request message for DataprocMetastore.ExportMetadata.

| Property | Type | Description |
|----------|------|-------------|
| `databaseDumpType` | `string` | Optional. The type of the database dump. If unspecified, defaults to MYSQL. |
| `destinationGcsFolder` | `string` | A Cloud Storage URI of a folder, in the format gs:///. A sub-folder containing exported files wil... |
| `requestId` | `string` | Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if ... |

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec.Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `Federation`

Represents a federation of multiple backend metastores.

| Property | Type | Description |
|----------|------|-------------|
| `backendMetastores` | `object` | A map from BackendMetastore rank to BackendMetastores from which the federation service serves me... |
| `createTime` | `string` | Output only. The time when the metastore federation was created. |
| `endpointUri` | `string` | Output only. The federation endpoint. |
| `labels` | `object` | User-defined labels for the metastore federation. |
| `name` | `string` | Immutable. The relative resource name of the federation, of the form: projects/{project_number}/l... |
| `state` | `string` | Output only. The current state of the federation. |
| `stateMessage` | `string` | Output only. Additional information about the current state of the metastore federation, if avail... |
| `tags` | `object` | Optional. Input only. Immutable. Tag keys/values directly bound to this resource. For example: "1... |
| `uid` | `string` | Output only. The globally unique resource identifier of the metastore federation. |
| `updateTime` | `string` | Output only. The time when the metastore federation was last updated. |
| `version` | `string` | Immutable. The Apache Hive metastore version of the federation. All backend metastore versions mu... |

### `HiveMetastoreConfig`

Specifies configuration information specific to running Hive metastore software as the metastore service.

| Property | Type | Description |
|----------|------|-------------|
| `auxiliaryVersions` | `object` | Optional. A mapping of Hive metastore version to the auxiliary version configuration. When specif... |
| `configOverrides` | `object` | Optional. A mapping of Hive metastore configuration key-value pairs to apply to the Hive metastor... |
| `endpointProtocol` | `string` | Optional. The protocol to use for the metastore service endpoint. If unspecified, defaults to THR... |
| `kerberosConfig` | `KerberosConfig` | Optional. Information used to configure the Hive metastore service as a service principal in a Ke... |
| `version` | `string` | Immutable. The Hive metastore schema version. |

### `HiveMetastoreVersion`

A specification of a supported version of the Hive Metastore software.

| Property | Type | Description |
|----------|------|-------------|
| `isDefault` | `boolean` | Whether version will be chosen by the server if a metastore service is created with a HiveMetasto... |
| `version` | `string` | The semantic version of the Hive Metastore software. |

### `KerberosConfig`

Configuration information for a Kerberos principal.

| Property | Type | Description |
|----------|------|-------------|
| `keytab` | `Secret` | Optional. A Kerberos keytab file that can be used to authenticate a service principal with a Kerb... |
| `krb5ConfigGcsUri` | `string` | Optional. A Cloud Storage URI that specifies the path to a krb5.conf file. It is of the form gs:/... |
| `principal` | `string` | Optional. A Kerberos principal that exists in the both the keytab the KDC to authenticate as. A t... |

### `LatestBackup`

The details of the latest scheduled backup.

| Property | Type | Description |
|----------|------|-------------|
| `backupId` | `string` | Output only. The ID of an in-progress scheduled backup. Empty if no backup is in progress. |
| `duration` | `string` | Output only. The duration of the backup completion. |
| `startTime` | `string` | Output only. The time when the backup was started. |
| `state` | `string` | Output only. The current state of the backup. |

### `LimitConfig`

Represents the autoscaling limit configuration of a metastore service.

| Property | Type | Description |
|----------|------|-------------|
| `maxScalingFactor` | `number` | Optional. The highest scaling factor that the service should be autoscaled to. |
| `minScalingFactor` | `number` | Optional. The lowest scaling factor that the service should be autoscaled to. |

### `ListBackupsResponse`

Response message for DataprocMetastore.ListBackups.

| Property | Type | Description |
|----------|------|-------------|
| `backups` | `array<Backup>` | The backups of the specified service. |
| `nextPageToken` | `string` | A token that can be sent as page_token to retrieve the next page. If this field is omitted, there... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListFederationsResponse`

Response message for ListFederations

| Property | Type | Description |
|----------|------|-------------|
| `federations` | `array<Federation>` | The services in the specified location. |
| `nextPageToken` | `string` | A token that can be sent as page_token to retrieve the next page. If this field is omitted, there... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListLocationsResponse`

The response message for Locations.ListLocations.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<Location>` | A list of locations that matches the specified filter in the request. |
| `nextPageToken` | `string` | The standard List next-page token. |

### `ListMetadataImportsResponse`

Response message for DataprocMetastore.ListMetadataImports.

| Property | Type | Description |
|----------|------|-------------|
| `metadataImports` | `array<MetadataImport>` | The imports in the specified service. |
| `nextPageToken` | `string` | A token that can be sent as page_token to retrieve the next page. If this field is omitted, there... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListMigrationExecutionsResponse`

Response message for DataprocMetastore.ListMigrationExecutions.

| Property | Type | Description |
|----------|------|-------------|
| `migrationExecutions` | `array<MigrationExecution>` | The migration executions on the specified service. |
| `nextPageToken` | `string` | A token that can be sent as page_token to retrieve the next page. If this field is omitted, there... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<Operation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets ListOperationsRequest.retu... |

### `ListServicesResponse`

Response message for DataprocMetastore.ListServices.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token that can be sent as page_token to retrieve the next page. If this field is omitted, there... |
| `services` | `array<Service>` | The services in the specified location. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: "us-east1". |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: "projects/ex... |

### `LocationMetadata`

Metadata about the service in a location.

| Property | Type | Description |
|----------|------|-------------|
| `customRegionMetadata` | `array<CustomRegionMetadata>` | Deprecated: Use a single region service instead. Possible configurations supported if the current... |
| `multiRegionMetadata` | `MultiRegionMetadata` | Deprecated: Use a single region service instead. The multi-region metadata if the current region ... |
| `supportedHiveMetastoreVersions` | `array<HiveMetastoreVersion>` | The versions of Hive Metastore that can be used when creating a new metastore service in this loc... |

### `MaintenanceWindow`

Maintenance window. This specifies when Dataproc Metastore may perform system maintenance operation to the service.

| Property | Type | Description |
|----------|------|-------------|
| `dayOfWeek` | `string` | Optional. The day of week, when the window starts. |
| `hourOfDay` | `integer` | Optional. The hour of day (0-23) when the window starts. |

### `MessageSet`

This is proto2's version of MessageSet.DEPRECATED: DO NOT USE FOR NEW FIELDS.If you are using editions or proto2, please make your own extendable messages for your use case. If you are using proto3, please use Any instead.MessageSet was the implementation of extensions for proto1. When proto2 was introduced, extensions were implemented as a first-class feature. This schema for MessageSet was meant to be a "bridge" solution to migrate MessageSet-bearing messages from proto1 to proto2.This schema has been open-sourced only to facilitate the migration of Google products with MessageSet-bearing messages to open-source environments.

### `MetadataExport`

The details of a metadata export operation.

| Property | Type | Description |
|----------|------|-------------|
| `databaseDumpType` | `string` | Output only. The type of the database dump. |
| `destinationGcsUri` | `string` | Output only. A Cloud Storage URI of a folder that metadata are exported to, in the form of gs:///... |
| `endTime` | `string` | Output only. The time when the export ended. |
| `startTime` | `string` | Output only. The time when the export started. |
| `state` | `string` | Output only. The current state of the export. |

### `MetadataImport`

A metastore resource that imports metadata.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time when the metadata import was started. |
| `databaseDump` | `DatabaseDump` | Immutable. A database dump from a pre-existing metastore's database. |
| `description` | `string` | Optional. The description of the metadata import. |
| `endTime` | `string` | Output only. The time when the metadata import finished. |
| `name` | `string` | Immutable. Identifier. The relative resource name of the metadata import, of the form:projects/{p... |
| `state` | `string` | Output only. The current state of the metadata import. |
| `updateTime` | `string` | Output only. The time when the metadata import was last updated. |

### `MetadataIntegration`

Specifies how metastore metadata should be integrated with external services.

| Property | Type | Description |
|----------|------|-------------|
| `dataCatalogConfig` | `DataCatalogConfig` | Optional. The integration config for the Data Catalog service. |

### `MetadataManagementActivity`

The metadata management activities of the metastore service.

| Property | Type | Description |
|----------|------|-------------|
| `metadataExports` | `array<MetadataExport>` | Output only. The latest metadata exports of the metastore service. |
| `restores` | `array<Restore>` | Output only. The latest restores of the metastore service. |

### `MigrationExecution`

The details of a migration execution resource.

| Property | Type | Description |
|----------|------|-------------|
| `cloudSqlMigrationConfig` | `CloudSQLMigrationConfig` | Configuration information specific to migrating from self-managed hive metastore on Google Cloud ... |
| `createTime` | `string` | Output only. The time when the migration execution was started. |
| `endTime` | `string` | Output only. The time when the migration execution finished. |
| `name` | `string` | Output only. The relative resource name of the migration execution, in the following form: projec... |
| `phase` | `string` | Output only. The current phase of the migration execution. |
| `state` | `string` | Output only. The current state of the migration execution. |
| `stateMessage` | `string` | Output only. Additional information about the current state of the migration execution. |

### `MoveTableToDatabaseRequest`

Request message for DataprocMetastore.MoveTableToDatabase.

| Property | Type | Description |
|----------|------|-------------|
| `dbName` | `string` | Required. The name of the database where the table resides. |
| `destinationDbName` | `string` | Required. The name of the database where the table should be moved. |
| `tableName` | `string` | Required. The name of the table to be moved. |

### `MoveTableToDatabaseResponse`

Response message for DataprocMetastore.MoveTableToDatabase.

### `MultiRegionMetadata`

Deprecated: Use a single region service instead. The metadata for the multi-region that includes the constituent regions. The metadata is only populated if the region is multi-region. For single region or custom dual region, it will be empty.

| Property | Type | Description |
|----------|------|-------------|
| `constituentRegions` | `array<string>` | The regions constituting the multi-region. |
| `continent` | `string` | The continent for this multi-region. |
| `witnessRegion` | `string` | The Spanner witness region for this multi-region. |

### `NetworkConfig`

Network configuration for the Dataproc Metastore service.

| Property | Type | Description |
|----------|------|-------------|
| `consumers` | `array<Consumer>` | Immutable. The consumer-side network configuration for the Dataproc Metastore instance. |

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is false, it means the operation is still in progress. If true, the operation is com... |
| `error` | `Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `OperationMetadata`

Represents the metadata of a long-running operation.

| Property | Type | Description |
|----------|------|-------------|
| `apiVersion` | `string` | Output only. API version used to start the operation. |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `requestedCancellation` | `boolean` | Output only. Identifies whether the caller has requested cancellation of the operation. Operation... |
| `statusMessage` | `string` | Output only. Human-readable status of the operation, if any. |
| `target` | `string` | Output only. Server-defined resource path for the target of the operation. |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources.A Policy is a collection of bindings. A binding binds one or more members, or principals, to a single role. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A role is a named list of permissions; each role can be an IAM predefined role or a user-created custom role.For some types of Google Cloud resources, a binding can also specify a condition, which is a logical expression that allows access to a resource only if the expression evaluates to true. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the IAM documentation (https://cloud.google.com/iam/help/conditions/resource-policies).JSON example: { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } YAML example: bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For a description of IAM and its features, see the IAM documentation (https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `auditConfigs` | `array<AuditConfig>` | Specifies cloud audit logging configuration for this policy. |
| `bindings` | `array<Binding>` | Associates a list of members, or principals, with a role. Optionally, may specify a condition tha... |
| `etag` | `string` | etag is used for optimistic concurrency control as a way to help prevent simultaneous updates of ... |
| `version` | `integer` | Specifies the format of the policy.Valid values are 0, 1, and 3. Requests that specify an invalid... |

### `QueryMetadataRequest`

Request message for DataprocMetastore.QueryMetadata.

| Property | Type | Description |
|----------|------|-------------|
| `query` | `string` | Required. A read-only SQL query to execute against the metadata database. The query cannot change... |

### `QueryMetadataResponse`

Response message for DataprocMetastore.QueryMetadata.

| Property | Type | Description |
|----------|------|-------------|
| `resultManifestUri` | `string` | The manifest URI is link to a JSON instance in Cloud Storage. This instance manifests immediately... |

### `Restore`

The details of a metadata restore operation.

| Property | Type | Description |
|----------|------|-------------|
| `backup` | `string` | Output only. The relative resource name of the metastore service backup to restore from, in the f... |
| `backupLocation` | `string` | Optional. A Cloud Storage URI specifying where the backup artifacts are stored, in the format gs:... |
| `details` | `string` | Output only. The restore details containing the revision of the service to be restored to, in for... |
| `endTime` | `string` | Output only. The time when the restore ended. |
| `startTime` | `string` | Output only. The time when the restore started. |
| `state` | `string` | Output only. The current state of the restore. |
| `type` | `string` | Output only. The type of restore. |

### `RestoreServiceRequest`

Request message for DataprocMetastore.RestoreService.

| Property | Type | Description |
|----------|------|-------------|
| `backup` | `string` | Optional. The relative resource name of the metastore service backup to restore from, in the foll... |
| `backupLocation` | `string` | Optional. A Cloud Storage URI specifying the location of the backup artifacts, namely - backup av... |
| `requestId` | `string` | Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if ... |
| `restoreType` | `string` | Optional. The type of restore. If unspecified, defaults to METADATA_ONLY. |

### `ScalingConfig`

Represents the scaling configuration of a metastore service.

| Property | Type | Description |
|----------|------|-------------|
| `autoscalingConfig` | `AutoscalingConfig` | Optional. The autoscaling configuration. |
| `instanceSize` | `string` | An enum of readable instance sizes, with each instance size mapping to a float value (e.g. Instan... |
| `scalingFactor` | `number` | Scaling factor, increments of 0.1 for values less than 1.0, and increments of 1.0 for values grea... |

### `ScheduledBackup`

This specifies the configuration of scheduled backup.

| Property | Type | Description |
|----------|------|-------------|
| `backupLocation` | `string` | Optional. A Cloud Storage URI of a folder, in the format gs:///. A sub-folder containing backup f... |
| `cronSchedule` | `string` | Optional. The scheduled interval in Cron format, see https://en.wikipedia.org/wiki/Cron The defau... |
| `enabled` | `boolean` | Optional. Defines whether the scheduled backup is enabled. The default value is false. |
| `latestBackup` | `LatestBackup` | Output only. The details of the latest scheduled backup. |
| `nextScheduledTime` | `string` | Output only. The time when the next backups execution is scheduled to start. |
| `timeZone` | `string` | Optional. Specifies the time zone to be used when interpreting cron_schedule. Must be a time zone... |

### `Secret`

A securely stored value.

| Property | Type | Description |
|----------|------|-------------|
| `cloudSecret` | `string` | Optional. The relative resource name of a Secret Manager secret version, in the following form:pr... |

### `Service`

A managed metastore service that serves metadata queries.

| Property | Type | Description |
|----------|------|-------------|
| `artifactGcsUri` | `string` | Output only. A Cloud Storage URI (starting with gs://) that specifies where artifacts related to ... |
| `createTime` | `string` | Output only. The time when the metastore service was created. |
| `databaseType` | `string` | Immutable. The database type that the Metastore service stores its data. |
| `deletionProtection` | `boolean` | Optional. Indicates if the dataproc metastore should be protected against accidental deletions. |
| `encryptionConfig` | `EncryptionConfig` | Immutable. Information used to configure the Dataproc Metastore service to encrypt customer data ... |
| `endpointUri` | `string` | Output only. The URI of the endpoint used to access the metastore service. |
| `hiveMetastoreConfig` | `HiveMetastoreConfig` | Configuration information specific to running Hive metastore software as the metastore service. |
| `labels` | `object` | User-defined labels for the metastore service. |
| `maintenanceWindow` | `MaintenanceWindow` | Optional. The one hour maintenance window of the metastore service. This specifies when the servi... |
| `metadataIntegration` | `MetadataIntegration` | Optional. The setting that defines how metastore metadata should be integrated with external serv... |
| `metadataManagementActivity` | `MetadataManagementActivity` | Output only. The metadata management activities of the metastore service. |
| `name` | `string` | Immutable. Identifier. The relative resource name of the metastore service, in the following form... |
| `network` | `string` | Immutable. The relative resource name of the VPC network on which the instance can be accessed. I... |
| `networkConfig` | `NetworkConfig` | Optional. The configuration specifying the network settings for the Dataproc Metastore service. |
| `port` | `integer` | Optional. The TCP port at which the metastore service is reached. Default: 9083. |
| `releaseChannel` | `string` | Immutable. The release channel of the service. If unspecified, defaults to STABLE. |
| `scalingConfig` | `ScalingConfig` | Optional. Scaling configuration of the metastore service. |
| `scheduledBackup` | `ScheduledBackup` | Optional. The configuration of scheduled backup for the metastore service. |
| `state` | `string` | Output only. The current state of the metastore service. |
| `stateMessage` | `string` | Output only. Additional information about the current state of the metastore service, if available. |
| `tags` | `object` | Optional. Input only. Immutable. Tag keys/values directly bound to this resource. For example: "1... |
| `telemetryConfig` | `TelemetryConfig` | Optional. The configuration specifying telemetry settings for the Dataproc Metastore service. If ... |
| `tier` | `string` | Optional. The tier of the service. |
| `uid` | `string` | Output only. The globally unique resource identifier of the metastore service. |
| `updateTime` | `string` | Output only. The time when the metastore service was last updated. |

### `SetIamPolicyRequest`

Request message for SetIamPolicy method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` | REQUIRED: The complete policy to be applied to the resource. The size of the policy is limited to... |
| `updateMask` | `string` | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mas... |

### `StartMigrationRequest`

Request message for DataprocMetastore.StartMigration.

| Property | Type | Description |
|----------|------|-------------|
| `migrationExecution` | `MigrationExecution` | Required. The configuration details for the migration. |
| `requestId` | `string` | Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if ... |

### `Status`

The Status type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by gRPC (https://github.com/grpc). Each Status message contains three pieces of data: error code, error message, and error details.You can find out more about this error model and how to work with it in the API Design Guide (https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `StatusProto`

Wire-format for a Status object

| Property | Type | Description |
|----------|------|-------------|
| `canonicalCode` | `integer` | copybara:strip_begin(b/383363683) copybara:strip_end_and_replace optional int32 canonical_code = 6; |
| `code` | `integer` | Numeric code drawn from the space specified below. Often, this is the canonical error space, and ... |
| `message` | `string` | Detail message copybara:strip_begin(b/383363683) copybara:strip_end_and_replace optional string m... |
| `messageSet` | `MessageSet` | message_set associates an arbitrary proto message with the status. copybara:strip_begin(b/3833636... |
| `space` | `string` | copybara:strip_begin(b/383363683) Space to which this status belongs copybara:strip_end_and_repla... |

### `TelemetryConfig`

Telemetry Configuration for the Dataproc Metastore service.

| Property | Type | Description |
|----------|------|-------------|
| `logFormat` | `string` | Optional. The output format of the Dataproc Metastore service's logs. |

### `TestIamPermissionsRequest`

Request message for TestIamPermissions method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | The set of permissions to check for the resource. Permissions with wildcards (such as * or storag... |

### `TestIamPermissionsResponse`

Response message for TestIamPermissions method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | A subset of TestPermissionsRequest.permissions that the caller is allowed. |

