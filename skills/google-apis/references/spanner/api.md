# Cloud Spanner API - API Reference

**Version**: `v1` | **Methods**: 99 | **Schemas**: 180

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `spanner.scans.list` | GET | `v1/{+parent}` | Return available scans given a Database-specific resource name. |
| `spanner.projects.instanceConfigs.list` | GET | `v1/{+parent}/instanceConfigs` | Lists the supported instance configurations for a given project. Returns both Google-managed conf... |
| `spanner.projects.instanceConfigs.get` | GET | `v1/{+name}` | Gets information about a particular instance configuration. |
| `spanner.projects.instanceConfigs.create` | POST | `v1/{+parent}/instanceConfigs` | Creates an instance configuration and begins preparing it to be used. The returned long-running o... |
| `spanner.projects.instanceConfigs.patch` | PATCH | `v1/{+name}` | Updates an instance configuration. The returned long-running operation can be used to track the p... |
| `spanner.projects.instanceConfigs.delete` | DELETE | `v1/{+name}` | Deletes the instance configuration. Deletion is only allowed when no instances are using the conf... |
| `spanner.projects.instanceConfigs.operations.list` | GET | `v1/{+name}` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `spanner.projects.instanceConfigs.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `spanner.projects.instanceConfigs.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `spanner.projects.instanceConfigs.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `spanner.projects.instanceConfigs.ssdCaches.operations.list` | GET | `v1/{+name}` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `spanner.projects.instanceConfigs.ssdCaches.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `spanner.projects.instanceConfigs.ssdCaches.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `spanner.projects.instanceConfigs.ssdCaches.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `spanner.projects.instanceConfigOperations.list` | GET | `v1/{+parent}/instanceConfigOperations` | Lists the user-managed instance configuration long-running operations in the given project. An in... |
| `spanner.projects.instances.list` | GET | `v1/{+parent}/instances` | Lists all instances in the given project. |
| `spanner.projects.instances.get` | GET | `v1/{+name}` | Gets information about a particular instance. |
| `spanner.projects.instances.create` | POST | `v1/{+parent}/instances` | Creates an instance and begins preparing it to begin serving. The returned long-running operation... |
| `spanner.projects.instances.patch` | PATCH | `v1/{+name}` | Updates an instance, and begins allocating or releasing resources as requested. The returned long... |
| `spanner.projects.instances.delete` | DELETE | `v1/{+name}` | Deletes an instance. Immediately upon completion of the request: * Billing ceases for all of the ... |
| `spanner.projects.instances.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on an instance resource. Replaces any existing policy. Authorizati... |
| `spanner.projects.instances.getIamPolicy` | POST | `v1/{+resource}:getIamPolicy` | Gets the access control policy for an instance resource. Returns an empty policy if an instance e... |
| `spanner.projects.instances.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that the caller has on the specified instance resource. Attempting this RPC o... |
| `spanner.projects.instances.move` | POST | `v1/{+name}:move` | Moves an instance to the target instance configuration. You can use the returned long-running ope... |
| `spanner.projects.instances.databases.getScans` | GET | `v1/{+name}/scans` | Request a specific scan with Database-specific data for Cloud Key Visualizer. |
| `spanner.projects.instances.databases.list` | GET | `v1/{+parent}/databases` | Lists Cloud Spanner databases. |
| `spanner.projects.instances.databases.create` | POST | `v1/{+parent}/databases` | Creates a new Spanner database and starts to prepare it for serving. The returned long-running op... |
| `spanner.projects.instances.databases.get` | GET | `v1/{+name}` | Gets the state of a Cloud Spanner database. |
| `spanner.projects.instances.databases.patch` | PATCH | `v1/{+name}` | Updates a Cloud Spanner database. The returned long-running operation can be used to track the pr... |
| `spanner.projects.instances.databases.updateDdl` | PATCH | `v1/{+database}/ddl` | Updates the schema of a Cloud Spanner database by creating/altering/dropping tables, columns, ind... |
| `spanner.projects.instances.databases.dropDatabase` | DELETE | `v1/{+database}` | Drops (aka deletes) a Cloud Spanner database. Completed backups for the database will be retained... |
| `spanner.projects.instances.databases.getDdl` | GET | `v1/{+database}/ddl` | Returns the schema of a Cloud Spanner database as a list of formatted DDL statements. This method... |
| `spanner.projects.instances.databases.changequorum` | POST | `v1/{+name}:changequorum` | `ChangeQuorum` is strictly restricted to databases that use dual-region instance configurations. ... |
| `spanner.projects.instances.databases.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on a database or backup resource. Replaces any existing policy. Au... |
| `spanner.projects.instances.databases.getIamPolicy` | POST | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a database or backup resource. Returns an empty policy if a da... |
| `spanner.projects.instances.databases.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that the caller has on the specified database or backup resource. Attempting ... |
| `spanner.projects.instances.databases.restore` | POST | `v1/{+parent}/databases:restore` | Create a new database by restoring from a completed backup. The new database must be in the same ... |
| `spanner.projects.instances.databases.addSplitPoints` | POST | `v1/{+database}:addSplitPoints` | Adds split points to specified tables and indexes of a database. |
| `spanner.projects.instances.databases.operations.list` | GET | `v1/{+name}` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `spanner.projects.instances.databases.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `spanner.projects.instances.databases.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `spanner.projects.instances.databases.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `spanner.projects.instances.databases.sessions.adapter` | POST | `v1/{+parent}/sessions:adapter` | Creates a new session to be used for requests made by the adapter. A session identifies a specifi... |
| `spanner.projects.instances.databases.sessions.adaptMessage` | POST | `v1/{+name}:adaptMessage` | Handles a single message from the client and returns the result as a stream. The server will inte... |
| `spanner.projects.instances.databases.sessions.create` | POST | `v1/{+database}/sessions` | Creates a new session. A session can be used to perform transactions that read and/or modify data... |
| `spanner.projects.instances.databases.sessions.batchCreate` | POST | `v1/{+database}/sessions:batchCreate` | Creates multiple new sessions. This API can be used to initialize a session cache on the clients.... |
| `spanner.projects.instances.databases.sessions.get` | GET | `v1/{+name}` | Gets a session. Returns `NOT_FOUND` if the session doesn't exist. This is mainly useful for deter... |
| `spanner.projects.instances.databases.sessions.list` | GET | `v1/{+database}/sessions` | Lists all sessions in a given database. |
| `spanner.projects.instances.databases.sessions.delete` | DELETE | `v1/{+name}` | Ends a session, releasing server resources associated with it. This asynchronously triggers the c... |
| `spanner.projects.instances.databases.sessions.executeSql` | POST | `v1/{+session}:executeSql` | Executes an SQL statement, returning all results in a single reply. This method can't be used to ... |
| `spanner.projects.instances.databases.sessions.executeStreamingSql` | POST | `v1/{+session}:executeStreamingSql` | Like ExecuteSql, except returns the result set as a stream. Unlike ExecuteSql, there is no limit ... |
| `spanner.projects.instances.databases.sessions.executeBatchDml` | POST | `v1/{+session}:executeBatchDml` | Executes a batch of SQL DML statements. This method allows many statements to be run with lower l... |
| `spanner.projects.instances.databases.sessions.read` | POST | `v1/{+session}:read` | Reads rows from the database using key lookups and scans, as a simple key/value style alternative... |
| `spanner.projects.instances.databases.sessions.streamingRead` | POST | `v1/{+session}:streamingRead` | Like Read, except returns the result set as a stream. Unlike Read, there is no limit on the size ... |
| `spanner.projects.instances.databases.sessions.beginTransaction` | POST | `v1/{+session}:beginTransaction` | Begins a new transaction. This step can often be skipped: Read, ExecuteSql and Commit can begin a... |
| `spanner.projects.instances.databases.sessions.commit` | POST | `v1/{+session}:commit` | Commits a transaction. The request includes the mutations to be applied to rows in the database. ... |
| `spanner.projects.instances.databases.sessions.rollback` | POST | `v1/{+session}:rollback` | Rolls back a transaction, releasing any locks it holds. It's a good idea to call this for any tra... |
| `spanner.projects.instances.databases.sessions.partitionQuery` | POST | `v1/{+session}:partitionQuery` | Creates a set of partition tokens that can be used to execute a query operation in parallel. Each... |
| `spanner.projects.instances.databases.sessions.partitionRead` | POST | `v1/{+session}:partitionRead` | Creates a set of partition tokens that can be used to execute a read operation in parallel. Each ... |
| `spanner.projects.instances.databases.sessions.batchWrite` | POST | `v1/{+session}:batchWrite` | Batches the supplied mutation groups in a collection of efficient transactions. All mutations in ... |
| `spanner.projects.instances.databases.backupSchedules.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on a database or backup resource. Replaces any existing policy. Au... |
| `spanner.projects.instances.databases.backupSchedules.getIamPolicy` | POST | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a database or backup resource. Returns an empty policy if a da... |
| `spanner.projects.instances.databases.backupSchedules.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that the caller has on the specified database or backup resource. Attempting ... |
| `spanner.projects.instances.databases.backupSchedules.create` | POST | `v1/{+parent}/backupSchedules` | Creates a new backup schedule. |
| `spanner.projects.instances.databases.backupSchedules.get` | GET | `v1/{+name}` | Gets backup schedule for the input schedule name. |
| `spanner.projects.instances.databases.backupSchedules.patch` | PATCH | `v1/{+name}` | Updates a backup schedule. |
| `spanner.projects.instances.databases.backupSchedules.delete` | DELETE | `v1/{+name}` | Deletes a backup schedule. |
| `spanner.projects.instances.databases.backupSchedules.list` | GET | `v1/{+parent}/backupSchedules` | Lists all the backup schedules for the database. |
| `spanner.projects.instances.databases.databaseRoles.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that the caller has on the specified database or backup resource. Attempting ... |
| `spanner.projects.instances.databases.databaseRoles.list` | GET | `v1/{+parent}/databaseRoles` | Lists Cloud Spanner database roles. |
| `spanner.projects.instances.operations.list` | GET | `v1/{+name}` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `spanner.projects.instances.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `spanner.projects.instances.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `spanner.projects.instances.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `spanner.projects.instances.instancePartitions.list` | GET | `v1/{+parent}/instancePartitions` | Lists all instance partitions for the given instance. |
| `spanner.projects.instances.instancePartitions.get` | GET | `v1/{+name}` | Gets information about a particular instance partition. |
| `spanner.projects.instances.instancePartitions.create` | POST | `v1/{+parent}/instancePartitions` | Creates an instance partition and begins preparing it to be used. The returned long-running opera... |
| `spanner.projects.instances.instancePartitions.delete` | DELETE | `v1/{+name}` | Deletes an existing instance partition. Requires that the instance partition is not used by any d... |
| `spanner.projects.instances.instancePartitions.patch` | PATCH | `v1/{+name}` | Updates an instance partition, and begins allocating or releasing resources as requested. The ret... |
| `spanner.projects.instances.instancePartitions.operations.list` | GET | `v1/{+name}` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `spanner.projects.instances.instancePartitions.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `spanner.projects.instances.instancePartitions.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `spanner.projects.instances.instancePartitions.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `spanner.projects.instances.instancePartitionOperations.list` | GET | `v1/{+parent}/instancePartitionOperations` | Lists instance partition long-running operations in the given instance. An instance partition ope... |
| `spanner.projects.instances.backups.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on a database or backup resource. Replaces any existing policy. Au... |
| `spanner.projects.instances.backups.getIamPolicy` | POST | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a database or backup resource. Returns an empty policy if a da... |
| `spanner.projects.instances.backups.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that the caller has on the specified database or backup resource. Attempting ... |
| `spanner.projects.instances.backups.create` | POST | `v1/{+parent}/backups` | Starts creating a new Cloud Spanner Backup. The returned backup long-running operation will have ... |
| `spanner.projects.instances.backups.copy` | POST | `v1/{+parent}/backups:copy` | Starts copying a Cloud Spanner Backup. The returned backup long-running operation will have a nam... |
| `spanner.projects.instances.backups.get` | GET | `v1/{+name}` | Gets metadata on a pending or completed Backup. |
| `spanner.projects.instances.backups.patch` | PATCH | `v1/{+name}` | Updates a pending or completed Backup. |
| `spanner.projects.instances.backups.delete` | DELETE | `v1/{+name}` | Deletes a pending or completed Backup. |
| `spanner.projects.instances.backups.list` | GET | `v1/{+parent}/backups` | Lists completed and pending backups. Backups returned are ordered by `create_time` in descending ... |
| `spanner.projects.instances.backups.operations.list` | GET | `v1/{+name}` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `spanner.projects.instances.backups.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `spanner.projects.instances.backups.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `spanner.projects.instances.backups.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `spanner.projects.instances.databaseOperations.list` | GET | `v1/{+parent}/databaseOperations` | Lists database longrunning-operations. A database operation has a name of the form `projects//ins... |
| `spanner.projects.instances.backupOperations.list` | GET | `v1/{+parent}/backupOperations` | Lists the backup long-running operations in the given instance. A backup operation has a name of ... |

### `spanner.scans.list`

**GET** `v1/{+parent}`

Return available scans given a Database-specific resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The unique name of the parent resource, specific to the Database service implementing this interface. |
| `filter` | `string` | query | No | A filter expression to restrict the results based on information present in the available Scan collection. The filter... |
| `pageSize` | `integer` | query | No | The maximum number of items to return. |
| `pageToken` | `string` | query | No | The next_page_token value returned from a previous List request, if any. |
| `view` | `string` | query | No | Specifies which parts of the Scan should be returned in the response. Note, only the SUMMARY view (the default) is cu... |

**Response**: `ListScansResponse`

```typescript
const res = await spanner.scans.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.data`

---

### `spanner.projects.instanceConfigs.list`

**GET** `v1/{+parent}/instanceConfigs`

Lists the supported instance configurations for a given project. Returns both Google-managed configurations and user-managed configurations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project for which a list of supported instance configurations is requested. Values are of t... |
| `pageSize` | `integer` | query | No | Number of instance configurations to be returned in the response. If 0 or less, defaults to the server's maximum allo... |
| `pageToken` | `string` | query | No | If non-empty, `page_token` should contain a next_page_token from a previous ListInstanceConfigsResponse. |

**Response**: `ListInstanceConfigsResponse`

```typescript
const res = await spanner.instanceConfigs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instanceConfigs.get`

**GET** `v1/{+name}`

Gets information about a particular instance configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the requested instance configuration. Values are of the form `projects//instanceConfigs/`. |

**Response**: `InstanceConfig`

```typescript
const res = await spanner.instanceConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instanceConfigs.create`

**POST** `v1/{+parent}/instanceConfigs`

Creates an instance configuration and begins preparing it to be used. The returned long-running operation can be used to track the progress of preparing the new instance configuration. The instance configuration name is assigned by the caller. If the named instance configuration already exists, `CreateInstanceConfig` returns `ALREADY_EXISTS`. Immediately after the request returns: * The instance configuration is readable via the API, with all requested attributes. The instance configuration's reconciling field is set to true. Its state is `CREATING`. While the operation is pending: * Cancelling the operation renders the instance configuration immediately unreadable via the API. * Except for deleting the creating resource, all other attempts to modify the instance configuration are rejected. Upon completion of the returned operation: * Instances can be created using the instance configuration. * The instance configuration's reconciling field becomes false. Its state becomes `READY`. The returned long-running operation will have a name of the format `/operations/` and can be used to track creation of the instance configuration. The metadata field type is CreateInstanceConfigMetadata. The response field type is InstanceConfig, if successful. Authorization requires `spanner.instanceConfigs.create` permission on the resource parent.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project in which to create the instance configuration. Values are of the form `projects/`. |

**Request body**: `CreateInstanceConfigRequest`

**Response**: `Operation`

```typescript
const res = await spanner.instanceConfigs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instanceConfigs.patch`

**PATCH** `v1/{+name}`

Updates an instance configuration. The returned long-running operation can be used to track the progress of updating the instance. If the named instance configuration does not exist, returns `NOT_FOUND`. Only user-managed configurations can be updated. Immediately after the request returns: * The instance configuration's reconciling field is set to true. While the operation is pending: * Cancelling the operation sets its metadata's cancel_time. The operation is guaranteed to succeed at undoing all changes, after which point it terminates with a `CANCELLED` status. * All other attempts to modify the instance configuration are rejected. * Reading the instance configuration via the API continues to give the pre-request values. Upon completion of the returned operation: * Creating instances using the instance configuration uses the new values. * The new values of the instance configuration are readable via the API. * The instance configuration's reconciling field becomes false. The returned long-running operation will have a name of the format `/operations/` and can be used to track the instance configuration modification. The metadata field type is UpdateInstanceConfigMetadata. The response field type is InstanceConfig, if successful. Authorization requires `spanner.instanceConfigs.update` permission on the resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | A unique identifier for the instance configuration. Values are of the form `projects//instanceConfigs/a-z*`. User ins... |

**Request body**: `UpdateInstanceConfigRequest`

**Response**: `Operation`

```typescript
const res = await spanner.instanceConfigs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instanceConfigs.delete`

**DELETE** `v1/{+name}`

Deletes the instance configuration. Deletion is only allowed when no instances are using the configuration. If any instances are using the configuration, returns `FAILED_PRECONDITION`. Only user-managed configurations can be deleted. Authorization requires `spanner.instanceConfigs.delete` permission on the resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the instance configuration to be deleted. Values are of the form `projects//instanceConfigs/` |
| `etag` | `string` | query | No | Used for optimistic concurrency control as a way to help prevent simultaneous deletes of an instance configuration fr... |
| `validateOnly` | `boolean` | query | No | An option to validate, but not actually execute, a request, and provide the same response. |

**Response**: `Empty`

```typescript
const res = await spanner.instanceConfigs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instanceConfigs.operations.list`

**GET** `v1/{+name}`

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
const res = await spanner.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instanceConfigs.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await spanner.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instanceConfigs.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await spanner.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instanceConfigs.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Response**: `Empty`

```typescript
const res = await spanner.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instanceConfigs.ssdCaches.operations.list`

**GET** `v1/{+name}`

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
const res = await spanner.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instanceConfigs.ssdCaches.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await spanner.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instanceConfigs.ssdCaches.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await spanner.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instanceConfigs.ssdCaches.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Response**: `Empty`

```typescript
const res = await spanner.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instanceConfigOperations.list`

**GET** `v1/{+parent}/instanceConfigOperations`

Lists the user-managed instance configuration long-running operations in the given project. An instance configuration operation has a name of the form `projects//instanceConfigs//operations/`. The long-running operation metadata field type `metadata.type_url` describes the type of the metadata. Operations returned include those that have completed/failed/canceled within the last 7 days, and pending operations. Operations returned are ordered by `operation.metadata.value.start_time` in descending order starting from the most recently started operation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project of the instance configuration operations. Values are of the form `projects/`. |
| `filter` | `string` | query | No | An expression that filters the list of returned operations. A filter expression consists of a field name, a compariso... |
| `pageSize` | `integer` | query | No | Number of operations to be returned in the response. If 0 or less, defaults to the server's maximum allowed page size. |
| `pageToken` | `string` | query | No | If non-empty, `page_token` should contain a next_page_token from a previous ListInstanceConfigOperationsResponse to t... |

**Response**: `ListInstanceConfigOperationsResponse`

```typescript
const res = await spanner.instanceConfigOperations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.list`

**GET** `v1/{+parent}/instances`

Lists all instances in the given project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project for which a list of instances is requested. Values are of the form `projects/`. |
| `filter` | `string` | query | No | An expression for filtering the results of the request. Filter rules are case insensitive. The fields eligible for fi... |
| `instanceDeadline` | `string` | query | No | Deadline used while retrieving metadata for instances. Instances whose metadata cannot be retrieved within this deadl... |
| `pageSize` | `integer` | query | No | Number of instances to be returned in the response. If 0 or less, defaults to the server's maximum allowed page size. |
| `pageToken` | `string` | query | No | If non-empty, `page_token` should contain a next_page_token from a previous ListInstancesResponse. |

**Response**: `ListInstancesResponse`

```typescript
const res = await spanner.instances.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.get`

**GET** `v1/{+name}`

Gets information about a particular instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the requested instance. Values are of the form `projects//instances/`. |
| `fieldMask` | `string` | query | No | If field_mask is present, specifies the subset of Instance fields that should be returned. If absent, all Instance fi... |

**Response**: `Instance`

```typescript
const res = await spanner.instances.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.create`

**POST** `v1/{+parent}/instances`

Creates an instance and begins preparing it to begin serving. The returned long-running operation can be used to track the progress of preparing the new instance. The instance name is assigned by the caller. If the named instance already exists, `CreateInstance` returns `ALREADY_EXISTS`. Immediately upon completion of this request: * The instance is readable via the API, with all requested attributes but no allocated resources. Its state is `CREATING`. Until completion of the returned operation: * Cancelling the operation renders the instance immediately unreadable via the API. * The instance can be deleted. * All other attempts to modify the instance are rejected. Upon completion of the returned operation: * Billing for all successfully-allocated resources begins (some types may have lower than the requested levels). * Databases can be created in the instance. * The instance's allocated resource levels are readable via the API. * The instance's state becomes `READY`. The returned long-running operation will have a name of the format `/operations/` and can be used to track creation of the instance. The metadata field type is CreateInstanceMetadata. The response field type is Instance, if successful.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project in which to create the instance. Values are of the form `projects/`. |

**Request body**: `CreateInstanceRequest`

**Response**: `Operation`

```typescript
const res = await spanner.instances.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.patch`

**PATCH** `v1/{+name}`

Updates an instance, and begins allocating or releasing resources as requested. The returned long-running operation can be used to track the progress of updating the instance. If the named instance does not exist, returns `NOT_FOUND`. Immediately upon completion of this request: * For resource types for which a decrease in the instance's allocation has been requested, billing is based on the newly-requested level. Until completion of the returned operation: * Cancelling the operation sets its metadata's cancel_time, and begins restoring resources to their pre-request values. The operation is guaranteed to succeed at undoing all resource changes, after which point it terminates with a `CANCELLED` status. * All other attempts to modify the instance are rejected. * Reading the instance via the API continues to give the pre-request resource levels. Upon completion of the returned operation: * Billing begins for all successfully-allocated resources (some types may have lower than the requested levels). * All newly-reserved resources are available for serving the instance's tables. * The instance's new resource levels are readable via the API. The returned long-running operation will have a name of the format `/operations/` and can be used to track the instance modification. The metadata field type is UpdateInstanceMetadata. The response field type is Instance, if successful. Authorization requires `spanner.instances.update` permission on the resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A unique identifier for the instance, which cannot be changed after the instance is created. Values are of ... |

**Request body**: `UpdateInstanceRequest`

**Response**: `Operation`

```typescript
const res = await spanner.instances.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.delete`

**DELETE** `v1/{+name}`

Deletes an instance. Immediately upon completion of the request: * Billing ceases for all of the instance's reserved resources. Soon afterward: * The instance and *all of its databases* immediately and irrevocably disappear from the API. All data in the databases is permanently deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the instance to be deleted. Values are of the form `projects//instances/` |

**Response**: `Empty`

```typescript
const res = await spanner.instances.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on an instance resource. Replaces any existing policy. Authorization requires `spanner.instances.setIamPolicy` on resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The Cloud Spanner resource for which the policy is being set. The format is `projects//instances/` for inst... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await spanner.instances.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.getIamPolicy`

**POST** `v1/{+resource}:getIamPolicy`

Gets the access control policy for an instance resource. Returns an empty policy if an instance exists but does not have a policy set. Authorization requires `spanner.instances.getIamPolicy` on resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The Cloud Spanner resource for which the policy is being retrieved. The format is `projects//instances/` fo... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await spanner.instances.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that the caller has on the specified instance resource. Attempting this RPC on a non-existent Cloud Spanner instance resource will result in a NOT_FOUND error if the user has `spanner.instances.list` permission on the containing Google Cloud Project. Otherwise returns an empty set of permissions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The Cloud Spanner resource for which permissions are being tested. The format is `projects//instances/` for... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await spanner.instances.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.move`

**POST** `v1/{+name}:move`

Moves an instance to the target instance configuration. You can use the returned long-running operation to track the progress of moving the instance. `MoveInstance` returns `FAILED_PRECONDITION` if the instance meets any of the following criteria: * Is undergoing a move to a different instance configuration * Has backups * Has an ongoing update * Contains any CMEK-enabled databases * Is a free trial instance While the operation is pending: * All other attempts to modify the instance, including changes to its compute capacity, are rejected. * The following database and backup admin operations are rejected: * `DatabaseAdmin.CreateDatabase` * `DatabaseAdmin.UpdateDatabaseDdl` (disabled if default_leader is specified in the request.) * `DatabaseAdmin.RestoreDatabase` * `DatabaseAdmin.CreateBackup` * `DatabaseAdmin.CopyBackup` * Both the source and target instance configurations are subject to hourly compute and storage charges. * The instance might experience higher read-write latencies and a higher transaction abort rate. However, moving an instance doesn't cause any downtime. The returned long-running operation has a name of the format `/operations/` and can be used to track the move instance operation. The metadata field type is MoveInstanceMetadata. The response field type is Instance, if successful. Cancelling the operation sets its metadata's cancel_time. Cancellation is not immediate because it involves moving any data previously moved to the target instance configuration back to the original instance configuration. You can use this operation to track the progress of the cancellation. Upon successful completion of the cancellation, the operation terminates with `CANCELLED` status. If not cancelled, upon completion of the returned operation: * The instance successfully moves to the target instance configuration. * You are billed for compute and storage in target instance configuration. Authorization requires the `spanner.instances.update` permission on the resource instance. For more details, see [Move an instance](https://cloud.google.com/spanner/docs/move-instance).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The instance to move. Values are of the form `projects//instances/`. |

**Request body**: `MoveInstanceRequest`

**Response**: `Operation`

```typescript
const res = await spanner.instances.move({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.databases.getScans`

**GET** `v1/{+name}/scans`

Request a specific scan with Database-specific data for Cloud Key Visualizer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The unique name of the scan containing the requested information, specific to the Database service implemen... |
| `endTime` | `string` | query | No | The upper bound for the time range to retrieve Scan data for. |
| `startTime` | `string` | query | No | These fields restrict the Database-specific information returned in the `Scan.data` field. If a `View` is provided th... |
| `view` | `string` | query | No | Specifies which parts of the Scan should be returned in the response. Note, if left unspecified, the FULL view is ass... |

**Response**: `Scan`

```typescript
const res = await spanner.databases.getScans({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.data`

---

### `spanner.projects.instances.databases.list`

**GET** `v1/{+parent}/databases`

Lists Cloud Spanner databases.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The instance whose databases should be listed. Values are of the form `projects//instances/`. |
| `pageSize` | `integer` | query | No | Number of databases to be returned in the response. If 0 or less, defaults to the server's maximum allowed page size. |
| `pageToken` | `string` | query | No | If non-empty, `page_token` should contain a next_page_token from a previous ListDatabasesResponse. |

**Response**: `ListDatabasesResponse`

```typescript
const res = await spanner.databases.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.databases.create`

**POST** `v1/{+parent}/databases`

Creates a new Spanner database and starts to prepare it for serving. The returned long-running operation will have a name of the format `/operations/` and can be used to track preparation of the database. The metadata field type is CreateDatabaseMetadata. The response field type is Database, if successful.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the instance that will serve the new database. Values are of the form `projects//instances/`. |

**Request body**: `CreateDatabaseRequest`

**Response**: `Operation`

```typescript
const res = await spanner.databases.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.databases.get`

**GET** `v1/{+name}`

Gets the state of a Cloud Spanner database.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the requested database. Values are of the form `projects//instances//databases/`. |

**Response**: `Database`

```typescript
const res = await spanner.databases.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.databases.patch`

**PATCH** `v1/{+name}`

Updates a Cloud Spanner database. The returned long-running operation can be used to track the progress of updating the database. If the named database does not exist, returns `NOT_FOUND`. While the operation is pending: * The database's reconciling field is set to true. * Cancelling the operation is best-effort. If the cancellation succeeds, the operation metadata's cancel_time is set, the updates are reverted, and the operation terminates with a `CANCELLED` status. * New UpdateDatabase requests will return a `FAILED_PRECONDITION` error until the pending operation is done (returns successfully or with error). * Reading the database via the API continues to give the pre-request values. Upon completion of the returned operation: * The new values are in effect and readable via the API. * The database's reconciling field becomes false. The returned long-running operation will have a name of the format `projects//instances//databases//operations/` and can be used to track the database modification. The metadata field type is UpdateDatabaseMetadata. The response field type is Database, if successful.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the database. Values are of the form `projects//instances//databases/`, where `` is as specifie... |
| `updateMask` | `string` | query | No | Required. The list of fields to update. Currently, only `enable_drop_protection` field can be updated. |

**Request body**: `Database`

**Response**: `Operation`

```typescript
const res = await spanner.databases.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.databases.updateDdl`

**PATCH** `v1/{+database}/ddl`

Updates the schema of a Cloud Spanner database by creating/altering/dropping tables, columns, indexes, etc. The returned long-running operation will have a name of the format `/operations/` and can be used to track execution of the schema changes. The metadata field type is UpdateDatabaseDdlMetadata. The operation has no response.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `database` | `string` | path | Yes | Required. The database to update. |

**Request body**: `UpdateDatabaseDdlRequest`

**Response**: `Operation`

```typescript
const res = await spanner.databases.updateDdl({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.databases.dropDatabase`

**DELETE** `v1/{+database}`

Drops (aka deletes) a Cloud Spanner database. Completed backups for the database will be retained according to their `expire_time`. Note: Cloud Spanner might continue to accept requests for a few seconds after the database has been deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `database` | `string` | path | Yes | Required. The database to be dropped. |

**Response**: `Empty`

```typescript
const res = await spanner.databases.dropDatabase({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.databases.getDdl`

**GET** `v1/{+database}/ddl`

Returns the schema of a Cloud Spanner database as a list of formatted DDL statements. This method does not show pending schema updates, those may be queried using the Operations API.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `database` | `string` | path | Yes | Required. The database whose schema we wish to get. Values are of the form `projects//instances//databases/` |

**Response**: `GetDatabaseDdlResponse`

```typescript
const res = await spanner.databases.getDdl({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.databases.changequorum`

**POST** `v1/{+name}:changequorum`

`ChangeQuorum` is strictly restricted to databases that use dual-region instance configurations. Initiates a background operation to change the quorum of a database from dual-region mode to single-region mode or vice versa. The returned long-running operation has a name of the format `projects//instances//databases//operations/` and can be used to track execution of the `ChangeQuorum`. The metadata field type is ChangeQuorumMetadata. Authorization requires `spanner.databases.changequorum` permission on the resource database.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the database in which to apply `ChangeQuorum`. Values are of the form `projects//instances//databas... |

**Request body**: `ChangeQuorumRequest`

**Response**: `Operation`

```typescript
const res = await spanner.databases.changequorum({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.databases.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on a database or backup resource. Replaces any existing policy. Authorization requires `spanner.databases.setIamPolicy` permission on resource. For backups, authorization requires `spanner.backups.setIamPolicy` permission on resource. For backup schedules, authorization requires `spanner.backupSchedules.setIamPolicy` permission on resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The Cloud Spanner resource for which the policy is being set. The format is `projects//instances/` for inst... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await spanner.databases.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.databases.getIamPolicy`

**POST** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a database or backup resource. Returns an empty policy if a database or backup exists but does not have a policy set. Authorization requires `spanner.databases.getIamPolicy` permission on resource. For backups, authorization requires `spanner.backups.getIamPolicy` permission on resource. For backup schedules, authorization requires `spanner.backupSchedules.getIamPolicy` permission on resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The Cloud Spanner resource for which the policy is being retrieved. The format is `projects//instances/` fo... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await spanner.databases.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.databases.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that the caller has on the specified database or backup resource. Attempting this RPC on a non-existent Cloud Spanner database will result in a NOT_FOUND error if the user has `spanner.databases.list` permission on the containing Cloud Spanner instance. Otherwise returns an empty set of permissions. Calling this method on a backup that does not exist will result in a NOT_FOUND error if the user has `spanner.backups.list` permission on the containing instance. Calling this method on a backup schedule that does not exist will result in a NOT_FOUND error if the user has `spanner.backupSchedules.list` permission on the containing database.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The Cloud Spanner resource for which permissions are being tested. The format is `projects//instances/` for... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await spanner.databases.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.databases.restore`

**POST** `v1/{+parent}/databases:restore`

Create a new database by restoring from a completed backup. The new database must be in the same project and in an instance with the same instance configuration as the instance containing the backup. The returned database long-running operation has a name of the format `projects//instances//databases//operations/`, and can be used to track the progress of the operation, and to cancel it. The metadata field type is RestoreDatabaseMetadata. The response type is Database, if successful. Cancelling the returned operation will stop the restore and delete the database. There can be only one database being restored into an instance at a time. Once the restore operation completes, a new restore operation can be initiated, without waiting for the optimize operation associated with the first restore to complete.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the instance in which to create the restored database. This instance must be in the same projec... |

**Request body**: `RestoreDatabaseRequest`

**Response**: `Operation`

```typescript
const res = await spanner.databases.restore({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.databases.addSplitPoints`

**POST** `v1/{+database}:addSplitPoints`

Adds split points to specified tables and indexes of a database.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `database` | `string` | path | Yes | Required. The database on whose tables or indexes the split points are to be added. Values are of the form `projects/... |

**Request body**: `AddSplitPointsRequest`

**Response**: `AddSplitPointsResponse`

```typescript
const res = await spanner.databases.addSplitPoints({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.databases.operations.list`

**GET** `v1/{+name}`

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
const res = await spanner.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.databases.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await spanner.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.databases.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await spanner.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.databases.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Response**: `Empty`

```typescript
const res = await spanner.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.databases.sessions.adapter`

**POST** `v1/{+parent}/sessions:adapter`

Creates a new session to be used for requests made by the adapter. A session identifies a specific incarnation of a database resource and is meant to be reused across many `AdaptMessage` calls.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The database in which the new session is created. |

**Request body**: `AdapterSession`

**Response**: `AdapterSession`

```typescript
const res = await spanner.sessions.adapter({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.data`

---

### `spanner.projects.instances.databases.sessions.adaptMessage`

**POST** `v1/{+name}:adaptMessage`

Handles a single message from the client and returns the result as a stream. The server will interpret the message frame and respond with message frames to the client.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The database session in which the adapter request is processed. |

**Request body**: `AdaptMessageRequest`

**Response**: `AdaptMessageResponse`

```typescript
const res = await spanner.sessions.adaptMessage({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.data`

---

### `spanner.projects.instances.databases.sessions.create`

**POST** `v1/{+database}/sessions`

Creates a new session. A session can be used to perform transactions that read and/or modify data in a Cloud Spanner database. Sessions are meant to be reused for many consecutive transactions. Sessions can only execute one transaction at a time. To execute multiple concurrent read-write/write-only transactions, create multiple sessions. Note that standalone reads and queries use a transaction internally, and count toward the one transaction limit. Active sessions use additional server resources, so it's a good idea to delete idle and unneeded sessions. Aside from explicit deletes, Cloud Spanner can delete sessions when no operations are sent for more than an hour. If a session is deleted, requests to it return `NOT_FOUND`. Idle sessions can be kept alive by sending a trivial SQL query periodically, for example, `"SELECT 1"`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `database` | `string` | path | Yes | Required. The database in which the new session is created. |

**Request body**: `CreateSessionRequest`

**Response**: `Session`

```typescript
const res = await spanner.sessions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.data`

---

### `spanner.projects.instances.databases.sessions.batchCreate`

**POST** `v1/{+database}/sessions:batchCreate`

Creates multiple new sessions. This API can be used to initialize a session cache on the clients. See https://goo.gl/TgSFN2 for best practices on session cache management.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `database` | `string` | path | Yes | Required. The database in which the new sessions are created. |

**Request body**: `BatchCreateSessionsRequest`

**Response**: `BatchCreateSessionsResponse`

```typescript
const res = await spanner.sessions.batchCreate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.data`

---

### `spanner.projects.instances.databases.sessions.get`

**GET** `v1/{+name}`

Gets a session. Returns `NOT_FOUND` if the session doesn't exist. This is mainly useful for determining whether a session is still alive.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the session to retrieve. |

**Response**: `Session`

```typescript
const res = await spanner.sessions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.data`

---

### `spanner.projects.instances.databases.sessions.list`

**GET** `v1/{+database}/sessions`

Lists all sessions in a given database.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `database` | `string` | path | Yes | Required. The database in which to list sessions. |
| `filter` | `string` | query | No | An expression for filtering the results of the request. Filter rules are case insensitive. The fields eligible for fi... |
| `pageSize` | `integer` | query | No | Number of sessions to be returned in the response. If 0 or less, defaults to the server's maximum allowed page size. |
| `pageToken` | `string` | query | No | If non-empty, `page_token` should contain a next_page_token from a previous ListSessionsResponse. |

**Response**: `ListSessionsResponse`

```typescript
const res = await spanner.sessions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.data`

---

### `spanner.projects.instances.databases.sessions.delete`

**DELETE** `v1/{+name}`

Ends a session, releasing server resources associated with it. This asynchronously triggers the cancellation of any operations that are running with this session.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the session to delete. |

**Response**: `Empty`

```typescript
const res = await spanner.sessions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.data`

---

### `spanner.projects.instances.databases.sessions.executeSql`

**POST** `v1/{+session}:executeSql`

Executes an SQL statement, returning all results in a single reply. This method can't be used to return a result set larger than 10 MiB; if the query yields more data than that, the query fails with a `FAILED_PRECONDITION` error. Operations inside read-write transactions might return `ABORTED`. If this occurs, the application should restart the transaction from the beginning. See Transaction for more details. Larger result sets can be fetched in streaming fashion by calling ExecuteStreamingSql instead. The query string can be SQL or [Graph Query Language (GQL)](https://cloud.google.com/spanner/docs/reference/standard-sql/graph-intro).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `session` | `string` | path | Yes | Required. The session in which the SQL query should be performed. |

**Request body**: `ExecuteSqlRequest`

**Response**: `ResultSet`

```typescript
const res = await spanner.sessions.executeSql({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.data`

---

### `spanner.projects.instances.databases.sessions.executeStreamingSql`

**POST** `v1/{+session}:executeStreamingSql`

Like ExecuteSql, except returns the result set as a stream. Unlike ExecuteSql, there is no limit on the size of the returned result set. However, no individual row in the result set can exceed 100 MiB, and no column value can exceed 10 MiB. The query string can be SQL or [Graph Query Language (GQL)](https://cloud.google.com/spanner/docs/reference/standard-sql/graph-intro).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `session` | `string` | path | Yes | Required. The session in which the SQL query should be performed. |

**Request body**: `ExecuteSqlRequest`

**Response**: `PartialResultSet`

```typescript
const res = await spanner.sessions.executeStreamingSql({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.data`

---

### `spanner.projects.instances.databases.sessions.executeBatchDml`

**POST** `v1/{+session}:executeBatchDml`

Executes a batch of SQL DML statements. This method allows many statements to be run with lower latency than submitting them sequentially with ExecuteSql. Statements are executed in sequential order. A request can succeed even if a statement fails. The ExecuteBatchDmlResponse.status field in the response provides information about the statement that failed. Clients must inspect this field to determine whether an error occurred. Execution stops after the first failed statement; the remaining statements are not executed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `session` | `string` | path | Yes | Required. The session in which the DML statements should be performed. |

**Request body**: `ExecuteBatchDmlRequest`

**Response**: `ExecuteBatchDmlResponse`

```typescript
const res = await spanner.sessions.executeBatchDml({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.data`

---

### `spanner.projects.instances.databases.sessions.read`

**POST** `v1/{+session}:read`

Reads rows from the database using key lookups and scans, as a simple key/value style alternative to ExecuteSql. This method can't be used to return a result set larger than 10 MiB; if the read matches more data than that, the read fails with a `FAILED_PRECONDITION` error. Reads inside read-write transactions might return `ABORTED`. If this occurs, the application should restart the transaction from the beginning. See Transaction for more details. Larger result sets can be yielded in streaming fashion by calling StreamingRead instead.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `session` | `string` | path | Yes | Required. The session in which the read should be performed. |

**Request body**: `ReadRequest`

**Response**: `ResultSet`

```typescript
const res = await spanner.sessions.read({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.data`

---

### `spanner.projects.instances.databases.sessions.streamingRead`

**POST** `v1/{+session}:streamingRead`

Like Read, except returns the result set as a stream. Unlike Read, there is no limit on the size of the returned result set. However, no individual row in the result set can exceed 100 MiB, and no column value can exceed 10 MiB.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `session` | `string` | path | Yes | Required. The session in which the read should be performed. |

**Request body**: `ReadRequest`

**Response**: `PartialResultSet`

```typescript
const res = await spanner.sessions.streamingRead({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.data`

---

### `spanner.projects.instances.databases.sessions.beginTransaction`

**POST** `v1/{+session}:beginTransaction`

Begins a new transaction. This step can often be skipped: Read, ExecuteSql and Commit can begin a new transaction as a side-effect.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `session` | `string` | path | Yes | Required. The session in which the transaction runs. |

**Request body**: `BeginTransactionRequest`

**Response**: `Transaction`

```typescript
const res = await spanner.sessions.beginTransaction({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.data`

---

### `spanner.projects.instances.databases.sessions.commit`

**POST** `v1/{+session}:commit`

Commits a transaction. The request includes the mutations to be applied to rows in the database. `Commit` might return an `ABORTED` error. This can occur at any time; commonly, the cause is conflicts with concurrent transactions. However, it can also happen for a variety of other reasons. If `Commit` returns `ABORTED`, the caller should retry the transaction from the beginning, reusing the same session. On very rare occasions, `Commit` might return `UNKNOWN`. This can happen, for example, if the client job experiences a 1+ hour networking failure. At that point, Cloud Spanner has lost track of the transaction outcome and we recommend that you perform another read from the database to see the state of things as they are now.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `session` | `string` | path | Yes | Required. The session in which the transaction to be committed is running. |

**Request body**: `CommitRequest`

**Response**: `CommitResponse`

```typescript
const res = await spanner.sessions.commit({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.data`

---

### `spanner.projects.instances.databases.sessions.rollback`

**POST** `v1/{+session}:rollback`

Rolls back a transaction, releasing any locks it holds. It's a good idea to call this for any transaction that includes one or more Read or ExecuteSql requests and ultimately decides not to commit. `Rollback` returns `OK` if it successfully aborts the transaction, the transaction was already aborted, or the transaction isn't found. `Rollback` never returns `ABORTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `session` | `string` | path | Yes | Required. The session in which the transaction to roll back is running. |

**Request body**: `RollbackRequest`

**Response**: `Empty`

```typescript
const res = await spanner.sessions.rollback({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.data`

---

### `spanner.projects.instances.databases.sessions.partitionQuery`

**POST** `v1/{+session}:partitionQuery`

Creates a set of partition tokens that can be used to execute a query operation in parallel. Each of the returned partition tokens can be used by ExecuteStreamingSql to specify a subset of the query result to read. The same session and read-only transaction must be used by the `PartitionQueryRequest` used to create the partition tokens and the `ExecuteSqlRequests` that use the partition tokens. Partition tokens become invalid when the session used to create them is deleted, is idle for too long, begins a new transaction, or becomes too old. When any of these happen, it isn't possible to resume the query, and the whole operation must be restarted from the beginning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `session` | `string` | path | Yes | Required. The session used to create the partitions. |

**Request body**: `PartitionQueryRequest`

**Response**: `PartitionResponse`

```typescript
const res = await spanner.sessions.partitionQuery({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.data`

---

### `spanner.projects.instances.databases.sessions.partitionRead`

**POST** `v1/{+session}:partitionRead`

Creates a set of partition tokens that can be used to execute a read operation in parallel. Each of the returned partition tokens can be used by StreamingRead to specify a subset of the read result to read. The same session and read-only transaction must be used by the `PartitionReadRequest` used to create the partition tokens and the `ReadRequests` that use the partition tokens. There are no ordering guarantees on rows returned among the returned partition tokens, or even within each individual `StreamingRead` call issued with a `partition_token`. Partition tokens become invalid when the session used to create them is deleted, is idle for too long, begins a new transaction, or becomes too old. When any of these happen, it isn't possible to resume the read, and the whole operation must be restarted from the beginning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `session` | `string` | path | Yes | Required. The session used to create the partitions. |

**Request body**: `PartitionReadRequest`

**Response**: `PartitionResponse`

```typescript
const res = await spanner.sessions.partitionRead({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.data`

---

### `spanner.projects.instances.databases.sessions.batchWrite`

**POST** `v1/{+session}:batchWrite`

Batches the supplied mutation groups in a collection of efficient transactions. All mutations in a group are committed atomically. However, mutations across groups can be committed non-atomically in an unspecified order and thus, they must be independent of each other. Partial failure is possible, that is, some groups might have been committed successfully, while some might have failed. The results of individual batches are streamed into the response as the batches are applied. `BatchWrite` requests are not replay protected, meaning that each mutation group can be applied more than once. Replays of non-idempotent mutations can have undesirable effects. For example, replays of an insert mutation can produce an already exists error or if you use generated or commit timestamp-based keys, it can result in additional rows being added to the mutation's table. We recommend structuring your mutation groups to be idempotent to avoid this issue.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `session` | `string` | path | Yes | Required. The session in which the batch request is to be run. |

**Request body**: `BatchWriteRequest`

**Response**: `BatchWriteResponse`

```typescript
const res = await spanner.sessions.batchWrite({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.data`

---

### `spanner.projects.instances.databases.backupSchedules.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on a database or backup resource. Replaces any existing policy. Authorization requires `spanner.databases.setIamPolicy` permission on resource. For backups, authorization requires `spanner.backups.setIamPolicy` permission on resource. For backup schedules, authorization requires `spanner.backupSchedules.setIamPolicy` permission on resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The Cloud Spanner resource for which the policy is being set. The format is `projects//instances/` for inst... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await spanner.backupSchedules.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.databases.backupSchedules.getIamPolicy`

**POST** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a database or backup resource. Returns an empty policy if a database or backup exists but does not have a policy set. Authorization requires `spanner.databases.getIamPolicy` permission on resource. For backups, authorization requires `spanner.backups.getIamPolicy` permission on resource. For backup schedules, authorization requires `spanner.backupSchedules.getIamPolicy` permission on resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The Cloud Spanner resource for which the policy is being retrieved. The format is `projects//instances/` fo... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await spanner.backupSchedules.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.databases.backupSchedules.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that the caller has on the specified database or backup resource. Attempting this RPC on a non-existent Cloud Spanner database will result in a NOT_FOUND error if the user has `spanner.databases.list` permission on the containing Cloud Spanner instance. Otherwise returns an empty set of permissions. Calling this method on a backup that does not exist will result in a NOT_FOUND error if the user has `spanner.backups.list` permission on the containing instance. Calling this method on a backup schedule that does not exist will result in a NOT_FOUND error if the user has `spanner.backupSchedules.list` permission on the containing database.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The Cloud Spanner resource for which permissions are being tested. The format is `projects//instances/` for... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await spanner.backupSchedules.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.databases.backupSchedules.create`

**POST** `v1/{+parent}/backupSchedules`

Creates a new backup schedule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the database that this backup schedule applies to. |
| `backupScheduleId` | `string` | query | No | Required. The Id to use for the backup schedule. The `backup_schedule_id` appended to `parent` forms the full backup ... |

**Request body**: `BackupSchedule`

**Response**: `BackupSchedule`

```typescript
const res = await spanner.backupSchedules.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.databases.backupSchedules.get`

**GET** `v1/{+name}`

Gets backup schedule for the input schedule name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the schedule to retrieve. Values are of the form `projects//instances//databases//backupSchedul... |

**Response**: `BackupSchedule`

```typescript
const res = await spanner.backupSchedules.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.databases.backupSchedules.patch`

**PATCH** `v1/{+name}`

Updates a backup schedule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Output only for the CreateBackupSchedule operation. Required for the UpdateBackupSchedule operation. A gl... |
| `updateMask` | `string` | query | No | Required. A mask specifying which fields in the BackupSchedule resource should be updated. This mask is relative to t... |

**Request body**: `BackupSchedule`

**Response**: `BackupSchedule`

```typescript
const res = await spanner.backupSchedules.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.databases.backupSchedules.delete`

**DELETE** `v1/{+name}`

Deletes a backup schedule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the schedule to delete. Values are of the form `projects//instances//databases//backupSchedules/`. |

**Response**: `Empty`

```typescript
const res = await spanner.backupSchedules.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.databases.backupSchedules.list`

**GET** `v1/{+parent}/backupSchedules`

Lists all the backup schedules for the database.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Database is the parent resource whose backup schedules should be listed. Values are of the form projects//i... |
| `pageSize` | `integer` | query | No | Optional. Number of backup schedules to be returned in the response. If 0 or less, defaults to the server's maximum a... |
| `pageToken` | `string` | query | No | Optional. If non-empty, `page_token` should contain a next_page_token from a previous ListBackupSchedulesResponse to ... |

**Response**: `ListBackupSchedulesResponse`

```typescript
const res = await spanner.backupSchedules.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.databases.databaseRoles.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that the caller has on the specified database or backup resource. Attempting this RPC on a non-existent Cloud Spanner database will result in a NOT_FOUND error if the user has `spanner.databases.list` permission on the containing Cloud Spanner instance. Otherwise returns an empty set of permissions. Calling this method on a backup that does not exist will result in a NOT_FOUND error if the user has `spanner.backups.list` permission on the containing instance. Calling this method on a backup schedule that does not exist will result in a NOT_FOUND error if the user has `spanner.backupSchedules.list` permission on the containing database.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The Cloud Spanner resource for which permissions are being tested. The format is `projects//instances/` for... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await spanner.databaseRoles.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.databases.databaseRoles.list`

**GET** `v1/{+parent}/databaseRoles`

Lists Cloud Spanner database roles.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The database whose roles should be listed. Values are of the form `projects//instances//databases/`. |
| `pageSize` | `integer` | query | No | Number of database roles to be returned in the response. If 0 or less, defaults to the server's maximum allowed page ... |
| `pageToken` | `string` | query | No | If non-empty, `page_token` should contain a next_page_token from a previous ListDatabaseRolesResponse. |

**Response**: `ListDatabaseRolesResponse`

```typescript
const res = await spanner.databaseRoles.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.operations.list`

**GET** `v1/{+name}`

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
const res = await spanner.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await spanner.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await spanner.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Response**: `Empty`

```typescript
const res = await spanner.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.instancePartitions.list`

**GET** `v1/{+parent}/instancePartitions`

Lists all instance partitions for the given instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The instance whose instance partitions should be listed. Values are of the form `projects//instances/`. Use... |
| `instancePartitionDeadline` | `string` | query | No | Optional. Deadline used while retrieving metadata for instance partitions. Instance partitions whose metadata cannot ... |
| `pageSize` | `integer` | query | No | Number of instance partitions to be returned in the response. If 0 or less, defaults to the server's maximum allowed ... |
| `pageToken` | `string` | query | No | If non-empty, `page_token` should contain a next_page_token from a previous ListInstancePartitionsResponse. |

**Response**: `ListInstancePartitionsResponse`

```typescript
const res = await spanner.instancePartitions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.instancePartitions.get`

**GET** `v1/{+name}`

Gets information about a particular instance partition.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the requested instance partition. Values are of the form `projects/{project}/instances/{instanc... |

**Response**: `InstancePartition`

```typescript
const res = await spanner.instancePartitions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.instancePartitions.create`

**POST** `v1/{+parent}/instancePartitions`

Creates an instance partition and begins preparing it to be used. The returned long-running operation can be used to track the progress of preparing the new instance partition. The instance partition name is assigned by the caller. If the named instance partition already exists, `CreateInstancePartition` returns `ALREADY_EXISTS`. Immediately upon completion of this request: * The instance partition is readable via the API, with all requested attributes but no allocated resources. Its state is `CREATING`. Until completion of the returned operation: * Cancelling the operation renders the instance partition immediately unreadable via the API. * The instance partition can be deleted. * All other attempts to modify the instance partition are rejected. Upon completion of the returned operation: * Billing for all successfully-allocated resources begins (some types may have lower than the requested levels). * Databases can start using this instance partition. * The instance partition's allocated resource levels are readable via the API. * The instance partition's state becomes `READY`. The returned long-running operation will have a name of the format `/operations/` and can be used to track creation of the instance partition. The metadata field type is CreateInstancePartitionMetadata. The response field type is InstancePartition, if successful.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the instance in which to create the instance partition. Values are of the form `projects//insta... |

**Request body**: `CreateInstancePartitionRequest`

**Response**: `Operation`

```typescript
const res = await spanner.instancePartitions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.instancePartitions.delete`

**DELETE** `v1/{+name}`

Deletes an existing instance partition. Requires that the instance partition is not used by any database or backup and is not the default instance partition of an instance. Authorization requires `spanner.instancePartitions.delete` permission on the resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the instance partition to be deleted. Values are of the form `projects/{project}/instances/{ins... |
| `etag` | `string` | query | No | Optional. If not empty, the API only deletes the instance partition when the etag provided matches the current status... |

**Response**: `Empty`

```typescript
const res = await spanner.instancePartitions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.instancePartitions.patch`

**PATCH** `v1/{+name}`

Updates an instance partition, and begins allocating or releasing resources as requested. The returned long-running operation can be used to track the progress of updating the instance partition. If the named instance partition does not exist, returns `NOT_FOUND`. Immediately upon completion of this request: * For resource types for which a decrease in the instance partition's allocation has been requested, billing is based on the newly-requested level. Until completion of the returned operation: * Cancelling the operation sets its metadata's cancel_time, and begins restoring resources to their pre-request values. The operation is guaranteed to succeed at undoing all resource changes, after which point it terminates with a `CANCELLED` status. * All other attempts to modify the instance partition are rejected. * Reading the instance partition via the API continues to give the pre-request resource levels. Upon completion of the returned operation: * Billing begins for all successfully-allocated resources (some types may have lower than the requested levels). * All newly-reserved resources are available for serving the instance partition's tables. * The instance partition's new resource levels are readable via the API. The returned long-running operation will have a name of the format `/operations/` and can be used to track the instance partition modification. The metadata field type is UpdateInstancePartitionMetadata. The response field type is InstancePartition, if successful. Authorization requires `spanner.instancePartitions.update` permission on the resource name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A unique identifier for the instance partition. Values are of the form `projects//instances//instancePartit... |

**Request body**: `UpdateInstancePartitionRequest`

**Response**: `Operation`

```typescript
const res = await spanner.instancePartitions.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.instancePartitions.operations.list`

**GET** `v1/{+name}`

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
const res = await spanner.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.instancePartitions.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await spanner.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.instancePartitions.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await spanner.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.instancePartitions.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Response**: `Empty`

```typescript
const res = await spanner.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.instancePartitionOperations.list`

**GET** `v1/{+parent}/instancePartitionOperations`

Lists instance partition long-running operations in the given instance. An instance partition operation has a name of the form `projects//instances//instancePartitions//operations/`. The long-running operation metadata field type `metadata.type_url` describes the type of the metadata. Operations returned include those that have completed/failed/canceled within the last 7 days, and pending operations. Operations returned are ordered by `operation.metadata.value.start_time` in descending order starting from the most recently started operation. Authorization requires `spanner.instancePartitionOperations.list` permission on the resource parent.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent instance of the instance partition operations. Values are of the form `projects//instances/`. |
| `filter` | `string` | query | No | Optional. An expression that filters the list of returned operations. A filter expression consists of a field name, a... |
| `instancePartitionDeadline` | `string` | query | No | Optional. Deadline used while retrieving metadata for instance partition operations. Instance partitions whose operat... |
| `pageSize` | `integer` | query | No | Optional. Number of operations to be returned in the response. If 0 or less, defaults to the server's maximum allowed... |
| `pageToken` | `string` | query | No | Optional. If non-empty, `page_token` should contain a next_page_token from a previous ListInstancePartitionOperations... |

**Response**: `ListInstancePartitionOperationsResponse`

```typescript
const res = await spanner.instancePartitionOperations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.backups.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on a database or backup resource. Replaces any existing policy. Authorization requires `spanner.databases.setIamPolicy` permission on resource. For backups, authorization requires `spanner.backups.setIamPolicy` permission on resource. For backup schedules, authorization requires `spanner.backupSchedules.setIamPolicy` permission on resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The Cloud Spanner resource for which the policy is being set. The format is `projects//instances/` for inst... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await spanner.backups.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.backups.getIamPolicy`

**POST** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a database or backup resource. Returns an empty policy if a database or backup exists but does not have a policy set. Authorization requires `spanner.databases.getIamPolicy` permission on resource. For backups, authorization requires `spanner.backups.getIamPolicy` permission on resource. For backup schedules, authorization requires `spanner.backupSchedules.getIamPolicy` permission on resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The Cloud Spanner resource for which the policy is being retrieved. The format is `projects//instances/` fo... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await spanner.backups.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.backups.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that the caller has on the specified database or backup resource. Attempting this RPC on a non-existent Cloud Spanner database will result in a NOT_FOUND error if the user has `spanner.databases.list` permission on the containing Cloud Spanner instance. Otherwise returns an empty set of permissions. Calling this method on a backup that does not exist will result in a NOT_FOUND error if the user has `spanner.backups.list` permission on the containing instance. Calling this method on a backup schedule that does not exist will result in a NOT_FOUND error if the user has `spanner.backupSchedules.list` permission on the containing database.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The Cloud Spanner resource for which permissions are being tested. The format is `projects//instances/` for... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await spanner.backups.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.backups.create`

**POST** `v1/{+parent}/backups`

Starts creating a new Cloud Spanner Backup. The returned backup long-running operation will have a name of the format `projects//instances//backups//operations/` and can be used to track creation of the backup. The metadata field type is CreateBackupMetadata. The response field type is Backup, if successful. Cancelling the returned operation will stop the creation and delete the backup. There can be only one pending backup creation per database. Backup creation of different databases can run concurrently.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the instance in which the backup is created. This must be the same instance that contains the d... |
| `backupId` | `string` | query | No | Required. The id of the backup to be created. The `backup_id` appended to `parent` forms the full backup name of the ... |
| `encryptionConfig.encryptionType` | `string` | query | No | Required. The encryption type of the backup. |
| `encryptionConfig.kmsKeyName` | `string` | query | No | Optional. This field is maintained for backwards compatibility. For new callers, we recommend using `kms_key_names` t... |
| `encryptionConfig.kmsKeyNames` | `string` | query | No | Optional. Specifies the KMS configuration for the one or more keys used to protect the backup. Values are of the form... |

**Request body**: `Backup`

**Response**: `Operation`

```typescript
const res = await spanner.backups.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.backups.copy`

**POST** `v1/{+parent}/backups:copy`

Starts copying a Cloud Spanner Backup. The returned backup long-running operation will have a name of the format `projects//instances//backups//operations/` and can be used to track copying of the backup. The operation is associated with the destination backup. The metadata field type is CopyBackupMetadata. The response field type is Backup, if successful. Cancelling the returned operation will stop the copying and delete the destination backup. Concurrent CopyBackup requests can run on the same source backup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the destination instance that will contain the backup copy. Values are of the form: `projects//... |

**Request body**: `CopyBackupRequest`

**Response**: `Operation`

```typescript
const res = await spanner.backups.copy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.backups.get`

**GET** `v1/{+name}`

Gets metadata on a pending or completed Backup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the backup. Values are of the form `projects//instances//backups/`. |

**Response**: `Backup`

```typescript
const res = await spanner.backups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.backups.patch`

**PATCH** `v1/{+name}`

Updates a pending or completed Backup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only for the CreateBackup operation. Required for the UpdateBackup operation. A globally unique identifier for... |
| `updateMask` | `string` | query | No | Required. A mask specifying which fields (for example, `expire_time`) in the backup resource should be updated. This ... |

**Request body**: `Backup`

**Response**: `Backup`

```typescript
const res = await spanner.backups.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.backups.delete`

**DELETE** `v1/{+name}`

Deletes a pending or completed Backup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the backup to delete. Values are of the form `projects//instances//backups/`. |

**Response**: `Empty`

```typescript
const res = await spanner.backups.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.backups.list`

**GET** `v1/{+parent}/backups`

Lists completed and pending backups. Backups returned are ordered by `create_time` in descending order, starting from the most recent `create_time`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The instance to list backups from. Values are of the form `projects//instances/`. |
| `filter` | `string` | query | No | An expression that filters the list of returned backups. A filter expression consists of a field name, a comparison o... |
| `pageSize` | `integer` | query | No | Number of backups to be returned in the response. If 0 or less, defaults to the server's maximum allowed page size. |
| `pageToken` | `string` | query | No | If non-empty, `page_token` should contain a next_page_token from a previous ListBackupsResponse to the same `parent` ... |

**Response**: `ListBackupsResponse`

```typescript
const res = await spanner.backups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.backups.operations.list`

**GET** `v1/{+name}`

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
const res = await spanner.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.backups.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await spanner.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.backups.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await spanner.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.backups.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Response**: `Empty`

```typescript
const res = await spanner.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.databaseOperations.list`

**GET** `v1/{+parent}/databaseOperations`

Lists database longrunning-operations. A database operation has a name of the form `projects//instances//databases//operations/`. The long-running operation metadata field type `metadata.type_url` describes the type of the metadata. Operations returned include those that have completed/failed/canceled within the last 7 days, and pending operations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The instance of the database operations. Values are of the form `projects//instances/`. |
| `filter` | `string` | query | No | An expression that filters the list of returned operations. A filter expression consists of a field name, a compariso... |
| `pageSize` | `integer` | query | No | Number of operations to be returned in the response. If 0 or less, defaults to the server's maximum allowed page size. |
| `pageToken` | `string` | query | No | If non-empty, `page_token` should contain a next_page_token from a previous ListDatabaseOperationsResponse to the sam... |

**Response**: `ListDatabaseOperationsResponse`

```typescript
const res = await spanner.databaseOperations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

### `spanner.projects.instances.backupOperations.list`

**GET** `v1/{+parent}/backupOperations`

Lists the backup long-running operations in the given instance. A backup operation has a name of the form `projects//instances//backups//operations/`. The long-running operation metadata field type `metadata.type_url` describes the type of the metadata. Operations returned include those that have completed/failed/canceled within the last 7 days, and pending operations. Operations returned are ordered by `operation.metadata.value.progress.start_time` in descending order starting from the most recently started operation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The instance of the backup operations. Values are of the form `projects//instances/`. |
| `filter` | `string` | query | No | An expression that filters the list of returned backup operations. A filter expression consists of a field name, a co... |
| `pageSize` | `integer` | query | No | Number of operations to be returned in the response. If 0 or less, defaults to the server's maximum allowed page size. |
| `pageToken` | `string` | query | No | If non-empty, `page_token` should contain a next_page_token from a previous ListBackupOperationsResponse to the same ... |

**Response**: `ListBackupOperationsResponse`

```typescript
const res = await spanner.backupOperations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/spanner.admin`

---

## Schemas

### `Ack`

Arguments to ack operations.

| Property | Type | Description |
|----------|------|-------------|
| `ignoreNotFound` | `boolean` | By default, an attempt to ack a message that does not exist will fail with a `NOT_FOUND` error. W... |
| `key` | `array<any>` | Required. The primary key of the message to be acked. |
| `queue` | `string` | Required. The queue where the message to be acked is stored. |

### `AdaptMessageRequest`

Message sent by the client to the adapter.

| Property | Type | Description |
|----------|------|-------------|
| `attachments` | `object` | Optional. Opaque request state passed by the client to the server. |
| `payload` | `string` | Optional. Uninterpreted bytes from the underlying wire protocol. |
| `protocol` | `string` | Required. Identifier for the underlying wire protocol. |

### `AdaptMessageResponse`

Message sent by the adapter to the client.

| Property | Type | Description |
|----------|------|-------------|
| `last` | `boolean` | Optional. Indicates whether this is the last AdaptMessageResponse in the stream. This field may b... |
| `payload` | `string` | Optional. Uninterpreted bytes from the underlying wire protocol. |
| `stateUpdates` | `object` | Optional. Opaque state updates to be applied by the client. |

### `AdapterSession`

A session in the Cloud Spanner Adapter API.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Identifier. The name of the session. This is always system-assigned. |

### `AddSplitPointsRequest`

The request for AddSplitPoints.

| Property | Type | Description |
|----------|------|-------------|
| `initiator` | `string` | Optional. A user-supplied tag associated with the split points. For example, "initial_data_load",... |
| `splitPoints` | `array<SplitPoints>` | Required. The split points to add. |

### `AddSplitPointsResponse`

The response for AddSplitPoints.

### `AsymmetricAutoscalingOption`

AsymmetricAutoscalingOption specifies the scaling of replicas identified by the given selection.

| Property | Type | Description |
|----------|------|-------------|
| `overrides` | `AutoscalingConfigOverrides` | Optional. Overrides applied to the top-level autoscaling configuration for the selected replicas. |
| `replicaSelection` | `InstanceReplicaSelection` | Required. Selects the replicas to which this AsymmetricAutoscalingOption applies. Only read-only ... |

### `AutoscalingConfig`

Autoscaling configuration for an instance.

| Property | Type | Description |
|----------|------|-------------|
| `asymmetricAutoscalingOptions` | `array<AsymmetricAutoscalingOption>` | Optional. Optional asymmetric autoscaling options. Replicas matching the replica selection criter... |
| `autoscalingLimits` | `AutoscalingLimits` | Required. Autoscaling limits for an instance. |
| `autoscalingTargets` | `AutoscalingTargets` | Required. The autoscaling targets for an instance. |

### `AutoscalingConfigOverrides`

Overrides the top-level autoscaling configuration for the replicas identified by `replica_selection`. All fields in this message are optional. Any unspecified fields will use the corresponding values from the top-level autoscaling configuration.

| Property | Type | Description |
|----------|------|-------------|
| `autoscalingLimits` | `AutoscalingLimits` | Optional. If specified, overrides the min/max limit in the top-level autoscaling configuration fo... |
| `autoscalingTargetHighPriorityCpuUtilizationPercent` | `integer` | Optional. If specified, overrides the autoscaling target high_priority_cpu_utilization_percent in... |
| `autoscalingTargetTotalCpuUtilizationPercent` | `integer` | Optional. If specified, overrides the autoscaling target `total_cpu_utilization_percent` in the t... |
| `disableHighPriorityCpuAutoscaling` | `boolean` | Optional. If true, disables high priority CPU autoscaling for the selected replicas and ignores h... |
| `disableTotalCpuAutoscaling` | `boolean` | Optional. If true, disables total CPU autoscaling for the selected replicas and ignores total_cpu... |

### `AutoscalingLimits`

The autoscaling limits for the instance. Users can define the minimum and maximum compute capacity allocated to the instance, and the autoscaler will only scale within that range. Users can either use nodes or processing units to specify the limits, but should use the same unit to set both the min_limit and max_limit.

| Property | Type | Description |
|----------|------|-------------|
| `maxNodes` | `integer` | Maximum number of nodes allocated to the instance. If set, this number should be greater than or ... |
| `maxProcessingUnits` | `integer` | Maximum number of processing units allocated to the instance. If set, this number should be multi... |
| `minNodes` | `integer` | Minimum number of nodes allocated to the instance. If set, this number should be greater than or ... |
| `minProcessingUnits` | `integer` | Minimum number of processing units allocated to the instance. If set, this number should be multi... |

### `AutoscalingTargets`

The autoscaling targets for an instance.

| Property | Type | Description |
|----------|------|-------------|
| `highPriorityCpuUtilizationPercent` | `integer` | Optional. The target high priority cpu utilization percentage that the autoscaler should be tryin... |
| `storageUtilizationPercent` | `integer` | Required. The target storage utilization percentage that the autoscaler should be trying to achie... |
| `totalCpuUtilizationPercent` | `integer` | Optional. The target total CPU utilization percentage that the autoscaler should be trying to ach... |

### `Backup`

A backup of a Cloud Spanner database.

| Property | Type | Description |
|----------|------|-------------|
| `backupSchedules` | `array<string>` | Output only. List of backup schedule URIs that are associated with creating this backup. This is ... |
| `createTime` | `string` | Output only. The time the CreateBackup request is received. If the request does not specify `vers... |
| `database` | `string` | Required for the CreateBackup operation. Name of the database from which this backup was created.... |
| `databaseDialect` | `string` | Output only. The database dialect information for the backup. |
| `encryptionInfo` | `EncryptionInfo` | Output only. The encryption information for the backup. |
| `encryptionInformation` | `array<EncryptionInfo>` | Output only. The encryption information for the backup, whether it is protected by one or more KM... |
| `exclusiveSizeBytes` | `string` | Output only. For a backup in an incremental backup chain, this is the storage space needed to kee... |
| `expireTime` | `string` | Required for the CreateBackup operation. The expiration time of the backup, with microseconds gra... |
| `freeableSizeBytes` | `string` | Output only. The number of bytes that will be freed by deleting this backup. This value will be z... |
| `incrementalBackupChainId` | `string` | Output only. Populated only for backups in an incremental backup chain. Backups share the same ch... |
| `instancePartitions` | `array<BackupInstancePartition>` | Output only. The instance partition storing the backup. This is the same as the list of the insta... |
| `maxExpireTime` | `string` | Output only. The max allowed expiration time of the backup, with microseconds granularity. A back... |
| `minimumRestorableEdition` | `string` | Output only. The minimum edition required to successfully restore the backup. Populated only if t... |
| `name` | `string` | Output only for the CreateBackup operation. Required for the UpdateBackup operation. A globally u... |
| `oldestVersionTime` | `string` | Output only. Data deleted at a time older than this is guaranteed not to be retained in order to ... |
| `referencingBackups` | `array<string>` | Output only. The names of the destination backups being created by copying this source backup. Th... |
| `referencingDatabases` | `array<string>` | Output only. The names of the restored databases that reference the backup. The database names ar... |
| `sizeBytes` | `string` | Output only. Size of the backup in bytes. For a backup in an incremental backup chain, this is th... |
| `state` | `string` | Output only. The current state of the backup. |
| `versionTime` | `string` | The backup will contain an externally consistent copy of the database at the timestamp specified ... |

### `BackupInfo`

Information about a backup.

| Property | Type | Description |
|----------|------|-------------|
| `backup` | `string` | Name of the backup. |
| `createTime` | `string` | The time the CreateBackup request was received. |
| `sourceDatabase` | `string` | Name of the database the backup was created from. |
| `versionTime` | `string` | The backup contains an externally consistent copy of `source_database` at the timestamp specified... |

### `BackupInstancePartition`

Instance partition information for the backup.

| Property | Type | Description |
|----------|------|-------------|
| `instancePartition` | `string` | A unique identifier for the instance partition. Values are of the form `projects//instances//inst... |

### `BackupSchedule`

BackupSchedule expresses the automated backup creation specification for a Spanner database.

| Property | Type | Description |
|----------|------|-------------|
| `encryptionConfig` | `CreateBackupEncryptionConfig` | Optional. The encryption configuration that is used to encrypt the backup. If this field is not s... |
| `fullBackupSpec` | `FullBackupSpec` | The schedule creates only full backups. |
| `incrementalBackupSpec` | `IncrementalBackupSpec` | The schedule creates incremental backup chains. |
| `name` | `string` | Identifier. Output only for the CreateBackupSchedule operation. Required for the UpdateBackupSche... |
| `retentionDuration` | `string` | Optional. The retention duration of a backup that must be at least 6 hours and at most 366 days. ... |
| `spec` | `BackupScheduleSpec` | Optional. The schedule specification based on which the backup creations are triggered. |
| `updateTime` | `string` | Output only. The timestamp at which the schedule was last updated. If the schedule has never been... |

### `BackupScheduleSpec`

Defines specifications of the backup schedule.

| Property | Type | Description |
|----------|------|-------------|
| `cronSpec` | `CrontabSpec` | Cron style schedule specification. |

### `BatchCreateSessionsRequest`

The request for BatchCreateSessions.

| Property | Type | Description |
|----------|------|-------------|
| `sessionCount` | `integer` | Required. The number of sessions to be created in this batch call. At least one session is create... |
| `sessionTemplate` | `Session` | Parameters to apply to each created session. |

### `BatchCreateSessionsResponse`

The response for BatchCreateSessions.

| Property | Type | Description |
|----------|------|-------------|
| `session` | `array<Session>` | The freshly created sessions. |

### `BatchWriteRequest`

The request for BatchWrite.

| Property | Type | Description |
|----------|------|-------------|
| `excludeTxnFromChangeStreams` | `boolean` | Optional. If you don't set the `exclude_txn_from_change_streams` option or if it's set to `false`... |
| `mutationGroups` | `array<MutationGroup>` | Required. The groups of mutations to be applied. |
| `requestOptions` | `RequestOptions` | Common options for this request. |

### `BatchWriteResponse`

The result of applying a batch of mutations.

| Property | Type | Description |
|----------|------|-------------|
| `commitTimestamp` | `string` | The commit timestamp of the transaction that applied this batch. Present if `status` is `OK`, abs... |
| `indexes` | `array<integer>` | The mutation groups applied in this batch. The values index into the `mutation_groups` field in t... |
| `status` | `Status` | An `OK` status indicates success. Any other status indicates a failure. |

### `BeginTransactionRequest`

The request for BeginTransaction.

| Property | Type | Description |
|----------|------|-------------|
| `mutationKey` | `Mutation` | Optional. Required for read-write transactions on a multiplexed session that commit mutations but... |
| `options` | `TransactionOptions` | Required. Options for the new transaction. |
| `requestOptions` | `RequestOptions` | Common options for this request. Priority is ignored for this request. Setting the priority in th... |

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `ChangeQuorumMetadata`

Metadata type for the long-running operation returned by ChangeQuorum.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | If set, the time at which this operation failed or was completed successfully. |
| `request` | `ChangeQuorumRequest` | The request for ChangeQuorum. |
| `startTime` | `string` | Time the request was received. |

### `ChangeQuorumRequest`

The request for ChangeQuorum.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Optional. The etag is the hash of the `QuorumInfo`. The `ChangeQuorum` operation is only performe... |
| `name` | `string` | Required. Name of the database in which to apply `ChangeQuorum`. Values are of the form `projects... |
| `quorumType` | `QuorumType` | Required. The type of this quorum. |

### `ChangeStreamRecord`

Spanner Change Streams enable customers to capture and stream out changes to their Spanner databases in real-time. A change stream can be created with option partition_mode='IMMUTABLE_KEY_RANGE' or partition_mode='MUTABLE_KEY_RANGE'. This message is only used in Change Streams created with the option partition_mode='MUTABLE_KEY_RANGE'. Spanner automatically creates a special Table-Valued Function (TVF) along with each Change Streams. The function provides access to the change stream's records. The function is named READ_ (where is the name of the change stream), and it returns a table with only one column called ChangeRecord.

| Property | Type | Description |
|----------|------|-------------|
| `dataChangeRecord` | `DataChangeRecord` | Data change record describing a data change for a change stream partition. |
| `heartbeatRecord` | `HeartbeatRecord` | Heartbeat record describing a heartbeat for a change stream partition. |
| `partitionEndRecord` | `PartitionEndRecord` | Partition end record describing a terminated change stream partition. |
| `partitionEventRecord` | `PartitionEventRecord` | Partition event record describing key range changes for a change stream partition. |
| `partitionStartRecord` | `PartitionStartRecord` | Partition start record describing a new change stream partition. |

### `ChildLink`

Metadata associated with a parent-child relationship appearing in a PlanNode.

| Property | Type | Description |
|----------|------|-------------|
| `childIndex` | `integer` | The node to which the link points. |
| `type` | `string` | The type of the link. For example, in Hash Joins this could be used to distinguish between the bu... |
| `variable` | `string` | Only present if the child node is SCALAR and corresponds to an output variable of the parent node... |

### `ClientContext`

Container for various pieces of client-owned context attached to a request.

| Property | Type | Description |
|----------|------|-------------|
| `secureContext` | `object` | Optional. Map of parameter name to value for this request. These values will be returned by any S... |

### `ColumnMetadata`

Metadata for a column.

| Property | Type | Description |
|----------|------|-------------|
| `isPrimaryKey` | `boolean` | Indicates whether the column is a primary key column. |
| `name` | `string` | Name of the column. |
| `ordinalPosition` | `string` | Ordinal position of the column based on the original table definition in the schema starting with... |
| `type` | `Type` | Type of the column. |

### `CommitRequest`

The request for Commit.

| Property | Type | Description |
|----------|------|-------------|
| `maxCommitDelay` | `string` | Optional. The amount of latency this request is configured to incur in order to improve throughpu... |
| `mutations` | `array<Mutation>` | The mutations to be executed when this transaction commits. All mutations are applied atomically,... |
| `precommitToken` | `MultiplexedSessionPrecommitToken` | Optional. If the read-write transaction was executed on a multiplexed session, then you must incl... |
| `requestOptions` | `RequestOptions` | Common options for this request. |
| `returnCommitStats` | `boolean` | If `true`, then statistics related to the transaction is included in the CommitResponse. Default ... |
| `singleUseTransaction` | `TransactionOptions` | Execute mutations in a temporary transaction. Note that unlike commit of a previously-started tra... |
| `transactionId` | `string` | Commit a previously-started transaction. |

### `CommitResponse`

The response for Commit.

| Property | Type | Description |
|----------|------|-------------|
| `commitStats` | `CommitStats` | The statistics about this `Commit`. Not returned by default. For more information, see CommitRequ... |
| `commitTimestamp` | `string` | The Cloud Spanner timestamp at which the transaction committed. |
| `precommitToken` | `MultiplexedSessionPrecommitToken` | If specified, transaction has not committed yet. You must retry the commit with the new precommit... |
| `snapshotTimestamp` | `string` | If `TransactionOptions.isolation_level` is set to `IsolationLevel.REPEATABLE_READ`, then the snap... |

### `CommitStats`

Additional statistics about a commit.

| Property | Type | Description |
|----------|------|-------------|
| `mutationCount` | `string` | The total number of mutations for the transaction. Knowing the `mutation_count` value can help yo... |

### `CompactDatabaseMetadata`

Metadata type for the long-running operation returned by `CALL compact_all()`, which can be executed using ExecuteSql or ExecuteStreamingSql APIs.

| Property | Type | Description |
|----------|------|-------------|
| `cancelTime` | `string` | Output only. The time at which cancellation of this operation was received. Operations.CancelOper... |
| `database` | `string` | Output only. The database being compacted. |
| `progress` | `OperationProgress` | Output only. The progress of the compaction operation. |

### `ContextValue`

A message representing context for a KeyRangeInfo, including a label, value, unit, and severity.

| Property | Type | Description |
|----------|------|-------------|
| `label` | `LocalizedString` | The label for the context value. e.g. "latency". |
| `severity` | `string` | The severity of this context. |
| `unit` | `string` | The unit of the context value. |
| `value` | `number` | The value for the context. |

### `CopyBackupEncryptionConfig`

Encryption configuration for the copied backup.

| Property | Type | Description |
|----------|------|-------------|
| `encryptionType` | `string` | Required. The encryption type of the backup. |
| `kmsKeyName` | `string` | Optional. This field is maintained for backwards compatibility. For new callers, we recommend usi... |
| `kmsKeyNames` | `array<string>` | Optional. Specifies the KMS configuration for the one or more keys used to protect the backup. Va... |

### `CopyBackupMetadata`

Metadata type for the operation returned by CopyBackup.

| Property | Type | Description |
|----------|------|-------------|
| `cancelTime` | `string` | The time at which cancellation of CopyBackup operation was received. Operations.CancelOperation s... |
| `name` | `string` | The name of the backup being created through the copy operation. Values are of the form `projects... |
| `progress` | `OperationProgress` | The progress of the CopyBackup operation. |
| `sourceBackup` | `string` | The name of the source backup that is being copied. Values are of the form `projects//instances//... |

### `CopyBackupRequest`

The request for CopyBackup.

| Property | Type | Description |
|----------|------|-------------|
| `backupId` | `string` | Required. The id of the backup copy. The `backup_id` appended to `parent` forms the full backup_u... |
| `encryptionConfig` | `CopyBackupEncryptionConfig` | Optional. The encryption configuration used to encrypt the backup. If this field is not specified... |
| `expireTime` | `string` | Required. The expiration time of the backup in microsecond granularity. The expiration time must ... |
| `sourceBackup` | `string` | Required. The source backup to be copied. The source backup needs to be in READY state for it to ... |

### `CreateBackupEncryptionConfig`

Encryption configuration for the backup to create.

| Property | Type | Description |
|----------|------|-------------|
| `encryptionType` | `string` | Required. The encryption type of the backup. |
| `kmsKeyName` | `string` | Optional. This field is maintained for backwards compatibility. For new callers, we recommend usi... |
| `kmsKeyNames` | `array<string>` | Optional. Specifies the KMS configuration for the one or more keys used to protect the backup. Va... |

### `CreateBackupMetadata`

Metadata type for the operation returned by CreateBackup.

| Property | Type | Description |
|----------|------|-------------|
| `cancelTime` | `string` | The time at which cancellation of this operation was received. Operations.CancelOperation starts ... |
| `database` | `string` | The name of the database the backup is created from. |
| `name` | `string` | The name of the backup being created. |
| `progress` | `OperationProgress` | The progress of the CreateBackup operation. |

### `CreateDatabaseMetadata`

Metadata type for the operation returned by CreateDatabase.

| Property | Type | Description |
|----------|------|-------------|
| `database` | `string` | The database being created. |

### `CreateDatabaseRequest`

The request for CreateDatabase.

| Property | Type | Description |
|----------|------|-------------|
| `createStatement` | `string` | Required. A `CREATE DATABASE` statement, which specifies the ID of the new database. The database... |
| `databaseDialect` | `string` | Optional. The dialect of the Cloud Spanner Database. |
| `encryptionConfig` | `EncryptionConfig` | Optional. The encryption configuration for the database. If this field is not specified, Cloud Sp... |
| `extraStatements` | `array<string>` | Optional. A list of DDL statements to run inside the newly created database. Statements can creat... |
| `protoDescriptors` | `string` | Optional. Proto descriptors used by `CREATE/ALTER PROTO BUNDLE` statements in 'extra_statements'.... |

### `CreateInstanceConfigMetadata`

Metadata type for the operation returned by CreateInstanceConfig.

| Property | Type | Description |
|----------|------|-------------|
| `cancelTime` | `string` | The time at which this operation was cancelled. |
| `instanceConfig` | `InstanceConfig` | The target instance configuration end state. |
| `progress` | `InstanceOperationProgress` | The progress of the CreateInstanceConfig operation. |

### `CreateInstanceConfigRequest`

The request for CreateInstanceConfig.

| Property | Type | Description |
|----------|------|-------------|
| `instanceConfig` | `InstanceConfig` | Required. The `InstanceConfig` proto of the configuration to create. `instance_config.name` must ... |
| `instanceConfigId` | `string` | Required. The ID of the instance configuration to create. Valid identifiers are of the form `cust... |
| `validateOnly` | `boolean` | An option to validate, but not actually execute, a request, and provide the same response. |

### `CreateInstanceMetadata`

Metadata type for the operation returned by CreateInstance.

| Property | Type | Description |
|----------|------|-------------|
| `cancelTime` | `string` | The time at which this operation was cancelled. If set, this operation is in the process of undoi... |
| `endTime` | `string` | The time at which this operation failed or was completed successfully. |
| `expectedFulfillmentPeriod` | `string` | The expected fulfillment period of this create operation. |
| `instance` | `Instance` | The instance being created. |
| `startTime` | `string` | The time at which the CreateInstance request was received. |

### `CreateInstancePartitionMetadata`

Metadata type for the operation returned by CreateInstancePartition.

| Property | Type | Description |
|----------|------|-------------|
| `cancelTime` | `string` | The time at which this operation was cancelled. If set, this operation is in the process of undoi... |
| `endTime` | `string` | The time at which this operation failed or was completed successfully. |
| `instancePartition` | `InstancePartition` | The instance partition being created. |
| `startTime` | `string` | The time at which the CreateInstancePartition request was received. |

### `CreateInstancePartitionRequest`

The request for CreateInstancePartition.

| Property | Type | Description |
|----------|------|-------------|
| `instancePartition` | `InstancePartition` | Required. The instance partition to create. The instance_partition.name may be omitted, but if sp... |
| `instancePartitionId` | `string` | Required. The ID of the instance partition to create. Valid identifiers are of the form `a-z*[a-z... |

### `CreateInstanceRequest`

The request for CreateInstance.

| Property | Type | Description |
|----------|------|-------------|
| `instance` | `Instance` | Required. The instance to create. The name may be omitted, but if specified must be `/instances/`. |
| `instanceId` | `string` | Required. The ID of the instance to create. Valid identifiers are of the form `a-z*[a-z0-9]` and ... |

### `CreateSessionRequest`

The request for CreateSession.

| Property | Type | Description |
|----------|------|-------------|
| `session` | `Session` | Required. The session to create. |

### `CrontabSpec`

CrontabSpec can be used to specify the version time and frequency at which the backup is created.

| Property | Type | Description |
|----------|------|-------------|
| `creationWindow` | `string` | Output only. Scheduled backups contain an externally consistent copy of the database at the versi... |
| `text` | `string` | Required. Textual representation of the crontab. User can customize the backup frequency and the ... |
| `timeZone` | `string` | Output only. The time zone of the times in `CrontabSpec.text`. Currently, only UTC is supported. |

### `DataChangeRecord`

A data change record contains a set of changes to a table with the same modification type (insert, update, or delete) committed at the same commit timestamp in one change stream partition for the same transaction. Multiple data change records can be returned for the same transaction across multiple change stream partitions.

| Property | Type | Description |
|----------|------|-------------|
| `columnMetadata` | `array<ColumnMetadata>` | Provides metadata describing the columns associated with the mods listed below. |
| `commitTimestamp` | `string` | Indicates the timestamp in which the change was committed. DataChangeRecord.commit_timestamps, Pa... |
| `isLastRecordInTransactionInPartition` | `boolean` | Indicates whether this is the last record for a transaction in the current partition. Clients can... |
| `isSystemTransaction` | `boolean` | Indicates whether the transaction is a system transaction. System transactions include those issu... |
| `modType` | `string` | Describes the type of change. |
| `mods` | `array<Mod>` | Describes the changes that were made. |
| `numberOfPartitionsInTransaction` | `integer` | Indicates the number of partitions that return data change records for this transaction. This val... |
| `numberOfRecordsInTransaction` | `integer` | Indicates the number of data change records that are part of this transaction across all change s... |
| `recordSequence` | `string` | Record sequence numbers are unique and monotonically increasing (but not necessarily contiguous) ... |
| `serverTransactionId` | `string` | Provides a globally unique string that represents the transaction in which the change was committ... |
| `table` | `string` | Name of the table affected by the change. |
| `transactionTag` | `string` | Indicates the transaction tag associated with this transaction. |
| `valueCaptureType` | `string` | Describes the value capture type that was specified in the change stream configuration when this ... |

### `Database`

A Cloud Spanner database.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. If exists, the time at which the database creation started. |
| `databaseDialect` | `string` | Output only. The dialect of the Cloud Spanner Database. |
| `defaultLeader` | `string` | Output only. The read-write region which contains the database's leader replicas. This is the sam... |
| `earliestVersionTime` | `string` | Output only. Earliest timestamp at which older versions of the data can be read. This value is co... |
| `enableDropProtection` | `boolean` | Optional. Whether drop protection is enabled for this database. Defaults to false, if not set. Fo... |
| `encryptionConfig` | `EncryptionConfig` | Output only. For databases that are using customer managed encryption, this field contains the en... |
| `encryptionInfo` | `array<EncryptionInfo>` | Output only. For databases that are using customer managed encryption, this field contains the en... |
| `name` | `string` | Required. The name of the database. Values are of the form `projects//instances//databases/`, whe... |
| `quorumInfo` | `QuorumInfo` | Output only. Applicable only for databases that use dual-region instance configurations. Contains... |
| `reconciling` | `boolean` | Output only. If true, the database is being updated. If false, there are no ongoing update operat... |
| `restoreInfo` | `RestoreInfo` | Output only. Applicable only for restored databases. Contains information about the restore source. |
| `state` | `string` | Output only. The current database state. |
| `versionRetentionPeriod` | `string` | Output only. The period in which Cloud Spanner retains all versions of data for the database. Thi... |

### `DatabaseMoveConfig`

The configuration for each database in the target instance configuration.

| Property | Type | Description |
|----------|------|-------------|
| `databaseId` | `string` | Required. The unique identifier of the database resource in the Instance. For example, if the dat... |
| `encryptionConfig` | `InstanceEncryptionConfig` | Optional. Encryption configuration to be used for the database in the target configuration. The e... |

### `DatabaseRole`

A Cloud Spanner database role.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. The name of the database role. Values are of the form `projects//instances//databases//... |

### `DdlStatementActionInfo`

Action information extracted from a DDL statement. This proto is used to display the brief info of the DDL statement for the operation UpdateDatabaseDdl.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` | The action for the DDL statement, for example, CREATE, ALTER, DROP, GRANT, etc. This field is a n... |
| `entityNames` | `array<string>` | The entity names being operated on the DDL statement. For example, 1. For statement "CREATE TABLE... |
| `entityType` | `string` | The entity type for the DDL statement, for example, TABLE, INDEX, VIEW, etc. This field can be em... |

### `Delete`

Arguments to delete operations.

| Property | Type | Description |
|----------|------|-------------|
| `keySet` | `KeySet` | Required. The primary keys of the rows within table to delete. The primary keys must be specified... |
| `table` | `string` | Required. The table whose rows will be deleted. |

### `DerivedMetric`

A message representing a derived metric.

| Property | Type | Description |
|----------|------|-------------|
| `denominator` | `LocalizedString` | The name of the denominator metric. e.g. "rows". |
| `numerator` | `LocalizedString` | The name of the numerator metric. e.g. "latency". |

### `DiagnosticMessage`

A message representing the key visualizer diagnostic messages.

| Property | Type | Description |
|----------|------|-------------|
| `info` | `LocalizedString` | Information about this diagnostic information. |
| `metric` | `LocalizedString` | The metric. |
| `metricSpecific` | `boolean` | Whether this message is specific only for the current metric. By default Diagnostics are shown fo... |
| `severity` | `string` | The severity of the diagnostic message. |
| `shortMessage` | `LocalizedString` | The short message. |

### `DirectedReadOptions`

The `DirectedReadOptions` can be used to indicate which replicas or regions should be used for non-transactional reads or queries. `DirectedReadOptions` can only be specified for a read-only transaction, otherwise the API returns an `INVALID_ARGUMENT` error.

| Property | Type | Description |
|----------|------|-------------|
| `excludeReplicas` | `ExcludeReplicas` | `Exclude_replicas` indicates that specified replicas should be excluded from serving requests. Sp... |
| `includeReplicas` | `IncludeReplicas` | `Include_replicas` indicates the order of replicas (as they appear in this list) to process the r... |

### `DualRegionQuorum`

Message type for a dual-region quorum. Currently this type has no options.

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `EncryptionConfig`

Encryption configuration for a Cloud Spanner database.

| Property | Type | Description |
|----------|------|-------------|
| `kmsKeyName` | `string` | The Cloud KMS key to be used for encrypting and decrypting the database. Values are of the form `... |
| `kmsKeyNames` | `array<string>` | Specifies the KMS configuration for one or more keys used to encrypt the database. Values are of ... |

### `EncryptionInfo`

Encryption information for a Cloud Spanner database or backup.

| Property | Type | Description |
|----------|------|-------------|
| `encryptionStatus` | `Status` | Output only. If present, the status of a recent encrypt/decrypt call on underlying data for this ... |
| `encryptionType` | `string` | Output only. The type of encryption. |
| `kmsKeyVersion` | `string` | Output only. A Cloud KMS key version that is being used to protect the database or backup. |

### `ExcludeReplicas`

An ExcludeReplicas contains a repeated set of ReplicaSelection that should be excluded from serving requests.

| Property | Type | Description |
|----------|------|-------------|
| `replicaSelections` | `array<ReplicaSelection>` | The directed read replica selector. |

### `ExecuteBatchDmlRequest`

The request for ExecuteBatchDml.

| Property | Type | Description |
|----------|------|-------------|
| `lastStatements` | `boolean` | Optional. If set to `true`, this request marks the end of the transaction. After these statements... |
| `requestOptions` | `RequestOptions` | Common options for this request. |
| `seqno` | `string` | Required. A per-transaction sequence number used to identify this request. This field makes each ... |
| `statements` | `array<Statement>` | Required. The list of statements to execute in this batch. Statements are executed serially, such... |
| `transaction` | `TransactionSelector` | Required. The transaction to use. Must be a read-write transaction. To protect against replays, s... |

### `ExecuteBatchDmlResponse`

The response for ExecuteBatchDml. Contains a list of ResultSet messages, one for each DML statement that has successfully executed, in the same order as the statements in the request. If a statement fails, the status in the response body identifies the cause of the failure. To check for DML statements that failed, use the following approach: 1. Check the status in the response message. The google.rpc.Code enum value `OK` indicates that all statements were executed successfully. 2. If the status was not `OK`, check the number of result sets in the response. If the response contains `N` ResultSet messages, then statement `N+1` in the request failed. Example 1: * Request: 5 DML statements, all executed successfully. * Response: 5 ResultSet messages, with the status `OK`. Example 2: * Request: 5 DML statements. The third statement has a syntax error. * Response: 2 ResultSet messages, and a syntax error (`INVALID_ARGUMENT`) status. The number of ResultSet messages indicates that the third statement failed, and the fourth and fifth statements were not executed.

| Property | Type | Description |
|----------|------|-------------|
| `precommitToken` | `MultiplexedSessionPrecommitToken` | Optional. A precommit token is included if the read-write transaction is on a multiplexed session... |
| `resultSets` | `array<ResultSet>` | One ResultSet for each statement in the request that ran successfully, in the same order as the s... |
| `status` | `Status` | If all DML statements are executed successfully, the status is `OK`. Otherwise, the error status ... |

### `ExecuteSqlRequest`

The request for ExecuteSql and ExecuteStreamingSql.

| Property | Type | Description |
|----------|------|-------------|
| `dataBoostEnabled` | `boolean` | If this is for a partitioned query and this field is set to `true`, the request is executed with ... |
| `directedReadOptions` | `DirectedReadOptions` | Directed read options for this request. |
| `lastStatement` | `boolean` | Optional. If set to `true`, this statement marks the end of the transaction. After this statement... |
| `paramTypes` | `object` | It isn't always possible for Cloud Spanner to infer the right SQL type from a JSON value. For exa... |
| `params` | `object` | Parameter names and values that bind to placeholders in the SQL string. A parameter placeholder c... |
| `partitionToken` | `string` | If present, results are restricted to the specified partition previously created using `Partition... |
| `queryMode` | `string` | Used to control the amount of debugging information returned in ResultSetStats. If partition_toke... |
| `queryOptions` | `QueryOptions` | Query optimizer configuration to use for the given query. |
| `requestOptions` | `RequestOptions` | Common options for this request. |
| `resumeToken` | `string` | If this request is resuming a previously interrupted SQL statement execution, `resume_token` shou... |
| `seqno` | `string` | A per-transaction sequence number used to identify this request. This field makes each request id... |
| `sql` | `string` | Required. The SQL string. |
| `transaction` | `TransactionSelector` | The transaction to use. For queries, if none is provided, the default is a temporary read-only tr... |

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `Field`

Message representing a single field of a struct.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name of the field. For reads, this is the column name. For SQL queries, it is the column alia... |
| `type` | `Type` | The type of the field. |

### `FreeInstanceMetadata`

Free instance specific metadata that is kept even after an instance has been upgraded for tracking purposes.

| Property | Type | Description |
|----------|------|-------------|
| `expireBehavior` | `string` | Specifies the expiration behavior of a free instance. The default of ExpireBehavior is `REMOVE_AF... |
| `expireTime` | `string` | Output only. Timestamp after which the instance will either be upgraded or scheduled for deletion... |
| `upgradeTime` | `string` | Output only. If present, the timestamp at which the free instance was upgraded to a provisioned i... |

### `FullBackupSpec`

The specification for full backups. A full backup stores the entire contents of the database at a given version time.

### `GetDatabaseDdlResponse`

The response for GetDatabaseDdl.

| Property | Type | Description |
|----------|------|-------------|
| `protoDescriptors` | `string` | Proto descriptors stored in the database. Contains a protobuf-serialized [google.protobuf.FileDes... |
| `statements` | `array<string>` | A list of formatted DDL statements defining the schema of the database specified in the request. |

### `GetIamPolicyRequest`

Request message for `GetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `options` | `GetPolicyOptions` | OPTIONAL: A `GetPolicyOptions` object for specifying options to `GetIamPolicy`. |

### `GetPolicyOptions`

Encapsulates settings provided to GetIamPolicy.

| Property | Type | Description |
|----------|------|-------------|
| `requestedPolicyVersion` | `integer` | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, ... |

### `HeartbeatRecord`

A heartbeat record is returned as a progress indicator, when there are no data changes or any other partition record types in the change stream partition.

| Property | Type | Description |
|----------|------|-------------|
| `timestamp` | `string` | Indicates the timestamp at which the query has returned all the records in the change stream part... |

### `IncludeReplicas`

An `IncludeReplicas` contains a repeated set of `ReplicaSelection` which indicates the order in which replicas should be considered.

| Property | Type | Description |
|----------|------|-------------|
| `autoFailoverDisabled` | `boolean` | If `true`, Spanner doesn't route requests to a replica outside the <`include_replicas` list when ... |
| `replicaSelections` | `array<ReplicaSelection>` | The directed read replica selector. |

### `IncrementalBackupSpec`

The specification for incremental backup chains. An incremental backup stores the delta of changes between a previous backup and the database contents at a given version time. An incremental backup chain consists of a full backup and zero or more successive incremental backups. The first backup created for an incremental backup chain is always a full backup.

### `IndexAdvice`

Recommendation to add new indexes to run queries more efficiently.

| Property | Type | Description |
|----------|------|-------------|
| `ddl` | `array<string>` | Optional. DDL statements to add new indexes that will improve the query. |
| `improvementFactor` | `number` | Optional. Estimated latency improvement factor. For example if the query currently takes 500 ms t... |

### `IndexedHotKey`

A message representing a (sparse) collection of hot keys for specific key buckets.

| Property | Type | Description |
|----------|------|-------------|
| `sparseHotKeys` | `object` | A (sparse) mapping from key bucket index to the index of the specific hot row key for that key bu... |

### `IndexedKeyRangeInfos`

A message representing a (sparse) collection of KeyRangeInfos for specific key buckets.

| Property | Type | Description |
|----------|------|-------------|
| `keyRangeInfos` | `object` | A (sparse) mapping from key bucket index to the KeyRangeInfos for that key bucket. |

### `Instance`

An isolated set of Cloud Spanner resources on which databases can be hosted.

| Property | Type | Description |
|----------|------|-------------|
| `autoscalingConfig` | `AutoscalingConfig` | Optional. The autoscaling configuration. Autoscaling is enabled if this field is set. When autosc... |
| `config` | `string` | Required. The name of the instance's configuration. Values are of the form `projects//instanceCon... |
| `createTime` | `string` | Output only. The time at which the instance was created. |
| `defaultBackupScheduleType` | `string` | Optional. Controls the default backup schedule behavior for new databases within the instance. By... |
| `displayName` | `string` | Required. The descriptive name for this instance as it appears in UIs. Must be unique per project... |
| `edition` | `string` | Optional. The `Edition` of the current instance. |
| `endpointUris` | `array<string>` | Deprecated. This field is not populated. |
| `freeInstanceMetadata` | `FreeInstanceMetadata` | Free instance metadata. Only populated for free instances. |
| `instanceType` | `string` | The `InstanceType` of the current instance. |
| `labels` | `object` | Cloud Labels are a flexible and lightweight mechanism for organizing cloud resources into groups ... |
| `name` | `string` | Required. A unique identifier for the instance, which cannot be changed after the instance is cre... |
| `nodeCount` | `integer` | The number of nodes allocated to this instance. At most, one of either `node_count` or `processin... |
| `processingUnits` | `integer` | The number of processing units allocated to this instance. At most, one of either `processing_uni... |
| `replicaComputeCapacity` | `array<ReplicaComputeCapacity>` | Output only. Lists the compute capacity per ReplicaSelection. A replica selection identifies a se... |
| `state` | `string` | Output only. The current instance state. For CreateInstance, the state must be either omitted or ... |
| `updateTime` | `string` | Output only. The time at which the instance was most recently updated. |

### `InstanceConfig`

A possible configuration for a Cloud Spanner instance. Configurations define the geographic placement of nodes and their replication.

| Property | Type | Description |
|----------|------|-------------|
| `baseConfig` | `string` | Base configuration name, e.g. projects//instanceConfigs/nam3, based on which this configuration i... |
| `configType` | `string` | Output only. Whether this instance configuration is a Google-managed or user-managed configuration. |
| `displayName` | `string` | The name of this instance configuration as it appears in UIs. |
| `etag` | `string` | etag is used for optimistic concurrency control as a way to help prevent simultaneous updates of ... |
| `freeInstanceAvailability` | `string` | Output only. Describes whether free instances are available to be created in this instance config... |
| `labels` | `object` | Cloud Labels are a flexible and lightweight mechanism for organizing cloud resources into groups ... |
| `leaderOptions` | `array<string>` | Allowed values of the "default_leader" schema option for databases in instances that use this ins... |
| `name` | `string` | A unique identifier for the instance configuration. Values are of the form `projects//instanceCon... |
| `optionalReplicas` | `array<ReplicaInfo>` | Output only. The available optional replicas to choose from for user-managed configurations. Popu... |
| `quorumType` | `string` | Output only. The `QuorumType` of the instance configuration. |
| `reconciling` | `boolean` | Output only. If true, the instance configuration is being created or updated. If false, there are... |
| `replicas` | `array<ReplicaInfo>` | The geographic placement of nodes in this instance configuration and their replication properties... |
| `state` | `string` | Output only. The current instance configuration state. Applicable only for `USER_MANAGED` configu... |
| `storageLimitPerProcessingUnit` | `string` | Output only. The storage limit in bytes per processing unit. |

### `InstanceEncryptionConfig`

Encryption configuration for a Cloud Spanner database.

| Property | Type | Description |
|----------|------|-------------|
| `kmsKeyName` | `string` | Optional. This field is maintained for backwards compatibility. For new callers, we recommend usi... |
| `kmsKeyNames` | `array<string>` | Optional. Specifies the KMS configuration for one or more keys used to encrypt the database. Valu... |

### `InstanceOperationProgress`

Encapsulates progress related information for a Cloud Spanner long running instance operations.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | If set, the time at which this operation failed or was completed successfully. |
| `progressPercent` | `integer` | Percent completion of the operation. Values are between 0 and 100 inclusive. |
| `startTime` | `string` | Time the request was received. |

### `InstancePartition`

An isolated set of Cloud Spanner resources that databases can define placements on.

| Property | Type | Description |
|----------|------|-------------|
| `autoscalingConfig` | `AutoscalingConfig` | Optional. The autoscaling configuration. Autoscaling is enabled if this field is set. When autosc... |
| `config` | `string` | Required. The name of the instance partition's configuration. Values are of the form `projects//i... |
| `createTime` | `string` | Output only. The time at which the instance partition was created. |
| `displayName` | `string` | Required. The descriptive name for this instance partition as it appears in UIs. Must be unique p... |
| `etag` | `string` | Used for optimistic concurrency control as a way to help prevent simultaneous updates of a instan... |
| `name` | `string` | Required. A unique identifier for the instance partition. Values are of the form `projects//insta... |
| `nodeCount` | `integer` | The number of nodes allocated to this instance partition. Users can set the `node_count` field to... |
| `processingUnits` | `integer` | The number of processing units allocated to this instance partition. Users can set the `processin... |
| `referencingBackups` | `array<string>` | Output only. Deprecated: This field is not populated. Output only. The names of the backups that ... |
| `referencingDatabases` | `array<string>` | Output only. The names of the databases that reference this instance partition. Referencing datab... |
| `state` | `string` | Output only. The current instance partition state. |
| `updateTime` | `string` | Output only. The time at which the instance partition was most recently updated. |

### `InstanceReplicaSelection`

ReplicaSelection identifies replicas with common properties.

| Property | Type | Description |
|----------|------|-------------|
| `location` | `string` | Required. Name of the location of the replicas (for example, "us-central1"). |

### `Key`

A split key.

| Property | Type | Description |
|----------|------|-------------|
| `keyParts` | `array<any>` | Required. The column values making up the split key. |

### `KeyRange`

KeyRange represents a range of rows in a table or index. A range has a start key and an end key. These keys can be open or closed, indicating if the range includes rows with that key. Keys are represented by lists, where the ith value in the list corresponds to the ith component of the table or index primary key. Individual values are encoded as described here. For example, consider the following table definition: CREATE TABLE UserEvents ( UserName STRING(MAX), EventDate STRING(10) ) PRIMARY KEY(UserName, EventDate); The following keys name rows in this table: "Bob", "2014-09-23" Since the `UserEvents` table's `PRIMARY KEY` clause names two columns, each `UserEvents` key has two elements; the first is the `UserName`, and the second is the `EventDate`. Key ranges with multiple components are interpreted lexicographically by component using the table or index key's declared sort order. For example, the following range returns all events for user `"Bob"` that occurred in the year 2015: "start_closed": ["Bob", "2015-01-01"] "end_closed": ["Bob", "2015-12-31"] Start and end keys can omit trailing key components. This affects the inclusion and exclusion of rows that exactly match the provided key components: if the key is closed, then rows that exactly match the provided components are included; if the key is open, then rows that exactly match are not included. For example, the following range includes all events for `"Bob"` that occurred during and after the year 2000: "start_closed": ["Bob", "2000-01-01"] "end_closed": ["Bob"] The next example retrieves all events for `"Bob"`: "start_closed": ["Bob"] "end_closed": ["Bob"] To retrieve events before the year 2000: "start_closed": ["Bob"] "end_open": ["Bob", "2000-01-01"] The following range includes all rows in the table: "start_closed": [] "end_closed": [] This range returns all users whose `UserName` begins with any character from A to C: "start_closed": ["A"] "end_open": ["D"] This range returns all users whose `UserName` begins with B: "start_closed": ["B"] "end_open": ["C"] Key ranges honor column sort order. For example, suppose a table is defined as follows: CREATE TABLE DescendingSortedTable { Key INT64, ... ) PRIMARY KEY(Key DESC); The following range retrieves all rows with key values between 1 and 100 inclusive: "start_closed": ["100"] "end_closed": ["1"] Note that 100 is passed as the start, and 1 is passed as the end, because `Key` is a descending column in the schema.

| Property | Type | Description |
|----------|------|-------------|
| `endClosed` | `array<any>` | If the end is closed, then the range includes all rows whose first `len(end_closed)` key columns ... |
| `endOpen` | `array<any>` | If the end is open, then the range excludes rows whose first `len(end_open)` key columns exactly ... |
| `startClosed` | `array<any>` | If the start is closed, then the range includes all rows whose first `len(start_closed)` key colu... |
| `startOpen` | `array<any>` | If the start is open, then the range excludes rows whose first `len(start_open)` key columns exac... |

### `KeyRangeInfo`

A message representing information for a key range (possibly one key).

| Property | Type | Description |
|----------|------|-------------|
| `contextValues` | `array<ContextValue>` | The list of context values for this key range. |
| `endKeyIndex` | `integer` | The index of the end key in indexed_keys. |
| `info` | `LocalizedString` | Information about this key range, for all metrics. |
| `keysCount` | `string` | The number of keys this range covers. |
| `metric` | `LocalizedString` | The name of the metric. e.g. "latency". |
| `startKeyIndex` | `integer` | The index of the start key in indexed_keys. |
| `timeOffset` | `string` | The time offset. This is the time since the start of the time interval. |
| `unit` | `LocalizedString` | The unit of the metric. This is an unstructured field and will be mapped as is to the user. |
| `value` | `number` | The value of the metric. |

### `KeyRangeInfos`

A message representing a list of specific information for multiple key ranges.

| Property | Type | Description |
|----------|------|-------------|
| `infos` | `array<KeyRangeInfo>` | The list individual KeyRangeInfos. |
| `totalSize` | `integer` | The total size of the list of all KeyRangeInfos. This may be larger than the number of repeated m... |

### `KeySet`

`KeySet` defines a collection of Cloud Spanner keys and/or key ranges. All the keys are expected to be in the same table or index. The keys need not be sorted in any particular way. If the same key is specified multiple times in the set (for example if two ranges, two keys, or a key and a range overlap), Cloud Spanner behaves as if the key were only specified once.

| Property | Type | Description |
|----------|------|-------------|
| `all` | `boolean` | For convenience `all` can be set to `true` to indicate that this `KeySet` matches all keys in the... |
| `keys` | `array<array>` | A list of specific keys. Entries in `keys` should have exactly as many elements as there are colu... |
| `ranges` | `array<KeyRange>` | A list of key ranges. See KeyRange for more information about key range specifications. |

### `ListBackupOperationsResponse`

The response for ListBackupOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | `next_page_token` can be sent in a subsequent ListBackupOperations call to fetch more of the matc... |
| `operations` | `array<Operation>` | The list of matching backup long-running operations. Each operation's name will be prefixed by th... |

### `ListBackupSchedulesResponse`

The response for ListBackupSchedules.

| Property | Type | Description |
|----------|------|-------------|
| `backupSchedules` | `array<BackupSchedule>` | The list of backup schedules for a database. |
| `nextPageToken` | `string` | `next_page_token` can be sent in a subsequent ListBackupSchedules call to fetch more of the sched... |

### `ListBackupsResponse`

The response for ListBackups.

| Property | Type | Description |
|----------|------|-------------|
| `backups` | `array<Backup>` | The list of matching backups. Backups returned are ordered by `create_time` in descending order, ... |
| `nextPageToken` | `string` | `next_page_token` can be sent in a subsequent ListBackups call to fetch more of the matching back... |

### `ListDatabaseOperationsResponse`

The response for ListDatabaseOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | `next_page_token` can be sent in a subsequent ListDatabaseOperations call to fetch more of the ma... |
| `operations` | `array<Operation>` | The list of matching database long-running operations. Each operation's name will be prefixed by ... |

### `ListDatabaseRolesResponse`

The response for ListDatabaseRoles.

| Property | Type | Description |
|----------|------|-------------|
| `databaseRoles` | `array<DatabaseRole>` | Database roles that matched the request. |
| `nextPageToken` | `string` | `next_page_token` can be sent in a subsequent ListDatabaseRoles call to fetch more of the matchin... |

### `ListDatabasesResponse`

The response for ListDatabases.

| Property | Type | Description |
|----------|------|-------------|
| `databases` | `array<Database>` | Databases that matched the request. |
| `nextPageToken` | `string` | `next_page_token` can be sent in a subsequent ListDatabases call to fetch more of the matching da... |

### `ListInstanceConfigOperationsResponse`

The response for ListInstanceConfigOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | `next_page_token` can be sent in a subsequent ListInstanceConfigOperations call to fetch more of ... |
| `operations` | `array<Operation>` | The list of matching instance configuration long-running operations. Each operation's name will b... |

### `ListInstanceConfigsResponse`

The response for ListInstanceConfigs.

| Property | Type | Description |
|----------|------|-------------|
| `instanceConfigs` | `array<InstanceConfig>` | The list of requested instance configurations. |
| `nextPageToken` | `string` | `next_page_token` can be sent in a subsequent ListInstanceConfigs call to fetch more of the match... |

### `ListInstancePartitionOperationsResponse`

The response for ListInstancePartitionOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | `next_page_token` can be sent in a subsequent ListInstancePartitionOperations call to fetch more ... |
| `operations` | `array<Operation>` | The list of matching instance partition long-running operations. Each operation's name will be pr... |
| `unreachableInstancePartitions` | `array<string>` | The list of unreachable instance partitions. It includes the names of instance partitions whose o... |

### `ListInstancePartitionsResponse`

The response for ListInstancePartitions.

| Property | Type | Description |
|----------|------|-------------|
| `instancePartitions` | `array<InstancePartition>` | The list of requested instancePartitions. |
| `nextPageToken` | `string` | `next_page_token` can be sent in a subsequent ListInstancePartitions call to fetch more of the ma... |
| `unreachable` | `array<string>` | The list of unreachable instances or instance partitions. It includes the names of instances or i... |

### `ListInstancesResponse`

The response for ListInstances.

| Property | Type | Description |
|----------|------|-------------|
| `instances` | `array<Instance>` | The list of requested instances. |
| `nextPageToken` | `string` | `next_page_token` can be sent in a subsequent ListInstances call to fetch more of the matching in... |
| `unreachable` | `array<string>` | The list of unreachable instances. It includes the names of instances whose metadata could not be... |

### `ListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<Operation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `ListScansResponse`

Response method from the ListScans method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |
| `scans` | `array<Scan>` | Available scans based on the list query parameters. |

### `ListSessionsResponse`

The response for ListSessions.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | `next_page_token` can be sent in a subsequent ListSessions call to fetch more of the matching ses... |
| `sessions` | `array<Session>` | The list of requested sessions. |

### `LocalizedString`

A message representing a user-facing string whose value may need to be translated before being displayed.

| Property | Type | Description |
|----------|------|-------------|
| `args` | `object` | A map of arguments used when creating the localized message. Keys represent parameter names which... |
| `message` | `string` | The canonical English version of this message. If no token is provided or the front-end has no me... |
| `token` | `string` | The token identifying the message, e.g. 'METRIC_READ_CPU'. This should be unique within the service. |

### `Metric`

A message representing the actual monitoring data, values for each key bucket over time, of a metric.

| Property | Type | Description |
|----------|------|-------------|
| `aggregation` | `string` | The aggregation function used to aggregate each key bucket |
| `category` | `LocalizedString` | The category of the metric, e.g. "Activity", "Alerts", "Reads", etc. |
| `derived` | `DerivedMetric` | The references to numerator and denominator metrics for a derived metric. |
| `displayLabel` | `LocalizedString` | The displayed label of the metric. |
| `hasNonzeroData` | `boolean` | Whether the metric has any non-zero data. |
| `hotValue` | `number` | The value that is considered hot for the metric. On a per metric basis hotness signals high utili... |
| `indexedHotKeys` | `object` | The (sparse) mapping from time index to an IndexedHotKey message, representing those time interva... |
| `indexedKeyRangeInfos` | `object` | The (sparse) mapping from time interval index to an IndexedKeyRangeInfos message, representing th... |
| `info` | `LocalizedString` | Information about the metric. |
| `matrix` | `MetricMatrix` | The data for the metric as a matrix. |
| `unit` | `LocalizedString` | The unit of the metric. |
| `visible` | `boolean` | Whether the metric is visible to the end user. |

### `MetricMatrix`

A message representing a matrix of floats.

| Property | Type | Description |
|----------|------|-------------|
| `rows` | `array<MetricMatrixRow>` | The rows of the matrix. |

### `MetricMatrixRow`

A message representing a row of a matrix of floats.

| Property | Type | Description |
|----------|------|-------------|
| `cols` | `array<number>` | The columns of the row. |

### `Mod`

A mod describes all data changes in a watched table row.

| Property | Type | Description |
|----------|------|-------------|
| `keys` | `array<ModValue>` | Returns the value of the primary key of the modified row. |
| `newValues` | `array<ModValue>` | Returns the new values after the change for the modified columns. Always empty for DELETE. |
| `oldValues` | `array<ModValue>` | Returns the old values before the change for the modified columns. Always empty for INSERT, or if... |

### `ModValue`

Returns the value and associated metadata for a particular field of the Mod.

| Property | Type | Description |
|----------|------|-------------|
| `columnMetadataIndex` | `integer` | Index within the repeated column_metadata field, to obtain the column metadata for the column tha... |
| `value` | `any` | The value of the column. |

### `MoveInEvent`

Describes move-in of the key ranges into the change stream partition identified by partition_token. To maintain processing the changes for a particular key in timestamp order, the query processing the change stream partition identified by partition_token should not advance beyond the partition event record commit timestamp until the queries processing the source change stream partitions have processed all change stream records with timestamps <= the partition event record commit timestamp.

| Property | Type | Description |
|----------|------|-------------|
| `sourcePartitionToken` | `string` | An unique partition identifier describing the source change stream partition that recorded change... |

### `MoveInstanceRequest`

The request for MoveInstance.

| Property | Type | Description |
|----------|------|-------------|
| `targetConfig` | `string` | Required. The target instance configuration where to move the instance. Values are of the form `p... |
| `targetDatabaseMoveConfigs` | `array<DatabaseMoveConfig>` | Optional. The configuration for each database in the target instance configuration. |

### `MoveOutEvent`

Describes move-out of the key ranges out of the change stream partition identified by partition_token. To maintain processing the changes for a particular key in timestamp order, the query processing the MoveOutEvent in the partition identified by partition_token should inform the queries processing the destination partitions that they can unblock and proceed processing records past the commit_timestamp.

| Property | Type | Description |
|----------|------|-------------|
| `destinationPartitionToken` | `string` | An unique partition identifier describing the destination change stream partition that will recor... |

### `MultiplexedSessionPrecommitToken`

When a read-write transaction is executed on a multiplexed session, this precommit token is sent back to the client as a part of the Transaction message in the BeginTransaction response and also as a part of the ResultSet and PartialResultSet responses.

| Property | Type | Description |
|----------|------|-------------|
| `precommitToken` | `string` | Opaque precommit token. |
| `seqNum` | `integer` | An incrementing seq number is generated on every precommit token that is returned. Clients should... |

### `Mutation`

A modification to one or more Cloud Spanner rows. Mutations can be applied to a Cloud Spanner database by sending them in a Commit call.

| Property | Type | Description |
|----------|------|-------------|
| `ack` | `Ack` | Ack a message from a queue. |
| `delete` | `Delete` | Delete rows from a table. Succeeds whether or not the named rows were present. |
| `insert` | `Write` | Insert new rows in a table. If any of the rows already exist, the write or transaction fails with... |
| `insertOrUpdate` | `Write` | Like insert, except that if the row already exists, then its column values are overwritten with t... |
| `replace` | `Write` | Like insert, except that if the row already exists, it is deleted, and the column values provided... |
| `send` | `Send` | Send a message to a queue. |
| `update` | `Write` | Update existing rows in a table. If any of the rows does not already exist, the transaction fails... |

### `MutationGroup`

A group of mutations to be committed together. Related mutations should be placed in a group. For example, two mutations inserting rows with the same primary key prefix in both parent and child tables are related.

| Property | Type | Description |
|----------|------|-------------|
| `mutations` | `array<Mutation>` | Required. The mutations in this group. |

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `OperationProgress`

Encapsulates progress related information for a Cloud Spanner long running operation.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | If set, the time at which this operation failed or was completed successfully. |
| `progressPercent` | `integer` | Percent completion of the operation. Values are between 0 and 100 inclusive. |
| `startTime` | `string` | Time the request was received. |

### `OptimizeRestoredDatabaseMetadata`

Metadata type for the long-running operation used to track the progress of optimizations performed on a newly restored database. This long-running operation is automatically created by the system after the successful completion of a database restore, and cannot be cancelled.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Name of the restored database being optimized. |
| `progress` | `OperationProgress` | The progress of the post-restore optimizations. |

### `PartialResultSet`

Partial results from a streaming read or SQL query. Streaming reads and SQL queries better tolerate large result sets, large rows, and large values, but are a little trickier to consume.

| Property | Type | Description |
|----------|------|-------------|
| `chunkedValue` | `boolean` | If true, then the final value in values is chunked, and must be combined with more values from su... |
| `last` | `boolean` | Optional. Indicates whether this is the last `PartialResultSet` in the stream. The server might o... |
| `metadata` | `ResultSetMetadata` | Metadata about the result set, such as row type information. Only present in the first response. |
| `precommitToken` | `MultiplexedSessionPrecommitToken` | Optional. A precommit token is included if the read-write transaction has multiplexed sessions en... |
| `resumeToken` | `string` | Streaming calls might be interrupted for a variety of reasons, such as TCP connection loss. If th... |
| `stats` | `ResultSetStats` | Query plan and execution statistics for the statement that produced this streaming result set. Th... |
| `values` | `array<any>` | A streamed result set consists of a stream of values, which might be split into many `PartialResu... |

### `Partition`

Information returned for each partition returned in a PartitionResponse.

| Property | Type | Description |
|----------|------|-------------|
| `partitionToken` | `string` | This token can be passed to `Read`, `StreamingRead`, `ExecuteSql`, or `ExecuteStreamingSql` reque... |

### `PartitionEndRecord`

A partition end record serves as a notification that the client should stop reading the partition. No further records are expected to be retrieved on it.

| Property | Type | Description |
|----------|------|-------------|
| `endTimestamp` | `string` | End timestamp at which the change stream partition is terminated. All changes generated by this p... |
| `partitionToken` | `string` | Unique partition identifier describing the terminated change stream partition. partition_token is... |
| `recordSequence` | `string` | Record sequence numbers are unique and monotonically increasing (but not necessarily contiguous) ... |

### `PartitionEventRecord`

A partition event record describes key range changes for a change stream partition. The changes to a row defined by its primary key can be captured in one change stream partition for a specific time range, and then be captured in a different change stream partition for a different time range. This movement of key ranges across change stream partitions is a reflection of activities, such as Spanner's dynamic splitting and load balancing, etc. Processing this event is needed if users want to guarantee processing of the changes for any key in timestamp order. If time ordered processing of changes for a primary key is not needed, this event can be ignored. To guarantee time ordered processing for each primary key, if the event describes move-ins, the reader of this partition needs to wait until the readers of the source partitions have processed all records with timestamps <= this PartitionEventRecord.commit_timestamp, before advancing beyond this PartitionEventRecord. If the event describes move-outs, the reader can notify the readers of the destination partitions that they can continue processing.

| Property | Type | Description |
|----------|------|-------------|
| `commitTimestamp` | `string` | Indicates the commit timestamp at which the key range change occurred. DataChangeRecord.commit_ti... |
| `moveInEvents` | `array<MoveInEvent>` | Set when one or more key ranges are moved into the change stream partition identified by partitio... |
| `moveOutEvents` | `array<MoveOutEvent>` | Set when one or more key ranges are moved out of the change stream partition identified by partit... |
| `partitionToken` | `string` | Unique partition identifier describing the partition this event occurred on. partition_token is e... |
| `recordSequence` | `string` | Record sequence numbers are unique and monotonically increasing (but not necessarily contiguous) ... |

### `PartitionOptions`

Options for a `PartitionQueryRequest` and `PartitionReadRequest`.

| Property | Type | Description |
|----------|------|-------------|
| `maxPartitions` | `string` | **Note:** This hint is currently ignored by `PartitionQuery` and `PartitionRead` requests. The de... |
| `partitionSizeBytes` | `string` | **Note:** This hint is currently ignored by `PartitionQuery` and `PartitionRead` requests. The de... |

### `PartitionQueryRequest`

The request for PartitionQuery

| Property | Type | Description |
|----------|------|-------------|
| `paramTypes` | `object` | Optional. It isn't always possible for Cloud Spanner to infer the right SQL type from a JSON valu... |
| `params` | `object` | Optional. Parameter names and values that bind to placeholders in the SQL string. A parameter pla... |
| `partitionOptions` | `PartitionOptions` | Additional options that affect how many partitions are created. |
| `sql` | `string` | Required. The query request to generate partitions for. The request fails if the query isn't root... |
| `transaction` | `TransactionSelector` | Read-only snapshot transactions are supported, read and write and single-use transactions are not. |

### `PartitionReadRequest`

The request for PartitionRead

| Property | Type | Description |
|----------|------|-------------|
| `columns` | `array<string>` | The columns of table to be returned for each row matching this request. |
| `index` | `string` | If non-empty, the name of an index on table. This index is used instead of the table primary key ... |
| `keySet` | `KeySet` | Required. `key_set` identifies the rows to be yielded. `key_set` names the primary keys of the ro... |
| `partitionOptions` | `PartitionOptions` | Additional options that affect how many partitions are created. |
| `table` | `string` | Required. The name of the table in the database to be read. |
| `transaction` | `TransactionSelector` | Read only snapshot transactions are supported, read/write and single use transactions are not. |

### `PartitionResponse`

The response for PartitionQuery or PartitionRead

| Property | Type | Description |
|----------|------|-------------|
| `partitions` | `array<Partition>` | Partitions created by this request. |
| `transaction` | `Transaction` | Transaction created by this request. |

### `PartitionStartRecord`

A partition start record serves as a notification that the client should schedule the partitions to be queried. PartitionStartRecord returns information about one or more partitions.

| Property | Type | Description |
|----------|------|-------------|
| `partitionTokens` | `array<string>` | Unique partition identifiers to be used in queries. |
| `recordSequence` | `string` | Record sequence numbers are unique and monotonically increasing (but not necessarily contiguous) ... |
| `startTimestamp` | `string` | Start timestamp at which the partitions should be queried to return change stream records with ti... |

### `PartitionedDml`

Message type to initiate a Partitioned DML transaction.

### `PlanNode`

Node information for nodes appearing in a QueryPlan.plan_nodes.

| Property | Type | Description |
|----------|------|-------------|
| `childLinks` | `array<ChildLink>` | List of child node `index`es and their relationship to this parent. |
| `displayName` | `string` | The display name for the node. |
| `executionStats` | `object` | The execution statistics associated with the node, contained in a group of key-value pairs. Only ... |
| `index` | `integer` | The `PlanNode`'s index in node list. |
| `kind` | `string` | Used to determine the type of node. May be needed for visualizing different kinds of nodes differ... |
| `metadata` | `object` | Attributes relevant to the node contained in a group of key-value pairs. For example, a Parameter... |
| `shortRepresentation` | `ShortRepresentation` | Condensed representation for SCALAR nodes. |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `PrefixNode`

A message representing a key prefix node in the key prefix hierarchy. for eg. Bigtable keyspaces are lexicographically ordered mappings of keys to values. Keys often have a shared prefix structure where users use the keys to organize data. Eg ///employee In this case Keysight will possibly use one node for a company and reuse it for all employees that fall under the company. Doing so improves legibility in the UI.

| Property | Type | Description |
|----------|------|-------------|
| `dataSourceNode` | `boolean` | Whether this corresponds to a data_source name. |
| `depth` | `integer` | The depth in the prefix hierarchy. |
| `endIndex` | `integer` | The index of the end key bucket of the range that this node spans. |
| `startIndex` | `integer` | The index of the start key bucket of the range that this node spans. |
| `word` | `string` | The string represented by the prefix node. |

### `QueryAdvisorResult`

Output of query advisor analysis.

| Property | Type | Description |
|----------|------|-------------|
| `indexAdvice` | `array<IndexAdvice>` | Optional. Index Recommendation for a query. This is an optional field and the recommendation will... |

### `QueryOptions`

Query optimizer configuration.

| Property | Type | Description |
|----------|------|-------------|
| `optimizerStatisticsPackage` | `string` | An option to control the selection of optimizer statistics package. This parameter allows individ... |
| `optimizerVersion` | `string` | An option to control the selection of optimizer version. This parameter allows individual queries... |

### `QueryPlan`

Contains an ordered list of nodes appearing in the query plan.

| Property | Type | Description |
|----------|------|-------------|
| `planNodes` | `array<PlanNode>` | The nodes in the query plan. Plan nodes are returned in pre-order starting with the plan root. Ea... |
| `queryAdvice` | `QueryAdvisorResult` | Optional. The advise/recommendations for a query. Currently this field will be serving index reco... |

### `QuorumInfo`

Information about the dual-region quorum.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Output only. The etag is used for optimistic concurrency control as a way to help prevent simulta... |
| `initiator` | `string` | Output only. Whether this `ChangeQuorum` is Google or User initiated. |
| `quorumType` | `QuorumType` | Output only. The type of this quorum. See QuorumType for more information about quorum type speci... |
| `startTime` | `string` | Output only. The timestamp when the request was triggered. |

### `QuorumType`

Information about the database quorum type. This only applies to dual-region instance configs.

| Property | Type | Description |
|----------|------|-------------|
| `dualRegion` | `DualRegionQuorum` | Dual-region quorum type. |
| `singleRegion` | `SingleRegionQuorum` | Single-region quorum type. |

### `ReadOnly`

Message type to initiate a read-only transaction.

| Property | Type | Description |
|----------|------|-------------|
| `exactStaleness` | `string` | Executes all reads at a timestamp that is `exact_staleness` old. The timestamp is chosen soon aft... |
| `maxStaleness` | `string` | Read data at a timestamp >= `NOW - max_staleness` seconds. Guarantees that all writes that have c... |
| `minReadTimestamp` | `string` | Executes all reads at a timestamp >= `min_read_timestamp`. This is useful for requesting fresher ... |
| `readTimestamp` | `string` | Executes all reads at the given timestamp. Unlike other modes, reads at a specific timestamp are ... |
| `returnReadTimestamp` | `boolean` | If true, the Cloud Spanner-selected read timestamp is included in the Transaction message that de... |
| `strong` | `boolean` | Read at a timestamp where all previously committed transactions are visible. |

### `ReadRequest`

The request for Read and StreamingRead.

| Property | Type | Description |
|----------|------|-------------|
| `columns` | `array<string>` | Required. The columns of table to be returned for each row matching this request. |
| `dataBoostEnabled` | `boolean` | If this is for a partitioned read and this field is set to `true`, the request is executed with S... |
| `directedReadOptions` | `DirectedReadOptions` | Directed read options for this request. |
| `index` | `string` | If non-empty, the name of an index on table. This index is used instead of the table primary key ... |
| `keySet` | `KeySet` | Required. `key_set` identifies the rows to be yielded. `key_set` names the primary keys of the ro... |
| `limit` | `string` | If greater than zero, only the first `limit` rows are yielded. If `limit` is zero, the default is... |
| `lockHint` | `string` | Optional. Lock Hint for the request, it can only be used with read-write transactions. |
| `orderBy` | `string` | Optional. Order for the returned rows. By default, Spanner returns result rows in primary key ord... |
| `partitionToken` | `string` | If present, results are restricted to the specified partition previously created using `Partition... |
| `requestOptions` | `RequestOptions` | Common options for this request. |
| `resumeToken` | `string` | If this request is resuming a previously interrupted read, `resume_token` should be copied from t... |
| `table` | `string` | Required. The name of the table in the database to be read. |
| `transaction` | `TransactionSelector` | The transaction to use. If none is provided, the default is a temporary read-only transaction wit... |

### `ReadWrite`

Message type to initiate a read-write transaction. Currently this transaction type has no options.

| Property | Type | Description |
|----------|------|-------------|
| `multiplexedSessionPreviousTransactionId` | `string` | Optional. Clients should pass the transaction ID of the previous transaction attempt that was abo... |
| `readLockMode` | `string` | Read lock mode for the transaction. |

### `ReplicaComputeCapacity`

ReplicaComputeCapacity describes the amount of server resources that are allocated to each replica identified by the replica selection.

| Property | Type | Description |
|----------|------|-------------|
| `nodeCount` | `integer` | The number of nodes allocated to each replica. This may be zero in API responses for instances th... |
| `processingUnits` | `integer` | The number of processing units allocated to each replica. This may be zero in API responses for i... |
| `replicaSelection` | `InstanceReplicaSelection` | Required. Identifies replicas by specified properties. All replicas in the selection have the sam... |

### `ReplicaInfo`

| Property | Type | Description |
|----------|------|-------------|
| `defaultLeaderLocation` | `boolean` | If true, this location is designated as the default leader location where leader replicas are pla... |
| `location` | `string` | The location of the serving resources, e.g., "us-central1". |
| `type` | `string` | The type of replica. |

### `ReplicaSelection`

The directed read replica selector. Callers must provide one or more of the following fields for replica selection: * `location` - The location must be one of the regions within the multi-region configuration of your database. * `type` - The type of the replica. Some examples of using replica_selectors are: * `location:us-east1` --> The "us-east1" replica(s) of any available type is used to process the request. * `type:READ_ONLY` --> The "READ_ONLY" type replica(s) in the nearest available location are used to process the request. * `location:us-east1 type:READ_ONLY` --> The "READ_ONLY" type replica(s) in location "us-east1" is used to process the request.

| Property | Type | Description |
|----------|------|-------------|
| `location` | `string` | The location or region of the serving requests, for example, "us-east1". |
| `type` | `string` | The type of replica. |

### `RequestOptions`

Common request options for various APIs.

| Property | Type | Description |
|----------|------|-------------|
| `clientContext` | `ClientContext` | Optional. Optional context that may be needed for some requests. |
| `priority` | `string` | Priority for the request. |
| `requestTag` | `string` | A per-request tag which can be applied to queries or reads, used for statistics collection. Both ... |
| `transactionTag` | `string` | A tag used for statistics collection about this transaction. Both `request_tag` and `transaction_... |

### `RestoreDatabaseEncryptionConfig`

Encryption configuration for the restored database.

| Property | Type | Description |
|----------|------|-------------|
| `encryptionType` | `string` | Required. The encryption type of the restored database. |
| `kmsKeyName` | `string` | Optional. This field is maintained for backwards compatibility. For new callers, we recommend usi... |
| `kmsKeyNames` | `array<string>` | Optional. Specifies the KMS configuration for one or more keys used to encrypt the database. Valu... |

### `RestoreDatabaseMetadata`

Metadata type for the long-running operation returned by RestoreDatabase.

| Property | Type | Description |
|----------|------|-------------|
| `backupInfo` | `BackupInfo` | Information about the backup used to restore the database. |
| `cancelTime` | `string` | The time at which cancellation of this operation was received. Operations.CancelOperation starts ... |
| `name` | `string` | Name of the database being created and restored to. |
| `optimizeDatabaseOperationName` | `string` | If exists, the name of the long-running operation that will be used to track the post-restore opt... |
| `progress` | `OperationProgress` | The progress of the RestoreDatabase operation. |
| `sourceType` | `string` | The type of the restore source. |

### `RestoreDatabaseRequest`

The request for RestoreDatabase.

| Property | Type | Description |
|----------|------|-------------|
| `backup` | `string` | Name of the backup from which to restore. Values are of the form `projects//instances//backups/`. |
| `databaseId` | `string` | Required. The id of the database to create and restore to. This database must not already exist. ... |
| `encryptionConfig` | `RestoreDatabaseEncryptionConfig` | Optional. An encryption configuration describing the encryption type and key resources in Cloud K... |

### `RestoreInfo`

Information about the database restore.

| Property | Type | Description |
|----------|------|-------------|
| `backupInfo` | `BackupInfo` | Information about the backup used to restore the database. The backup may no longer exist. |
| `sourceType` | `string` | The type of the restore source. |

### `ResultSet`

Results from Read or ExecuteSql.

| Property | Type | Description |
|----------|------|-------------|
| `metadata` | `ResultSetMetadata` | Metadata about the result set, such as row type information. |
| `precommitToken` | `MultiplexedSessionPrecommitToken` | Optional. A precommit token is included if the read-write transaction is on a multiplexed session... |
| `rows` | `array<array>` | Each element in `rows` is a row whose format is defined by metadata.row_type. The ith element in ... |
| `stats` | `ResultSetStats` | Query plan and execution statistics for the SQL statement that produced this result set. These ca... |

### `ResultSetMetadata`

Metadata about a ResultSet or PartialResultSet.

| Property | Type | Description |
|----------|------|-------------|
| `rowType` | `StructType` | Indicates the field names and types for the rows in the result set. For example, a SQL query like... |
| `transaction` | `Transaction` | If the read or SQL query began a transaction as a side-effect, the information about the new tran... |
| `undeclaredParameters` | `StructType` | A SQL query can be parameterized. In PLAN mode, these parameters can be undeclared. This indicate... |

### `ResultSetStats`

Additional statistics about a ResultSet or PartialResultSet.

| Property | Type | Description |
|----------|------|-------------|
| `queryPlan` | `QueryPlan` | QueryPlan for the query associated with this result. |
| `queryStats` | `object` | Aggregated statistics from the execution of the query. Only present when the query is profiled. F... |
| `rowCountExact` | `string` | Standard DML returns an exact count of rows that were modified. |
| `rowCountLowerBound` | `string` | Partitioned DML doesn't offer exactly-once semantics, so it returns a lower bound of the rows mod... |

### `RollbackRequest`

The request for Rollback.

| Property | Type | Description |
|----------|------|-------------|
| `transactionId` | `string` | Required. The transaction to roll back. |

### `Scan`

Scan is a structure which describes Cloud Key Visualizer scan information.

| Property | Type | Description |
|----------|------|-------------|
| `details` | `object` | Additional information provided by the implementer. |
| `endTime` | `string` | The upper bound for when the scan is defined. |
| `name` | `string` | The unique name of the scan, specific to the Database service implementing this interface. |
| `scanData` | `ScanData` | Output only. Cloud Key Visualizer scan data. Note, this field is not available to the ListScans m... |
| `startTime` | `string` | A range of time (inclusive) for when the scan is defined. The lower bound for when the scan is de... |

### `ScanData`

ScanData contains Cloud Key Visualizer scan data used by the caller to construct a visualization.

| Property | Type | Description |
|----------|------|-------------|
| `data` | `VisualizationData` | Cloud Key Visualizer scan data. The range of time this information covers is captured via the abo... |
| `endTime` | `string` | The upper bound for when the contained data is defined. |
| `startTime` | `string` | A range of time (inclusive) for when the contained data is defined. The lower bound for when the ... |

### `Send`

Arguments to send operations.

| Property | Type | Description |
|----------|------|-------------|
| `deliverTime` | `string` | The time at which Spanner will begin attempting to deliver the message. If `deliver_time` is not ... |
| `key` | `array<any>` | Required. The primary key of the message to be sent. |
| `payload` | `any` | The payload of the message. |
| `queue` | `string` | Required. The queue to which the message will be sent. |

### `Session`

A session in the Cloud Spanner API.

| Property | Type | Description |
|----------|------|-------------|
| `approximateLastUseTime` | `string` | Output only. The approximate timestamp when the session is last used. It's typically earlier than... |
| `createTime` | `string` | Output only. The timestamp when the session is created. |
| `creatorRole` | `string` | The database role which created this session. |
| `labels` | `object` | The labels for the session. * Label keys must be between 1 and 63 characters long and must confor... |
| `multiplexed` | `boolean` | Optional. If `true`, specifies a multiplexed session. Use a multiplexed session for multiple, con... |
| `name` | `string` | Output only. The name of the session. This is always system-assigned. |

### `SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |

### `ShortRepresentation`

Condensed representation of a node and its subtree. Only present for `SCALAR` PlanNode(s).

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | A string representation of the expression subtree rooted at this node. |
| `subqueries` | `object` | A mapping of (subquery variable name) -> (subquery node id) for cases where the `description` str... |

### `SingleRegionQuorum`

Message type for a single-region quorum.

| Property | Type | Description |
|----------|------|-------------|
| `servingLocation` | `string` | Required. The location of the serving region, for example, "us-central1". The location must be on... |

### `SplitPoints`

The split points of a table or an index.

| Property | Type | Description |
|----------|------|-------------|
| `expireTime` | `string` | Optional. The expiration timestamp of the split points. A timestamp in the past means immediate e... |
| `index` | `string` | The index to split. If specified, the `table` field must refer to the index's base table. |
| `keys` | `array<Key>` | Required. The list of split keys. In essence, the split boundaries. |
| `table` | `string` | The table to split. |

### `Statement`

A single DML statement.

| Property | Type | Description |
|----------|------|-------------|
| `paramTypes` | `object` | It isn't always possible for Cloud Spanner to infer the right SQL type from a JSON value. For exa... |
| `params` | `object` | Parameter names and values that bind to placeholders in the DML string. A parameter placeholder c... |
| `sql` | `string` | Required. The DML string. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `StructType`

`StructType` defines the fields of a STRUCT type.

| Property | Type | Description |
|----------|------|-------------|
| `fields` | `array<Field>` | The list of fields that make up this struct. Order is significant, because values of this struct ... |

### `TestIamPermissionsRequest`

Request message for `TestIamPermissions` method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | REQUIRED: The set of permissions to check for 'resource'. Permissions with wildcards (such as '*'... |

### `TestIamPermissionsResponse`

Response message for `TestIamPermissions` method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | A subset of `TestPermissionsRequest.permissions` that the caller is allowed. |

### `Transaction`

A transaction.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | `id` may be used to identify the transaction in subsequent Read, ExecuteSql, Commit, or Rollback ... |
| `precommitToken` | `MultiplexedSessionPrecommitToken` | A precommit token is included in the response of a BeginTransaction request if the read-write tra... |
| `readTimestamp` | `string` | For snapshot read-only transactions, the read timestamp chosen for the transaction. Not returned ... |

### `TransactionOptions`

Options to use for transactions.

| Property | Type | Description |
|----------|------|-------------|
| `excludeTxnFromChangeStreams` | `boolean` | When `exclude_txn_from_change_streams` is set to `true`, it prevents read or write transactions f... |
| `isolationLevel` | `string` | Isolation level for the transaction. |
| `partitionedDml` | `PartitionedDml` | Partitioned DML transaction. Authorization to begin a Partitioned DML transaction requires `spann... |
| `readOnly` | `ReadOnly` | Transaction does not write. Authorization to begin a read-only transaction requires `spanner.data... |
| `readWrite` | `ReadWrite` | Transaction may write. Authorization to begin a read-write transaction requires `spanner.database... |

### `TransactionSelector`

This message is used to select the transaction in which a Read or ExecuteSql call runs. See TransactionOptions for more information about transactions.

| Property | Type | Description |
|----------|------|-------------|
| `begin` | `TransactionOptions` | Begin a new transaction and execute this read or SQL query in it. The transaction ID of the new t... |
| `id` | `string` | Execute the read or SQL query in a previously-started transaction. |
| `singleUse` | `TransactionOptions` | Execute the read or SQL query in a temporary transaction. This is the most efficient way to execu... |

### `Type`

`Type` indicates the type of a Cloud Spanner value, as might be stored in a table cell or returned from an SQL query.

| Property | Type | Description |
|----------|------|-------------|
| `arrayElementType` | `Type` | If code == ARRAY, then `array_element_type` is the type of the array elements. |
| `code` | `string` | Required. The TypeCode for this type. |
| `protoTypeFqn` | `string` | If code == PROTO or code == ENUM, then `proto_type_fqn` is the fully qualified name of the proto ... |
| `structType` | `StructType` | If code == STRUCT, then `struct_type` provides type information for the struct's fields. |
| `typeAnnotation` | `string` | The TypeAnnotationCode that disambiguates SQL type that Spanner will use to represent values of t... |

### `UpdateDatabaseDdlMetadata`

Metadata type for the operation returned by UpdateDatabaseDdl.

| Property | Type | Description |
|----------|------|-------------|
| `actions` | `array<DdlStatementActionInfo>` | The brief action info for the DDL statements. `actions[i]` is the brief info for `statements[i]`. |
| `commitTimestamps` | `array<string>` | Reports the commit timestamps of all statements that have succeeded so far, where `commit_timesta... |
| `database` | `string` | The database being modified. |
| `progress` | `array<OperationProgress>` | The progress of the UpdateDatabaseDdl operations. All DDL statements will have continuously updat... |
| `statements` | `array<string>` | For an update this list contains all the statements. For an individual statement, this list conta... |
| `throttled` | `boolean` | Output only. When true, indicates that the operation is throttled, for example, due to resource c... |

### `UpdateDatabaseDdlRequest`

Enqueues the given DDL statements to be applied, in order but not necessarily all at once, to the database schema at some point (or points) in the future. The server checks that the statements are executable (syntactically valid, name tables that exist, etc.) before enqueueing them, but they may still fail upon later execution (for example, if a statement from another batch of statements is applied first and it conflicts in some way, or if there is some data-related problem like a `NULL` value in a column to which `NOT NULL` would be added). If a statement fails, all subsequent statements in the batch are automatically cancelled. Each batch of statements is assigned a name which can be used with the Operations API to monitor progress. See the operation_id field for more details.

| Property | Type | Description |
|----------|------|-------------|
| `operationId` | `string` | If empty, the new update request is assigned an automatically-generated operation ID. Otherwise, ... |
| `protoDescriptors` | `string` | Optional. Proto descriptors used by CREATE/ALTER PROTO BUNDLE statements. Contains a protobuf-ser... |
| `statements` | `array<string>` | Required. DDL statements to be applied to the database. |

### `UpdateDatabaseMetadata`

Metadata type for the operation returned by UpdateDatabase.

| Property | Type | Description |
|----------|------|-------------|
| `cancelTime` | `string` | The time at which this operation was cancelled. If set, this operation is in the process of undoi... |
| `progress` | `OperationProgress` | The progress of the UpdateDatabase operation. |
| `request` | `UpdateDatabaseRequest` | The request for UpdateDatabase. |

### `UpdateDatabaseRequest`

The request for UpdateDatabase.

| Property | Type | Description |
|----------|------|-------------|
| `database` | `Database` | Required. The database to update. The `name` field of the database is of the form `projects//inst... |
| `updateMask` | `string` | Required. The list of fields to update. Currently, only `enable_drop_protection` field can be upd... |

### `UpdateInstanceConfigMetadata`

Metadata type for the operation returned by UpdateInstanceConfig.

| Property | Type | Description |
|----------|------|-------------|
| `cancelTime` | `string` | The time at which this operation was cancelled. |
| `instanceConfig` | `InstanceConfig` | The desired instance configuration after updating. |
| `progress` | `InstanceOperationProgress` | The progress of the UpdateInstanceConfig operation. |

### `UpdateInstanceConfigRequest`

The request for UpdateInstanceConfig.

| Property | Type | Description |
|----------|------|-------------|
| `instanceConfig` | `InstanceConfig` | Required. The user instance configuration to update, which must always include the instance confi... |
| `updateMask` | `string` | Required. A mask specifying which fields in InstanceConfig should be updated. The field mask must... |
| `validateOnly` | `boolean` | An option to validate, but not actually execute, a request, and provide the same response. |

### `UpdateInstanceMetadata`

Metadata type for the operation returned by UpdateInstance.

| Property | Type | Description |
|----------|------|-------------|
| `cancelTime` | `string` | The time at which this operation was cancelled. If set, this operation is in the process of undoi... |
| `endTime` | `string` | The time at which this operation failed or was completed successfully. |
| `expectedFulfillmentPeriod` | `string` | The expected fulfillment period of this update operation. |
| `instance` | `Instance` | The desired end state of the update. |
| `startTime` | `string` | The time at which UpdateInstance request was received. |

### `UpdateInstancePartitionMetadata`

Metadata type for the operation returned by UpdateInstancePartition.

| Property | Type | Description |
|----------|------|-------------|
| `cancelTime` | `string` | The time at which this operation was cancelled. If set, this operation is in the process of undoi... |
| `endTime` | `string` | The time at which this operation failed or was completed successfully. |
| `instancePartition` | `InstancePartition` | The desired end state of the update. |
| `startTime` | `string` | The time at which UpdateInstancePartition request was received. |

### `UpdateInstancePartitionRequest`

The request for UpdateInstancePartition.

| Property | Type | Description |
|----------|------|-------------|
| `fieldMask` | `string` | Required. A mask specifying which fields in InstancePartition should be updated. The field mask m... |
| `instancePartition` | `InstancePartition` | Required. The instance partition to update, which must always include the instance partition name... |

### `UpdateInstanceRequest`

The request for UpdateInstance.

| Property | Type | Description |
|----------|------|-------------|
| `fieldMask` | `string` | Required. A mask specifying which fields in Instance should be updated. The field mask must alway... |
| `instance` | `Instance` | Required. The instance to update, which must always include the instance name. Otherwise, only fi... |

### `VisualizationData`

| Property | Type | Description |
|----------|------|-------------|
| `dataSourceEndToken` | `string` | The token signifying the end of a data_source. |
| `dataSourceSeparatorToken` | `string` | The token delimiting a datasource name from the rest of a key in a data_source. |
| `diagnosticMessages` | `array<DiagnosticMessage>` | The list of messages (info, alerts, ...) |
| `endKeyStrings` | `array<string>` | We discretize the entire keyspace into buckets. Assuming each bucket has an inclusive keyrange an... |
| `hasPii` | `boolean` | Whether this scan contains PII. |
| `indexedKeys` | `array<string>` | Keys of key ranges that contribute significantly to a given metric Can be thought of as heavy hit... |
| `keySeparator` | `string` | The token delimiting the key prefixes. |
| `keyUnit` | `string` | The unit for the key: e.g. 'key' or 'chunk'. |
| `metrics` | `array<Metric>` | The list of data objects for each metric. |
| `prefixNodes` | `array<PrefixNode>` | The list of extracted key prefix nodes used in the key prefix hierarchy. |

### `Write`

Arguments to insert, update, insert_or_update, and replace operations.

| Property | Type | Description |
|----------|------|-------------|
| `columns` | `array<string>` | The names of the columns in table to be written. The list of columns must contain enough columns ... |
| `table` | `string` | Required. The table whose rows will be written. |
| `values` | `array<array>` | The values to be written. `values` can contain more than one list of values. If it does, then mul... |

