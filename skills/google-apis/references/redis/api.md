# Google Cloud Memorystore for Redis API - API Reference

**Version**: `v1` | **Methods**: 32 | **Schemas**: 101

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `redis.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `redis.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `redis.projects.locations.getSharedRegionalCertificateAuthority` | GET | `v1/{+name}` | Gets the details of regional certificate authority information for Redis cluster. |
| `redis.projects.locations.backupCollections.get` | GET | `v1/{+name}` | Get a backup collection. |
| `redis.projects.locations.backupCollections.list` | GET | `v1/{+parent}/backupCollections` | Lists all backup collections owned by a consumer project in either the specified location (region... |
| `redis.projects.locations.backupCollections.backups.delete` | DELETE | `v1/{+name}` | Deletes a specific backup. |
| `redis.projects.locations.backupCollections.backups.list` | GET | `v1/{+parent}/backups` | Lists all backups owned by a backup collection. |
| `redis.projects.locations.backupCollections.backups.export` | POST | `v1/{+name}:export` | Exports a specific backup to a customer target Cloud Storage URI. |
| `redis.projects.locations.backupCollections.backups.get` | GET | `v1/{+name}` | Gets the details of a specific backup. |
| `redis.projects.locations.instances.create` | POST | `v1/{+parent}/instances` | Creates a Redis instance based on the specified tier and memory size. By default, the instance is... |
| `redis.projects.locations.instances.patch` | PATCH | `v1/{+name}` | Updates the metadata and configuration of a specific Redis instance. Completed longrunning.Operat... |
| `redis.projects.locations.instances.rescheduleMaintenance` | POST | `v1/{+name}:rescheduleMaintenance` | Reschedule maintenance for a given instance in a given project and location. |
| `redis.projects.locations.instances.getAuthString` | GET | `v1/{+name}/authString` | Gets the AUTH string for a Redis instance. If AUTH is not enabled for the instance the response w... |
| `redis.projects.locations.instances.get` | GET | `v1/{+name}` | Gets the details of a specific Redis instance. |
| `redis.projects.locations.instances.export` | POST | `v1/{+name}:export` | Export Redis instance data into a Redis RDB format file in Cloud Storage. Redis will continue ser... |
| `redis.projects.locations.instances.import` | POST | `v1/{+name}:import` | Import a Redis RDB snapshot file from Cloud Storage into a Redis instance. Redis may stop serving... |
| `redis.projects.locations.instances.upgrade` | POST | `v1/{+name}:upgrade` | Upgrades Redis instance to the newer Redis version specified in the request. |
| `redis.projects.locations.instances.list` | GET | `v1/{+parent}/instances` | Lists all Redis instances owned by a project in either the specified location (region) or all loc... |
| `redis.projects.locations.instances.delete` | DELETE | `v1/{+name}` | Deletes a specific Redis instance. Instance stops serving and data is deleted. |
| `redis.projects.locations.instances.failover` | POST | `v1/{+name}:failover` | Initiates a failover of the primary node to current replica node for a specific STANDARD tier Clo... |
| `redis.projects.locations.clusters.delete` | DELETE | `v1/{+name}` | Deletes a specific Redis cluster. Cluster stops serving and data is deleted. |
| `redis.projects.locations.clusters.list` | GET | `v1/{+parent}/clusters` | Lists all Redis clusters owned by a project in either the specified location (region) or all loca... |
| `redis.projects.locations.clusters.backup` | POST | `v1/{+name}:backup` | Backup Redis Cluster. If this is the first time a backup is being created, a backup collection wi... |
| `redis.projects.locations.clusters.getCertificateAuthority` | GET | `v1/{+name}` | Gets the details of certificate authority information for Redis cluster. |
| `redis.projects.locations.clusters.get` | GET | `v1/{+name}` | Gets the details of a specific Redis cluster. |
| `redis.projects.locations.clusters.patch` | PATCH | `v1/{+name}` | Updates the metadata and configuration of a specific Redis cluster. Completed longrunning.Operati... |
| `redis.projects.locations.clusters.rescheduleClusterMaintenance` | POST | `v1/{+name}:rescheduleClusterMaintenance` | Reschedules upcoming maintenance event. |
| `redis.projects.locations.clusters.create` | POST | `v1/{+parent}/clusters` | Creates a Redis cluster based on the specified properties. The creation is executed asynchronousl... |
| `redis.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `redis.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `redis.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `redis.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |

### `redis.projects.locations.list`

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
const res = await redis.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `redis.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await redis.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `redis.projects.locations.getSharedRegionalCertificateAuthority`

**GET** `v1/{+name}`

Gets the details of regional certificate authority information for Redis cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Regional certificate authority resource name using the form: `projects/{project_id}/locations/{location_id}... |

**Response**: `SharedRegionalCertificateAuthority`

```typescript
const res = await redis.locations.getSharedRegionalCertificateAuthority({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `redis.projects.locations.backupCollections.get`

**GET** `v1/{+name}`

Get a backup collection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Redis backupCollection resource name using the form: `projects/{project_id}/locations/{location_id}/backupC... |

**Response**: `BackupCollection`

```typescript
const res = await redis.backupCollections.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `redis.projects.locations.backupCollections.list`

**GET** `v1/{+parent}/backupCollections`

Lists all backup collections owned by a consumer project in either the specified location (region) or all locations. If `location_id` is specified as `-` (wildcard), then all regions available to the project are queried, and the results are aggregated.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the backupCollection location using the form: `projects/{project_id}/locations/{locati... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of items to return. If not specified, a default value of 1000 will be used by the servic... |
| `pageToken` | `string` | query | No | Optional. The `next_page_token` value returned from a previous [ListBackupCollections] request, if any. |

**Response**: `ListBackupCollectionsResponse`

```typescript
const res = await redis.backupCollections.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `redis.projects.locations.backupCollections.backups.delete`

**DELETE** `v1/{+name}`

Deletes a specific backup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Redis backup resource name using the form: `projects/{project_id}/locations/{location_id}/backupCollections... |
| `requestId` | `string` | query | No | Optional. Idempotent request UUID. |

**Response**: `Operation`

```typescript
const res = await redis.backups.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `redis.projects.locations.backupCollections.backups.list`

**GET** `v1/{+parent}/backups`

Lists all backups owned by a backup collection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the backupCollection using the form: `projects/{project_id}/locations/{location_id}/ba... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of items to return. If not specified, a default value of 1000 will be used by the servic... |
| `pageToken` | `string` | query | No | Optional. The `next_page_token` value returned from a previous [ListBackupCollections] request, if any. |

**Response**: `ListBackupsResponse`

```typescript
const res = await redis.backups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `redis.projects.locations.backupCollections.backups.export`

**POST** `v1/{+name}:export`

Exports a specific backup to a customer target Cloud Storage URI.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Redis backup resource name using the form: `projects/{project_id}/locations/{location_id}/backupCollections... |

**Request body**: `ExportBackupRequest`

**Response**: `Operation`

```typescript
const res = await redis.backups.export({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `redis.projects.locations.backupCollections.backups.get`

**GET** `v1/{+name}`

Gets the details of a specific backup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Redis backup resource name using the form: `projects/{project_id}/locations/{location_id}/backupCollections... |

**Response**: `Backup`

```typescript
const res = await redis.backups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `redis.projects.locations.instances.create`

**POST** `v1/{+parent}/instances`

Creates a Redis instance based on the specified tier and memory size. By default, the instance is accessible from the project's [default network](https://cloud.google.com/vpc/docs/vpc). The creation is executed asynchronously and callers may check the returned operation to track its progress. Once the operation is completed the Redis instance will be fully functional. Completed longrunning.Operation will contain the new instance object in the response field. The returned operation is automatically deleted after a few hours, so there is no need to call DeleteOperation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the instance location using the form: `projects/{project_id}/locations/{location_id}` ... |
| `instanceId` | `string` | query | No | Required. The logical name of the Redis instance in the customer project with the following restrictions: * Must cont... |

**Request body**: `Instance`

**Response**: `Operation`

```typescript
const res = await redis.instances.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `redis.projects.locations.instances.patch`

**PATCH** `v1/{+name}`

Updates the metadata and configuration of a specific Redis instance. Completed longrunning.Operation will contain the new instance object in the response field. The returned operation is automatically deleted after a few hours, so there is no need to call DeleteOperation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Unique name of the resource in this scope including project and location using the form: `projects/{project... |
| `updateMask` | `string` | query | No | Required. Mask of fields to update. At least one path must be supplied in this field. The elements of the repeated pa... |

**Request body**: `Instance`

**Response**: `Operation`

```typescript
const res = await redis.instances.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `redis.projects.locations.instances.rescheduleMaintenance`

**POST** `v1/{+name}:rescheduleMaintenance`

Reschedule maintenance for a given instance in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Redis instance resource name using the form: `projects/{project_id}/locations/{location_id}/instances/{inst... |

**Request body**: `RescheduleMaintenanceRequest`

**Response**: `Operation`

```typescript
const res = await redis.instances.rescheduleMaintenance({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `redis.projects.locations.instances.getAuthString`

**GET** `v1/{+name}/authString`

Gets the AUTH string for a Redis instance. If AUTH is not enabled for the instance the response will be empty. This information is not included in the details returned to GetInstance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Redis instance resource name using the form: `projects/{project_id}/locations/{location_id}/instances/{inst... |

**Response**: `InstanceAuthString`

```typescript
const res = await redis.instances.getAuthString({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `redis.projects.locations.instances.get`

**GET** `v1/{+name}`

Gets the details of a specific Redis instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Redis instance resource name using the form: `projects/{project_id}/locations/{location_id}/instances/{inst... |

**Response**: `Instance`

```typescript
const res = await redis.instances.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `redis.projects.locations.instances.export`

**POST** `v1/{+name}:export`

Export Redis instance data into a Redis RDB format file in Cloud Storage. Redis will continue serving during this operation. The returned operation is automatically deleted after a few hours, so there is no need to call DeleteOperation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Redis instance resource name using the form: `projects/{project_id}/locations/{location_id}/instances/{inst... |

**Request body**: `ExportInstanceRequest`

**Response**: `Operation`

```typescript
const res = await redis.instances.export({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `redis.projects.locations.instances.import`

**POST** `v1/{+name}:import`

Import a Redis RDB snapshot file from Cloud Storage into a Redis instance. Redis may stop serving during this operation. Instance state will be IMPORTING for entire operation. When complete, the instance will contain only data from the imported file. The returned operation is automatically deleted after a few hours, so there is no need to call DeleteOperation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Redis instance resource name using the form: `projects/{project_id}/locations/{location_id}/instances/{inst... |

**Request body**: `ImportInstanceRequest`

**Response**: `Operation`

```typescript
const res = await redis.instances.import({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `redis.projects.locations.instances.upgrade`

**POST** `v1/{+name}:upgrade`

Upgrades Redis instance to the newer Redis version specified in the request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Redis instance resource name using the form: `projects/{project_id}/locations/{location_id}/instances/{inst... |

**Request body**: `UpgradeInstanceRequest`

**Response**: `Operation`

```typescript
const res = await redis.instances.upgrade({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `redis.projects.locations.instances.list`

**GET** `v1/{+parent}/instances`

Lists all Redis instances owned by a project in either the specified location (region) or all locations. The location should have the following format: * `projects/{project_id}/locations/{location_id}` If `location_id` is specified as `-` (wildcard), then all regions available to the project are queried, and the results are aggregated.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the instance location using the form: `projects/{project_id}/locations/{location_id}` ... |
| `pageSize` | `integer` | query | No | The maximum number of items to return. If not specified, a default value of 1000 will be used by the service. Regardl... |
| `pageToken` | `string` | query | No | The `next_page_token` value returned from a previous ListInstances request, if any. |

**Response**: `ListInstancesResponse`

```typescript
const res = await redis.instances.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `redis.projects.locations.instances.delete`

**DELETE** `v1/{+name}`

Deletes a specific Redis instance. Instance stops serving and data is deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Redis instance resource name using the form: `projects/{project_id}/locations/{location_id}/instances/{inst... |

**Response**: `Operation`

```typescript
const res = await redis.instances.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `redis.projects.locations.instances.failover`

**POST** `v1/{+name}:failover`

Initiates a failover of the primary node to current replica node for a specific STANDARD tier Cloud Memorystore for Redis instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Redis instance resource name using the form: `projects/{project_id}/locations/{location_id}/instances/{inst... |

**Request body**: `FailoverInstanceRequest`

**Response**: `Operation`

```typescript
const res = await redis.instances.failover({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `redis.projects.locations.clusters.delete`

**DELETE** `v1/{+name}`

Deletes a specific Redis cluster. Cluster stops serving and data is deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Redis cluster resource name using the form: `projects/{project_id}/locations/{location_id}/clusters/{cluste... |
| `requestId` | `string` | query | No | Optional. Idempotent request UUID. |

**Response**: `Operation`

```typescript
const res = await redis.clusters.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `redis.projects.locations.clusters.list`

**GET** `v1/{+parent}/clusters`

Lists all Redis clusters owned by a project in either the specified location (region) or all locations. The location should have the following format: * `projects/{project_id}/locations/{location_id}` If `location_id` is specified as `-` (wildcard), then all regions available to the project are queried, and the results are aggregated.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the cluster location using the form: `projects/{project_id}/locations/{location_id}` w... |
| `pageSize` | `integer` | query | No | The maximum number of items to return. If not specified, a default value of 1000 will be used by the service. Regardl... |
| `pageToken` | `string` | query | No | The `next_page_token` value returned from a previous ListClusters request, if any. |

**Response**: `ListClustersResponse`

```typescript
const res = await redis.clusters.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `redis.projects.locations.clusters.backup`

**POST** `v1/{+name}:backup`

Backup Redis Cluster. If this is the first time a backup is being created, a backup collection will be created at the backend, and this backup belongs to this collection. Both collection and backup will have a resource name. Backup will be executed for each shard. A replica (primary if nonHA) will be selected to perform the execution. Backup call will be rejected if there is an ongoing backup or update operation. Be aware that during preview, if the cluster's internal software version is too old, critical update will be performed before actual backup. Once the internal software version is updated to the minimum version required by the backup feature, subsequent backups will not require critical update. After preview, there will be no critical update needed for backup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Redis cluster resource name using the form: `projects/{project_id}/locations/{location_id}/clusters/{cluste... |

**Request body**: `BackupClusterRequest`

**Response**: `Operation`

```typescript
const res = await redis.clusters.backup({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `redis.projects.locations.clusters.getCertificateAuthority`

**GET** `v1/{+name}`

Gets the details of certificate authority information for Redis cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Redis cluster certificate authority resource name using the form: `projects/{project_id}/locations/{locatio... |

**Response**: `CertificateAuthority`

```typescript
const res = await redis.clusters.getCertificateAuthority({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `redis.projects.locations.clusters.get`

**GET** `v1/{+name}`

Gets the details of a specific Redis cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Redis cluster resource name using the form: `projects/{project_id}/locations/{location_id}/clusters/{cluste... |

**Response**: `Cluster`

```typescript
const res = await redis.clusters.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `redis.projects.locations.clusters.patch`

**PATCH** `v1/{+name}`

Updates the metadata and configuration of a specific Redis cluster. Completed longrunning.Operation will contain the new cluster object in the response field. The returned operation is automatically deleted after a few hours, so there is no need to call DeleteOperation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Identifier. Unique name of the resource in this scope including project and location using the form: `proje... |
| `requestId` | `string` | query | No | Optional. Idempotent request UUID. |
| `updateMask` | `string` | query | No | Required. Mask of fields to update. At least one path must be supplied in this field. The elements of the repeated pa... |

**Request body**: `Cluster`

**Response**: `Operation`

```typescript
const res = await redis.clusters.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `redis.projects.locations.clusters.rescheduleClusterMaintenance`

**POST** `v1/{+name}:rescheduleClusterMaintenance`

Reschedules upcoming maintenance event.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Redis Cluster instance resource name using the form: `projects/{project_id}/locations/{location_id}/cluster... |

**Request body**: `RescheduleClusterMaintenanceRequest`

**Response**: `Operation`

```typescript
const res = await redis.clusters.rescheduleClusterMaintenance({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `redis.projects.locations.clusters.create`

**POST** `v1/{+parent}/clusters`

Creates a Redis cluster based on the specified properties. The creation is executed asynchronously and callers may check the returned operation to track its progress. Once the operation is completed the Redis cluster will be fully functional. The completed longrunning.Operation will contain the new cluster object in the response field. The returned operation is automatically deleted after a few hours, so there is no need to call DeleteOperation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the cluster location using the form: `projects/{project_id}/locations/{location_id}` w... |
| `clusterId` | `string` | query | No | Required. The logical name of the Redis cluster in the customer project with the following restrictions: * Must conta... |
| `requestId` | `string` | query | No | Optional. Idempotent request UUID. |

**Request body**: `Cluster`

**Response**: `Operation`

```typescript
const res = await redis.clusters.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `redis.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Response**: `Empty`

```typescript
const res = await redis.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `redis.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await redis.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `redis.projects.locations.operations.list`

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
const res = await redis.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `redis.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await redis.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AOFConfig`

Configuration of the AOF based persistence.

| Property | Type | Description |
|----------|------|-------------|
| `appendFsync` | `string` | Optional. fsync configuration. |

### `AutomatedBackupConfig`

The automated backup config for a cluster.

| Property | Type | Description |
|----------|------|-------------|
| `automatedBackupMode` | `string` | Optional. The automated backup mode. If the mode is disabled, the other fields will be ignored. |
| `fixedFrequencySchedule` | `FixedFrequencySchedule` | Optional. Trigger automated backups at a fixed frequency. |
| `retention` | `string` | Optional. How long to keep automated backups before the backups are deleted. The value should be ... |

### `AvailabilityConfiguration`

Configuration for availability of database instance

| Property | Type | Description |
|----------|------|-------------|
| `automaticFailoverRoutingConfigured` | `boolean` | Checks for existence of (multi-cluster) routing configuration that allows automatic failover to a... |
| `availabilityType` | `string` | Availability type. Potential values: * `ZONAL`: The instance serves data from only one zone. Outa... |
| `crossRegionReplicaConfigured` | `boolean` | Checks for resources that are configured to have redundancy, and ongoing replication across regions |
| `externalReplicaConfigured` | `boolean` |  |
| `promotableReplicaConfigured` | `boolean` |  |

### `Backup`

Backup of a cluster.

| Property | Type | Description |
|----------|------|-------------|
| `backupFiles` | `array<BackupFile>` | Output only. List of backup files of the backup. |
| `backupType` | `string` | Output only. Type of the backup. |
| `cluster` | `string` | Output only. Cluster resource path of this backup. |
| `clusterUid` | `string` | Output only. Cluster uid of this backup. |
| `createTime` | `string` | Output only. The time when the backup was created. |
| `encryptionInfo` | `EncryptionInfo` | Output only. Encryption information of the backup. |
| `engineVersion` | `string` | Output only. redis-7.2, valkey-7.5 |
| `expireTime` | `string` | Output only. The time when the backup will expire. |
| `name` | `string` | Identifier. Full resource path of the backup. the last part of the name is the backup id with the... |
| `nodeType` | `string` | Output only. Node type of the cluster. |
| `replicaCount` | `integer` | Output only. Number of replicas for the cluster. |
| `shardCount` | `integer` | Output only. Number of shards for the cluster. |
| `state` | `string` | Output only. State of the backup. |
| `totalSizeBytes` | `string` | Output only. Total size of the backup in bytes. |
| `uid` | `string` | Output only. System assigned unique identifier of the backup. |

### `BackupClusterRequest`

Request for [BackupCluster].

| Property | Type | Description |
|----------|------|-------------|
| `backupId` | `string` | Optional. The id of the backup to be created. If not specified, the default value ([YYYYMMDDHHMMS... |
| `ttl` | `string` | Optional. TTL for the backup to expire. Value range is 1 day to 100 years. If not specified, the ... |

### `BackupCollection`

BackupCollection of a cluster.

| Property | Type | Description |
|----------|------|-------------|
| `cluster` | `string` | Output only. The full resource path of the cluster the backup collection belongs to. Example: pro... |
| `clusterUid` | `string` | Output only. The cluster uid of the backup collection. |
| `createTime` | `string` | Output only. The time when the backup collection was created. |
| `kmsKey` | `string` | Output only. The KMS key used to encrypt the backups under this backup collection. |
| `lastBackupTime` | `string` | Output only. The last time a backup was created in the backup collection. |
| `name` | `string` | Identifier. Full resource path of the backup collection. |
| `totalBackupCount` | `string` | Output only. Total number of backups in the backup collection. |
| `totalBackupSizeBytes` | `string` | Output only. Total size of all backups in the backup collection. |
| `uid` | `string` | Output only. System assigned unique identifier of the backup collection. |

### `BackupConfiguration`

Configuration for automatic backups

| Property | Type | Description |
|----------|------|-------------|
| `automatedBackupEnabled` | `boolean` | Whether customer visible automated backups are enabled on the instance. |
| `backupRetentionSettings` | `RetentionSettings` | Backup retention settings. |
| `pointInTimeRecoveryEnabled` | `boolean` | Whether point-in-time recovery is enabled. This is optional field, if the database service does n... |

### `BackupDRConfiguration`

BackupDRConfiguration to capture the backup and disaster recovery details of database resource.

| Property | Type | Description |
|----------|------|-------------|
| `backupdrManaged` | `boolean` | Indicates if the resource is managed by BackupDR. |

### `BackupDRMetadata`

BackupDRMetadata contains information about the backup and disaster recovery metadata of a database resource.

| Property | Type | Description |
|----------|------|-------------|
| `backupConfiguration` | `BackupConfiguration` | Backup configuration for this instance. |
| `backupRun` | `BackupRun` | Latest backup run information for this instance. |
| `backupdrConfiguration` | `BackupDRConfiguration` | BackupDR configuration for this instance. |
| `fullResourceName` | `string` | Required. Full resource name of this instance. |
| `lastRefreshTime` | `string` | Required. Last time backup configuration was refreshed. |
| `resourceId` | `DatabaseResourceId` | Required. Database resource id. |

### `BackupFile`

Backup is consisted of multiple backup files.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time when the backup file was created. |
| `fileName` | `string` | Output only. e.g: .rdb |
| `sizeBytes` | `string` | Output only. Size of the backup file in bytes. |

### `BackupRun`

A backup run.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | The time the backup operation completed. REQUIRED |
| `error` | `OperationError` | Information about why the backup operation failed. This is only present if the run has the FAILED... |
| `startTime` | `string` | The time the backup operation started. REQUIRED |
| `status` | `string` | The status of this run. REQUIRED |

### `CertChain`

| Property | Type | Description |
|----------|------|-------------|
| `certificates` | `array<string>` | The certificates that form the CA chain, from leaf to root order. |

### `CertificateAuthority`

Redis cluster certificate authority

| Property | Type | Description |
|----------|------|-------------|
| `managedServerCa` | `ManagedCertificateAuthority` |  |
| `name` | `string` | Identifier. Unique name of the resource in this scope including project, location and cluster usi... |

### `Cluster`

A cluster instance.

| Property | Type | Description |
|----------|------|-------------|
| `allowFewerZonesDeployment` | `boolean` | Optional. Immutable. Deprecated, do not use. |
| `asyncClusterEndpointsDeletionEnabled` | `boolean` | Optional. If true, cluster endpoints that are created and registered by customers can be deleted ... |
| `authorizationMode` | `string` | Optional. The authorization mode of the Redis cluster. If not provided, auth feature is disabled ... |
| `automatedBackupConfig` | `AutomatedBackupConfig` | Optional. The automated backup config for the cluster. |
| `availableMaintenanceVersions` | `array<string>` | Output only. This field is used to determine the available maintenance versions for the self serv... |
| `backupCollection` | `string` | Optional. Output only. The backup collection full resource name. Example: projects/{project}/loca... |
| `clusterEndpoints` | `array<ClusterEndpoint>` | Optional. A list of cluster endpoints. |
| `createTime` | `string` | Output only. The timestamp associated with the cluster creation request. |
| `crossClusterReplicationConfig` | `CrossClusterReplicationConfig` | Optional. Cross cluster replication config. |
| `deletionProtectionEnabled` | `boolean` | Optional. The delete operation will fail when the value is set to true. |
| `discoveryEndpoints` | `array<DiscoveryEndpoint>` | Output only. Endpoints created on each given network, for Redis clients to connect to the cluster... |
| `effectiveMaintenanceVersion` | `string` | Output only. This field represents the actual maintenance version of the cluster. |
| `encryptionInfo` | `EncryptionInfo` | Output only. Encryption information of the data at rest of the cluster. |
| `gcsSource` | `GcsBackupSource` | Optional. Backups stored in Cloud Storage buckets. The Cloud Storage buckets need to be the same ... |
| `kmsKey` | `string` | Optional. The KMS key used to encrypt the at-rest data of the cluster. |
| `labels` | `object` | Optional. Labels to represent user-provided metadata. |
| `maintenancePolicy` | `ClusterMaintenancePolicy` | Optional. ClusterMaintenancePolicy determines when to allow or deny updates. |
| `maintenanceSchedule` | `ClusterMaintenanceSchedule` | Output only. ClusterMaintenanceSchedule Output only Published maintenance schedule. |
| `maintenanceVersion` | `string` | Optional. This field can be used to trigger self service update to indicate the desired maintenan... |
| `managedBackupSource` | `ManagedBackupSource` | Optional. Backups generated and managed by memorystore service. |
| `name` | `string` | Required. Identifier. Unique name of the resource in this scope including project and location us... |
| `nodeType` | `string` | Optional. The type of a redis node in the cluster. NodeType determines the underlying machine-typ... |
| `ondemandMaintenance` | `boolean` | Optional. Input only. Ondemand maintenance for the cluster. This field can be used to trigger ond... |
| `persistenceConfig` | `ClusterPersistenceConfig` | Optional. Persistence config (RDB, AOF) for the cluster. |
| `preciseSizeGb` | `number` | Output only. Precise value of redis memory size in GB for the entire cluster. |
| `pscConfigs` | `array<PscConfig>` | Optional. Each PscConfig configures the consumer network where IPs will be designated to the clus... |
| `pscConnections` | `array<PscConnection>` | Output only. The list of PSC connections that are auto-created through service connectivity autom... |
| `pscServiceAttachments` | `array<PscServiceAttachment>` | Output only. Service attachment details to configure Psc connections |
| `redisConfigs` | `object` | Optional. Key/Value pairs of customer overrides for mutable Redis Configs |
| `replicaCount` | `integer` | Optional. The number of replica nodes per shard. |
| `rotateServerCertificate` | `boolean` | Optional. Input only. Rotate the server certificates. |
| `satisfiesPzi` | `boolean` | Optional. Output only. Reserved for future use. |
| `satisfiesPzs` | `boolean` | Optional. Output only. Reserved for future use. |
| `serverCaMode` | `string` | Optional. Server CA mode for the cluster. |
| `serverCaPool` | `string` | Optional. Customer-managed CA pool for the cluster. Only applicable for BYOCA i.e. if server_ca_m... |
| `shardCount` | `integer` | Optional. Number of shards for the Redis cluster. |
| `simulateMaintenanceEvent` | `boolean` | Optional. Input only. Simulate a maintenance event. |
| `sizeGb` | `integer` | Output only. Redis memory size in GB for the entire cluster rounded up to the next integer. |
| `state` | `string` | Output only. The current state of this cluster. Can be CREATING, READY, UPDATING, DELETING and SU... |
| `stateInfo` | `StateInfo` | Output only. Additional information about the current state of the cluster. |
| `transitEncryptionMode` | `string` | Optional. The in-transit encryption for the Redis cluster. If not provided, encryption is disable... |
| `uid` | `string` | Output only. System assigned, unique identifier for the cluster. |
| `zoneDistributionConfig` | `ZoneDistributionConfig` | Optional. This config will be used to determine how the customer wants us to distribute cluster r... |

### `ClusterEndpoint`

ClusterEndpoint consists of PSC connections that are created as a group in each VPC network for accessing the cluster. In each group, there shall be one connection for each service attachment in the cluster.

| Property | Type | Description |
|----------|------|-------------|
| `connections` | `array<ConnectionDetail>` | Required. A group of PSC connections. They are created in the same VPC network, one for each serv... |

### `ClusterMaintenancePolicy`

Maintenance policy per cluster.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time when the policy was created i.e. Maintenance Window or Deny Period was assi... |
| `updateTime` | `string` | Output only. The time when the policy was updated i.e. Maintenance Window or Deny Period was upda... |
| `weeklyMaintenanceWindow` | `array<ClusterWeeklyMaintenanceWindow>` | Optional. Maintenance window that is applied to resources covered by this policy. Minimum 1. For ... |

### `ClusterMaintenanceSchedule`

Upcoming maintenance schedule.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | Output only. The end time of any upcoming scheduled maintenance for this instance. |
| `startTime` | `string` | Output only. The start time of any upcoming scheduled maintenance for this instance. |

### `ClusterPersistenceConfig`

Configuration of the persistence functionality.

| Property | Type | Description |
|----------|------|-------------|
| `aofConfig` | `AOFConfig` | Optional. AOF configuration. This field will be ignored if mode is not AOF. |
| `mode` | `string` | Optional. The mode of persistence. |
| `rdbConfig` | `RDBConfig` | Optional. RDB configuration. This field will be ignored if mode is not RDB. |

### `ClusterWeeklyMaintenanceWindow`

Time window specified for weekly operations.

| Property | Type | Description |
|----------|------|-------------|
| `day` | `string` | Optional. Allows to define schedule that runs specified day of the week. |
| `startTime` | `TimeOfDay` | Optional. Start time of the window in UTC. |

### `Compliance`

Contains compliance information about a security standard indicating unmet recommendations.

| Property | Type | Description |
|----------|------|-------------|
| `standard` | `string` | Industry-wide compliance standards or benchmarks, such as CIS, PCI, and OWASP. |
| `version` | `string` | Version of the standard or benchmark, for example, 1.1 |

### `ConfigBasedSignalData`

Config based signal data. This is used to send signals to Condor which are based on the DB level configurations. These will be used to send signals for self managed databases.

| Property | Type | Description |
|----------|------|-------------|
| `fullResourceName` | `string` | Required. Full Resource name of the source resource. |
| `lastRefreshTime` | `string` | Required. Last time signal was refreshed |
| `resourceId` | `DatabaseResourceId` | Database resource id. |
| `signalBoolValue` | `boolean` | Signal data for boolean signals. |
| `signalType` | `string` | Required. Signal type of the signal |

### `ConnectionDetail`

Detailed information of each PSC connection.

| Property | Type | Description |
|----------|------|-------------|
| `pscAutoConnection` | `PscAutoConnection` | Detailed information of a PSC connection that is created through service connectivity automation. |
| `pscConnection` | `PscConnection` | Detailed information of a PSC connection that is created by the customer who owns the cluster. |

### `CrossClusterReplicationConfig`

Cross cluster replication config.

| Property | Type | Description |
|----------|------|-------------|
| `clusterRole` | `string` | Output only. The role of the cluster in cross cluster replication. |
| `membership` | `Membership` | Output only. An output only view of all the member clusters participating in the cross cluster re... |
| `primaryCluster` | `RemoteCluster` | Details of the primary cluster that is used as the replication source for this secondary cluster.... |
| `secondaryClusters` | `array<RemoteCluster>` | List of secondary clusters that are replicating from this primary cluster. This field is only set... |
| `updateTime` | `string` | Output only. The last time cross cluster replication config was updated. |

### `CustomMetadataData`

Any custom metadata associated with the resource. e.g. A spanner instance can have multiple databases with its own unique metadata. Information for these individual databases can be captured in custom metadata data

| Property | Type | Description |
|----------|------|-------------|
| `internalResourceMetadata` | `array<InternalResourceMetadata>` | Metadata for individual internal resources in an instance. e.g. spanner instance can have multipl... |

### `DatabaseResourceFeed`

DatabaseResourceFeed is the top level proto to be used to ingest different database resource level events into Condor platform. Next ID: 13

| Property | Type | Description |
|----------|------|-------------|
| `backupdrMetadata` | `BackupDRMetadata` | BackupDR metadata is used to ingest metadata from BackupDR. |
| `configBasedSignalData` | `ConfigBasedSignalData` | Config based signal data is used to ingest signals that are generated based on the configuration ... |
| `databaseResourceSignalData` | `DatabaseResourceSignalData` | Database resource signal data is used to ingest signals from database resource signal feeds. |
| `feedTimestamp` | `string` | Required. Timestamp when feed is generated. |
| `feedType` | `string` | Required. Type feed to be ingested into condor |
| `observabilityMetricData` | `ObservabilityMetricData` |  |
| `recommendationSignalData` | `DatabaseResourceRecommendationSignalData` |  |
| `resourceHealthSignalData` | `DatabaseResourceHealthSignalData` |  |
| `resourceId` | `DatabaseResourceId` | Primary key associated with the Resource. resource_id is available in individual feed level as well. |
| `resourceMetadata` | `DatabaseResourceMetadata` |  |
| `skipIngestion` | `boolean` | Optional. If true, the feed won't be ingested by DB Center. This indicates that the feed is inten... |

### `DatabaseResourceHealthSignalData`

Common model for database resource health signal data.

| Property | Type | Description |
|----------|------|-------------|
| `additionalMetadata` | `object` | Any other additional metadata |
| `compliance` | `array<Compliance>` | Industry standards associated with this signal; if this signal is an issue, that could be a viola... |
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

### `DatabaseResourceId`

DatabaseResourceId will serve as primary key for any resource ingestion event.

| Property | Type | Description |
|----------|------|-------------|
| `provider` | `string` | Required. Cloud provider name. Ex: GCP/AWS/Azure/OnPrem/SelfManaged |
| `providerDescription` | `string` | Optional. Needs to be used only when the provider is PROVIDER_OTHER. |
| `resourceType` | `string` | Required. The type of resource this ID is identifying. Ex go/keep-sorted start alloydb.googleapis... |
| `uniqueId` | `string` | Required. A service-local token that distinguishes this resource from other resources within the ... |

### `DatabaseResourceMetadata`

Common model for database resource instance metadata. Next ID: 31

| Property | Type | Description |
|----------|------|-------------|
| `availabilityConfiguration` | `AvailabilityConfiguration` | Availability configuration for this instance |
| `backupConfiguration` | `BackupConfiguration` | Backup configuration for this instance |
| `backupRun` | `BackupRun` | Latest backup run information for this instance |
| `backupdrConfiguration` | `BackupDRConfiguration` | Optional. BackupDR Configuration for the resource. |
| `creationTime` | `string` | The creation time of the resource, i.e. the time when resource is created and recorded in partner... |
| `currentState` | `string` | Current state of the instance. |
| `customMetadata` | `CustomMetadataData` | Any custom metadata associated with the resource |
| `edition` | `string` | Optional. Edition represents whether the instance is ENTERPRISE or ENTERPRISE_PLUS. This informat... |
| `entitlements` | `array<Entitlement>` | Entitlements associated with the resource |
| `expectedState` | `string` | The state that the instance is expected to be in. For example, an instance state can transition t... |
| `gcbdrConfiguration` | `GCBDRConfiguration` | GCBDR configuration for the resource. |
| `id` | `DatabaseResourceId` | Required. Unique identifier for a Database resource |
| `instanceType` | `string` | The type of the instance. Specified at creation time. |
| `isDeletionProtectionEnabled` | `boolean` | Optional. Whether deletion protection is enabled for this resource. |
| `location` | `string` | The resource location. REQUIRED |
| `machineConfiguration` | `MachineConfiguration` | Machine configuration for this resource. |
| `maintenanceInfo` | `ResourceMaintenanceInfo` | Optional. Maintenance info for the resource. |
| `primaryResourceId` | `DatabaseResourceId` | Identifier for this resource's immediate parent/primary resource if the current resource is a rep... |
| `primaryResourceLocation` | `string` | Primary resource location. REQUIRED if the immediate parent exists when first time resource is ge... |
| `product` | `Product` | The product this resource represents. |
| `resourceContainer` | `string` | Closest parent Cloud Resource Manager container of this resource. It must be resource name of a C... |
| `resourceFlags` | `array<ResourceFlags>` | Optional. List of resource flags for the database resource. |
| `resourceName` | `string` | Required. Different from DatabaseResourceId.unique_id, a resource name can be reused over time. T... |
| `suspensionReason` | `string` | Optional. Suspension reason for the resource. |
| `tagsSet` | `Tags` | Optional. Tags associated with this resources. |
| `updationTime` | `string` | The time at which the resource was updated and recorded at partner service. |
| `userLabelSet` | `UserLabels` | User-provided labels associated with the resource |
| `zone` | `string` | The resource zone. This is only applicable for zonal resources and will be empty for regional and... |

### `DatabaseResourceRecommendationSignalData`

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

### `DatabaseResourceSignalData`

Database resource signal data. This is used to send signals to Condor which are based on the DB/Instance/Fleet level configurations. These will be used to send signals for all inventory types. Next ID: 7

| Property | Type | Description |
|----------|------|-------------|
| `fullResourceName` | `string` | Required. Full Resource name of the source resource. |
| `lastRefreshTime` | `string` | Required. Last time signal was refreshed |
| `resourceId` | `DatabaseResourceId` | Database resource id. |
| `signalBoolValue` | `boolean` | Signal data for boolean signals. |
| `signalState` | `string` | Required. Output only. Signal state of the signal |
| `signalType` | `string` | Required. Signal type of the signal |

### `Date`

Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by ... |
| `month` | `integer` | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `year` | `integer` | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

### `DiscoveryEndpoint`

Endpoints on each network, for Redis clients to connect to the cluster.

| Property | Type | Description |
|----------|------|-------------|
| `address` | `string` | Output only. Address of the exposed Redis endpoint used by clients to connect to the service. The... |
| `port` | `integer` | Output only. The port number of the exposed Redis endpoint. |
| `pscConfig` | `PscConfig` | Output only. Customer configuration for where the endpoint is created and accessed from. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `EncryptionInfo`

EncryptionInfo describes the encryption information of a cluster or a backup.

| Property | Type | Description |
|----------|------|-------------|
| `encryptionType` | `string` | Output only. Type of encryption. |
| `kmsKeyPrimaryState` | `string` | Output only. The state of the primary version of the KMS key perceived by the system. This field ... |
| `kmsKeyVersions` | `array<string>` | Output only. KMS key versions that are being used to protect the data at-rest. |
| `lastUpdateTime` | `string` | Output only. The most recent time when the encryption info was updated. |

### `Entitlement`

Proto representing the access that a user has to a specific feature/service. NextId: 3.

| Property | Type | Description |
|----------|------|-------------|
| `entitlementState` | `string` | The current state of user's accessibility to a feature/benefit. |
| `type` | `string` | An enum that represents the type of this entitlement. |

### `ExportBackupRequest`

Request for [ExportBackup].

| Property | Type | Description |
|----------|------|-------------|
| `gcsBucket` | `string` | Google Cloud Storage bucket, like "my-bucket". |

### `ExportInstanceRequest`

Request for Export.

| Property | Type | Description |
|----------|------|-------------|
| `outputConfig` | `OutputConfig` | Required. Specify data to be exported. |

### `FailoverInstanceRequest`

Request for Failover.

| Property | Type | Description |
|----------|------|-------------|
| `dataProtectionMode` | `string` | Optional. Available data protection modes that the user can choose. If it's unspecified, data pro... |

### `FixedFrequencySchedule`

This schedule allows the backup to be triggered at a fixed frequency (currently only daily is supported).

| Property | Type | Description |
|----------|------|-------------|
| `startTime` | `TimeOfDay` | Required. The start time of every automated backup in UTC. It must be set to the start of an hour... |

### `GCBDRConfiguration`

GCBDR Configuration for the resource.

| Property | Type | Description |
|----------|------|-------------|
| `gcbdrManaged` | `boolean` | Whether the resource is managed by GCBDR. |

### `GcsBackupSource`

Backups stored in Cloud Storage buckets. The Cloud Storage buckets need to be the same region as the clusters.

| Property | Type | Description |
|----------|------|-------------|
| `uris` | `array<string>` | Optional. URIs of the Cloud Storage objects to import. Example: gs://bucket1/object1, gs://bucket... |

### `GcsDestination`

The Cloud Storage location for the output content

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` | Required. Data destination URI (e.g. 'gs://my_bucket/my_object'). Existing files will be overwrit... |

### `GcsSource`

The Cloud Storage location for the input content

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` | Required. Source data URI. (e.g. 'gs://my_bucket/my_object'). |

### `GoogleCloudRedisV1LocationMetadata`

This location metadata represents additional configuration options for a given location where a Redis instance may be created. All fields are output only. It is returned as content of the `google.cloud.location.Location.metadata` field.

| Property | Type | Description |
|----------|------|-------------|
| `availableZones` | `object` | Output only. The set of available zones in the location. The map is keyed by the lowercase ID of ... |

### `GoogleCloudRedisV1OperationMetadata`

Represents the v1 metadata of the long-running operation.

| Property | Type | Description |
|----------|------|-------------|
| `apiVersion` | `string` | API version. |
| `cancelRequested` | `boolean` | Specifies if cancellation was requested for the operation. |
| `createTime` | `string` | Creation timestamp. |
| `endTime` | `string` | End timestamp. |
| `statusDetail` | `string` | Operation status details. |
| `target` | `string` | Operation target. |
| `verb` | `string` | Operation verb. |

### `GoogleCloudRedisV1ZoneMetadata`

Defines specific information for a particular zone. Currently empty and reserved for future use only.

### `ImportInstanceRequest`

Request for Import.

| Property | Type | Description |
|----------|------|-------------|
| `inputConfig` | `InputConfig` | Required. Specify data to be imported. |

### `InputConfig`

The input content

| Property | Type | Description |
|----------|------|-------------|
| `gcsSource` | `GcsSource` | Google Cloud Storage location where input content is located. |

### `Instance`

A Memorystore for Redis instance.

| Property | Type | Description |
|----------|------|-------------|
| `alternativeLocationId` | `string` | Optional. If specified, at least one node will be provisioned in this zone in addition to the zon... |
| `authEnabled` | `boolean` | Optional. Indicates whether OSS Redis AUTH is enabled for the instance. If set to "true" AUTH is ... |
| `authorizedNetwork` | `string` | Optional. The full name of the Google Compute Engine [network](https://cloud.google.com/vpc/docs/... |
| `availableMaintenanceVersions` | `array<string>` | Optional. The available maintenance versions that an instance could update to. |
| `connectMode` | `string` | Optional. The network connect mode of the Redis instance. If not provided, the connect mode defau... |
| `createTime` | `string` | Output only. The time the instance was created. |
| `currentLocationId` | `string` | Output only. The current zone where the Redis primary node is located. In basic tier, this will a... |
| `customerManagedKey` | `string` | Optional. The KMS key reference that the customer provides when trying to create the instance. |
| `displayName` | `string` | An arbitrary and optional user-provided name for the instance. |
| `host` | `string` | Output only. Hostname or IP address of the exposed Redis endpoint used by clients to connect to t... |
| `labels` | `object` | Resource labels to represent user provided metadata |
| `locationId` | `string` | Optional. The zone where the instance will be provisioned. If not provided, the service will choo... |
| `maintenancePolicy` | `MaintenancePolicy` | Optional. The maintenance policy for the instance. If not provided, maintenance events can be per... |
| `maintenanceSchedule` | `MaintenanceSchedule` | Output only. Date and time of upcoming maintenance events which have been scheduled. |
| `maintenanceVersion` | `string` | Optional. The self service update maintenance version. The version is date based such as "2021071... |
| `memorySizeGb` | `integer` | Required. Redis memory size in GiB. |
| `name` | `string` | Required. Unique name of the resource in this scope including project and location using the form... |
| `nodes` | `array<NodeInfo>` | Output only. Info per node. |
| `persistenceConfig` | `PersistenceConfig` | Optional. Persistence configuration parameters |
| `persistenceIamIdentity` | `string` | Output only. Cloud IAM identity used by import / export operations to transfer data to/from Cloud... |
| `port` | `integer` | Output only. The port number of the exposed Redis endpoint. |
| `readEndpoint` | `string` | Output only. Hostname or IP address of the exposed readonly Redis endpoint. Standard tier only. T... |
| `readEndpointPort` | `integer` | Output only. The port number of the exposed readonly redis endpoint. Standard tier only. Write re... |
| `readReplicasMode` | `string` | Optional. Read replicas mode for the instance. Defaults to READ_REPLICAS_DISABLED. |
| `redisConfigs` | `object` | Optional. Redis configuration parameters, according to http://redis.io/topics/config. Currently, ... |
| `redisVersion` | `string` | Optional. The version of Redis software. If not provided, the default version will be used. Curre... |
| `replicaCount` | `integer` | Optional. The number of replica nodes. The valid range for the Standard Tier with read replicas e... |
| `reservedIpRange` | `string` | Optional. For DIRECT_PEERING mode, the CIDR range of internal addresses that are reserved for thi... |
| `satisfiesPzi` | `boolean` | Optional. Output only. Reserved for future use. |
| `satisfiesPzs` | `boolean` | Optional. Output only. Reserved for future use. |
| `secondaryIpRange` | `string` | Optional. Additional IP range for node placement. Required when enabling read replicas on an exis... |
| `serverCaCerts` | `array<TlsCertificate>` | Output only. List of server CA certificates for the instance. |
| `state` | `string` | Output only. The current state of this instance. |
| `statusMessage` | `string` | Output only. Additional information about the current status of this instance, if available. |
| `suspensionReasons` | `array<string>` | Optional. reasons that causes instance in "SUSPENDED" state. |
| `tags` | `object` | Optional. Input only. Immutable. Tag keys/values directly bound to this resource. For example: "1... |
| `tier` | `string` | Required. The service tier of the instance. |
| `transitEncryptionMode` | `string` | Optional. The TLS mode of the Redis instance. If not provided, TLS is disabled for the instance. |

### `InstanceAuthString`

Instance AUTH string details.

| Property | Type | Description |
|----------|------|-------------|
| `authString` | `string` | AUTH string set on the instance. |

### `InternalResourceMetadata`

Metadata for individual internal resources in an instance. e.g. spanner instance can have multiple databases with unique configuration settings. Similarly bigtable can have multiple clusters within same bigtable instance.

| Property | Type | Description |
|----------|------|-------------|
| `backupConfiguration` | `BackupConfiguration` | Backup configuration for this database |
| `backupRun` | `BackupRun` | Information about the last backup attempt for this database |
| `isDeletionProtectionEnabled` | `boolean` | Whether deletion protection is enabled for this internal resource. |
| `product` | `Product` |  |
| `resourceId` | `DatabaseResourceId` |  |
| `resourceName` | `string` | Required. internal resource name for spanner this will be database name e.g."spanner.googleapis.c... |

### `ListBackupCollectionsResponse`

Response for [ListBackupCollections].

| Property | Type | Description |
|----------|------|-------------|
| `backupCollections` | `array<BackupCollection>` | A list of backupCollections in the project. If the `location_id` in the parent field of the reque... |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListBackupsResponse`

Response for [ListBackups].

| Property | Type | Description |
|----------|------|-------------|
| `backups` | `array<Backup>` | A list of backups in the project. |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |
| `unreachable` | `array<string>` | Backups that could not be reached. |

### `ListClustersResponse`

Response for ListClusters.

| Property | Type | Description |
|----------|------|-------------|
| `clusters` | `array<Cluster>` | A list of Redis clusters in the project in the specified location, or across all locations. If th... |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListInstancesResponse`

Response for ListInstances.

| Property | Type | Description |
|----------|------|-------------|
| `instances` | `array<Instance>` | A list of Redis instances in the project in the specified location, or across all locations. If t... |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListLocationsResponse`

The response message for Locations.ListLocations.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<Location>` | A list of locations that matches the specified filter in the request. |
| `nextPageToken` | `string` | The standard List next-page token. |

### `ListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<Operation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | Resource ID for the region. For example: "us-east1". |
| `metadata` | `object` | Output only. The set of available zones in the location. The map is keyed by the lowercase ID of ... |
| `name` | `string` | Full resource name for the region. For example: "projects/example-project/locations/us-east1". |

### `MachineConfiguration`

MachineConfiguration describes the configuration of a machine specific to Database Resource.

| Property | Type | Description |
|----------|------|-------------|
| `baselineSlots` | `string` | Optional. Baseline slots for BigQuery Reservations. Baseline slots are in increments of 50. |
| `cpuCount` | `integer` | The number of CPUs. Deprecated. Use vcpu_count instead. TODO(b/342344482) add proto validations a... |
| `maxReservationSlots` | `string` | Optional. Max slots for BigQuery Reservations. Max slots are in increments of 50. |
| `memorySizeInBytes` | `string` | Memory size in bytes. TODO(b/342344482) add proto validations again after bug fix. |
| `shardCount` | `integer` | Optional. Number of shards (if applicable). |
| `vcpuCount` | `number` | Optional. The number of vCPUs. TODO(b/342344482) add proto validations again after bug fix. |

### `MaintenancePolicy`

Maintenance policy for an instance.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time when the policy was created. |
| `description` | `string` | Optional. Description of what this policy is for. Create/Update methods return INVALID_ARGUMENT i... |
| `updateTime` | `string` | Output only. The time when the policy was last updated. |
| `weeklyMaintenanceWindow` | `array<WeeklyMaintenanceWindow>` | Optional. Maintenance window that is applied to resources covered by this policy. Minimum 1. For ... |

### `MaintenanceSchedule`

Upcoming maintenance schedule. If no maintenance is scheduled, fields are not populated.

| Property | Type | Description |
|----------|------|-------------|
| `canReschedule` | `boolean` | If the scheduled maintenance can be rescheduled, default is true. |
| `endTime` | `string` | Output only. The end time of any upcoming scheduled maintenance for this instance. |
| `scheduleDeadlineTime` | `string` | Output only. The deadline that the maintenance schedule start time can not go beyond, including r... |
| `startTime` | `string` | Output only. The start time of any upcoming scheduled maintenance for this instance. |

### `ManagedBackupSource`

Backups that generated and managed by memorystore.

| Property | Type | Description |
|----------|------|-------------|
| `backup` | `string` | Optional. Example: //redis.googleapis.com/projects/{project}/locations/{location}/backupCollectio... |

### `ManagedCertificateAuthority`

| Property | Type | Description |
|----------|------|-------------|
| `caCerts` | `array<CertChain>` | The PEM encoded CA certificate chains for redis managed server authentication |

### `Membership`

An output only view of all the member clusters participating in the cross cluster replication.

| Property | Type | Description |
|----------|------|-------------|
| `primaryCluster` | `RemoteCluster` | Output only. The primary cluster that acts as the source of replication for the secondary clusters. |
| `secondaryClusters` | `array<RemoteCluster>` | Output only. The list of secondary clusters replicating from the primary cluster. |

### `NodeInfo`

Node specific properties.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | Output only. Node identifying string. e.g. 'node-0', 'node-1' |
| `zone` | `string` | Output only. Location of the node. |

### `ObservabilityMetricData`

| Property | Type | Description |
|----------|------|-------------|
| `aggregationType` | `string` | Required. Type of aggregation performed on the metric. |
| `metricType` | `string` | Required. Type of metric like CPU, Memory, etc. |
| `observationTime` | `string` | Required. The time the metric value was observed. |
| `resourceName` | `string` | Required. Database resource name associated with the signal. Resource name to follow CAIS resourc... |
| `value` | `TypedValue` | Required. Value of the metric type. |

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | { `createTime`: The time the operation was created. `endTime`: The time the operation finished ru... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `OperationError`

An error that occurred during a backup creation operation.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | Identifies the specific error that occurred. REQUIRED |
| `errorType` | `string` |  |
| `message` | `string` | Additional information about the error encountered. REQUIRED |

### `OperationMetadata`

Pre-defined metadata fields.

| Property | Type | Description |
|----------|------|-------------|
| `apiVersion` | `string` | Output only. API version used to start the operation. |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `requestedCancellation` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. Operations ... |
| `statusMessage` | `string` | Output only. Human-readable status of the operation, if any. |
| `target` | `string` | Output only. Server-defined resource path for the target of the operation. |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `OutputConfig`

The output content

| Property | Type | Description |
|----------|------|-------------|
| `gcsDestination` | `GcsDestination` | Google Cloud Storage destination for output content. |

### `PersistenceConfig`

Configuration of the persistence functionality.

| Property | Type | Description |
|----------|------|-------------|
| `persistenceMode` | `string` | Optional. Controls whether Persistence features are enabled. If not provided, the existing value ... |
| `rdbNextSnapshotTime` | `string` | Output only. The next time that a snapshot attempt is scheduled to occur. |
| `rdbSnapshotPeriod` | `string` | Optional. Period between RDB snapshots. Snapshots will be attempted every period starting from th... |
| `rdbSnapshotStartTime` | `string` | Optional. Date and time that the first snapshot was/will be attempted, and to which future snapsh... |

### `Product`

Product specification for Condor resources.

| Property | Type | Description |
|----------|------|-------------|
| `engine` | `string` | The specific engine that the underlying database is running. |
| `minorVersion` | `string` | Minor version of the underlying database engine. Example values: For MySQL, it could be "8.0.32",... |
| `type` | `string` | Type of specific database product. It could be CloudSQL, AlloyDB etc.. |
| `version` | `string` | Version of the underlying database engine. Example values: For MySQL, it could be "8.0", "5.7" et... |

### `PscAutoConnection`

Details of consumer resources in a PSC connection that is created through Service Connectivity Automation.

| Property | Type | Description |
|----------|------|-------------|
| `address` | `string` | Output only. The IP allocated on the consumer network for the PSC forwarding rule. |
| `connectionType` | `string` | Output only. Type of the PSC connection. |
| `forwardingRule` | `string` | Output only. The URI of the consumer side forwarding rule. Example: projects/{projectNumOrId}/reg... |
| `network` | `string` | Required. The consumer network where the IP address resides, in the form of projects/{project_id}... |
| `projectId` | `string` | Required. The consumer project_id where the forwarding rule is created from. |
| `pscConnectionId` | `string` | Output only. The PSC connection id of the forwarding rule connected to the service attachment. |
| `pscConnectionStatus` | `string` | Output only. The status of the PSC connection. Please note that this value is updated periodicall... |
| `serviceAttachment` | `string` | Output only. The service attachment which is the target of the PSC connection, in the form of pro... |

### `PscConfig`

| Property | Type | Description |
|----------|------|-------------|
| `network` | `string` | Required. The network where the IP address of the discovery endpoint will be reserved, in the for... |

### `PscConnection`

Details of consumer resources in a PSC connection.

| Property | Type | Description |
|----------|------|-------------|
| `address` | `string` | Required. The IP allocated on the consumer network for the PSC forwarding rule. |
| `connectionType` | `string` | Output only. Type of the PSC connection. |
| `forwardingRule` | `string` | Required. The URI of the consumer side forwarding rule. Example: projects/{projectNumOrId}/region... |
| `network` | `string` | Required. The consumer network where the IP address resides, in the form of projects/{project_id}... |
| `port` | `integer` | Output only. port will only be set for Primary/Reader or Discovery endpoint. |
| `projectId` | `string` | Optional. Project ID of the consumer project where the forwarding rule is created in. |
| `pscConnectionId` | `string` | Required. The PSC connection id of the forwarding rule connected to the service attachment. |
| `pscConnectionStatus` | `string` | Output only. The status of the PSC connection. Please note that this value is updated periodicall... |
| `serviceAttachment` | `string` | Required. The service attachment which is the target of the PSC connection, in the form of projec... |

### `PscServiceAttachment`

Configuration of a service attachment of the cluster, for creating PSC connections.

| Property | Type | Description |
|----------|------|-------------|
| `connectionType` | `string` | Output only. Type of a PSC connection targeting this service attachment. |
| `serviceAttachment` | `string` | Output only. Service attachment URI which your self-created PscConnection should use as target |

### `RDBConfig`

Configuration of the RDB based persistence.

| Property | Type | Description |
|----------|------|-------------|
| `rdbSnapshotPeriod` | `string` | Optional. Period between RDB snapshots. |
| `rdbSnapshotStartTime` | `string` | Optional. The time that the first snapshot was/will be attempted, and to which future snapshots w... |

### `ReconciliationOperationMetadata`

Operation metadata returned by the CLH during resource state reconciliation.

| Property | Type | Description |
|----------|------|-------------|
| `deleteResource` | `boolean` | DEPRECATED. Use exclusive_action instead. |
| `exclusiveAction` | `string` | Excluisive action returned by the CLH. |

### `RegionalCertChain`

The certificates that form the CA chain, from leaf to root order.

| Property | Type | Description |
|----------|------|-------------|
| `certificates` | `array<string>` | The certificates that form the CA chain, from leaf to root order. |

### `RegionalManagedCertificateAuthority`

CA certificate chains for redis managed server authentication.

| Property | Type | Description |
|----------|------|-------------|
| `caCerts` | `array<RegionalCertChain>` | The PEM encoded CA certificate chains for redis managed server authentication |

### `RemoteCluster`

Details of the remote cluster associated with this cluster in a cross cluster replication setup.

| Property | Type | Description |
|----------|------|-------------|
| `cluster` | `string` | Output only. The full resource path of the remote cluster in the format: projects//locations//clu... |
| `uid` | `string` | Output only. The unique identifier of the remote cluster. |

### `RescheduleClusterMaintenanceRequest`

Request for rescheduling a cluster maintenance.

| Property | Type | Description |
|----------|------|-------------|
| `rescheduleType` | `string` | Required. If reschedule type is SPECIFIC_TIME, must set up schedule_time as well. |
| `scheduleTime` | `string` | Optional. Timestamp when the maintenance shall be rescheduled to if reschedule_type=SPECIFIC_TIME... |

### `RescheduleMaintenanceRequest`

Request for RescheduleMaintenance.

| Property | Type | Description |
|----------|------|-------------|
| `rescheduleType` | `string` | Required. If reschedule type is SPECIFIC_TIME, must set up schedule_time as well. |
| `scheduleTime` | `string` | Optional. Timestamp when the maintenance shall be rescheduled to if reschedule_type=SPECIFIC_TIME... |

### `ResourceFlags`

Message type for storing resource flags.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | Optional. Key of the resource flag. |
| `value` | `string` | Optional. Value of the resource flag. |

### `ResourceMaintenanceDenySchedule`

Deny maintenance period for the database resource. It specifies the time range during which the maintenance cannot start. This is configured by the customer.

| Property | Type | Description |
|----------|------|-------------|
| `endDate` | `Date` | Optional. Deny period end date. |
| `startDate` | `Date` | Optional. The start date of the deny maintenance period. |
| `time` | `TimeOfDay` | Optional. Time in UTC when the deny period starts on start_date and ends on end_date. |

### `ResourceMaintenanceInfo`

MaintenanceInfo to capture the maintenance details of database resource.

| Property | Type | Description |
|----------|------|-------------|
| `currentVersionReleaseDate` | `Date` | Optional. The date when the current maintenance version was released. |
| `denyMaintenanceSchedules` | `array<ResourceMaintenanceDenySchedule>` | Optional. List of Deny maintenance period for the database resource. |
| `isInstanceStopped` | `boolean` | Optional. Whether the instance is in stopped state. This information is temporarily being capture... |
| `maintenanceSchedule` | `ResourceMaintenanceSchedule` | Optional. Maintenance window for the database resource. |
| `maintenanceState` | `string` | Output only. Current state of maintenance on the database resource. |
| `maintenanceVersion` | `string` | Optional. Current Maintenance version of the database resource. Example: "MYSQL_8_0_41.R20250531.... |
| `upcomingMaintenance` | `UpcomingMaintenance` | Optional. Upcoming maintenance for the database resource. This field is populated once SLM genera... |

### `ResourceMaintenanceSchedule`

Maintenance window for the database resource. It specifies preferred time and day of the week and phase in some cases, when the maintenance can start. This is configured by the customer.

| Property | Type | Description |
|----------|------|-------------|
| `day` | `string` | Optional. Preferred day of the week for maintenance, e.g. MONDAY, TUESDAY, etc. |
| `phase` | `string` | Optional. Phase of the maintenance window. This is to capture order of maintenance. For example, ... |
| `time` | `TimeOfDay` | Optional. Preferred time to start the maintenance operation on the specified day. |

### `RetentionSettings`

| Property | Type | Description |
|----------|------|-------------|
| `durationBasedRetention` | `string` | Duration based retention period i.e. 172800 seconds (2 days) |
| `quantityBasedRetention` | `integer` |  |
| `retentionUnit` | `string` | The unit that 'retained_backups' represents. |
| `timeBasedRetention` | `string` |  |
| `timestampBasedRetentionTime` | `string` | Timestamp based retention period i.e. 2024-05-01T00:00:00Z |

### `SharedRegionalCertificateAuthority`

Shared regional certificate authority

| Property | Type | Description |
|----------|------|-------------|
| `managedServerCa` | `RegionalManagedCertificateAuthority` | CA certificate chains for redis managed server authentication. |
| `name` | `string` | Identifier. Unique name of the resource in this scope including project and location using the fo... |

### `StateInfo`

Represents additional information about the state of the cluster.

| Property | Type | Description |
|----------|------|-------------|
| `updateInfo` | `UpdateInfo` | Describes ongoing update on the cluster when cluster state is UPDATING. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `Tags`

Message type for storing tags. Tags provide a way to create annotations for resources, and in some cases conditionally allow or deny policies based on whether a resource has a specific tag.

| Property | Type | Description |
|----------|------|-------------|
| `tags` | `object` | The Tag key/value mappings. |

### `TimeOfDay`

Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and `google.protobuf.Timestamp`.

| Property | Type | Description |
|----------|------|-------------|
| `hours` | `integer` | Hours of a day in 24 hour format. Must be greater than or equal to 0 and typically must be less t... |
| `minutes` | `integer` | Minutes of an hour. Must be greater than or equal to 0 and less than or equal to 59. |
| `nanos` | `integer` | Fractions of seconds, in nanoseconds. Must be greater than or equal to 0 and less than or equal t... |
| `seconds` | `integer` | Seconds of a minute. Must be greater than or equal to 0 and typically must be less than or equal ... |

### `TlsCertificate`

TlsCertificate Resource

| Property | Type | Description |
|----------|------|-------------|
| `cert` | `string` | PEM representation. |
| `createTime` | `string` | Output only. The time when the certificate was created in [RFC 3339](https://tools.ietf.org/html/... |
| `expireTime` | `string` | Output only. The time when the certificate expires in [RFC 3339](https://tools.ietf.org/html/rfc3... |
| `serialNumber` | `string` | Serial number, as extracted from the certificate. |
| `sha1Fingerprint` | `string` | Sha1 Fingerprint of the certificate. |

### `TypedValue`

TypedValue represents the value of a metric type. It can either be a double, an int64, a string or a bool.

| Property | Type | Description |
|----------|------|-------------|
| `boolValue` | `boolean` | For boolean value |
| `doubleValue` | `number` | For double value |
| `int64Value` | `string` | For integer value |
| `stringValue` | `string` | For string value |

### `UpcomingMaintenance`

Upcoming maintenance for the database resource. This is generated by SLM once the upcoming maintenance schedule is published.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | Optional. The end time of the upcoming maintenance. |
| `startTime` | `string` | Optional. The start time of the upcoming maintenance. |

### `UpdateInfo`

Represents information about an updating cluster.

| Property | Type | Description |
|----------|------|-------------|
| `targetNodeType` | `string` | Target node type for redis cluster. |
| `targetReplicaCount` | `integer` | Target number of replica nodes per shard. |
| `targetShardCount` | `integer` | Target number of shards for redis cluster |

### `UpgradeInstanceRequest`

Request for UpgradeInstance.

| Property | Type | Description |
|----------|------|-------------|
| `redisVersion` | `string` | Required. Specifies the target version of Redis software to upgrade to. |

### `UserLabels`

Message type for storing user labels. User labels are used to tag App Engine resources, allowing users to search for resources matching a set of labels and to aggregate usage data by labels.

| Property | Type | Description |
|----------|------|-------------|
| `labels` | `object` |  |

### `WeeklyMaintenanceWindow`

Time window in which disruptive maintenance updates occur. Non-disruptive updates can occur inside or outside this window.

| Property | Type | Description |
|----------|------|-------------|
| `day` | `string` | Required. The day of week that maintenance updates occur. |
| `duration` | `string` | Output only. Duration of the maintenance window. The current window is fixed at 1 hour. |
| `startTime` | `TimeOfDay` | Required. Start time of the window in UTC time. |

### `ZoneDistributionConfig`

Zone distribution config for allocation of cluster resources.

| Property | Type | Description |
|----------|------|-------------|
| `mode` | `string` | Optional. The mode of zone distribution. Defaults to MULTI_ZONE, when not specified. |
| `zone` | `string` | Optional. When SINGLE ZONE distribution is selected, zone field would be used to allocate all res... |

