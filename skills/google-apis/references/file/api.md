# Cloud Filestore API - API Reference

**Version**: `v1` | **Methods**: 26 | **Schemas**: 49

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `file.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `file.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `file.projects.locations.backups.create` | POST | `v1/{+parent}/backups` | Creates a backup. |
| `file.projects.locations.backups.get` | GET | `v1/{+name}` | Gets the details of a specific backup. |
| `file.projects.locations.backups.list` | GET | `v1/{+parent}/backups` | Lists all backups in a project for either a specified location or for all locations. |
| `file.projects.locations.backups.delete` | DELETE | `v1/{+name}` | Deletes a backup. |
| `file.projects.locations.backups.patch` | PATCH | `v1/{+name}` | Updates the settings of a specific backup. |
| `file.projects.locations.instances.delete` | DELETE | `v1/{+name}` | Deletes an instance. |
| `file.projects.locations.instances.list` | GET | `v1/{+parent}/instances` | Lists all instances in a project for either a specified location or for all locations. |
| `file.projects.locations.instances.revert` | POST | `v1/{+name}:revert` | Revert an existing instance's file system to a specified snapshot. |
| `file.projects.locations.instances.restore` | POST | `v1/{+name}:restore` | Restores an existing instance's file share from a backup. The capacity of the instance needs to b... |
| `file.projects.locations.instances.resumeReplica` | POST | `v1/{+name}:resumeReplica` | Resume the standby instance (replica). WARNING: Any data written to the standby instance while pa... |
| `file.projects.locations.instances.get` | GET | `v1/{+name}` | Gets the details of a specific instance. |
| `file.projects.locations.instances.create` | POST | `v1/{+parent}/instances` | Creates an instance. When creating from a backup, the capacity of the new instance needs to be eq... |
| `file.projects.locations.instances.promoteReplica` | POST | `v1/{+name}:promoteReplica` | Promote the standby instance (replica). |
| `file.projects.locations.instances.patch` | PATCH | `v1/{+name}` | Updates the settings of a specific instance. |
| `file.projects.locations.instances.pauseReplica` | POST | `v1/{+name}:pauseReplica` | Pause the standby instance (replica). WARNING: This operation makes the standby instance's NFS fi... |
| `file.projects.locations.instances.snapshots.create` | POST | `v1/{+parent}/snapshots` | Creates a snapshot. |
| `file.projects.locations.instances.snapshots.list` | GET | `v1/{+parent}/snapshots` | Lists all snapshots in a project for either a specified location or for all locations. |
| `file.projects.locations.instances.snapshots.get` | GET | `v1/{+name}` | Gets the details of a specific snapshot. |
| `file.projects.locations.instances.snapshots.patch` | PATCH | `v1/{+name}` | Updates the settings of a specific snapshot. |
| `file.projects.locations.instances.snapshots.delete` | DELETE | `v1/{+name}` | Deletes a snapshot. |
| `file.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `file.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `file.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `file.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |

### `file.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await file.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `file.projects.locations.list`

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
const res = await file.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `file.projects.locations.backups.create`

**POST** `v1/{+parent}/backups`

Creates a backup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The backup's project and location, in the format `projects/{project_number}/locations/{location}`. In Files... |
| `backupId` | `string` | query | No | Required. The ID to use for the backup. The ID must be unique within the specified project and location. This value m... |

**Request body**: `Backup`

**Response**: `Operation`

```typescript
const res = await file.backups.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `file.projects.locations.backups.get`

**GET** `v1/{+name}`

Gets the details of a specific backup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The backup resource name, in the format `projects/{project_number}/locations/{location}/backups/{backup_id}`. |

**Response**: `Backup`

```typescript
const res = await file.backups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `file.projects.locations.backups.list`

**GET** `v1/{+parent}/backups`

Lists all backups in a project for either a specified location or for all locations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location for which to retrieve backup information, in the format `projects/{project_number}... |
| `filter` | `string` | query | No | List filter. |
| `orderBy` | `string` | query | No | Sort results. Supported values are "name", "name desc" or "" (unsorted). |
| `pageSize` | `integer` | query | No | The maximum number of items to return. |
| `pageToken` | `string` | query | No | The next_page_token value to use if there are additional results to retrieve for this list request. |

**Response**: `ListBackupsResponse`

```typescript
const res = await file.backups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `file.projects.locations.backups.delete`

**DELETE** `v1/{+name}`

Deletes a backup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The backup resource name, in the format `projects/{project_number}/locations/{location}/backups/{backup_id}` |

**Response**: `Operation`

```typescript
const res = await file.backups.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `file.projects.locations.backups.patch`

**PATCH** `v1/{+name}`

Updates the settings of a specific backup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The resource name of the backup, in the format `projects/{project_number}/locations/{location_id}/backup... |
| `updateMask` | `string` | query | No | Required. Mask of fields to update. At least one path must be supplied in this field. |

**Request body**: `Backup`

**Response**: `Operation`

```typescript
const res = await file.backups.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `file.projects.locations.instances.delete`

**DELETE** `v1/{+name}`

Deletes an instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The instance resource name, in the format `projects/{project_id}/locations/{location}/instances/{instance_id}` |
| `force` | `boolean` | query | No | If set to true, all snapshots of the instance will also be deleted. (Otherwise, the request will only work if the ins... |

**Response**: `Operation`

```typescript
const res = await file.instances.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `file.projects.locations.instances.list`

**GET** `v1/{+parent}/instances`

Lists all instances in a project for either a specified location or for all locations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location for which to retrieve instance information, in the format `projects/{project_id}/l... |
| `filter` | `string` | query | No | List filter. |
| `orderBy` | `string` | query | No | Sort results. Supported values are "name", "name desc" or "" (unsorted). |
| `pageSize` | `integer` | query | No | The maximum number of items to return. |
| `pageToken` | `string` | query | No | The next_page_token value to use if there are additional results to retrieve for this list request. |

**Response**: `ListInstancesResponse`

```typescript
const res = await file.instances.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `file.projects.locations.instances.revert`

**POST** `v1/{+name}:revert`

Revert an existing instance's file system to a specified snapshot.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the instance, in the format `projects/{project_id}/locations/{location_id}/instances/{... |

**Request body**: `RevertInstanceRequest`

**Response**: `Operation`

```typescript
const res = await file.instances.revert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `file.projects.locations.instances.restore`

**POST** `v1/{+name}:restore`

Restores an existing instance's file share from a backup. The capacity of the instance needs to be equal to or larger than the capacity of the backup (and also equal to or larger than the minimum capacity of the tier).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the instance, in the format `projects/{project_number}/locations/{location_id}/instanc... |

**Request body**: `RestoreInstanceRequest`

**Response**: `Operation`

```typescript
const res = await file.instances.restore({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `file.projects.locations.instances.resumeReplica`

**POST** `v1/{+name}:resumeReplica`

Resume the standby instance (replica). WARNING: Any data written to the standby instance while paused will be lost when the replica is resumed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the instance, in the format `projects/{project_id}/locations/{location_id}/instances/{... |

**Request body**: `ResumeReplicaRequest`

**Response**: `Operation`

```typescript
const res = await file.instances.resumeReplica({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `file.projects.locations.instances.get`

**GET** `v1/{+name}`

Gets the details of a specific instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The instance resource name, in the format `projects/{project_id}/locations/{location}/instances/{instance_i... |

**Response**: `Instance`

```typescript
const res = await file.instances.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `file.projects.locations.instances.create`

**POST** `v1/{+parent}/instances`

Creates an instance. When creating from a backup, the capacity of the new instance needs to be equal to or larger than the capacity of the backup (and also equal to or larger than the minimum capacity of the tier).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The instance's project and location, in the format `projects/{project_id}/locations/{location}`. In Filesto... |
| `instanceId` | `string` | query | No | Required. The name of the instance to create. The name must be unique for the specified project and location. |

**Request body**: `Instance`

**Response**: `Operation`

```typescript
const res = await file.instances.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `file.projects.locations.instances.promoteReplica`

**POST** `v1/{+name}:promoteReplica`

Promote the standby instance (replica).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the instance, in the format `projects/{project_id}/locations/{location_id}/instances/{... |

**Request body**: `PromoteReplicaRequest`

**Response**: `Operation`

```typescript
const res = await file.instances.promoteReplica({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `file.projects.locations.instances.patch`

**PATCH** `v1/{+name}`

Updates the settings of a specific instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The resource name of the instance, in the format `projects/{project}/locations/{location}/instances/{ins... |
| `updateMask` | `string` | query | No | Mask of fields to update. At least one path must be supplied in this field. The elements of the repeated paths field ... |

**Request body**: `Instance`

**Response**: `Operation`

```typescript
const res = await file.instances.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `file.projects.locations.instances.pauseReplica`

**POST** `v1/{+name}:pauseReplica`

Pause the standby instance (replica). WARNING: This operation makes the standby instance's NFS filesystem writable. Any data written to the standby instance while paused will be lost when the replica is resumed or promoted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the instance, in the format `projects/{project_id}/locations/{location_id}/instances/{... |

**Request body**: `PauseReplicaRequest`

**Response**: `Operation`

```typescript
const res = await file.instances.pauseReplica({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `file.projects.locations.instances.snapshots.create`

**POST** `v1/{+parent}/snapshots`

Creates a snapshot.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The Filestore Instance to create the snapshots of, in the format `projects/{project_id}/locations/{location... |
| `snapshotId` | `string` | query | No | Required. The ID to use for the snapshot. The ID must be unique within the specified instance. This value must start ... |

**Request body**: `Snapshot`

**Response**: `Operation`

```typescript
const res = await file.snapshots.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `file.projects.locations.instances.snapshots.list`

**GET** `v1/{+parent}/snapshots`

Lists all snapshots in a project for either a specified location or for all locations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The instance for which to retrieve snapshot information, in the format `projects/{project_id}/locations/{lo... |
| `filter` | `string` | query | No | List filter. |
| `orderBy` | `string` | query | No | Sort results. Supported values are "name", "name desc" or "" (unsorted). |
| `pageSize` | `integer` | query | No | The maximum number of items to return. |
| `pageToken` | `string` | query | No | The next_page_token value to use if there are additional results to retrieve for this list request. |
| `returnPartialSuccess` | `boolean` | query | No | Optional. If true, allow partial responses for multi-regional Aggregated List requests. |

**Response**: `ListSnapshotsResponse`

```typescript
const res = await file.snapshots.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `file.projects.locations.instances.snapshots.get`

**GET** `v1/{+name}`

Gets the details of a specific snapshot.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The snapshot resource name, in the format `projects/{project_id}/locations/{location}/instances/{instance_i... |

**Response**: `Snapshot`

```typescript
const res = await file.snapshots.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `file.projects.locations.instances.snapshots.patch`

**PATCH** `v1/{+name}`

Updates the settings of a specific snapshot.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The resource name of the snapshot, in the format `projects/{project_id}/locations/{location_id}/instance... |
| `updateMask` | `string` | query | No | Required. Mask of fields to update. At least one path must be supplied in this field. |

**Request body**: `Snapshot`

**Response**: `Operation`

```typescript
const res = await file.snapshots.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `file.projects.locations.instances.snapshots.delete`

**DELETE** `v1/{+name}`

Deletes a snapshot.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The snapshot resource name, in the format `projects/{project_id}/locations/{location}/instances/{instance_i... |

**Response**: `Operation`

```typescript
const res = await file.snapshots.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `file.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await file.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `file.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await file.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `file.projects.locations.operations.list`

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
const res = await file.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `file.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await file.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `Backup`

A Filestore backup.

| Property | Type | Description |
|----------|------|-------------|
| `capacityGb` | `string` | Output only. Capacity of the source file share when the backup was created. |
| `createTime` | `string` | Output only. The time when the backup was created. |
| `description` | `string` | A description of the backup with 2048 characters or less. Requests with longer descriptions will ... |
| `downloadBytes` | `string` | Output only. Amount of bytes that will be downloaded if the backup is restored. This may be diffe... |
| `fileSystemProtocol` | `string` | Output only. The file system protocol of the source Filestore instance that this backup is create... |
| `kmsKey` | `string` | Immutable. KMS key name used for data encryption. |
| `labels` | `object` | Resource labels to represent user provided metadata. |
| `name` | `string` | Output only. The resource name of the backup, in the format `projects/{project_number}/locations/... |
| `satisfiesPzi` | `boolean` | Output only. Reserved for future use. |
| `satisfiesPzs` | `boolean` | Output only. Reserved for future use. |
| `sourceFileShare` | `string` | Name of the file share in the source Filestore instance that the backup is created from. |
| `sourceInstance` | `string` | The resource name of the source Filestore instance, in the format `projects/{project_number}/loca... |
| `sourceInstanceTier` | `string` | Output only. The service tier of the source Filestore instance that this backup is created from. |
| `state` | `string` | Output only. The backup state. |
| `storageBytes` | `string` | Output only. The size of the storage used by the backup. As backups share storage, this number is... |
| `tags` | `object` | Optional. Input only. Immutable. Tag key-value pairs bound to this resource. Each key must be a n... |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `DailyCycle`

Time window specified for daily operations.

| Property | Type | Description |
|----------|------|-------------|
| `duration` | `string` | Output only. Duration of the time window, set by service producer. |
| `startTime` | `TimeOfDay` | Time within the day to start the operations. |

### `Date`

Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by ... |
| `month` | `integer` | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `year` | `integer` | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

### `DenyMaintenancePeriod`

DenyMaintenancePeriod definition. Maintenance is forbidden within the deny period. The start_date must be less than the end_date.

| Property | Type | Description |
|----------|------|-------------|
| `endDate` | `Date` | Deny period end date. This can be: * A full date, with non-zero year, month and day values. * A m... |
| `startDate` | `Date` | Deny period start date. This can be: * A full date, with non-zero year, month and day values. * A... |
| `time` | `TimeOfDay` | Time in UTC when the Blackout period starts on start_date and ends on end_date. This can be: * Fu... |

### `DirectoryServicesConfig`

Directory Services configuration for Kerberos-based authentication.

| Property | Type | Description |
|----------|------|-------------|
| `ldap` | `LdapConfig` | Configuration for LDAP servers. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `FileShareConfig`

File share configuration for the instance.

| Property | Type | Description |
|----------|------|-------------|
| `capacityGb` | `string` | File share capacity in gigabytes (GB). Filestore defines 1 GB as 1024^3 bytes. |
| `name` | `string` | Required. The name of the file share. Must use 1-16 characters for the basic service tier and 1-6... |
| `nfsExportOptions` | `array<NfsExportOptions>` | Nfs Export Options. There is a limit of 10 export options per file share. |
| `sourceBackup` | `string` | The resource name of the backup, in the format `projects/{project_number}/locations/{location_id}... |
| `sourceBackupdrBackup` | `string` | The resource name of the BackupDR backup, in the format `projects/{project_id}/locations/{locatio... |

### `FixedIOPS`

Fixed IOPS (input/output operations per second) parameters.

| Property | Type | Description |
|----------|------|-------------|
| `maxIops` | `string` | Required. Maximum IOPS. |

### `GoogleCloudSaasacceleratorManagementProvidersV1Instance`

Instance represents the interface for SLM services to actuate the state of control plane resources. Example Instance in JSON, where consumer-project-number=123456, producer-project-id=cloud-sql: ```json Instance: { "name": "projects/123456/locations/us-east1/instances/prod-instance", "create_time": { "seconds": 1526406431, }, "labels": { "env": "prod", "foo": "bar" }, "state": READY, "software_versions": { "software_update": "cloud-sql-09-28-2018", }, "maintenance_policy_names": { "UpdatePolicy": "projects/123456/locations/us-east1/maintenancePolicies/prod-update-policy", } "tenant_project_id": "cloud-sql-test-tenant", "producer_metadata": { "cloud-sql-tier": "basic", "cloud-sql-instance-size": "1G", }, "provisioned_resources": [ { "resource-type": "compute-instance", "resource-url": "https://www.googleapis.com/compute/v1/projects/cloud-sql/zones/us-east1-b/instances/vm-1", } ], "maintenance_schedules": { "csa_rollout": { "start_time": { "seconds": 1526406431, }, "end_time": { "seconds": 1535406431, }, }, "ncsa_rollout": { "start_time": { "seconds": 1526406431, }, "end_time": { "seconds": 1535406431, }, } }, "consumer_defined_name": "my-sql-instance1", } ``` LINT.IfChange

| Property | Type | Description |
|----------|------|-------------|
| `consumerDefinedName` | `string` | consumer_defined_name is the name of the instance set by the service consumers. Generally this is... |
| `consumerProjectNumber` | `string` | Optional. The consumer_project_number associated with this Apigee instance. This field is added s... |
| `createTime` | `string` | Output only. Timestamp when the resource was created. |
| `instanceType` | `string` | Optional. The instance_type of this instance of format: projects/{project_number}/locations/{loca... |
| `labels` | `object` | Optional. Resource labels to represent user provided metadata. Each label is a key-value pair, wh... |
| `maintenancePolicyNames` | `object` | Optional. The MaintenancePolicies that have been attached to the instance. The key must be of the... |
| `maintenanceSchedules` | `object` | The MaintenanceSchedule contains the scheduling information of published maintenance schedule wit... |
| `maintenanceSettings` | `GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings` | Optional. The MaintenanceSettings associated with instance. |
| `name` | `string` | Unique name of the resource. It uses the form: `projects/{project_number}/locations/{location_id}... |
| `notificationParameters` | `object` | Optional. notification_parameter are information that service producers may like to include that ... |
| `producerMetadata` | `object` | Output only. Custom string attributes used primarily to expose producer-specific information in m... |
| `provisionedResources` | `array<GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource>` | Output only. The list of data plane resources provisioned for this instance, e.g. compute VMs. Se... |
| `slmInstanceTemplate` | `string` | Link to the SLM instance template. Only populated when updating SLM instances via SSA's Actuation... |
| `sloMetadata` | `GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata` | Output only. SLO metadata for instance classification in the Standardized dataplane SLO platform.... |
| `softwareVersions` | `object` | Software versions that are used to deploy this instance. This can be mutated by rollout services. |
| `state` | `string` | Output only. Current lifecycle state of the resource (e.g. if it's being created or ready to use). |
| `tenantProjectId` | `string` | Output only. ID of the associated GCP tenant project. See go/get-instance-metadata. |
| `updateTime` | `string` | Output only. Timestamp when the resource was last modified. |

### `GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule`

Maintenance schedule which is exposed to customer and potentially end user, indicating published upcoming future maintenance schedule

| Property | Type | Description |
|----------|------|-------------|
| `canReschedule` | `boolean` | This field is deprecated, and will be always set to true since reschedule can happen multiple tim... |
| `endTime` | `string` | The scheduled end time for the maintenance. |
| `rolloutManagementPolicy` | `string` | The rollout management policy this maintenance schedule is associated with. When doing reschedule... |
| `scheduleDeadlineTime` | `string` | schedule_deadline_time is the time deadline any schedule start time cannot go beyond, including r... |
| `startTime` | `string` | The scheduled start time for the maintenance. |

### `GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings`

Maintenance settings associated with instance. Allows service producers and end users to assign settings that controls maintenance on this instance.

| Property | Type | Description |
|----------|------|-------------|
| `exclude` | `boolean` | Optional. Exclude instance from maintenance. When true, rollout service will not attempt maintena... |
| `isRollback` | `boolean` | Optional. If the update call is triggered from rollback, set the value as true. |
| `maintenancePolicies` | `object` | Optional. The MaintenancePolicies that have been attached to the instance. The key must be of the... |

### `GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata`

Node information for custom per-node SLO implementations. SSA does not support per-node SLO, but producers can populate per-node information in SloMetadata for custom precomputations. SSA Eligibility Exporter will emit per-node metric based on this information.

| Property | Type | Description |
|----------|------|-------------|
| `location` | `string` | The location of the node, if different from instance location. |
| `nodeId` | `string` | The id of the node. This should be equal to SaasInstanceNode.node_id. |
| `perSliEligibility` | `GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility` | If present, this will override eligibility for the node coming from instance or exclusions for sp... |

### `GoogleCloudSaasacceleratorManagementProvidersV1NotificationParameter`

Contains notification related data.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<string>` | Optional. Array of string values. e.g. instance's replica information. |

### `GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility`

PerSliSloEligibility is a mapping from an SLI name to eligibility.

| Property | Type | Description |
|----------|------|-------------|
| `eligibilities` | `object` | An entry in the eligibilities map specifies an eligibility for a particular SLI for the given ins... |

### `GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource`

Describes provisioned dataplane resources.

| Property | Type | Description |
|----------|------|-------------|
| `resourceType` | `string` | Type of the resource. This can be either a GCP resource or a custom one (e.g. another cloud provi... |
| `resourceUrl` | `string` | URL identifying the resource, e.g. "https://www.googleapis.com/compute/v1/projects/...)". |

### `GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility`

SloEligibility is a tuple containing eligibility value: true if an instance is eligible for SLO calculation or false if it should be excluded from all SLO-related calculations along with a user-defined reason.

| Property | Type | Description |
|----------|------|-------------|
| `eligible` | `boolean` | Whether an instance is eligible or ineligible. |
| `reason` | `string` | User-defined reason for the current value of instance eligibility. Usually, this can be directly ... |

### `GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata`

SloMetadata contains resources required for proper SLO classification of the instance.

| Property | Type | Description |
|----------|------|-------------|
| `nodes` | `array<GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata>` | Optional. List of nodes. Some producers need to use per-node metadata to calculate SLO. This fiel... |
| `perSliEligibility` | `GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility` | Optional. Multiple per-instance SLI eligibilities which apply for individual SLIs. |
| `tier` | `string` | Name of the SLO tier the Instance belongs to. This name will be expected to match the tiers speci... |

### `IOPSPerTB`

IOPS per TB. Filestore defines TB as 1024^4 bytes (TiB).

| Property | Type | Description |
|----------|------|-------------|
| `maxIopsPerTb` | `string` | Required. Maximum IOPS per TiB. |

### `Instance`

A Filestore instance.

| Property | Type | Description |
|----------|------|-------------|
| `capacityStepSizeGb` | `string` | Output only. The incremental increase or decrease in capacity, designated in some number of GB. |
| `createTime` | `string` | Output only. The time when the instance was created. |
| `customPerformanceSupported` | `boolean` | Output only. Indicates whether this instance supports configuring its performance. If true, the u... |
| `deletionProtectionEnabled` | `boolean` | Optional. Indicates whether the instance is protected against deletion. |
| `deletionProtectionReason` | `string` | Optional. The reason for enabling deletion protection. |
| `description` | `string` | The description of the instance (2048 characters or less). |
| `directoryServices` | `DirectoryServicesConfig` | Optional. Directory Services configuration for Kerberos-based authentication. Should only be set ... |
| `etag` | `string` | Server-specified ETag for the instance resource to prevent simultaneous updates from overwriting ... |
| `fileShares` | `array<FileShareConfig>` | File system shares on the instance. For this version, only a single file share is supported. |
| `kmsKeyName` | `string` | KMS key name used for data encryption. |
| `labels` | `object` | Resource labels to represent user provided metadata. |
| `maxCapacityGb` | `string` | Output only. The maximum capacity of the instance in GB. |
| `minCapacityGb` | `string` | Output only. The minimum capacity of the instance in GB. |
| `name` | `string` | Output only. The resource name of the instance, in the format `projects/{project}/locations/{loca... |
| `networks` | `array<NetworkConfig>` | VPC networks to which the instance is connected. For this version, only a single network is suppo... |
| `performanceConfig` | `PerformanceConfig` | Optional. Used to configure performance. |
| `performanceLimits` | `PerformanceLimits` | Output only. Used for getting performance limits. |
| `protocol` | `string` | Immutable. The protocol indicates the access protocol for all shares in the instance. This field ... |
| `replication` | `Replication` | Optional. Replication configuration. |
| `satisfiesPzi` | `boolean` | Output only. Reserved for future use. |
| `satisfiesPzs` | `boolean` | Output only. Reserved for future use. |
| `state` | `string` | Output only. The instance state. |
| `statusMessage` | `string` | Output only. Additional information about the instance state, if available. |
| `suspensionReasons` | `array<string>` | Output only. Field indicates all the reasons the instance is in "SUSPENDED" state. |
| `tags` | `object` | Optional. Input only. Immutable. Tag key-value pairs bound to this resource. Each key must be a n... |
| `tier` | `string` | The service tier of the instance. |

### `LdapConfig`

LdapConfig contains all the parameters for connecting to LDAP servers.

| Property | Type | Description |
|----------|------|-------------|
| `domain` | `string` | Required. The LDAP domain name in the format of `my-domain.com`. |
| `groupsOu` | `string` | Optional. The groups Organizational Unit (OU) is optional. This parameter is a hint to allow fast... |
| `servers` | `array<string>` | Required. The servers names are used for specifying the LDAP servers names. The LDAP servers name... |
| `usersOu` | `string` | Optional. The users Organizational Unit (OU) is optional. This parameter is a hint to allow faste... |

### `ListBackupsResponse`

ListBackupsResponse is the result of ListBackupsRequest.

| Property | Type | Description |
|----------|------|-------------|
| `backups` | `array<Backup>` | A list of backups in the project for the specified location. If the `{location}` value in the req... |
| `nextPageToken` | `string` | The token you can use to retrieve the next page of results. Not returned if there are no more res... |
| `unreachable` | `array<string>` | Unordered list. Locations that could not be reached. |

### `ListInstancesResponse`

ListInstancesResponse is the result of ListInstancesRequest.

| Property | Type | Description |
|----------|------|-------------|
| `instances` | `array<Instance>` | A list of instances in the project for the specified location. If the `{location}` value in the r... |
| `nextPageToken` | `string` | The token you can use to retrieve the next page of results. Not returned if there are no more res... |
| `unreachable` | `array<string>` | Unordered list. Locations that could not be reached. |

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

### `ListSnapshotsResponse`

ListSnapshotsResponse is the result of ListSnapshotsRequest.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The token you can use to retrieve the next page of results. Not returned if there are no more res... |
| `snapshots` | `array<Snapshot>` | A list of snapshots in the project for the specified instance. |
| `unreachable` | `array<string>` | Unordered list. Locations that could not be reached. |

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `MaintenancePolicy`

Defines policies to service maintenance events.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time when the resource was created. |
| `description` | `string` | Optional. Description of what this policy is for. Create/Update methods return INVALID_ARGUMENT i... |
| `labels` | `object` | Optional. Resource labels to represent user provided metadata. Each label is a key-value pair, wh... |
| `name` | `string` | Required. MaintenancePolicy name using the form: `projects/{project_id}/locations/{location_id}/m... |
| `state` | `string` | Optional. The state of the policy. |
| `updatePolicy` | `UpdatePolicy` | Maintenance policy applicable to instance update. |
| `updateTime` | `string` | Output only. The time when the resource was updated. |

### `MaintenanceWindow`

MaintenanceWindow definition.

| Property | Type | Description |
|----------|------|-------------|
| `dailyCycle` | `DailyCycle` | Daily cycle. |
| `weeklyCycle` | `WeeklyCycle` | Weekly cycle. |

### `NetworkConfig`

Network configuration for the instance.

| Property | Type | Description |
|----------|------|-------------|
| `connectMode` | `string` | The network connect mode of the Filestore instance. If not provided, the connect mode defaults to... |
| `ipAddresses` | `array<string>` | Output only. IPv4 addresses in the format `{octet1}.{octet2}.{octet3}.{octet4}` or IPv6 addresses... |
| `modes` | `array<string>` | Internet protocol versions for which the instance has IP addresses assigned. |
| `network` | `string` | The name of the Google Compute Engine [VPC network](https://cloud.google.com/vpc/docs/vpc) to whi... |
| `pscConfig` | `PscConfig` | Optional. Private Service Connect configuration. Should only be set when connect_mode is PRIVATE_... |
| `reservedIpRange` | `string` | Optional, reserved_ip_range can have one of the following two types of values. * CIDR range value... |

### `NfsExportOptions`

NFS export options specifications.

| Property | Type | Description |
|----------|------|-------------|
| `accessMode` | `string` | Either READ_ONLY, for allowing only read requests on the exported directory, or READ_WRITE, for a... |
| `anonGid` | `string` | An integer representing the anonymous group id with a default value of 65534. Anon_gid may only b... |
| `anonUid` | `string` | An integer representing the anonymous user id with a default value of 65534. Anon_uid may only be... |
| `ipRanges` | `array<string>` | List of either an IPv4 addresses in the format `{octet1}.{octet2}.{octet3}.{octet4}` or CIDR rang... |
| `network` | `string` | Optional. The source VPC network for ip_ranges. Required for instances using Private Service Conn... |
| `squashMode` | `string` | Either NO_ROOT_SQUASH, for allowing root access on the exported directory, or ROOT_SQUASH, for no... |

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
| `cancelRequested` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. Operations ... |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `statusDetail` | `string` | Output only. Human-readable status of the operation, if any. |
| `target` | `string` | Output only. Server-defined resource path for the target of the operation. |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `PauseReplicaRequest`

PauseReplicaRequest pauses a Filestore standby instance (replica).

### `PerformanceConfig`

Used for setting the performance configuration. If the user doesn't specify PerformanceConfig, automatically provision the default performance settings as described in https://cloud.google.com/filestore/docs/performance. Larger instances will be linearly set to more IOPS. If the instance's capacity is increased or decreased, its performance will be automatically adjusted upwards or downwards accordingly (respectively).

| Property | Type | Description |
|----------|------|-------------|
| `fixedIops` | `FixedIOPS` | Choose a fixed provisioned IOPS value for the instance, which will remain constant regardless of ... |
| `iopsPerTb` | `IOPSPerTB` | Provision IOPS dynamically based on the capacity of the instance. Provisioned IOPS will be calcul... |

### `PerformanceLimits`

The enforced performance limits, calculated from the instance's performance configuration.

| Property | Type | Description |
|----------|------|-------------|
| `maxIops` | `string` | Output only. The maximum IOPS. |
| `maxReadIops` | `string` | Output only. The maximum read IOPS. |
| `maxReadThroughputBps` | `string` | Output only. The maximum read throughput in bytes per second. |
| `maxWriteIops` | `string` | Output only. The maximum write IOPS. |
| `maxWriteThroughputBps` | `string` | Output only. The maximum write throughput in bytes per second. |

### `PromoteReplicaRequest`

PromoteReplicaRequest promotes a Filestore standby instance (replica).

| Property | Type | Description |
|----------|------|-------------|
| `peerInstance` | `string` | Optional. The resource name of the peer instance to promote, in the format `projects/{project_id}... |

### `PscConfig`

Private Service Connect configuration.

| Property | Type | Description |
|----------|------|-------------|
| `endpointProject` | `string` | Optional. Consumer service project in which the Private Service Connect endpoint would be set up.... |

### `ReplicaConfig`

Replica configuration for the instance.

| Property | Type | Description |
|----------|------|-------------|
| `lastActiveSyncTime` | `string` | Output only. The timestamp of the latest replication snapshot taken on the active instance and is... |
| `peerInstance` | `string` | Optional. The name of the source instance for the replica, in the format `projects/{project}/loca... |
| `state` | `string` | Output only. The replica state. |
| `stateReasons` | `array<string>` | Output only. Additional information about the replication state, if available. |
| `stateUpdateTime` | `string` | Output only. The time when the replica state was updated. |

### `Replication`

Optional. The configuration used to replicate an instance.

| Property | Type | Description |
|----------|------|-------------|
| `replicas` | `array<ReplicaConfig>` | Optional. Replication configuration for the replica instance associated with this instance. Only ... |
| `role` | `string` | Optional. The replication role. When creating a new replica, this field must be set to `STANDBY`. |

### `RestoreInstanceRequest`

RestoreInstanceRequest restores an existing instance's file share from a backup.

| Property | Type | Description |
|----------|------|-------------|
| `fileShare` | `string` | Required. Name of the file share in the Filestore instance that the backup is being restored to. |
| `sourceBackup` | `string` | The resource name of the backup, in the format `projects/{project_number}/locations/{location_id}... |

### `ResumeReplicaRequest`

ResumeReplicaRequest resumes a Filestore standby instance (replica).

### `RevertInstanceRequest`

RevertInstanceRequest reverts the given instance's file share to the specified snapshot.

| Property | Type | Description |
|----------|------|-------------|
| `targetSnapshotId` | `string` | Required. The snapshot resource ID, in the format 'my-snapshot', where the specified ID is the {s... |

### `Schedule`

Configure the schedule.

| Property | Type | Description |
|----------|------|-------------|
| `day` | `string` | Allows to define schedule that runs specified day of the week. |
| `duration` | `string` | Output only. Duration of the time window, set by service producer. |
| `startTime` | `TimeOfDay` | Time within the window to start the operations. |

### `Snapshot`

A Filestore snapshot.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time when the snapshot was created. |
| `description` | `string` | A description of the snapshot with 2048 characters or less. Requests with longer descriptions wil... |
| `filesystemUsedBytes` | `string` | Output only. The amount of bytes needed to allocate a full copy of the snapshot content |
| `labels` | `object` | Resource labels to represent user provided metadata. |
| `name` | `string` | Output only. The resource name of the snapshot, in the format `projects/{project_id}/locations/{l... |
| `state` | `string` | Output only. The snapshot state. |
| `tags` | `object` | Optional. Input only. Immutable. Tag key-value pairs bound to this resource. Each key must be a n... |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `TimeOfDay`

Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and `google.protobuf.Timestamp`.

| Property | Type | Description |
|----------|------|-------------|
| `hours` | `integer` | Hours of a day in 24 hour format. Must be greater than or equal to 0 and typically must be less t... |
| `minutes` | `integer` | Minutes of an hour. Must be greater than or equal to 0 and less than or equal to 59. |
| `nanos` | `integer` | Fractions of seconds, in nanoseconds. Must be greater than or equal to 0 and less than or equal t... |
| `seconds` | `integer` | Seconds of a minute. Must be greater than or equal to 0 and typically must be less than or equal ... |

### `UpdatePolicy`

Maintenance policy applicable to instance updates.

| Property | Type | Description |
|----------|------|-------------|
| `channel` | `string` | Optional. Relative scheduling channel applied to resource. |
| `denyMaintenancePeriods` | `array<DenyMaintenancePeriod>` | Deny Maintenance Period that is applied to resource to indicate when maintenance is forbidden. Th... |
| `window` | `MaintenanceWindow` | Optional. Maintenance window that is applied to resources covered by this policy. |

### `WeeklyCycle`

Time window specified for weekly operations.

| Property | Type | Description |
|----------|------|-------------|
| `schedule` | `array<Schedule>` | User can specify multiple windows in a week. Minimum of 1 window. |

