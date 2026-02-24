# AlloyDB API - API Reference

**Version**: `v1` | **Methods**: 40 | **Schemas**: 120

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `alloydb.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `alloydb.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `alloydb.projects.locations.supportedDatabaseFlags.list` | GET | `v1/{+parent}/supportedDatabaseFlags` | Lists SupportedDatabaseFlags for a given project and location. |
| `alloydb.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `alloydb.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `alloydb.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `alloydb.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `alloydb.projects.locations.backups.create` | POST | `v1/{+parent}/backups` | Creates a new Backup in a given project and location. |
| `alloydb.projects.locations.backups.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single Backup. |
| `alloydb.projects.locations.backups.get` | GET | `v1/{+name}` | Gets details of a single Backup. |
| `alloydb.projects.locations.backups.list` | GET | `v1/{+parent}/backups` | Lists Backups in a given project and location. |
| `alloydb.projects.locations.backups.delete` | DELETE | `v1/{+name}` | Deletes a single Backup. |
| `alloydb.projects.locations.clusters.create` | POST | `v1/{+parent}/clusters` | Creates a new Cluster in a given project and location. |
| `alloydb.projects.locations.clusters.switchover` | POST | `v1/{+name}:switchover` | Switches the roles of PRIMARY and SECONDARY clusters without any data loss. This promotes the SEC... |
| `alloydb.projects.locations.clusters.restore` | POST | `v1/{+parent}/clusters:restore` | Creates a new Cluster in a given project and location, with a volume restored from the provided s... |
| `alloydb.projects.locations.clusters.get` | GET | `v1/{+name}` | Gets details of a single Cluster. |
| `alloydb.projects.locations.clusters.import` | POST | `v1/{+name}:import` | Imports data to the cluster. Imperative only. |
| `alloydb.projects.locations.clusters.createsecondary` | POST | `v1/{+parent}/clusters:createsecondary` | Creates a cluster of type SECONDARY in the given location using the primary cluster as the source. |
| `alloydb.projects.locations.clusters.restoreFromCloudSQL` | POST | `v1/{+parent}/clusters:restoreFromCloudSQL` | Restores an AlloyDB cluster from a CloudSQL resource. |
| `alloydb.projects.locations.clusters.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single Cluster. |
| `alloydb.projects.locations.clusters.delete` | DELETE | `v1/{+name}` | Deletes a single Cluster. |
| `alloydb.projects.locations.clusters.export` | POST | `v1/{+name}:export` | Exports data from the cluster. Imperative only. |
| `alloydb.projects.locations.clusters.upgrade` | PATCH | `v1/{+name}:upgrade` | Upgrades a single Cluster. Imperative only. |
| `alloydb.projects.locations.clusters.list` | GET | `v1/{+parent}/clusters` | Lists Clusters in a given project and location. |
| `alloydb.projects.locations.clusters.promote` | POST | `v1/{+name}:promote` | Promotes a SECONDARY cluster. This turns down replication from the PRIMARY cluster and promotes a... |
| `alloydb.projects.locations.clusters.instances.getConnectionInfo` | GET | `v1/{+parent}/connectionInfo` | Get instance metadata used for a connection. |
| `alloydb.projects.locations.clusters.instances.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single Instance. |
| `alloydb.projects.locations.clusters.instances.createsecondary` | POST | `v1/{+parent}/instances:createsecondary` | Creates a new SECONDARY Instance in a given project and location. |
| `alloydb.projects.locations.clusters.instances.restart` | POST | `v1/{+name}:restart` | Restart an Instance in a cluster. Imperative only. |
| `alloydb.projects.locations.clusters.instances.create` | POST | `v1/{+parent}/instances` | Creates a new Instance in a given project and location. |
| `alloydb.projects.locations.clusters.instances.list` | GET | `v1/{+parent}/instances` | Lists Instances in a given project and location. |
| `alloydb.projects.locations.clusters.instances.delete` | DELETE | `v1/{+name}` | Deletes a single Instance. |
| `alloydb.projects.locations.clusters.instances.get` | GET | `v1/{+name}` | Gets details of a single Instance. |
| `alloydb.projects.locations.clusters.instances.failover` | POST | `v1/{+name}:failover` | Forces a Failover for a highly available instance. Failover promotes the HA standby instance as t... |
| `alloydb.projects.locations.clusters.instances.injectFault` | POST | `v1/{+name}:injectFault` | Injects fault in an instance. Imperative only. |
| `alloydb.projects.locations.clusters.users.delete` | DELETE | `v1/{+name}` | Deletes a single User. |
| `alloydb.projects.locations.clusters.users.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single User. |
| `alloydb.projects.locations.clusters.users.create` | POST | `v1/{+parent}/users` | Creates a new User in a given project, location, and cluster. |
| `alloydb.projects.locations.clusters.users.list` | GET | `v1/{+parent}/users` | Lists Users in a given project and location. |
| `alloydb.projects.locations.clusters.users.get` | GET | `v1/{+name}` | Gets details of a single User. |

### `alloydb.projects.locations.list`

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

**Response**: `GoogleCloudLocationListLocationsResponse`

```typescript
const res = await alloydb.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `alloydb.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `GoogleCloudLocationLocation`

```typescript
const res = await alloydb.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `alloydb.projects.locations.supportedDatabaseFlags.list`

**GET** `v1/{+parent}/supportedDatabaseFlags`

Lists SupportedDatabaseFlags for a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource. The required format is: * projects/{project}/locations/{location} Regardle... |
| `pageSize` | `integer` | query | No | Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appropriate de... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. |
| `scope` | `string` | query | No | Optional. The scope for which supported flags are requested. If not specified, default is DATABASE. |

**Response**: `ListSupportedDatabaseFlagsResponse`

```typescript
const res = await alloydb.supportedDatabaseFlags.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `alloydb.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await alloydb.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `alloydb.projects.locations.operations.list`

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
const res = await alloydb.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `alloydb.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await alloydb.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `alloydb.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await alloydb.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `alloydb.projects.locations.backups.create`

**POST** `v1/{+parent}/backups`

Creates a new Backup in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Value for parent. |
| `backupId` | `string` | query | No | Required. ID of the requesting object. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `validateOnly` | `boolean` | query | No | Optional. If set, the backend validates the request, but doesn't actually execute it. |

**Request body**: `Backup`

**Response**: `Operation`

```typescript
const res = await alloydb.backups.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `alloydb.projects.locations.backups.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single Backup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The name of the backup resource with the format: * projects/{project}/locations/{region}/backups/{backup... |
| `allowMissing` | `boolean` | query | No | Optional. If set to true, update succeeds even if instance is not found. In that case, a new backup is created and `u... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the Backup resource by the update. The fields... |
| `validateOnly` | `boolean` | query | No | Optional. If set, the backend validates the request, but doesn't actually execute it. |

**Request body**: `Backup`

**Response**: `Operation`

```typescript
const res = await alloydb.backups.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `alloydb.projects.locations.backups.get`

**GET** `v1/{+name}`

Gets details of a single Backup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource |
| `view` | `string` | query | No | Optional. The view of the backup to return. |

**Response**: `Backup`

```typescript
const res = await alloydb.backups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `alloydb.projects.locations.backups.list`

**GET** `v1/{+parent}/backups`

Lists Backups in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for ListBackupsRequest |
| `filter` | `string` | query | No | Filtering results |
| `orderBy` | `string` | query | No | Hint for how to order the results |
| `pageSize` | `integer` | query | No | Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appropriate de... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. |
| `view` | `string` | query | No | Optional. The view of the backup to return. |

**Response**: `ListBackupsResponse`

```typescript
const res = await alloydb.backups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `alloydb.projects.locations.backups.delete`

**DELETE** `v1/{+name}`

Deletes a single Backup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. For the required format, see the comment on the Backup.name field. |
| `etag` | `string` | query | No | Optional. The current etag of the Backup. If an etag is provided and does not match the current etag of the Backup, d... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `validateOnly` | `boolean` | query | No | Optional. If set, the backend validates the request, but doesn't actually execute it. |

**Response**: `Operation`

```typescript
const res = await alloydb.backups.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `alloydb.projects.locations.clusters.create`

**POST** `v1/{+parent}/clusters`

Creates a new Cluster in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The location of the new cluster. For the required format, see the comment on the Cluster.name field. |
| `clusterId` | `string` | query | No | Required. ID of the requesting object. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `validateOnly` | `boolean` | query | No | Optional. If set, performs request validation, for example, permission checks and any other type of validation, but d... |

**Request body**: `Cluster`

**Response**: `Operation`

```typescript
const res = await alloydb.clusters.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `alloydb.projects.locations.clusters.switchover`

**POST** `v1/{+name}:switchover`

Switches the roles of PRIMARY and SECONDARY clusters without any data loss. This promotes the SECONDARY cluster to PRIMARY and sets up the original PRIMARY cluster to replicate from this newly promoted cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource. For the required format, see the comment on the Cluster.name field |

**Request body**: `SwitchoverClusterRequest`

**Response**: `Operation`

```typescript
const res = await alloydb.clusters.switchover({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `alloydb.projects.locations.clusters.restore`

**POST** `v1/{+parent}/clusters:restore`

Creates a new Cluster in a given project and location, with a volume restored from the provided source, either a backup ID or a point-in-time and a source cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource. For the required format, see the comment on the Cluster.name field. |

**Request body**: `RestoreClusterRequest`

**Response**: `Operation`

```typescript
const res = await alloydb.clusters.restore({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `alloydb.projects.locations.clusters.get`

**GET** `v1/{+name}`

Gets details of a single Cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource. For the required format, see the comment on the Cluster.name field. |
| `view` | `string` | query | No | Optional. The view of the cluster to return. Returns all default fields if not set. |

**Response**: `Cluster`

```typescript
const res = await alloydb.clusters.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `alloydb.projects.locations.clusters.import`

**POST** `v1/{+name}:import`

Imports data to the cluster. Imperative only.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the cluster. |

**Request body**: `ImportClusterRequest`

**Response**: `Operation`

```typescript
const res = await alloydb.clusters.import({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `alloydb.projects.locations.clusters.createsecondary`

**POST** `v1/{+parent}/clusters:createsecondary`

Creates a cluster of type SECONDARY in the given location using the primary cluster as the source.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The location of the new cluster. For the required format, see the comment on the Cluster.name field. |
| `clusterId` | `string` | query | No | Required. ID of the requesting object (the secondary cluster). |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `validateOnly` | `boolean` | query | No | Optional. If set, performs request validation, for example, permission checks and any other type of validation, but d... |

**Request body**: `Cluster`

**Response**: `Operation`

```typescript
const res = await alloydb.clusters.createsecondary({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `alloydb.projects.locations.clusters.restoreFromCloudSQL`

**POST** `v1/{+parent}/clusters:restoreFromCloudSQL`

Restores an AlloyDB cluster from a CloudSQL resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The location of the new cluster. For the required format, see the comment on Cluster.name field. |

**Request body**: `RestoreFromCloudSQLRequest`

**Response**: `Operation`

```typescript
const res = await alloydb.clusters.restoreFromCloudSQL({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `alloydb.projects.locations.clusters.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single Cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The name of the cluster resource with the format: * projects/{project}/locations/{region}/clusters/{clus... |
| `allowMissing` | `boolean` | query | No | Optional. If set to true, update succeeds even if cluster is not found. In that case, a new cluster is created and `u... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the Cluster resource by the update. The field... |
| `validateOnly` | `boolean` | query | No | Optional. If set, performs request validation, for example, permission checks and any other type of validation, but d... |

**Request body**: `Cluster`

**Response**: `Operation`

```typescript
const res = await alloydb.clusters.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `alloydb.projects.locations.clusters.delete`

**DELETE** `v1/{+name}`

Deletes a single Cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource. For the required format, see the comment on the Cluster.name field. |
| `etag` | `string` | query | No | Optional. The current etag of the Cluster. If an etag is provided and does not match the current etag of the Cluster,... |
| `force` | `boolean` | query | No | Optional. Whether to cascade delete child instances for given cluster. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `validateOnly` | `boolean` | query | No | Optional. If set, performs request validation, for example, permission checks and any other type of validation, but d... |

**Response**: `Operation`

```typescript
const res = await alloydb.clusters.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `alloydb.projects.locations.clusters.export`

**POST** `v1/{+name}:export`

Exports data from the cluster. Imperative only.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the cluster. |

**Request body**: `ExportClusterRequest`

**Response**: `Operation`

```typescript
const res = await alloydb.clusters.export({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `alloydb.projects.locations.clusters.upgrade`

**PATCH** `v1/{+name}:upgrade`

Upgrades a single Cluster. Imperative only.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the cluster. |

**Request body**: `UpgradeClusterRequest`

**Response**: `Operation`

```typescript
const res = await alloydb.clusters.upgrade({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `alloydb.projects.locations.clusters.list`

**GET** `v1/{+parent}/clusters`

Lists Clusters in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource. For the required format, see the comment on the Cluster.name field. Additi... |
| `filter` | `string` | query | No | Optional. Filtering results |
| `orderBy` | `string` | query | No | Optional. Hint for how to order the results |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. |

**Response**: `ListClustersResponse`

```typescript
const res = await alloydb.clusters.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `alloydb.projects.locations.clusters.promote`

**POST** `v1/{+name}:promote`

Promotes a SECONDARY cluster. This turns down replication from the PRIMARY cluster and promotes a secondary cluster into its own standalone cluster. Imperative only.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource. For the required format, see the comment on the Cluster.name field |

**Request body**: `PromoteClusterRequest`

**Response**: `Operation`

```typescript
const res = await alloydb.clusters.promote({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `alloydb.projects.locations.clusters.instances.getConnectionInfo`

**GET** `v1/{+parent}/connectionInfo`

Get instance metadata used for a connection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource. The required format is: projects/{project}/locations/{location}/clusters/{... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `ConnectionInfo`

```typescript
const res = await alloydb.instances.getConnectionInfo({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `alloydb.projects.locations.clusters.instances.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single Instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The name of the instance resource with the format: * projects/{project}/locations/{region}/clusters/{clu... |
| `allowMissing` | `boolean` | query | No | Optional. If set to true, update succeeds even if instance is not found. In that case, a new instance is created and ... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the Instance resource by the update. The fiel... |
| `validateOnly` | `boolean` | query | No | Optional. If set, performs request validation, for example, permission checks and any other type of validation, but d... |

**Request body**: `Instance`

**Response**: `Operation`

```typescript
const res = await alloydb.instances.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `alloydb.projects.locations.clusters.instances.createsecondary`

**POST** `v1/{+parent}/instances:createsecondary`

Creates a new SECONDARY Instance in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource. For the required format, see the comment on the Instance.name field. |
| `instanceId` | `string` | query | No | Required. ID of the requesting object. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `validateOnly` | `boolean` | query | No | Optional. If set, performs request validation, for example, permission checks and any other type of validation, but d... |

**Request body**: `Instance`

**Response**: `Operation`

```typescript
const res = await alloydb.instances.createsecondary({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `alloydb.projects.locations.clusters.instances.restart`

**POST** `v1/{+name}:restart`

Restart an Instance in a cluster. Imperative only.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource. For the required format, see the comment on the Instance.name field. |

**Request body**: `RestartInstanceRequest`

**Response**: `Operation`

```typescript
const res = await alloydb.instances.restart({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `alloydb.projects.locations.clusters.instances.create`

**POST** `v1/{+parent}/instances`

Creates a new Instance in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource. For the required format, see the comment on the Instance.name field. |
| `instanceId` | `string` | query | No | Required. ID of the requesting object. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `validateOnly` | `boolean` | query | No | Optional. If set, performs request validation, for example, permission checks and any other type of validation, but d... |

**Request body**: `Instance`

**Response**: `Operation`

```typescript
const res = await alloydb.instances.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `alloydb.projects.locations.clusters.instances.list`

**GET** `v1/{+parent}/instances`

Lists Instances in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent resource. For the required format, see the comment on the Instance.name field. Addit... |
| `filter` | `string` | query | No | Optional. Filtering results |
| `orderBy` | `string` | query | No | Optional. Hint for how to order the results |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. |

**Response**: `ListInstancesResponse`

```typescript
const res = await alloydb.instances.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `alloydb.projects.locations.clusters.instances.delete`

**DELETE** `v1/{+name}`

Deletes a single Instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource. For the required format, see the comment on the Instance.name field. |
| `etag` | `string` | query | No | Optional. The current etag of the Instance. If an etag is provided and does not match the current etag of the Instanc... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `validateOnly` | `boolean` | query | No | Optional. If set, performs request validation, for example, permission checks and any other type of validation, but d... |

**Response**: `Operation`

```typescript
const res = await alloydb.instances.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `alloydb.projects.locations.clusters.instances.get`

**GET** `v1/{+name}`

Gets details of a single Instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource. For the required format, see the comment on the Instance.name field. |
| `view` | `string` | query | No | The view of the instance to return. |

**Response**: `Instance`

```typescript
const res = await alloydb.instances.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `alloydb.projects.locations.clusters.instances.failover`

**POST** `v1/{+name}:failover`

Forces a Failover for a highly available instance. Failover promotes the HA standby instance as the new primary. Imperative only.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource. For the required format, see the comment on the Instance.name field. |

**Request body**: `FailoverInstanceRequest`

**Response**: `Operation`

```typescript
const res = await alloydb.instances.failover({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `alloydb.projects.locations.clusters.instances.injectFault`

**POST** `v1/{+name}:injectFault`

Injects fault in an instance. Imperative only.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource. For the required format, see the comment on the Instance.name field. |

**Request body**: `InjectFaultRequest`

**Response**: `Operation`

```typescript
const res = await alloydb.instances.injectFault({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `alloydb.projects.locations.clusters.users.delete`

**DELETE** `v1/{+name}`

Deletes a single User.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource. For the required format, see the comment on the User.name field. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `validateOnly` | `boolean` | query | No | Optional. If set, the backend validates the request, but doesn't actually execute it. |

**Response**: `Empty`

```typescript
const res = await alloydb.users.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `alloydb.projects.locations.clusters.users.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single User.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Name of the resource in the form of projects/{project}/locations/{location}/cluster/{cluster}/users/{user}. |
| `allowMissing` | `boolean` | query | No | Optional. Allow missing fields in the update mask. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the User resource by the update. The fields s... |
| `validateOnly` | `boolean` | query | No | Optional. If set, the backend validates the request, but doesn't actually execute it. |

**Request body**: `User`

**Response**: `User`

```typescript
const res = await alloydb.users.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `alloydb.projects.locations.clusters.users.create`

**POST** `v1/{+parent}/users`

Creates a new User in a given project, location, and cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Value for parent. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `userId` | `string` | query | No | Required. ID of the requesting object. |
| `validateOnly` | `boolean` | query | No | Optional. If set, the backend validates the request, but doesn't actually execute it. |

**Request body**: `User`

**Response**: `User`

```typescript
const res = await alloydb.users.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `alloydb.projects.locations.clusters.users.list`

**GET** `v1/{+parent}/users`

Lists Users in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for ListUsersRequest |
| `filter` | `string` | query | No | Optional. Filtering results |
| `orderBy` | `string` | query | No | Optional. Hint for how to order the results |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListUsersResponse`

```typescript
const res = await alloydb.users.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `alloydb.projects.locations.clusters.users.get`

**GET** `v1/{+name}`

Gets details of a single User.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource. For the required format, see the comment on the User.name field. |

**Response**: `User`

```typescript
const res = await alloydb.users.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AuthorizedNetwork`

AuthorizedNetwork contains metadata for an authorized network.

| Property | Type | Description |
|----------|------|-------------|
| `cidrRange` | `string` | CIDR range for one authorzied network of the instance. |

### `AutomatedBackupPolicy`

Message describing the user-specified automated backup policy. All fields in the automated backup policy are optional. Defaults for each field are provided if they are not set.

| Property | Type | Description |
|----------|------|-------------|
| `backupWindow` | `string` | The length of the time window during which a backup can be taken. If a backup does not succeed wi... |
| `enabled` | `boolean` | Whether automated automated backups are enabled. If not set, defaults to true. |
| `encryptionConfig` | `EncryptionConfig` | Optional. The encryption config can be specified to encrypt the backups with a customer-managed e... |
| `labels` | `object` | Labels to apply to backups created using this configuration. |
| `location` | `string` | The location where the backup will be stored. Currently, the only supported option is to store th... |
| `quantityBasedRetention` | `QuantityBasedRetention` | Quantity-based Backup retention policy to retain recent backups. |
| `timeBasedRetention` | `TimeBasedRetention` | Time-based Backup retention policy. |
| `weeklySchedule` | `WeeklySchedule` | Weekly schedule for the Backup. |

### `Backup`

Message describing Backup object

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Annotations to allow client tools to store small amount of arbitrary data. This is distinct from ... |
| `clusterName` | `string` | Required. The full resource name of the backup source cluster (e.g., projects/{project}/locations... |
| `clusterUid` | `string` | Output only. The system-generated UID of the cluster which was used to create this resource. |
| `createCompletionTime` | `string` | Output only. Timestamp when the resource finished being created. |
| `createTime` | `string` | Output only. Create time stamp |
| `databaseVersion` | `string` | Output only. The database engine major version of the cluster this backup was created from. Any r... |
| `deleteTime` | `string` | Output only. Delete time stamp |
| `description` | `string` | User-provided description of the backup. |
| `displayName` | `string` | User-settable and human-readable display name for the Backup. |
| `encryptionConfig` | `EncryptionConfig` | Optional. The encryption config can be specified to encrypt the backup with a customer-managed en... |
| `encryptionInfo` | `EncryptionInfo` | Output only. The encryption information for the backup. |
| `etag` | `string` | For Resource freshness validation (https://google.aip.dev/154) |
| `expiryQuantity` | `QuantityBasedExpiry` | Output only. The QuantityBasedExpiry of the backup, specified by the backup's retention policy. O... |
| `expiryTime` | `string` | Output only. The time at which after the backup is eligible to be garbage collected. It is the du... |
| `labels` | `object` | Labels as key value pairs |
| `name` | `string` | Output only. The name of the backup resource with the format: * projects/{project}/locations/{reg... |
| `reconciling` | `boolean` | Output only. Reconciling (https://google.aip.dev/128#reconciliation), if true, indicates that the... |
| `satisfiesPzs` | `boolean` | Output only. Reserved for future use. |
| `sizeBytes` | `string` | Output only. The size of the backup in bytes. |
| `state` | `string` | Output only. The current state of the backup. |
| `tags` | `object` | Optional. Input only. Immutable. Tag keys/values directly bound to this resource. For example: ``... |
| `type` | `string` | The backup type, which suggests the trigger for the backup. |
| `uid` | `string` | Output only. The system-generated UID of the resource. The UID is assigned when the resource is c... |
| `updateTime` | `string` | Output only. Update time stamp Users should not infer any meaning from this field. Its value is g... |

### `BackupDrBackupSource`

Message describing a BackupDrBackupSource.

| Property | Type | Description |
|----------|------|-------------|
| `backup` | `string` | Required. The name of the backup resource with the format: * projects/{project}/locations/{locati... |

### `BackupDrEnabledWindow`

Information about a single window when BackupDR was enabled for this cluster.

| Property | Type | Description |
|----------|------|-------------|
| `automatedBackupPreviouslyEnabled` | `boolean` | Whether automated backup was previously enabled prior to enabling BackupDR protection for this cl... |
| `backupPlanAssociation` | `string` | The BackupPlanAssociation resource that was used to enable BackupDR protection for this cluster. |
| `continuousBackupPreviousRecoveryWindowDays` | `integer` | The retention set for the continuous backup that was previously enabled prior to enabling BackupD... |
| `continuousBackupPreviouslyEnabled` | `boolean` | Whether continuous backup was previously enabled prior to enabling BackupDR protection for this c... |
| `continuousBackupPreviouslyEnabledTime` | `string` | The time when continuous backup was previously enabled prior to enabling BackupDR protection for ... |
| `dataSource` | `string` | The DataSource resource that represents the cluster in BackupDR. |
| `disabledTime` | `string` | Time when the BackupDR protection for this cluster was disabled. This field will be empty if this... |
| `enabledTime` | `string` | Time when the BackupDR protection for this cluster was enabled. |
| `logRetentionPeriod` | `string` | The retention period for logs generated by BackupDR for this cluster. |

### `BackupDrInfo`

Information about BackupDR protection for this cluster.

| Property | Type | Description |
|----------|------|-------------|
| `currentWindow` | `BackupDrEnabledWindow` | The current BackupDR configuration for this cluster. If BackupDR protection is not enabled for th... |
| `previousWindows` | `array<BackupDrEnabledWindow>` | Windows during which BackupDR was enabled for this cluster, along with associated configuration f... |

### `BackupDrPitrSource`

Message describing a BackupDrPitrSource.

| Property | Type | Description |
|----------|------|-------------|
| `dataSource` | `string` | Required. The name of the backup resource with the format: * projects/{project}/locations/{locati... |
| `pointInTime` | `string` | Required. The point in time to restore to. |

### `BackupSource`

Message describing a BackupSource.

| Property | Type | Description |
|----------|------|-------------|
| `backupName` | `string` | Required. The name of the backup resource with the format: * projects/{project}/locations/{region... |
| `backupUid` | `string` | Output only. The system-generated UID of the backup which was used to create this resource. The U... |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `ClientConnectionConfig`

Client connection configuration

| Property | Type | Description |
|----------|------|-------------|
| `requireConnectors` | `boolean` | Optional. Configuration to enforce connectors only (ex: AuthProxy) connections to the database. |
| `sslConfig` | `SslConfig` | Optional. SSL configuration option for this instance. |

### `CloudControl2SharedOperationsReconciliationOperationMetadata`

Operation metadata returned by the CLH during resource state reconciliation.

| Property | Type | Description |
|----------|------|-------------|
| `deleteResource` | `boolean` | DEPRECATED. Use exclusive_action instead. |
| `exclusiveAction` | `string` | Excluisive action returned by the CLH. |

### `CloudSQLBackupRunSource`

The source CloudSQL backup resource.

| Property | Type | Description |
|----------|------|-------------|
| `backupRunId` | `string` | Required. The CloudSQL backup run ID. |
| `instanceId` | `string` | Required. The CloudSQL instance ID. |
| `project` | `string` | The project ID of the source CloudSQL instance. This should be the same as the AlloyDB cluster's ... |

### `Cluster`

A cluster is a collection of regional AlloyDB resources. It can include a primary instance and one or more read pool instances. All cluster resources share a storage layer, which scales as needed.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Annotations to allow client tools to store small amount of arbitrary data. This is distinct from ... |
| `automatedBackupPolicy` | `AutomatedBackupPolicy` | The automated backup policy for this cluster. If no policy is provided then the default policy wi... |
| `backupSource` | `BackupSource` | Output only. Cluster created from backup. |
| `backupdrBackupSource` | `BackupDrBackupSource` | Output only. Cluster created from a BackupDR backup. |
| `backupdrInfo` | `BackupDrInfo` | Output only. Output only information about BackupDR protection for this cluster. |
| `cloudsqlBackupRunSource` | `CloudSQLBackupRunSource` | Output only. Cluster created from CloudSQL snapshot. |
| `clusterType` | `string` | Output only. The type of the cluster. This is an output-only field and it's populated at the Clus... |
| `continuousBackupConfig` | `ContinuousBackupConfig` | Optional. Continuous backup configuration for this cluster. |
| `continuousBackupInfo` | `ContinuousBackupInfo` | Output only. Continuous backup properties for this cluster. |
| `createTime` | `string` | Output only. Create time stamp |
| `databaseVersion` | `string` | Optional. The database engine major version. This is an optional field and it is populated at the... |
| `dataplexConfig` | `DataplexConfig` | Optional. Configuration for Dataplex integration. |
| `deleteTime` | `string` | Output only. Delete time stamp |
| `displayName` | `string` | User-settable and human-readable display name for the Cluster. |
| `encryptionConfig` | `EncryptionConfig` | Optional. The encryption config can be specified to encrypt the data disks and other persistent d... |
| `encryptionInfo` | `EncryptionInfo` | Output only. The encryption information for the cluster. |
| `etag` | `string` | For Resource freshness validation (https://google.aip.dev/154) |
| `initialUser` | `UserPassword` | Input only. Initial user to setup during cluster creation. Required. If used in `RestoreCluster` ... |
| `labels` | `object` | Labels as key value pairs |
| `maintenanceSchedule` | `MaintenanceSchedule` | Output only. The maintenance schedule for the cluster, generated for a specific rollout if a main... |
| `maintenanceUpdatePolicy` | `MaintenanceUpdatePolicy` | Optional. The maintenance update policy determines when to allow or deny updates. |
| `maintenanceVersionSelectionPolicy` | `string` | Input only. Policy to use to automatically select the maintenance version to which to update the ... |
| `migrationSource` | `MigrationSource` | Output only. Cluster created via DMS migration. |
| `name` | `string` | Output only. The name of the cluster resource with the format: * projects/{project}/locations/{re... |
| `network` | `string` | Required. The resource link for the VPC network in which cluster resources are created and from w... |
| `networkConfig` | `NetworkConfig` |  |
| `primaryConfig` | `PrimaryConfig` | Output only. Cross Region replication config specific to PRIMARY cluster. |
| `pscConfig` | `PscConfig` | Optional. The configuration for Private Service Connect (PSC) for the cluster. |
| `reconciling` | `boolean` | Output only. Reconciling (https://google.aip.dev/128#reconciliation). Set to true if the current ... |
| `satisfiesPzs` | `boolean` | Output only. Reserved for future use. |
| `secondaryConfig` | `SecondaryConfig` | Cross Region replication config specific to SECONDARY cluster. |
| `sslConfig` | `SslConfig` | SSL configuration for this AlloyDB cluster. |
| `state` | `string` | Output only. The current serving state of the cluster. |
| `subscriptionType` | `string` | Optional. Subscription type of the cluster. |
| `tags` | `object` | Optional. Input only. Immutable. Tag keys/values directly bound to this resource. For example: ``... |
| `trialMetadata` | `TrialMetadata` | Output only. Metadata for free trial clusters |
| `uid` | `string` | Output only. The system-generated UID of the resource. The UID is assigned when the resource is c... |
| `updateTime` | `string` | Output only. Update time stamp |

### `ClusterUpgradeDetails`

Upgrade details of a cluster. This cluster can be primary or secondary.

| Property | Type | Description |
|----------|------|-------------|
| `clusterType` | `string` | Cluster type which can either be primary or secondary. |
| `databaseVersion` | `string` | Database version of the cluster after the upgrade operation. This will be the target version if t... |
| `instanceUpgradeDetails` | `array<InstanceUpgradeDetails>` | Upgrade details of the instances directly associated with this cluster. |
| `name` | `string` | Normalized name of the cluster |
| `stageInfo` | `array<StageInfo>` | Array containing stage info associated with this cluster. |
| `upgradeStatus` | `string` | Upgrade status of the cluster. |

### `ConnectionInfo`

ConnectionInfo singleton resource. https://google.aip.dev/156

| Property | Type | Description |
|----------|------|-------------|
| `instanceUid` | `string` | Output only. The unique ID of the Instance. |
| `ipAddress` | `string` | Output only. The private network IP address for the Instance. This is the default IP for the inst... |
| `name` | `string` | The name of the ConnectionInfo singleton resource, e.g.: projects/{project}/locations/{location}/... |
| `publicIpAddress` | `string` | Output only. The public IP addresses for the Instance. This is available ONLY when enable_public_... |

### `ConnectionPoolConfig`

Configuration for Managed Connection Pool (MCP).

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Optional. Whether to enable Managed Connection Pool (MCP). |
| `flags` | `object` | Optional. Connection Pool flags, as a list of "key": "value" pairs. |
| `poolerCount` | `integer` | Output only. The number of running poolers per instance. |

### `ContinuousBackupConfig`

ContinuousBackupConfig describes the continuous backups recovery configurations of a cluster.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether ContinuousBackup is enabled. |
| `encryptionConfig` | `EncryptionConfig` | The encryption config can be specified to encrypt the backups with a customer-managed encryption ... |
| `recoveryWindowDays` | `integer` | The number of days that are eligible to restore from using PITR. To support the entire recovery w... |

### `ContinuousBackupInfo`

ContinuousBackupInfo describes the continuous backup properties of a cluster.

| Property | Type | Description |
|----------|------|-------------|
| `earliestRestorableTime` | `string` | Output only. The earliest restorable time that can be restored to. If continuous backups and reco... |
| `enabledTime` | `string` | Output only. When ContinuousBackup was most recently enabled. Set to null if ContinuousBackup is ... |
| `encryptionInfo` | `EncryptionInfo` | Output only. The encryption information for the WALs and backups required for ContinuousBackup. |
| `schedule` | `array<string>` | Output only. Days of the week on which a continuous backup is taken. |

### `ContinuousBackupSource`

Message describing a ContinuousBackupSource.

| Property | Type | Description |
|----------|------|-------------|
| `cluster` | `string` | Required. The source cluster from which to restore. This cluster must have continuous backup enab... |
| `pointInTime` | `string` | Required. The point in time to restore to. |

### `CsvExportOptions`

Options for exporting data in CSV format.

| Property | Type | Description |
|----------|------|-------------|
| `escapeCharacter` | `string` | Optional. Specifies the character that should appear before a data character that needs to be esc... |
| `fieldDelimiter` | `string` | Optional. Specifies the character that separates columns within each row (line) of the file. The ... |
| `quoteCharacter` | `string` | Optional. Specifies the quoting character to be used when a data value is quoted. The default is ... |
| `selectQuery` | `string` | Required. The SELECT query used to extract the data. |

### `CsvImportOptions`

Options for importing data in CSV format.

| Property | Type | Description |
|----------|------|-------------|
| `columns` | `array<string>` | Optional. The columns to which CSV data is imported. If not specified, all columns of the databas... |
| `escapeCharacter` | `string` | Optional. Specifies the character that should appear before a data character that needs to be esc... |
| `fieldDelimiter` | `string` | Optional. Specifies the character that separates columns within each row (line) of the file. The ... |
| `quoteCharacter` | `string` | Optional. Specifies the quoting character to be used when a data value is quoted. The default is ... |
| `table` | `string` | Required. The database table to import CSV file into. |

### `DataplexConfig`

Configuration for Dataplex integration.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Dataplex is enabled by default for resources such as clusters and instances. This flag controls t... |

### `DenyMaintenancePeriod`

DenyMaintenancePeriod definition. Excepting emergencies, maintenance will not be scheduled to start within this deny period. The start_date must be less than the end_date.

| Property | Type | Description |
|----------|------|-------------|
| `endDate` | `GoogleTypeDate` | Deny period end date. This can be: * A full date, with non-zero year, month and day values OR * A... |
| `startDate` | `GoogleTypeDate` | Deny period start date. This can be: * A full date, with non-zero year, month and day values OR *... |
| `time` | `GoogleTypeTimeOfDay` | Time in UTC when the deny period starts on start_date and ends on end_date. This can be: * Full t... |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `EncryptionConfig`

EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key).

| Property | Type | Description |
|----------|------|-------------|
| `kmsKeyName` | `string` | The fully-qualified resource name of the KMS key. Each Cloud KMS key is regionalized and has the ... |

### `EncryptionInfo`

EncryptionInfo describes the encryption information of a cluster or a backup.

| Property | Type | Description |
|----------|------|-------------|
| `encryptionType` | `string` | Output only. Type of encryption. |
| `kmsKeyVersions` | `array<string>` | Output only. Cloud KMS key versions that are being used to protect the database or the backup. |

### `ExportClusterRequest`

Export cluster request.

| Property | Type | Description |
|----------|------|-------------|
| `csvExportOptions` | `CsvExportOptions` | Options for exporting data in CSV format. Required field to be set for CSV file type. |
| `database` | `string` | Required. Name of the database where the export command will be executed. Note - Value provided s... |
| `gcsDestination` | `GcsDestination` | Required. Option to export data to cloud storage. |
| `sqlExportOptions` | `SqlExportOptions` | Options for exporting data in SQL format. Required field to be set for SQL file type. |

### `ExportClusterResponse`

Response of export cluster rpc.

| Property | Type | Description |
|----------|------|-------------|
| `gcsDestination` | `GcsDestination` | Required. Option to export data to cloud storage. |

### `FailoverInstanceRequest`

Message for triggering failover on an Instance

| Property | Type | Description |
|----------|------|-------------|
| `requestId` | `string` | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you... |
| `validateOnly` | `boolean` | Optional. If set, performs request validation, for example, permission checks and any other type ... |

### `GcsDestination`

Destination for Export. Export will be done to cloud storage.

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` | Required. The path to the file in Google Cloud Storage where the export will be stored. The URI i... |

### `GoogleCloudLocationListLocationsResponse`

The response message for Locations.ListLocations.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<GoogleCloudLocationLocation>` | A list of locations that matches the specified filter in the request. |
| `nextPageToken` | `string` | The standard List next-page token. |

### `GoogleCloudLocationLocation`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `GoogleTypeDate`

Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by ... |
| `month` | `integer` | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `year` | `integer` | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

### `GoogleTypeTimeOfDay`

Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and `google.protobuf.Timestamp`.

| Property | Type | Description |
|----------|------|-------------|
| `hours` | `integer` | Hours of a day in 24 hour format. Must be greater than or equal to 0 and typically must be less t... |
| `minutes` | `integer` | Minutes of an hour. Must be greater than or equal to 0 and less than or equal to 59. |
| `nanos` | `integer` | Fractions of seconds, in nanoseconds. Must be greater than or equal to 0 and less than or equal t... |
| `seconds` | `integer` | Seconds of a minute. Must be greater than or equal to 0 and typically must be less than or equal ... |

### `ImportClusterRequest`

Import cluster request.

| Property | Type | Description |
|----------|------|-------------|
| `csvImportOptions` | `CsvImportOptions` | Options for importing data in CSV format. |
| `database` | `string` | Optional. Name of the database to which the import will be done. For import from SQL file, this i... |
| `gcsUri` | `string` | Required. The path to the file in Google Cloud Storage where the source file for import will be s... |
| `sqlImportOptions` | `SqlImportOptions` | Options for importing data in SQL format. |
| `user` | `string` | Optional. Database user to be used for importing the data. Note - Value provided should be the sa... |

### `ImportClusterResponse`

Response of import rpc.

| Property | Type | Description |
|----------|------|-------------|
| `bytesDownloaded` | `string` | Required. Size of the object downloaded from Google Cloud Storage in bytes. |

### `InjectFaultRequest`

Message for triggering fault injection on an instance

| Property | Type | Description |
|----------|------|-------------|
| `faultType` | `string` | Required. The type of fault to be injected in an instance. |
| `requestId` | `string` | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you... |
| `validateOnly` | `boolean` | Optional. If set, performs request validation, for example, permission checks and any other type ... |

### `Instance`

An Instance is a computing unit that an end customer can connect to. It's the main unit of computing resources in AlloyDB.

| Property | Type | Description |
|----------|------|-------------|
| `activationPolicy` | `string` | Optional. Specifies whether an instance needs to spin up. Once the instance is active, the activa... |
| `annotations` | `object` | Annotations to allow client tools to store small amount of arbitrary data. This is distinct from ... |
| `availabilityType` | `string` | Availability type of an Instance. If empty, defaults to REGIONAL for primary instances. For read ... |
| `clientConnectionConfig` | `ClientConnectionConfig` | Optional. Client connection specific configurations |
| `connectionPoolConfig` | `ConnectionPoolConfig` | Optional. The configuration for Managed Connection Pool (MCP). |
| `createTime` | `string` | Output only. Create time stamp |
| `dataApiAccess` | `string` | Optional. Controls whether the Data API is enabled for this instance. When enabled, this allows a... |
| `databaseFlags` | `object` | Database flags. Set at the instance level. They are copied from the primary instance on secondary... |
| `deleteTime` | `string` | Output only. Delete time stamp |
| `displayName` | `string` | User-settable and human-readable display name for the Instance. |
| `etag` | `string` | For Resource freshness validation (https://google.aip.dev/154) |
| `gceZone` | `string` | The Compute Engine zone that the instance should serve from, per https://cloud.google.com/compute... |
| `instanceType` | `string` | Required. The type of the instance. Specified at creation time. |
| `ipAddress` | `string` | Output only. The IP address for the Instance. This is the connection endpoint for an end-user app... |
| `labels` | `object` | Labels as key value pairs |
| `machineConfig` | `MachineConfig` | Configurations for the machines that host the underlying database engine. |
| `maintenanceVersionName` | `string` | Output only. Maintenance version of the instance, for example: POSTGRES_15.2025_07_15.04_00. Outp... |
| `name` | `string` | Output only. The name of the instance resource with the format: * projects/{project}/locations/{r... |
| `networkConfig` | `InstanceNetworkConfig` | Optional. Instance-level network configuration. |
| `nodes` | `array<Node>` | Output only. List of available read-only VMs in this instance, including the standby for a PRIMAR... |
| `observabilityConfig` | `ObservabilityInstanceConfig` | Configuration for observability. |
| `outboundPublicIpAddresses` | `array<string>` | Output only. All outbound public IP addresses configured for the instance. |
| `pscInstanceConfig` | `PscInstanceConfig` | Optional. The configuration for Private Service Connect (PSC) for the instance. |
| `publicIpAddress` | `string` | Output only. The public IP addresses for the Instance. This is available ONLY when enable_public_... |
| `queryInsightsConfig` | `QueryInsightsInstanceConfig` | Configuration for query insights. |
| `readPoolConfig` | `ReadPoolConfig` | Read pool instance configuration. This is required if the value of instanceType is READ_POOL. |
| `reconciling` | `boolean` | Output only. Reconciling (https://google.aip.dev/128#reconciliation). Set to true if the current ... |
| `satisfiesPzs` | `boolean` | Output only. Reserved for future use. |
| `state` | `string` | Output only. The current serving state of the instance. |
| `uid` | `string` | Output only. The system-generated UID of the resource. The UID is assigned when the resource is c... |
| `updateTime` | `string` | Output only. Update time stamp |
| `writableNode` | `Node` | Output only. This is set for the read-write VM of the PRIMARY instance only. |

### `InstanceNetworkConfig`

Metadata related to instance-level network configuration.

| Property | Type | Description |
|----------|------|-------------|
| `allocatedIpRangeOverride` | `string` | Optional. Name of the allocated IP range for the private IP AlloyDB instance, for example: "googl... |
| `authorizedExternalNetworks` | `array<AuthorizedNetwork>` | Optional. A list of external network authorized to access this instance. |
| `enableOutboundPublicIp` | `boolean` | Optional. Enabling an outbound public IP address to support a database server sending requests ou... |
| `enablePublicIp` | `boolean` | Optional. Enabling public ip for the instance. |
| `network` | `string` | Output only. The resource link for the VPC network in which instance resources are created and fr... |

### `InstanceUpgradeDetails`

Details regarding the upgrade of instances associated with a cluster.

| Property | Type | Description |
|----------|------|-------------|
| `instanceType` | `string` | Instance type. |
| `name` | `string` | Normalized name of the instance. |
| `upgradeStatus` | `string` | Upgrade status of the instance. |

### `IntegerRestrictions`

Restrictions on INTEGER type values.

| Property | Type | Description |
|----------|------|-------------|
| `maxValue` | `string` | The maximum value that can be specified, if applicable. |
| `minValue` | `string` | The minimum value that can be specified, if applicable. |

### `ListBackupsResponse`

Message for response to listing Backups

| Property | Type | Description |
|----------|------|-------------|
| `backups` | `array<Backup>` | The list of Backup |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListClustersResponse`

Message for response to listing Clusters

| Property | Type | Description |
|----------|------|-------------|
| `clusters` | `array<Cluster>` | The list of Cluster |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListInstancesResponse`

Message for response to listing Instances

| Property | Type | Description |
|----------|------|-------------|
| `instances` | `array<Instance>` | The list of Instance |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<Operation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `ListSupportedDatabaseFlagsResponse`

Message for response to listing SupportedDatabaseFlags.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `supportedDatabaseFlags` | `array<SupportedDatabaseFlag>` | The list of SupportedDatabaseFlags. |

### `ListUsersResponse`

Message for response to listing Users

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `unreachable` | `array<string>` | Locations that could not be reached. |
| `users` | `array<User>` | The list of User |

### `MachineConfig`

MachineConfig describes the configuration of a machine.

| Property | Type | Description |
|----------|------|-------------|
| `cpuCount` | `integer` | The number of CPU's in the VM instance. |
| `machineType` | `string` | Machine type of the VM instance. E.g. "n2-highmem-4", "n2-highmem-8", "c4a-highmem-4-lssd". cpu_c... |

### `MaintenanceSchedule`

MaintenanceSchedule stores the maintenance schedule generated from the MaintenanceUpdatePolicy, once a maintenance rollout is triggered, if MaintenanceWindow is set, and if there is no conflicting DenyPeriod. The schedule is cleared once the update takes place. This field cannot be manually changed; modify the MaintenanceUpdatePolicy instead.

| Property | Type | Description |
|----------|------|-------------|
| `startTime` | `string` | Output only. The scheduled start time for the maintenance. |

### `MaintenanceUpdatePolicy`

MaintenanceUpdatePolicy defines the policy for system updates.

| Property | Type | Description |
|----------|------|-------------|
| `denyMaintenancePeriods` | `array<DenyMaintenancePeriod>` | Periods to deny maintenance. Currently limited to 1. |
| `maintenanceWindows` | `array<MaintenanceWindow>` | Preferred windows to perform maintenance. Currently limited to 1. |

### `MaintenanceWindow`

MaintenanceWindow specifies a preferred day and time for maintenance.

| Property | Type | Description |
|----------|------|-------------|
| `day` | `string` | Preferred day of the week for maintenance, e.g. MONDAY, TUESDAY, etc. |
| `startTime` | `GoogleTypeTimeOfDay` | Preferred time to start the maintenance operation on the specified day. Maintenance will start wi... |

### `MigrationSource`

Subset of the source instance configuration that is available when reading the cluster resource.

| Property | Type | Description |
|----------|------|-------------|
| `hostPort` | `string` | Output only. The host and port of the on-premises instance in host:port format |
| `referenceId` | `string` | Output only. Place holder for the external source identifier(e.g DMS job name) that created the c... |
| `sourceType` | `string` | Output only. Type of migration source. |

### `NetworkConfig`

Metadata related to network configuration.

| Property | Type | Description |
|----------|------|-------------|
| `allocatedIpRange` | `string` | Optional. Name of the allocated IP range for the private IP AlloyDB cluster, for example: "google... |
| `network` | `string` | Optional. The resource link for the VPC network in which cluster resources are created and from w... |

### `Node`

Details of a single node in the instance. Nodes in an AlloyDB instance are ephemeral, they can change during update, failover, autohealing and resize operations.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | Output only. The identifier of the VM e.g. "test-read-0601-407e52be-ms3l". |
| `ip` | `string` | Output only. The private IP address of the VM e.g. "10.57.0.34". |
| `state` | `string` | Output only. Determined by state of the compute VM and postgres-service health. Compute VM state ... |
| `zoneId` | `string` | Output only. The Compute Engine zone of the VM e.g. "us-central1-b". |

### `ObservabilityInstanceConfig`

Observability Instance specific configuration.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Observability feature status for an instance. This flag is turned "off" by default. |
| `maxQueryStringLength` | `integer` | Query string length. The default value is 10k. |
| `preserveComments` | `boolean` | Preserve comments in query string for an instance. This flag is turned "off" by default. |
| `queryPlansPerMinute` | `integer` | Number of query execution plans captured by Insights per minute for all queries combined. The def... |
| `recordApplicationTags` | `boolean` | Record application tags for an instance. This flag is turned "off" by default. |
| `trackActiveQueries` | `boolean` | Track actively running queries on the instance. If not set, this flag is "off" by default. |
| `trackWaitEventTypes` | `boolean` | Output only. Track wait event types during query execution for an instance. This flag is turned "... |
| `trackWaitEvents` | `boolean` | Track wait events during query execution for an instance. This flag is turned "on" by default but... |

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
| `apiVersion` | `string` | Output only. API version used to start the operation. |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `requestedCancellation` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. Operations ... |
| `statusMessage` | `string` | Output only. Human-readable status of the operation, if any. |
| `target` | `string` | Output only. Server-defined resource path for the target of the operation. |
| `upgradeClusterStatus` | `UpgradeClusterStatus` | Output only. UpgradeClusterStatus related metadata. |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `PrimaryConfig`

Configuration for the primary cluster. It has the list of clusters that are replicating from this cluster. This should be set if and only if the cluster is of type PRIMARY.

| Property | Type | Description |
|----------|------|-------------|
| `secondaryClusterNames` | `array<string>` | Output only. Names of the clusters that are replicating from this cluster. |

### `PromoteClusterRequest`

Message for promoting a Cluster

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Optional. The current etag of the Cluster. If an etag is provided and does not match the current ... |
| `requestId` | `string` | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you... |
| `validateOnly` | `boolean` | Optional. If set, performs request validation, for example, permission checks and any other type ... |

### `PscAutoConnectionConfig`

Configuration for setting up PSC service automation. Consumer projects in the configs will be allowlisted automatically for the instance.

| Property | Type | Description |
|----------|------|-------------|
| `consumerNetwork` | `string` | The consumer network for the PSC service automation, example: "projects/vpc-host-project/global/n... |
| `consumerNetworkStatus` | `string` | Output only. The status of the service connection policy. Possible values: "STATE_UNSPECIFIED" - ... |
| `consumerProject` | `string` | The consumer project to which the PSC service automation endpoint will be created. |
| `ipAddress` | `string` | Output only. The IP address of the PSC service automation endpoint. |
| `status` | `string` | Output only. The status of the PSC service automation connection. Possible values: "STATE_UNSPECI... |

### `PscConfig`

PscConfig contains PSC related configuration at a cluster level.

| Property | Type | Description |
|----------|------|-------------|
| `pscEnabled` | `boolean` | Optional. Create an instance that allows connections from Private Service Connect endpoints to th... |
| `serviceOwnedProjectNumber` | `string` | Output only. The project number that needs to be allowlisted on the network attachment to enable ... |

### `PscInstanceConfig`

PscInstanceConfig contains PSC related configuration at an instance level.

| Property | Type | Description |
|----------|------|-------------|
| `allowedConsumerProjects` | `array<string>` | Optional. List of consumer projects that are allowed to create PSC endpoints to service-attachmen... |
| `pscAutoConnections` | `array<PscAutoConnectionConfig>` | Optional. Configurations for setting up PSC service automation. |
| `pscDnsName` | `string` | Output only. The DNS name of the instance for PSC connectivity. Name convention: ...alloydb-psc.goog |
| `pscInterfaceConfigs` | `array<PscInterfaceConfig>` | Optional. Configurations for setting up PSC interfaces attached to the instance which are used fo... |
| `serviceAttachmentLink` | `string` | Output only. The service attachment created when Private Service Connect (PSC) is enabled for the... |

### `PscInterfaceConfig`

Configuration for setting up a PSC interface to enable outbound connectivity.

| Property | Type | Description |
|----------|------|-------------|
| `networkAttachmentResource` | `string` | The network attachment resource created in the consumer network to which the PSC interface will b... |

### `QuantityBasedExpiry`

A backup's position in a quantity-based retention queue, of backups with the same source cluster and type, with length, retention, specified by the backup's retention policy. Once the position is greater than the retention, the backup is eligible to be garbage collected. Example: 5 backups from the same source cluster and type with a quantity-based retention of 3 and denoted by backup_id (position, retention). Safe: backup_5 (1, 3), backup_4, (2, 3), backup_3 (3, 3). Awaiting garbage collection: backup_2 (4, 3), backup_1 (5, 3)

| Property | Type | Description |
|----------|------|-------------|
| `retentionCount` | `integer` | Output only. The backup's position among its backups with the same source cluster and type, by de... |
| `totalRetentionCount` | `integer` | Output only. The length of the quantity-based queue, specified by the backup's retention policy. |

### `QuantityBasedRetention`

A quantity based policy specifies that a certain number of the most recent successful backups should be retained.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `integer` | The number of backups to retain. |

### `QueryInsightsInstanceConfig`

QueryInsights Instance specific configuration.

| Property | Type | Description |
|----------|------|-------------|
| `queryPlansPerMinute` | `integer` | Number of query execution plans captured by Insights per minute for all queries combined. The def... |
| `queryStringLength` | `integer` | Query string length. The default value is 1024. Any integer between 256 and 4500 is considered va... |
| `recordApplicationTags` | `boolean` | Record application tags for an instance. This flag is turned "on" by default. |
| `recordClientAddress` | `boolean` | Record client address for an instance. Client address is PII information. This flag is turned "on... |

### `ReadPoolConfig`

Configuration for a read pool instance.

| Property | Type | Description |
|----------|------|-------------|
| `nodeCount` | `integer` | Read capacity, i.e. number of nodes in a read pool instance. |

### `ReadPoolInstancesUpgradeStageStatus`

Read pool instances upgrade specific status.

| Property | Type | Description |
|----------|------|-------------|
| `upgradeStats` | `Stats` | Read pool instances upgrade statistics. |

### `RestartInstanceRequest`

| Property | Type | Description |
|----------|------|-------------|
| `nodeIds` | `array<string>` | Optional. Full name of the nodes as obtained from INSTANCE_VIEW_FULL to restart upon. Applicable ... |
| `requestId` | `string` | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you... |
| `validateOnly` | `boolean` | Optional. If set, performs request validation, for example, permission checks and any other type ... |

### `RestoreClusterRequest`

Message for restoring a Cluster from a backup or another cluster at a given point in time. NEXT_ID: 11

| Property | Type | Description |
|----------|------|-------------|
| `backupSource` | `BackupSource` | Backup source. |
| `backupdrBackupSource` | `BackupDrBackupSource` | BackupDR backup source. |
| `backupdrPitrSource` | `BackupDrPitrSource` | BackupDR source used for point in time recovery. |
| `cluster` | `Cluster` | Required. The resource being created |
| `clusterId` | `string` | Required. ID of the requesting object. |
| `continuousBackupSource` | `ContinuousBackupSource` | ContinuousBackup source. Continuous backup needs to be enabled in the source cluster for this ope... |
| `requestId` | `string` | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you... |
| `validateOnly` | `boolean` | Optional. If set, performs request validation, for example, permission checks and any other type ... |

### `RestoreFromCloudSQLRequest`

Message for registering Restoring from CloudSQL resource.

| Property | Type | Description |
|----------|------|-------------|
| `cloudsqlBackupRunSource` | `CloudSQLBackupRunSource` | Cluster created from CloudSQL backup run. |
| `cluster` | `Cluster` | Required. The resource being created |
| `clusterId` | `string` | Required. ID of the requesting object. |

### `SecondaryConfig`

Configuration information for the secondary cluster. This should be set if and only if the cluster is of type SECONDARY.

| Property | Type | Description |
|----------|------|-------------|
| `primaryClusterName` | `string` | The name of the primary cluster name with the format: * projects/{project}/locations/{region}/clu... |

### `SqlExportOptions`

Options for exporting data in SQL format.

| Property | Type | Description |
|----------|------|-------------|
| `cleanTargetObjects` | `boolean` | Optional. If true, output commands to DROP all the dumped database objects prior to outputting th... |
| `ifExistTargetObjects` | `boolean` | Optional. If true, use DROP ... IF EXISTS commands to check for the object's existence before dro... |
| `schemaOnly` | `boolean` | Optional. If true, only export the schema. |
| `tables` | `array<string>` | Optional. Tables to export from. |

### `SqlImportOptions`

Options for importing data in SQL format.

### `SslConfig`

SSL configuration.

| Property | Type | Description |
|----------|------|-------------|
| `caSource` | `string` | Optional. Certificate Authority (CA) source. Only CA_SOURCE_MANAGED is supported currently, and i... |
| `sslMode` | `string` | Optional. SSL mode. Specifies client-server SSL/TLS connection behavior. |

### `StageInfo`

Stage information for different stages in the upgrade process.

| Property | Type | Description |
|----------|------|-------------|
| `logsUrl` | `string` | logs_url is the URL for the logs associated with a stage if that stage has logs. Right now, only ... |
| `stage` | `string` | The stage. |
| `status` | `string` | Status of the stage. |

### `StageStatus`

Status of an upgrade stage.

| Property | Type | Description |
|----------|------|-------------|
| `readPoolInstancesUpgrade` | `ReadPoolInstancesUpgradeStageStatus` | Read pool instances upgrade metadata. |
| `stage` | `string` | Upgrade stage. |
| `state` | `string` | State of this stage. |

### `Stats`

Upgrade stats for read pool instances.

| Property | Type | Description |
|----------|------|-------------|
| `failed` | `integer` | Number of read pool instances which failed to upgrade. |
| `notStarted` | `integer` | Number of read pool instances for which upgrade has not started. |
| `ongoing` | `integer` | Number of read pool instances undergoing upgrade. |
| `success` | `integer` | Number of read pool instances successfully upgraded. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `StorageDatabasecenterPartnerapiV1mainAvailabilityConfiguration`

Configuration for availability of database instance

| Property | Type | Description |
|----------|------|-------------|
| `automaticFailoverRoutingConfigured` | `boolean` | Checks for existence of (multi-cluster) routing configuration that allows automatic failover to a... |
| `availabilityType` | `string` | Availability type. Potential values: * `ZONAL`: The instance serves data from only one zone. Outa... |
| `crossRegionReplicaConfigured` | `boolean` | Checks for resources that are configured to have redundancy, and ongoing replication across regions |
| `externalReplicaConfigured` | `boolean` |  |
| `promotableReplicaConfigured` | `boolean` |  |

### `StorageDatabasecenterPartnerapiV1mainBackupConfiguration`

Configuration for automatic backups

| Property | Type | Description |
|----------|------|-------------|
| `automatedBackupEnabled` | `boolean` | Whether customer visible automated backups are enabled on the instance. |
| `backupRetentionSettings` | `StorageDatabasecenterPartnerapiV1mainRetentionSettings` | Backup retention settings. |
| `pointInTimeRecoveryEnabled` | `boolean` | Whether point-in-time recovery is enabled. This is optional field, if the database service does n... |

### `StorageDatabasecenterPartnerapiV1mainBackupDRConfiguration`

BackupDRConfiguration to capture the backup and disaster recovery details of database resource.

| Property | Type | Description |
|----------|------|-------------|
| `backupdrManaged` | `boolean` | Indicates if the resource is managed by BackupDR. |

### `StorageDatabasecenterPartnerapiV1mainBackupDRMetadata`

BackupDRMetadata contains information about the backup and disaster recovery metadata of a database resource.

| Property | Type | Description |
|----------|------|-------------|
| `backupConfiguration` | `StorageDatabasecenterPartnerapiV1mainBackupConfiguration` | Backup configuration for this instance. |
| `backupRun` | `StorageDatabasecenterPartnerapiV1mainBackupRun` | Latest backup run information for this instance. |
| `backupdrConfiguration` | `StorageDatabasecenterPartnerapiV1mainBackupDRConfiguration` | BackupDR configuration for this instance. |
| `fullResourceName` | `string` | Required. Full resource name of this instance. |
| `lastRefreshTime` | `string` | Required. Last time backup configuration was refreshed. |
| `resourceId` | `StorageDatabasecenterPartnerapiV1mainDatabaseResourceId` | Required. Database resource id. |

### `StorageDatabasecenterPartnerapiV1mainBackupRun`

A backup run.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | The time the backup operation completed. REQUIRED |
| `error` | `StorageDatabasecenterPartnerapiV1mainOperationError` | Information about why the backup operation failed. This is only present if the run has the FAILED... |
| `startTime` | `string` | The time the backup operation started. REQUIRED |
| `status` | `string` | The status of this run. REQUIRED |

### `StorageDatabasecenterPartnerapiV1mainCompliance`

Contains compliance information about a security standard indicating unmet recommendations.

| Property | Type | Description |
|----------|------|-------------|
| `standard` | `string` | Industry-wide compliance standards or benchmarks, such as CIS, PCI, and OWASP. |
| `version` | `string` | Version of the standard or benchmark, for example, 1.1 |

### `StorageDatabasecenterPartnerapiV1mainConfigBasedSignalData`

Config based signal data. This is used to send signals to Condor which are based on the DB level configurations. These will be used to send signals for self managed databases.

| Property | Type | Description |
|----------|------|-------------|
| `fullResourceName` | `string` | Required. Full Resource name of the source resource. |
| `lastRefreshTime` | `string` | Required. Last time signal was refreshed |
| `resourceId` | `StorageDatabasecenterPartnerapiV1mainDatabaseResourceId` | Database resource id. |
| `signalBoolValue` | `boolean` | Signal data for boolean signals. |
| `signalType` | `string` | Required. Signal type of the signal |

### `StorageDatabasecenterPartnerapiV1mainCustomMetadataData`

Any custom metadata associated with the resource. e.g. A spanner instance can have multiple databases with its own unique metadata. Information for these individual databases can be captured in custom metadata data

| Property | Type | Description |
|----------|------|-------------|
| `internalResourceMetadata` | `array<StorageDatabasecenterPartnerapiV1mainInternalResourceMetadata>` | Metadata for individual internal resources in an instance. e.g. spanner instance can have multipl... |

### `StorageDatabasecenterPartnerapiV1mainDatabaseResourceFeed`

DatabaseResourceFeed is the top level proto to be used to ingest different database resource level events into Condor platform. Next ID: 13

| Property | Type | Description |
|----------|------|-------------|
| `backupdrMetadata` | `StorageDatabasecenterPartnerapiV1mainBackupDRMetadata` | BackupDR metadata is used to ingest metadata from BackupDR. |
| `configBasedSignalData` | `StorageDatabasecenterPartnerapiV1mainConfigBasedSignalData` | Config based signal data is used to ingest signals that are generated based on the configuration ... |
| `databaseResourceSignalData` | `StorageDatabasecenterPartnerapiV1mainDatabaseResourceSignalData` | Database resource signal data is used to ingest signals from database resource signal feeds. |
| `feedTimestamp` | `string` | Required. Timestamp when feed is generated. |
| `feedType` | `string` | Required. Type feed to be ingested into condor |
| `observabilityMetricData` | `StorageDatabasecenterPartnerapiV1mainObservabilityMetricData` |  |
| `recommendationSignalData` | `StorageDatabasecenterPartnerapiV1mainDatabaseResourceRecommendationSignalData` |  |
| `resourceHealthSignalData` | `StorageDatabasecenterPartnerapiV1mainDatabaseResourceHealthSignalData` |  |
| `resourceId` | `StorageDatabasecenterPartnerapiV1mainDatabaseResourceId` | Primary key associated with the Resource. resource_id is available in individual feed level as well. |
| `resourceMetadata` | `StorageDatabasecenterPartnerapiV1mainDatabaseResourceMetadata` |  |
| `skipIngestion` | `boolean` | Optional. If true, the feed won't be ingested by DB Center. This indicates that the feed is inten... |

### `StorageDatabasecenterPartnerapiV1mainDatabaseResourceHealthSignalData`

Common model for database resource health signal data.

| Property | Type | Description |
|----------|------|-------------|
| `additionalMetadata` | `object` | Any other additional metadata |
| `compliance` | `array<StorageDatabasecenterPartnerapiV1mainCompliance>` | Industry standards associated with this signal; if this signal is an issue, that could be a viola... |
| `description` | `string` | Description associated with signal |
| `eventTime` | `string` | Required. The last time at which the event described by this signal took place |
| `externalUri` | `string` | The external-uri of the signal, using which more information about this signal can be obtained. I... |
| `location` | `string` | This is used to identify the location of the resource. Example: "us-central1" |
| `name` | `string` | Required. The name of the signal, ex: PUBLIC_SQL_INSTANCE, SQL_LOG_ERROR_VERBOSITY etc. |
| `provider` | `string` | Cloud provider name. Ex: GCP/AWS/Azure/OnPrem/SelfManaged |
| `resourceContainer` | `string` | Closest parent container of this resource. In GCP, 'container' refers to a Cloud Resource Manager... |
| `resourceName` | `string` | Required. Database resource name associated with the signal. Resource name to follow CAIS resourc... |
| `signalClass` | `string` | Required. The class of the signal, such as if it's a THREAT or VULNERABILITY. |
| `signalId` | `string` | Required. Unique identifier for the signal. This is an unique id which would be mainatined by par... |
| `signalSeverity` | `string` | The severity of the signal, such as if it's a HIGH or LOW severity. |
| `signalType` | `string` | Required. Type of signal, for example, `AVAILABLE_IN_MULTIPLE_ZONES`, `LOGGING_MOST_ERRORS`, etc. |
| `state` | `string` |  |

### `StorageDatabasecenterPartnerapiV1mainDatabaseResourceId`

DatabaseResourceId will serve as primary key for any resource ingestion event.

| Property | Type | Description |
|----------|------|-------------|
| `provider` | `string` | Required. Cloud provider name. Ex: GCP/AWS/Azure/OnPrem/SelfManaged |
| `providerDescription` | `string` | Optional. Needs to be used only when the provider is PROVIDER_OTHER. |
| `resourceType` | `string` | Required. The type of resource this ID is identifying. Ex go/keep-sorted start alloydb.googleapis... |
| `uniqueId` | `string` | Required. A service-local token that distinguishes this resource from other resources within the ... |

### `StorageDatabasecenterPartnerapiV1mainDatabaseResourceMetadata`

Common model for database resource instance metadata. Next ID: 31

| Property | Type | Description |
|----------|------|-------------|
| `availabilityConfiguration` | `StorageDatabasecenterPartnerapiV1mainAvailabilityConfiguration` | Availability configuration for this instance |
| `backupConfiguration` | `StorageDatabasecenterPartnerapiV1mainBackupConfiguration` | Backup configuration for this instance |
| `backupRun` | `StorageDatabasecenterPartnerapiV1mainBackupRun` | Latest backup run information for this instance |
| `backupdrConfiguration` | `StorageDatabasecenterPartnerapiV1mainBackupDRConfiguration` | Optional. BackupDR Configuration for the resource. |
| `creationTime` | `string` | The creation time of the resource, i.e. the time when resource is created and recorded in partner... |
| `currentState` | `string` | Current state of the instance. |
| `customMetadata` | `StorageDatabasecenterPartnerapiV1mainCustomMetadataData` | Any custom metadata associated with the resource |
| `edition` | `string` | Optional. Edition represents whether the instance is ENTERPRISE or ENTERPRISE_PLUS. This informat... |
| `entitlements` | `array<StorageDatabasecenterPartnerapiV1mainEntitlement>` | Entitlements associated with the resource |
| `expectedState` | `string` | The state that the instance is expected to be in. For example, an instance state can transition t... |
| `gcbdrConfiguration` | `StorageDatabasecenterPartnerapiV1mainGCBDRConfiguration` | GCBDR configuration for the resource. |
| `id` | `StorageDatabasecenterPartnerapiV1mainDatabaseResourceId` | Required. Unique identifier for a Database resource |
| `instanceType` | `string` | The type of the instance. Specified at creation time. |
| `isDeletionProtectionEnabled` | `boolean` | Optional. Whether deletion protection is enabled for this resource. |
| `location` | `string` | The resource location. REQUIRED |
| `machineConfiguration` | `StorageDatabasecenterPartnerapiV1mainMachineConfiguration` | Machine configuration for this resource. |
| `maintenanceInfo` | `StorageDatabasecenterPartnerapiV1mainResourceMaintenanceInfo` | Optional. Maintenance info for the resource. |
| `primaryResourceId` | `StorageDatabasecenterPartnerapiV1mainDatabaseResourceId` | Identifier for this resource's immediate parent/primary resource if the current resource is a rep... |
| `primaryResourceLocation` | `string` | Primary resource location. REQUIRED if the immediate parent exists when first time resource is ge... |
| `product` | `StorageDatabasecenterProtoCommonProduct` | The product this resource represents. |
| `resourceContainer` | `string` | Closest parent Cloud Resource Manager container of this resource. It must be resource name of a C... |
| `resourceFlags` | `array<StorageDatabasecenterPartnerapiV1mainResourceFlags>` | Optional. List of resource flags for the database resource. |
| `resourceName` | `string` | Required. Different from DatabaseResourceId.unique_id, a resource name can be reused over time. T... |
| `suspensionReason` | `string` | Optional. Suspension reason for the resource. |
| `tagsSet` | `StorageDatabasecenterPartnerapiV1mainTags` | Optional. Tags associated with this resources. |
| `updationTime` | `string` | The time at which the resource was updated and recorded at partner service. |
| `userLabelSet` | `StorageDatabasecenterPartnerapiV1mainUserLabels` | User-provided labels associated with the resource |
| `zone` | `string` | The resource zone. This is only applicable for zonal resources and will be empty for regional and... |

### `StorageDatabasecenterPartnerapiV1mainDatabaseResourceRecommendationSignalData`

Common model for database resource recommendation signal data.

| Property | Type | Description |
|----------|------|-------------|
| `additionalMetadata` | `object` | Optional. Any other additional metadata specific to recommendation |
| `lastRefreshTime` | `string` | Required. last time recommendationw as refreshed |
| `recommendationState` | `string` | Required. Recommendation state |
| `recommender` | `string` | Required. Name of recommendation. Examples: organizations/1234/locations/us-central1/recommenders... |
| `recommenderId` | `string` | Required. ID of recommender. Examples: "google.cloudsql.instance.PerformanceRecommender" |
| `recommenderSubtype` | `string` | Required. Contains an identifier for a subtype of recommendations produced for the same recommend... |
| `resourceName` | `string` | Required. Database resource name associated with the signal. Resource name to follow CAIS resourc... |
| `signalType` | `string` | Required. Type of signal, for example, `SIGNAL_TYPE_IDLE`, `SIGNAL_TYPE_HIGH_NUMBER_OF_TABLES`, etc. |

### `StorageDatabasecenterPartnerapiV1mainDatabaseResourceSignalData`

Database resource signal data. This is used to send signals to Condor which are based on the DB/Instance/Fleet level configurations. These will be used to send signals for all inventory types. Next ID: 7

| Property | Type | Description |
|----------|------|-------------|
| `fullResourceName` | `string` | Required. Full Resource name of the source resource. |
| `lastRefreshTime` | `string` | Required. Last time signal was refreshed |
| `resourceId` | `StorageDatabasecenterPartnerapiV1mainDatabaseResourceId` | Database resource id. |
| `signalBoolValue` | `boolean` | Signal data for boolean signals. |
| `signalState` | `string` | Required. Output only. Signal state of the signal |
| `signalType` | `string` | Required. Signal type of the signal |

### `StorageDatabasecenterPartnerapiV1mainEntitlement`

Proto representing the access that a user has to a specific feature/service. NextId: 3.

| Property | Type | Description |
|----------|------|-------------|
| `entitlementState` | `string` | The current state of user's accessibility to a feature/benefit. |
| `type` | `string` | An enum that represents the type of this entitlement. |

### `StorageDatabasecenterPartnerapiV1mainGCBDRConfiguration`

GCBDR Configuration for the resource.

| Property | Type | Description |
|----------|------|-------------|
| `gcbdrManaged` | `boolean` | Whether the resource is managed by GCBDR. |

### `StorageDatabasecenterPartnerapiV1mainInternalResourceMetadata`

Metadata for individual internal resources in an instance. e.g. spanner instance can have multiple databases with unique configuration settings. Similarly bigtable can have multiple clusters within same bigtable instance.

| Property | Type | Description |
|----------|------|-------------|
| `backupConfiguration` | `StorageDatabasecenterPartnerapiV1mainBackupConfiguration` | Backup configuration for this database |
| `backupRun` | `StorageDatabasecenterPartnerapiV1mainBackupRun` | Information about the last backup attempt for this database |
| `isDeletionProtectionEnabled` | `boolean` | Whether deletion protection is enabled for this internal resource. |
| `product` | `StorageDatabasecenterProtoCommonProduct` |  |
| `resourceId` | `StorageDatabasecenterPartnerapiV1mainDatabaseResourceId` |  |
| `resourceName` | `string` | Required. internal resource name for spanner this will be database name e.g."spanner.googleapis.c... |

### `StorageDatabasecenterPartnerapiV1mainMachineConfiguration`

MachineConfiguration describes the configuration of a machine specific to Database Resource.

| Property | Type | Description |
|----------|------|-------------|
| `baselineSlots` | `string` | Optional. Baseline slots for BigQuery Reservations. Baseline slots are in increments of 50. |
| `cpuCount` | `integer` | The number of CPUs. Deprecated. Use vcpu_count instead. TODO(b/342344482) add proto validations a... |
| `maxReservationSlots` | `string` | Optional. Max slots for BigQuery Reservations. Max slots are in increments of 50. |
| `memorySizeInBytes` | `string` | Memory size in bytes. TODO(b/342344482) add proto validations again after bug fix. |
| `shardCount` | `integer` | Optional. Number of shards (if applicable). |
| `vcpuCount` | `number` | Optional. The number of vCPUs. TODO(b/342344482) add proto validations again after bug fix. |

### `StorageDatabasecenterPartnerapiV1mainObservabilityMetricData`

| Property | Type | Description |
|----------|------|-------------|
| `aggregationType` | `string` | Required. Type of aggregation performed on the metric. |
| `metricType` | `string` | Required. Type of metric like CPU, Memory, etc. |
| `observationTime` | `string` | Required. The time the metric value was observed. |
| `resourceName` | `string` | Required. Database resource name associated with the signal. Resource name to follow CAIS resourc... |
| `value` | `StorageDatabasecenterProtoCommonTypedValue` | Required. Value of the metric type. |

### `StorageDatabasecenterPartnerapiV1mainOperationError`

An error that occurred during a backup creation operation.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | Identifies the specific error that occurred. REQUIRED |
| `errorType` | `string` |  |
| `message` | `string` | Additional information about the error encountered. REQUIRED |

### `StorageDatabasecenterPartnerapiV1mainResourceFlags`

Message type for storing resource flags.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | Optional. Key of the resource flag. |
| `value` | `string` | Optional. Value of the resource flag. |

### `StorageDatabasecenterPartnerapiV1mainResourceMaintenanceDenySchedule`

Deny maintenance period for the database resource. It specifies the time range during which the maintenance cannot start. This is configured by the customer.

| Property | Type | Description |
|----------|------|-------------|
| `endDate` | `GoogleTypeDate` | Optional. Deny period end date. |
| `startDate` | `GoogleTypeDate` | Optional. The start date of the deny maintenance period. |
| `time` | `GoogleTypeTimeOfDay` | Optional. Time in UTC when the deny period starts on start_date and ends on end_date. |

### `StorageDatabasecenterPartnerapiV1mainResourceMaintenanceInfo`

MaintenanceInfo to capture the maintenance details of database resource.

| Property | Type | Description |
|----------|------|-------------|
| `currentVersionReleaseDate` | `GoogleTypeDate` | Optional. The date when the current maintenance version was released. |
| `denyMaintenanceSchedules` | `array<StorageDatabasecenterPartnerapiV1mainResourceMaintenanceDenySchedule>` | Optional. List of Deny maintenance period for the database resource. |
| `isInstanceStopped` | `boolean` | Optional. Whether the instance is in stopped state. This information is temporarily being capture... |
| `maintenanceSchedule` | `StorageDatabasecenterPartnerapiV1mainResourceMaintenanceSchedule` | Optional. Maintenance window for the database resource. |
| `maintenanceState` | `string` | Output only. Current state of maintenance on the database resource. |
| `maintenanceVersion` | `string` | Optional. Current Maintenance version of the database resource. Example: "MYSQL_8_0_41.R20250531.... |
| `upcomingMaintenance` | `StorageDatabasecenterPartnerapiV1mainUpcomingMaintenance` | Optional. Upcoming maintenance for the database resource. This field is populated once SLM genera... |

### `StorageDatabasecenterPartnerapiV1mainResourceMaintenanceSchedule`

Maintenance window for the database resource. It specifies preferred time and day of the week and phase in some cases, when the maintenance can start. This is configured by the customer.

| Property | Type | Description |
|----------|------|-------------|
| `day` | `string` | Optional. Preferred day of the week for maintenance, e.g. MONDAY, TUESDAY, etc. |
| `phase` | `string` | Optional. Phase of the maintenance window. This is to capture order of maintenance. For example, ... |
| `time` | `GoogleTypeTimeOfDay` | Optional. Preferred time to start the maintenance operation on the specified day. |

### `StorageDatabasecenterPartnerapiV1mainRetentionSettings`

| Property | Type | Description |
|----------|------|-------------|
| `durationBasedRetention` | `string` | Duration based retention period i.e. 172800 seconds (2 days) |
| `quantityBasedRetention` | `integer` |  |
| `retentionUnit` | `string` | The unit that 'retained_backups' represents. |
| `timeBasedRetention` | `string` |  |
| `timestampBasedRetentionTime` | `string` | Timestamp based retention period i.e. 2024-05-01T00:00:00Z |

### `StorageDatabasecenterPartnerapiV1mainTags`

Message type for storing tags. Tags provide a way to create annotations for resources, and in some cases conditionally allow or deny policies based on whether a resource has a specific tag.

| Property | Type | Description |
|----------|------|-------------|
| `tags` | `object` | The Tag key/value mappings. |

### `StorageDatabasecenterPartnerapiV1mainUpcomingMaintenance`

Upcoming maintenance for the database resource. This is generated by SLM once the upcoming maintenance schedule is published.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | Optional. The end time of the upcoming maintenance. |
| `startTime` | `string` | Optional. The start time of the upcoming maintenance. |

### `StorageDatabasecenterPartnerapiV1mainUserLabels`

Message type for storing user labels. User labels are used to tag App Engine resources, allowing users to search for resources matching a set of labels and to aggregate usage data by labels.

| Property | Type | Description |
|----------|------|-------------|
| `labels` | `object` |  |

### `StorageDatabasecenterProtoCommonProduct`

Product specification for Condor resources.

| Property | Type | Description |
|----------|------|-------------|
| `engine` | `string` | The specific engine that the underlying database is running. |
| `minorVersion` | `string` | Minor version of the underlying database engine. Example values: For MySQL, it could be "8.0.32",... |
| `type` | `string` | Type of specific database product. It could be CloudSQL, AlloyDB etc.. |
| `version` | `string` | Version of the underlying database engine. Example values: For MySQL, it could be "8.0", "5.7" et... |

### `StorageDatabasecenterProtoCommonTypedValue`

TypedValue represents the value of a metric type. It can either be a double, an int64, a string or a bool.

| Property | Type | Description |
|----------|------|-------------|
| `boolValue` | `boolean` | For boolean value |
| `doubleValue` | `number` | For double value |
| `int64Value` | `string` | For integer value |
| `stringValue` | `string` | For string value |

### `StringRestrictions`

Restrictions on STRING type values

| Property | Type | Description |
|----------|------|-------------|
| `allowedValues` | `array<string>` | The list of allowed values, if bounded. This field will be empty if there is a unbounded number o... |

### `SupportedDatabaseFlag`

SupportedDatabaseFlag gives general information about a database flag, like type and allowed values. This is a static value that is defined on the server side, and it cannot be modified by callers. To set the Database flags on a particular Instance, a caller should modify the Instance.database_flags field.

| Property | Type | Description |
|----------|------|-------------|
| `acceptsMultipleValues` | `boolean` | Whether the database flag accepts multiple values. If true, a comma-separated list of stringified... |
| `flagName` | `string` | The name of the database flag, e.g. "max_allowed_packets". The is a possibly key for the Instance... |
| `integerRestrictions` | `IntegerRestrictions` | Restriction on INTEGER type value. |
| `name` | `string` | The name of the flag resource, following Google Cloud conventions, e.g.: * projects/{project}/loc... |
| `recommendedIntegerValue` | `string` | The recommended value for an INTEGER flag. |
| `recommendedStringValue` | `string` | The recommended value for a STRING flag. |
| `requiresDbRestart` | `boolean` | Whether setting or updating this flag on an Instance requires a database restart. If a flag that ... |
| `scope` | `string` | The scope of the flag. |
| `stringRestrictions` | `StringRestrictions` | Restriction on STRING type value. |
| `supportedDbVersions` | `array<string>` | Major database engine versions for which this flag is supported. |
| `valueType` | `string` |  |

### `SwitchoverClusterRequest`

Message for switching over to a cluster

| Property | Type | Description |
|----------|------|-------------|
| `requestId` | `string` | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you... |
| `validateOnly` | `boolean` | Optional. If set, performs request validation, for example, permission checks and any other type ... |

### `TimeBasedRetention`

A time based retention policy specifies that all backups within a certain time period should be retained.

| Property | Type | Description |
|----------|------|-------------|
| `retentionPeriod` | `string` | The retention period. |

### `TrialMetadata`

Contains information and all metadata related to TRIAL clusters.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | End time of the trial cluster. |
| `graceEndTime` | `string` | grace end time of the cluster. |
| `startTime` | `string` | start time of the trial cluster. |
| `upgradeTime` | `string` | Upgrade time of trial cluster to Standard cluster. |

### `UpgradeClusterRequest`

Upgrades a cluster.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Optional. The current etag of the Cluster. If an etag is provided and does not match the current ... |
| `requestId` | `string` | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you... |
| `validateOnly` | `boolean` | Optional. If set, performs request validation, for example, permission checks and any other type ... |
| `version` | `string` | Required. The version the cluster is going to be upgraded to. |

### `UpgradeClusterResponse`

UpgradeClusterResponse contains the response for upgrade cluster operation.

| Property | Type | Description |
|----------|------|-------------|
| `clusterUpgradeDetails` | `array<ClusterUpgradeDetails>` | Array of upgrade details for the current cluster and all the secondary clusters associated with t... |
| `message` | `string` | A user friendly message summarising the upgrade operation details and the next steps for the user... |
| `status` | `string` | Status of upgrade operation. |

### `UpgradeClusterStatus`

Message for current status of the Major Version Upgrade operation.

| Property | Type | Description |
|----------|------|-------------|
| `cancellable` | `boolean` | Whether the operation is cancellable. |
| `sourceVersion` | `string` | Source database major version. |
| `stages` | `array<StageStatus>` | Status of all upgrade stages. |
| `state` | `string` | Cluster Major Version Upgrade state. |
| `targetVersion` | `string` | Target database major version. |

### `User`

Message describing User object.

| Property | Type | Description |
|----------|------|-------------|
| `databaseRoles` | `array<string>` | Optional. List of database roles this user has. The database role strings are subject to the Post... |
| `keepExtraRoles` | `boolean` | Input only. If the user already exists and it has additional roles, keep them granted. |
| `name` | `string` | Output only. Name of the resource in the form of projects/{project}/locations/{location}/cluster/... |
| `password` | `string` | Input only. Password for the user. |
| `userType` | `string` | Optional. Type of this user. |

### `UserPassword`

The username/password for a database user. Used for specifying initial users at cluster creation time.

| Property | Type | Description |
|----------|------|-------------|
| `password` | `string` | The initial password for the user. |
| `user` | `string` | The database username. |

### `WeeklySchedule`

A weekly schedule starts a backup at prescribed start times within a day, for the specified days of the week. The weekly schedule message is flexible and can be used to create many types of schedules. For example, to have a daily backup that starts at 22:00, configure the `start_times` field to have one element "22:00" and the `days_of_week` field to have all seven days of the week.

| Property | Type | Description |
|----------|------|-------------|
| `daysOfWeek` | `array<string>` | The days of the week to perform a backup. If this field is left empty, the default of every day o... |
| `startTimes` | `array<GoogleTypeTimeOfDay>` | The times during the day to start a backup. The start times are assumed to be in UTC and to be an... |

