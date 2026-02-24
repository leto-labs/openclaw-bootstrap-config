# Cloud SQL Admin API - API Reference

**Version**: `v1` | **Methods**: 74 | **Schemas**: 137

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `sql.Backups.CreateBackup` | POST | `v1/{+parent}/backups` | Creates a backup for a Cloud SQL instance. This API can be used only to create on-demand backups. |
| `sql.Backups.ListBackups` | GET | `v1/{+parent}/backups` | Lists all backups associated with the project. |
| `sql.Backups.DeleteBackup` | DELETE | `v1/{+name}` | Deletes the backup. |
| `sql.Backups.GetBackup` | GET | `v1/{+name}` | Retrieves a resource containing information about a backup. |
| `sql.Backups.UpdateBackup` | PATCH | `v1/{+name}` | Updates the retention period and description of the backup. You can use this API to update final ... |
| `sql.databases.list` | GET | `v1/projects/{project}/instances/{instance}/databases` | Lists databases in the specified Cloud SQL instance. |
| `sql.databases.get` | GET | `v1/projects/{project}/instances/{instance}/databases/{database}` | Retrieves a resource containing information about a database inside a Cloud SQL instance. |
| `sql.databases.delete` | DELETE | `v1/projects/{project}/instances/{instance}/databases/{database}` | Deletes a database from a Cloud SQL instance. |
| `sql.databases.patch` | PATCH | `v1/projects/{project}/instances/{instance}/databases/{database}` | Partially updates a resource containing information about a database inside a Cloud SQL instance.... |
| `sql.databases.update` | PUT | `v1/projects/{project}/instances/{instance}/databases/{database}` | Updates a resource containing information about a database inside a Cloud SQL instance. |
| `sql.databases.insert` | POST | `v1/projects/{project}/instances/{instance}/databases` | Inserts a resource containing information about a database inside a Cloud SQL instance. **Note:**... |
| `sql.users.update` | PUT | `v1/projects/{project}/instances/{instance}/users` | Updates an existing user in a Cloud SQL instance. |
| `sql.users.list` | GET | `v1/projects/{project}/instances/{instance}/users` | Lists users in the specified Cloud SQL instance. |
| `sql.users.delete` | DELETE | `v1/projects/{project}/instances/{instance}/users` | Deletes a user from a Cloud SQL instance. |
| `sql.users.get` | GET | `v1/projects/{project}/instances/{instance}/users/{name}` | Retrieves a resource containing information about a user. |
| `sql.users.insert` | POST | `v1/projects/{project}/instances/{instance}/users` | Creates a new user in a Cloud SQL instance. |
| `sql.flags.list` | GET | `v1/flags` | Lists all available database flags for Cloud SQL instances. |
| `sql.tiers.list` | GET | `v1/projects/{project}/tiers` | Lists all available machine types (tiers) for Cloud SQL, for example, `db-custom-1-3840`. For mor... |
| `sql.sslCerts.insert` | POST | `v1/projects/{project}/instances/{instance}/sslCerts` | Creates an SSL certificate and returns it along with the private key and server certificate autho... |
| `sql.sslCerts.delete` | DELETE | `v1/projects/{project}/instances/{instance}/sslCerts/{sha1Fingerprint}` | Deletes the SSL certificate. For First Generation instances, the certificate remains valid until ... |
| `sql.sslCerts.createEphemeral` | POST | `v1/projects/{project}/instances/{instance}/createEphemeral` | Generates a short-lived X509 certificate containing the provided public key and signed by a priva... |
| `sql.sslCerts.get` | GET | `v1/projects/{project}/instances/{instance}/sslCerts/{sha1Fingerprint}` | Retrieves a particular SSL certificate. Does not include the private key (required for usage). Th... |
| `sql.sslCerts.list` | GET | `v1/projects/{project}/instances/{instance}/sslCerts` | Lists all of the current SSL certificates for the instance. |
| `sql.projects.instances.verifyExternalSyncSettings` | POST | `v1/projects/{project}/instances/{instance}/verifyExternalSyncSettings` | Verify External primary instance external sync settings. |
| `sql.projects.instances.rescheduleMaintenance` | POST | `v1/projects/{project}/instances/{instance}/rescheduleMaintenance` | Reschedules the maintenance on the given instance. |
| `sql.projects.instances.startExternalSync` | POST | `v1/projects/{project}/instances/{instance}/startExternalSync` | Start External primary instance migration. |
| `sql.projects.instances.performDiskShrink` | POST | `v1/projects/{project}/instances/{instance}/performDiskShrink` | Perform Disk Shrink on primary instance. |
| `sql.projects.instances.getLatestRecoveryTime` | GET | `v1/projects/{project}/instances/{instance}/getLatestRecoveryTime` | Get Latest Recovery Time for a given instance. |
| `sql.projects.instances.getDiskShrinkConfig` | GET | `v1/projects/{project}/instances/{instance}/getDiskShrinkConfig` | Get Disk Shrink Config for a given instance. |
| `sql.projects.instances.resetReplicaSize` | POST | `v1/projects/{project}/instances/{instance}/resetReplicaSize` | Reset Replica Size to primary instance disk size. |
| `sql.operations.cancel` | POST | `v1/projects/{project}/operations/{operation}/cancel` | Cancels an instance operation that has been performed on an instance. |
| `sql.operations.get` | GET | `v1/projects/{project}/operations/{operation}` | Retrieves an instance operation that has been performed on an instance. |
| `sql.operations.list` | GET | `v1/projects/{project}/operations` | Lists all instance operations that have been performed on the given Cloud SQL instance in the rev... |
| `sql.instances.delete` | DELETE | `v1/projects/{project}/instances/{instance}` | Deletes a Cloud SQL instance. |
| `sql.instances.preCheckMajorVersionUpgrade` | POST | `v1/projects/{project}/instances/{instance}/preCheckMajorVersionUpgrade` | Execute MVU Pre-checks |
| `sql.instances.restart` | POST | `v1/projects/{project}/instances/{instance}/restart` | Restarts a Cloud SQL instance. |
| `sql.instances.listServerCas` | GET | `v1/projects/{project}/instances/{instance}/listServerCas` | Lists all of the trusted Certificate Authorities (CAs) for the specified instance. There can be u... |
| `sql.instances.demoteMaster` | POST | `v1/projects/{project}/instances/{instance}/demoteMaster` | Demotes the stand-alone instance to be a Cloud SQL read replica for an external database server. |
| `sql.instances.truncateLog` | POST | `v1/projects/{project}/instances/{instance}/truncateLog` | Truncate MySQL general and slow query log tables MySQL only. |
| `sql.instances.RotateServerCertificate` | POST | `v1/projects/{project}/instances/{instance}/rotateServerCertificate` | Rotates the server certificate version to one previously added with the addServerCertificate meth... |
| `sql.instances.releaseSsrsLease` | POST | `v1/projects/{project}/instances/{instance}/releaseSsrsLease` | Release a lease for the setup of SQL Server Reporting Services (SSRS). |
| `sql.instances.addServerCertificate` | POST | `v1/projects/{project}/instances/{instance}/addServerCertificate` | Add a new trusted server certificate version for the specified instance using Certificate Authori... |
| `sql.instances.reencrypt` | POST | `v1/projects/{project}/instances/{instance}/reencrypt` | Reencrypt CMEK instance with latest key version. |
| `sql.instances.failover` | POST | `v1/projects/{project}/instances/{instance}/failover` | Initiates a manual failover of a high availability (HA) primary instance to a standby instance, w... |
| `sql.instances.demote` | POST | `v1/projects/{project}/instances/{instance}/demote` | Demotes an existing standalone instance to be a Cloud SQL read replica for an external database s... |
| `sql.instances.resetSslConfig` | POST | `v1/projects/{project}/instances/{instance}/resetSslConfig` | Deletes all client certificates and generates a new server SSL certificate for the instance. |
| `sql.instances.executeSql` | POST | `v1/projects/{project}/instances/{instance}/executeSql` | Execute SQL statements. |
| `sql.instances.get` | GET | `v1/projects/{project}/instances/{instance}` | Retrieves a resource containing information about a Cloud SQL instance. |
| `sql.instances.acquireSsrsLease` | POST | `v1/projects/{project}/instances/{instance}/acquireSsrsLease` | Acquire a lease for the setup of SQL Server Reporting Services (SSRS). |
| `sql.instances.RotateEntraIdCertificate` | POST | `v1/projects/{project}/instances/{instance}/rotateEntraIdCertificate` | Rotates the server certificate version to one previously added with the addEntraIdCertificate met... |
| `sql.instances.pointInTimeRestore` | POST | `v1/{+parent}:pointInTimeRestore` | Point in time restore for an instance managed by Google Cloud Backup and Disaster Recovery. |
| `sql.instances.list` | GET | `v1/projects/{project}/instances` | Lists instances under a given project. |
| `sql.instances.restoreBackup` | POST | `v1/projects/{project}/instances/{instance}/restoreBackup` | Restores a backup of a Cloud SQL instance. Using this operation might cause your instance to rest... |
| `sql.instances.export` | POST | `v1/projects/{project}/instances/{instance}/export` | Exports data from a Cloud SQL instance to a Cloud Storage bucket as a SQL dump or CSV file. |
| `sql.instances.promoteReplica` | POST | `v1/projects/{project}/instances/{instance}/promoteReplica` | Promotes the read replica instance to be an independent Cloud SQL primary instance. Using this op... |
| `sql.instances.clone` | POST | `v1/projects/{project}/instances/{instance}/clone` | Creates a Cloud SQL instance as a clone of the source instance. Using this operation might cause ... |
| `sql.instances.rotateServerCa` | POST | `v1/projects/{project}/instances/{instance}/rotateServerCa` | Rotates the server certificate to one signed by the Certificate Authority (CA) version previously... |
| `sql.instances.ListServerCertificates` | GET | `v1/projects/{project}/instances/{instance}/listServerCertificates` | Lists all versions of server certificates and certificate authorities (CAs) for the specified ins... |
| `sql.instances.stopReplica` | POST | `v1/projects/{project}/instances/{instance}/stopReplica` | Stops the replication in the read replica instance. |
| `sql.instances.insert` | POST | `v1/projects/{project}/instances` | Creates a new Cloud SQL instance. |
| `sql.instances.switchover` | POST | `v1/projects/{project}/instances/{instance}/switchover` | Switches over from the primary instance to the DR replica instance. |
| `sql.instances.import` | POST | `v1/projects/{project}/instances/{instance}/import` | Imports data into a Cloud SQL instance from a SQL dump or CSV file in Cloud Storage. |
| `sql.instances.addEntraIdCertificate` | POST | `v1/projects/{project}/instances/{instance}/addEntraIdCertificate` | Adds a new Entra ID certificate for the specified instance. If an Entra ID certificate was previo... |
| `sql.instances.update` | PUT | `v1/projects/{project}/instances/{instance}` | Updates settings of a Cloud SQL instance. Using this operation might cause your instance to restart. |
| `sql.instances.ListEntraIdCertificates` | GET | `v1/projects/{project}/instances/{instance}/listEntraIdCertificates` | Lists all versions of EntraID certificates for the specified instance. There can be up to three s... |
| `sql.instances.addServerCa` | POST | `v1/projects/{project}/instances/{instance}/addServerCa` | Adds a new trusted Certificate Authority (CA) version for the specified instance. Required to pre... |
| `sql.instances.patch` | PATCH | `v1/projects/{project}/instances/{instance}` | Partially updates settings of a Cloud SQL instance by merging the request with the current config... |
| `sql.instances.startReplica` | POST | `v1/projects/{project}/instances/{instance}/startReplica` | Starts the replication in the read replica instance. |
| `sql.backupRuns.insert` | POST | `v1/projects/{project}/instances/{instance}/backupRuns` | Creates a new backup run on demand. |
| `sql.backupRuns.list` | GET | `v1/projects/{project}/instances/{instance}/backupRuns` | Lists all backup runs associated with the project or a given instance and configuration in the re... |
| `sql.backupRuns.delete` | DELETE | `v1/projects/{project}/instances/{instance}/backupRuns/{id}` | Deletes the backup taken by a backup run. |
| `sql.backupRuns.get` | GET | `v1/projects/{project}/instances/{instance}/backupRuns/{id}` | Retrieves a resource containing information about a backup run. |
| `sql.connect.get` | GET | `v1/projects/{project}/instances/{instance}/connectSettings` | Retrieves connect settings about a Cloud SQL instance. |
| `sql.connect.generateEphemeral` | POST | `v1/projects/{project}/instances/{instance}:generateEphemeralCert` | Generates a short-lived X509 certificate containing the provided public key and signed by a priva... |

### `sql.Backups.CreateBackup`

**POST** `v1/{+parent}/backups`

Creates a backup for a Cloud SQL instance. This API can be used only to create on-demand backups.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this backup is created. Format: projects/{project} |

**Request body**: `Backup`

**Response**: `Operation`

```typescript
const res = await sqladmin.Backups.CreateBackup({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.Backups.ListBackups`

**GET** `v1/{+parent}/backups`

Lists all backups associated with the project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent that owns this collection of backups. Format: projects/{project} |
| `filter` | `string` | query | No | Multiple filter queries are separated by spaces. For example, 'instance:abc AND type:FINAL, 'location:us', 'backupInt... |
| `pageSize` | `integer` | query | No | The maximum number of backups to return per response. The service might return fewer backups than this value. If a va... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListBackups` call. Provide this to retrieve the subsequent page. When paginat... |

**Response**: `ListBackupsResponse`

```typescript
const res = await sqladmin.Backups.ListBackups({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.Backups.DeleteBackup`

**DELETE** `v1/{+name}`

Deletes the backup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the backup to delete. Format: projects/{project}/backups/{backup} |

**Response**: `Operation`

```typescript
const res = await sqladmin.Backups.DeleteBackup({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.Backups.GetBackup`

**GET** `v1/{+name}`

Retrieves a resource containing information about a backup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the backup to retrieve. Format: projects/{project}/backups/{backup} |

**Response**: `Backup`

```typescript
const res = await sqladmin.Backups.GetBackup({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.Backups.UpdateBackup`

**PATCH** `v1/{+name}`

Updates the retention period and description of the backup. You can use this API to update final backups only.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The resource name of the backup. Format: projects/{project}/backups/{backup}. |
| `updateMask` | `string` | query | No | The list of fields that you can update. You can update only the description and retention period of the final backup. |

**Request body**: `Backup`

**Response**: `Operation`

```typescript
const res = await sqladmin.Backups.UpdateBackup({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.databases.list`

**GET** `v1/projects/{project}/instances/{instance}/databases`

Lists databases in the specified Cloud SQL instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Cloud SQL instance ID. This does not include the project ID. |

**Response**: `DatabasesListResponse`

```typescript
const res = await sqladmin.databases.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.databases.get`

**GET** `v1/projects/{project}/instances/{instance}/databases/{database}`

Retrieves a resource containing information about a database inside a Cloud SQL instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Database instance ID. This does not include the project ID. |
| `database` | `string` | path | Yes | Name of the database in the instance. |

**Response**: `Database`

```typescript
const res = await sqladmin.databases.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.databases.delete`

**DELETE** `v1/projects/{project}/instances/{instance}/databases/{database}`

Deletes a database from a Cloud SQL instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Database instance ID. This does not include the project ID. |
| `database` | `string` | path | Yes | Name of the database to be deleted in the instance. |

**Response**: `Operation`

```typescript
const res = await sqladmin.databases.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.databases.patch`

**PATCH** `v1/projects/{project}/instances/{instance}/databases/{database}`

Partially updates a resource containing information about a database inside a Cloud SQL instance. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Database instance ID. This does not include the project ID. |
| `database` | `string` | path | Yes | Name of the database to be updated in the instance. |

**Request body**: `Database`

**Response**: `Operation`

```typescript
const res = await sqladmin.databases.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.databases.update`

**PUT** `v1/projects/{project}/instances/{instance}/databases/{database}`

Updates a resource containing information about a database inside a Cloud SQL instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Database instance ID. This does not include the project ID. |
| `database` | `string` | path | Yes | Name of the database to be updated in the instance. |

**Request body**: `Database`

**Response**: `Operation`

```typescript
const res = await sqladmin.databases.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.databases.insert`

**POST** `v1/projects/{project}/instances/{instance}/databases`

Inserts a resource containing information about a database inside a Cloud SQL instance. **Note:** You can't modify the default character set and collation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Database instance ID. This does not include the project ID. |

**Request body**: `Database`

**Response**: `Operation`

```typescript
const res = await sqladmin.databases.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.users.update`

**PUT** `v1/projects/{project}/instances/{instance}/users`

Updates an existing user in a Cloud SQL instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Database instance ID. This does not include the project ID. |
| `databaseRoles` | `string` | query | No | Optional. List of database roles to grant to the user. body.database_roles will be ignored for update request. |
| `host` | `string` | query | No | Optional. Host of the user in the instance. |
| `name` | `string` | query | No | Name of the user in the instance. |
| `revokeExistingRoles` | `boolean` | query | No | Optional. Specifies whether to revoke existing roles that are not present in the `database_roles` field. If `false` o... |

**Request body**: `User`

**Response**: `Operation`

```typescript
const res = await sqladmin.users.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.users.list`

**GET** `v1/projects/{project}/instances/{instance}/users`

Lists users in the specified Cloud SQL instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Database instance ID. This does not include the project ID. |

**Response**: `UsersListResponse`

```typescript
const res = await sqladmin.users.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.users.delete`

**DELETE** `v1/projects/{project}/instances/{instance}/users`

Deletes a user from a Cloud SQL instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Database instance ID. This does not include the project ID. |
| `host` | `string` | query | No | Host of the user in the instance. |
| `name` | `string` | query | No | Name of the user in the instance. |

**Response**: `Operation`

```typescript
const res = await sqladmin.users.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.users.get`

**GET** `v1/projects/{project}/instances/{instance}/users/{name}`

Retrieves a resource containing information about a user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Database instance ID. This does not include the project ID. |
| `name` | `string` | path | Yes | User of the instance. |
| `host` | `string` | query | No | Host of a user of the instance. |

**Response**: `User`

```typescript
const res = await sqladmin.users.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.users.insert`

**POST** `v1/projects/{project}/instances/{instance}/users`

Creates a new user in a Cloud SQL instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Database instance ID. This does not include the project ID. |

**Request body**: `User`

**Response**: `Operation`

```typescript
const res = await sqladmin.users.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.flags.list`

**GET** `v1/flags`

Lists all available database flags for Cloud SQL instances.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `databaseVersion` | `string` | query | No | Database type and version you want to retrieve flags for. By default, this method returns flags for all database type... |
| `flagScope` | `string` | query | No | Optional. Specify the scope of flags to be returned by SqlFlagsListService. Return list of database flags if unspecif... |

**Response**: `FlagsListResponse`

```typescript
const res = await sqladmin.flags.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.tiers.list`

**GET** `v1/projects/{project}/tiers`

Lists all available machine types (tiers) for Cloud SQL, for example, `db-custom-1-3840`. For more information, see https://cloud.google.com/sql/pricing.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the project for which to list tiers. |

**Response**: `TiersListResponse`

```typescript
const res = await sqladmin.tiers.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.sslCerts.insert`

**POST** `v1/projects/{project}/instances/{instance}/sslCerts`

Creates an SSL certificate and returns it along with the private key and server certificate authority. The new certificate will not be usable until the instance is restarted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Cloud SQL instance ID. This does not include the project ID. |

**Request body**: `SslCertsInsertRequest`

**Response**: `SslCertsInsertResponse`

```typescript
const res = await sqladmin.sslCerts.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.sslCerts.delete`

**DELETE** `v1/projects/{project}/instances/{instance}/sslCerts/{sha1Fingerprint}`

Deletes the SSL certificate. For First Generation instances, the certificate remains valid until the instance is restarted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Cloud SQL instance ID. This does not include the project ID. |
| `sha1Fingerprint` | `string` | path | Yes | Sha1 FingerPrint. |

**Response**: `Operation`

```typescript
const res = await sqladmin.sslCerts.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.sslCerts.createEphemeral`

**POST** `v1/projects/{project}/instances/{instance}/createEphemeral`

Generates a short-lived X509 certificate containing the provided public key and signed by a private key specific to the target instance. Users may use the certificate to authenticate as themselves when connecting to the database.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the Cloud SQL project. |
| `instance` | `string` | path | Yes | Cloud SQL instance ID. This does not include the project ID. |

**Request body**: `SslCertsCreateEphemeralRequest`

**Response**: `SslCert`

```typescript
const res = await sqladmin.sslCerts.createEphemeral({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.sslCerts.get`

**GET** `v1/projects/{project}/instances/{instance}/sslCerts/{sha1Fingerprint}`

Retrieves a particular SSL certificate. Does not include the private key (required for usage). The private key must be saved from the response to initial creation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Cloud SQL instance ID. This does not include the project ID. |
| `sha1Fingerprint` | `string` | path | Yes | Sha1 FingerPrint. |

**Response**: `SslCert`

```typescript
const res = await sqladmin.sslCerts.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.sslCerts.list`

**GET** `v1/projects/{project}/instances/{instance}/sslCerts`

Lists all of the current SSL certificates for the instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Cloud SQL instance ID. This does not include the project ID. |

**Response**: `SslCertsListResponse`

```typescript
const res = await sqladmin.sslCerts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.projects.instances.verifyExternalSyncSettings`

**POST** `v1/projects/{project}/instances/{instance}/verifyExternalSyncSettings`

Verify External primary instance external sync settings.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Cloud SQL instance ID. This does not include the project ID. |

**Request body**: `SqlInstancesVerifyExternalSyncSettingsRequest`

**Response**: `SqlInstancesVerifyExternalSyncSettingsResponse`

```typescript
const res = await sqladmin.instances.verifyExternalSyncSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.projects.instances.rescheduleMaintenance`

**POST** `v1/projects/{project}/instances/{instance}/rescheduleMaintenance`

Reschedules the maintenance on the given instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Cloud SQL instance ID. This does not include the project ID. |

**Request body**: `SqlInstancesRescheduleMaintenanceRequestBody`

**Response**: `Operation`

```typescript
const res = await sqladmin.instances.rescheduleMaintenance({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.projects.instances.startExternalSync`

**POST** `v1/projects/{project}/instances/{instance}/startExternalSync`

Start External primary instance migration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Cloud SQL instance ID. This does not include the project ID. |

**Request body**: `SqlInstancesStartExternalSyncRequest`

**Response**: `Operation`

```typescript
const res = await sqladmin.instances.startExternalSync({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.projects.instances.performDiskShrink`

**POST** `v1/projects/{project}/instances/{instance}/performDiskShrink`

Perform Disk Shrink on primary instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Cloud SQL instance ID. This does not include the project ID. |

**Request body**: `PerformDiskShrinkContext`

**Response**: `Operation`

```typescript
const res = await sqladmin.instances.performDiskShrink({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.projects.instances.getLatestRecoveryTime`

**GET** `v1/projects/{project}/instances/{instance}/getLatestRecoveryTime`

Get Latest Recovery Time for a given instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Cloud SQL instance ID. This does not include the project ID. |
| `sourceInstanceDeletionTime` | `string` | query | No | The timestamp used to identify the time when the source instance is deleted. If this instance is deleted, then you mu... |

**Response**: `SqlInstancesGetLatestRecoveryTimeResponse`

```typescript
const res = await sqladmin.instances.getLatestRecoveryTime({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.projects.instances.getDiskShrinkConfig`

**GET** `v1/projects/{project}/instances/{instance}/getDiskShrinkConfig`

Get Disk Shrink Config for a given instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Cloud SQL instance ID. This does not include the project ID. |

**Response**: `SqlInstancesGetDiskShrinkConfigResponse`

```typescript
const res = await sqladmin.instances.getDiskShrinkConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.projects.instances.resetReplicaSize`

**POST** `v1/projects/{project}/instances/{instance}/resetReplicaSize`

Reset Replica Size to primary instance disk size.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | ID of the project that contains the read replica. |
| `instance` | `string` | path | Yes | Cloud SQL read replica instance name. |

**Request body**: `SqlInstancesResetReplicaSizeRequest`

**Response**: `Operation`

```typescript
const res = await sqladmin.instances.resetReplicaSize({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.operations.cancel`

**POST** `v1/projects/{project}/operations/{operation}/cancel`

Cancels an instance operation that has been performed on an instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the project that contains the instance. |
| `operation` | `string` | path | Yes | Instance operation ID. |

**Response**: `Empty`

```typescript
const res = await sqladmin.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.operations.get`

**GET** `v1/projects/{project}/operations/{operation}`

Retrieves an instance operation that has been performed on an instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Required. Project ID of the project that contains the instance. |
| `operation` | `string` | path | Yes | Required. Instance operation ID. |

**Response**: `Operation`

```typescript
const res = await sqladmin.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.operations.list`

**GET** `v1/projects/{project}/operations`

Lists all instance operations that have been performed on the given Cloud SQL instance in the reverse chronological order of the start time.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the project that contains the instance. |
| `instance` | `string` | query | No | Cloud SQL instance ID. This does not include the project ID. |
| `maxResults` | `integer` | query | No | Maximum number of operations per response. |
| `pageToken` | `string` | query | No | A previously-returned page token representing part of the larger set of results to view. |

**Response**: `OperationsListResponse`

```typescript
const res = await sqladmin.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.instances.delete`

**DELETE** `v1/projects/{project}/instances/{instance}`

Deletes a Cloud SQL instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the project that contains the instance to be deleted. |
| `instance` | `string` | path | Yes | Cloud SQL instance ID. This does not include the project ID. |
| `enableFinalBackup` | `boolean` | query | No | Flag to opt-in for final backup. By default, it is turned off. |
| `finalBackupDescription` | `string` | query | No | Optional. The description of the final backup. |
| `finalBackupExpiryTime` | `string` | query | No | Optional. Final Backup expiration time. Timestamp in UTC of when this resource is considered expired. |
| `finalBackupTtlDays` | `string` | query | No | Optional. Retention period of the final backup. |

**Response**: `Operation`

```typescript
const res = await sqladmin.instances.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.instances.preCheckMajorVersionUpgrade`

**POST** `v1/projects/{project}/instances/{instance}/preCheckMajorVersionUpgrade`

Execute MVU Pre-checks

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Required. Project ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Required. Cloud SQL instance ID. This does not include the project ID. |

**Request body**: `InstancesPreCheckMajorVersionUpgradeRequest`

**Response**: `Operation`

```typescript
const res = await sqladmin.instances.preCheckMajorVersionUpgrade({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.instances.restart`

**POST** `v1/projects/{project}/instances/{instance}/restart`

Restarts a Cloud SQL instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the project that contains the instance to be restarted. |
| `instance` | `string` | path | Yes | Cloud SQL instance ID. This does not include the project ID. |

**Response**: `Operation`

```typescript
const res = await sqladmin.instances.restart({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.instances.listServerCas`

**GET** `v1/projects/{project}/instances/{instance}/listServerCas`

Lists all of the trusted Certificate Authorities (CAs) for the specified instance. There can be up to three CAs listed: the CA that was used to sign the certificate that is currently in use, a CA that has been added but not yet used to sign a certificate, and a CA used to sign a certificate that has previously rotated out.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Cloud SQL instance ID. This does not include the project ID. |

**Response**: `InstancesListServerCasResponse`

```typescript
const res = await sqladmin.instances.listServerCas({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.instances.demoteMaster`

**POST** `v1/projects/{project}/instances/{instance}/demoteMaster`

Demotes the stand-alone instance to be a Cloud SQL read replica for an external database server.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Cloud SQL instance name. |

**Request body**: `InstancesDemoteMasterRequest`

**Response**: `Operation`

```typescript
const res = await sqladmin.instances.demoteMaster({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.instances.truncateLog`

**POST** `v1/projects/{project}/instances/{instance}/truncateLog`

Truncate MySQL general and slow query log tables MySQL only.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the Cloud SQL project. |
| `instance` | `string` | path | Yes | Cloud SQL instance ID. This does not include the project ID. |

**Request body**: `InstancesTruncateLogRequest`

**Response**: `Operation`

```typescript
const res = await sqladmin.instances.truncateLog({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.instances.RotateServerCertificate`

**POST** `v1/projects/{project}/instances/{instance}/rotateServerCertificate`

Rotates the server certificate version to one previously added with the addServerCertificate method. For instances not using Certificate Authority Service (CAS) server CA, use RotateServerCa instead.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Required. Project ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Required. Cloud SQL instance ID. This does not include the project ID. |

**Request body**: `InstancesRotateServerCertificateRequest`

**Response**: `Operation`

```typescript
const res = await sqladmin.instances.RotateServerCertificate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.instances.releaseSsrsLease`

**POST** `v1/projects/{project}/instances/{instance}/releaseSsrsLease`

Release a lease for the setup of SQL Server Reporting Services (SSRS).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Required. The project ID that contains the instance. |
| `instance` | `string` | path | Yes | Required. The Cloud SQL instance ID. This doesn't include the project ID. The instance ID contains lowercase letters,... |

**Response**: `SqlInstancesReleaseSsrsLeaseResponse`

```typescript
const res = await sqladmin.instances.releaseSsrsLease({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.instances.addServerCertificate`

**POST** `v1/projects/{project}/instances/{instance}/addServerCertificate`

Add a new trusted server certificate version for the specified instance using Certificate Authority Service (CAS) server CA. Required to prepare for a certificate rotation. If a server certificate version was previously added but never used in a certificate rotation, this operation replaces that version. There cannot be more than one certificate version waiting to be rotated in. For instances not using CAS server CA, use AddServerCa instead.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Cloud SQL instance ID. This does not include the project ID. |

**Response**: `Operation`

```typescript
const res = await sqladmin.instances.addServerCertificate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.instances.reencrypt`

**POST** `v1/projects/{project}/instances/{instance}/reencrypt`

Reencrypt CMEK instance with latest key version.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Cloud SQL instance ID. This does not include the project ID. |

**Request body**: `InstancesReencryptRequest`

**Response**: `Operation`

```typescript
const res = await sqladmin.instances.reencrypt({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.instances.failover`

**POST** `v1/projects/{project}/instances/{instance}/failover`

Initiates a manual failover of a high availability (HA) primary instance to a standby instance, which becomes the primary instance. Users are then rerouted to the new primary. For more information, see the [Overview of high availability](https://cloud.google.com/sql/docs/mysql/high-availability) page in the Cloud SQL documentation. If using Legacy HA (MySQL only), this causes the instance to failover to its failover replica instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | ID of the project that contains the read replica. |
| `instance` | `string` | path | Yes | Cloud SQL instance ID. This does not include the project ID. |

**Request body**: `InstancesFailoverRequest`

**Response**: `Operation`

```typescript
const res = await sqladmin.instances.failover({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.instances.demote`

**POST** `v1/projects/{project}/instances/{instance}/demote`

Demotes an existing standalone instance to be a Cloud SQL read replica for an external database server.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Required. ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Required. Cloud SQL instance name. |

**Request body**: `InstancesDemoteRequest`

**Response**: `Operation`

```typescript
const res = await sqladmin.instances.demote({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.instances.resetSslConfig`

**POST** `v1/projects/{project}/instances/{instance}/resetSslConfig`

Deletes all client certificates and generates a new server SSL certificate for the instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Cloud SQL instance ID. This does not include the project ID. |
| `mode` | `string` | query | No | Optional. Reset SSL mode to use. |

**Response**: `Operation`

```typescript
const res = await sqladmin.instances.resetSslConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.instances.executeSql`

**POST** `v1/projects/{project}/instances/{instance}/executeSql`

Execute SQL statements.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Required. Project ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Required. Database instance ID. This does not include the project ID. |

**Request body**: `ExecuteSqlPayload`

**Response**: `SqlInstancesExecuteSqlResponse`

```typescript
const res = await sqladmin.instances.executeSql({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.instances.get`

**GET** `v1/projects/{project}/instances/{instance}`

Retrieves a resource containing information about a Cloud SQL instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Required. Project ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Required. Database instance ID. This does not include the project ID. |

**Response**: `DatabaseInstance`

```typescript
const res = await sqladmin.instances.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.instances.acquireSsrsLease`

**POST** `v1/projects/{project}/instances/{instance}/acquireSsrsLease`

Acquire a lease for the setup of SQL Server Reporting Services (SSRS).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Required. Project ID of the project that contains the instance (Example: project-id). |
| `instance` | `string` | path | Yes | Required. Cloud SQL instance ID. This doesn't include the project ID. It's composed of lowercase letters, numbers, an... |

**Request body**: `InstancesAcquireSsrsLeaseRequest`

**Response**: `SqlInstancesAcquireSsrsLeaseResponse`

```typescript
const res = await sqladmin.instances.acquireSsrsLease({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.instances.RotateEntraIdCertificate`

**POST** `v1/projects/{project}/instances/{instance}/rotateEntraIdCertificate`

Rotates the server certificate version to one previously added with the addEntraIdCertificate method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Required. Project ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Required. Cloud SQL instance ID. This does not include the project ID. |

**Request body**: `InstancesRotateEntraIdCertificateRequest`

**Response**: `Operation`

```typescript
const res = await sqladmin.instances.RotateEntraIdCertificate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.instances.pointInTimeRestore`

**POST** `v1/{+parent}:pointInTimeRestore`

Point in time restore for an instance managed by Google Cloud Backup and Disaster Recovery.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where you created this instance. Format: projects/{project} |

**Request body**: `PointInTimeRestoreContext`

**Response**: `Operation`

```typescript
const res = await sqladmin.instances.pointInTimeRestore({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.instances.list`

**GET** `v1/projects/{project}/instances`

Lists instances under a given project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the project for which to list Cloud SQL instances. |
| `filter` | `string` | query | No | A filter expression that filters resources listed in the response. The expression is in the form of field:value. For ... |
| `maxResults` | `integer` | query | No | The maximum number of instances to return. The service may return fewer than this value. If unspecified, at most 500 ... |
| `pageToken` | `string` | query | No | A previously-returned page token representing part of the larger set of results to view. |

**Response**: `InstancesListResponse`

```typescript
const res = await sqladmin.instances.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.instances.restoreBackup`

**POST** `v1/projects/{project}/instances/{instance}/restoreBackup`

Restores a backup of a Cloud SQL instance. Using this operation might cause your instance to restart.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Cloud SQL instance ID. This does not include the project ID. |

**Request body**: `InstancesRestoreBackupRequest`

**Response**: `Operation`

```typescript
const res = await sqladmin.instances.restoreBackup({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.instances.export`

**POST** `v1/projects/{project}/instances/{instance}/export`

Exports data from a Cloud SQL instance to a Cloud Storage bucket as a SQL dump or CSV file.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the project that contains the instance to be exported. |
| `instance` | `string` | path | Yes | Cloud SQL instance ID. This does not include the project ID. |

**Request body**: `InstancesExportRequest`

**Response**: `Operation`

```typescript
const res = await sqladmin.instances.export({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `sql.instances.promoteReplica`

**POST** `v1/projects/{project}/instances/{instance}/promoteReplica`

Promotes the read replica instance to be an independent Cloud SQL primary instance. Using this operation might cause your instance to restart.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | ID of the project that contains the read replica. |
| `instance` | `string` | path | Yes | Cloud SQL read replica instance name. |
| `failover` | `boolean` | query | No | Set to true to invoke a replica failover to the DR replica. As part of replica failover, the promote operation attemp... |

**Response**: `Operation`

```typescript
const res = await sqladmin.instances.promoteReplica({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.instances.clone`

**POST** `v1/projects/{project}/instances/{instance}/clone`

Creates a Cloud SQL instance as a clone of the source instance. Using this operation might cause your instance to restart.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Required. Project ID of the source as well as the clone Cloud SQL instance. |
| `instance` | `string` | path | Yes | Required. The ID of the Cloud SQL instance to be cloned (source). This does not include the project ID. |

**Request body**: `InstancesCloneRequest`

**Response**: `Operation`

```typescript
const res = await sqladmin.instances.clone({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.instances.rotateServerCa`

**POST** `v1/projects/{project}/instances/{instance}/rotateServerCa`

Rotates the server certificate to one signed by the Certificate Authority (CA) version previously added with the addServerCA method. For instances that have enabled Certificate Authority Service (CAS) based server CA, use RotateServerCertificate to rotate the server certificate.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Cloud SQL instance ID. This does not include the project ID. |

**Request body**: `InstancesRotateServerCaRequest`

**Response**: `Operation`

```typescript
const res = await sqladmin.instances.rotateServerCa({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.instances.ListServerCertificates`

**GET** `v1/projects/{project}/instances/{instance}/listServerCertificates`

Lists all versions of server certificates and certificate authorities (CAs) for the specified instance. There can be up to three sets of certs listed: the certificate that is currently in use, a future that has been added but not yet used to sign a certificate, and a certificate that has been rotated out. For instances not using Certificate Authority Service (CAS) server CA, use ListServerCas instead.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Required. Project ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Required. Cloud SQL instance ID. This does not include the project ID. |

**Response**: `InstancesListServerCertificatesResponse`

```typescript
const res = await sqladmin.instances.ListServerCertificates({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.instances.stopReplica`

**POST** `v1/projects/{project}/instances/{instance}/stopReplica`

Stops the replication in the read replica instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | ID of the project that contains the read replica. |
| `instance` | `string` | path | Yes | Cloud SQL read replica instance name. |

**Response**: `Operation`

```typescript
const res = await sqladmin.instances.stopReplica({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.instances.insert`

**POST** `v1/projects/{project}/instances`

Creates a new Cloud SQL instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the project to which the newly created Cloud SQL instances should belong. |

**Request body**: `DatabaseInstance`

**Response**: `Operation`

```typescript
const res = await sqladmin.instances.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.instances.switchover`

**POST** `v1/projects/{project}/instances/{instance}/switchover`

Switches over from the primary instance to the DR replica instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | ID of the project that contains the replica. |
| `instance` | `string` | path | Yes | Cloud SQL read replica instance name. |
| `dbTimeout` | `string` | query | No | Optional. (MySQL and PostgreSQL only) Cloud SQL instance operations timeout, which is a sum of all database operation... |

**Response**: `Operation`

```typescript
const res = await sqladmin.instances.switchover({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.instances.import`

**POST** `v1/projects/{project}/instances/{instance}/import`

Imports data into a Cloud SQL instance from a SQL dump or CSV file in Cloud Storage.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Cloud SQL instance ID. This does not include the project ID. |

**Request body**: `InstancesImportRequest`

**Response**: `Operation`

```typescript
const res = await sqladmin.instances.import({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `sql.instances.addEntraIdCertificate`

**POST** `v1/projects/{project}/instances/{instance}/addEntraIdCertificate`

Adds a new Entra ID certificate for the specified instance. If an Entra ID certificate was previously added but never used in a certificate rotation, this operation replaces that version.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Required. Project ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Required. Cloud SQL instance ID. This does not include the project ID. |

**Response**: `Operation`

```typescript
const res = await sqladmin.instances.addEntraIdCertificate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.instances.update`

**PUT** `v1/projects/{project}/instances/{instance}`

Updates settings of a Cloud SQL instance. Using this operation might cause your instance to restart.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Cloud SQL instance ID. This does not include the project ID. |

**Request body**: `DatabaseInstance`

**Response**: `Operation`

```typescript
const res = await sqladmin.instances.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.instances.ListEntraIdCertificates`

**GET** `v1/projects/{project}/instances/{instance}/listEntraIdCertificates`

Lists all versions of EntraID certificates for the specified instance. There can be up to three sets of certificates listed: the certificate that is currently in use, a future that has been added but not yet used to sign a certificate, and a certificate that has been rotated out.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Required. Project ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Required. Cloud SQL instance ID. This does not include the project ID. |

**Response**: `InstancesListEntraIdCertificatesResponse`

```typescript
const res = await sqladmin.instances.ListEntraIdCertificates({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.instances.addServerCa`

**POST** `v1/projects/{project}/instances/{instance}/addServerCa`

Adds a new trusted Certificate Authority (CA) version for the specified instance. Required to prepare for a certificate rotation. If a CA version was previously added but never used in a certificate rotation, this operation replaces that version. There cannot be more than one CA version waiting to be rotated in. For instances that have enabled Certificate Authority Service (CAS) based server CA, use AddServerCertificate to add a new server certificate.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Cloud SQL instance ID. This does not include the project ID. |

**Response**: `Operation`

```typescript
const res = await sqladmin.instances.addServerCa({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.instances.patch`

**PATCH** `v1/projects/{project}/instances/{instance}`

Partially updates settings of a Cloud SQL instance by merging the request with the current configuration. This method supports patch semantics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Cloud SQL instance ID. This does not include the project ID. |

**Request body**: `DatabaseInstance`

**Response**: `Operation`

```typescript
const res = await sqladmin.instances.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.instances.startReplica`

**POST** `v1/projects/{project}/instances/{instance}/startReplica`

Starts the replication in the read replica instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | ID of the project that contains the read replica. |
| `instance` | `string` | path | Yes | Cloud SQL read replica instance name. |

**Response**: `Operation`

```typescript
const res = await sqladmin.instances.startReplica({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.backupRuns.insert`

**POST** `v1/projects/{project}/instances/{instance}/backupRuns`

Creates a new backup run on demand.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Cloud SQL instance ID. This does not include the project ID. |

**Request body**: `BackupRun`

**Response**: `Operation`

```typescript
const res = await sqladmin.backupRuns.insert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.backupRuns.list`

**GET** `v1/projects/{project}/instances/{instance}/backupRuns`

Lists all backup runs associated with the project or a given instance and configuration in the reverse chronological order of the backup initiation time.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Cloud SQL instance ID, or "-" for all instances. This does not include the project ID. |
| `maxResults` | `integer` | query | No | Maximum number of backup runs per response. |
| `pageToken` | `string` | query | No | A previously-returned page token representing part of the larger set of results to view. |

**Response**: `BackupRunsListResponse`

```typescript
const res = await sqladmin.backupRuns.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.backupRuns.delete`

**DELETE** `v1/projects/{project}/instances/{instance}/backupRuns/{id}`

Deletes the backup taken by a backup run.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Cloud SQL instance ID. This does not include the project ID. |
| `id` | `string` | path | Yes | The ID of the backup run to delete. To find a backup run ID, use the [list](https://cloud.google.com/sql/docs/mysql/a... |

**Response**: `Operation`

```typescript
const res = await sqladmin.backupRuns.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.backupRuns.get`

**GET** `v1/projects/{project}/instances/{instance}/backupRuns/{id}`

Retrieves a resource containing information about a backup run.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Cloud SQL instance ID. This does not include the project ID. |
| `id` | `string` | path | Yes | The ID of this backup run. |

**Response**: `BackupRun`

```typescript
const res = await sqladmin.backupRuns.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.connect.get`

**GET** `v1/projects/{project}/instances/{instance}/connectSettings`

Retrieves connect settings about a Cloud SQL instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Cloud SQL instance ID. This does not include the project ID. |
| `readTime` | `string` | query | No | Optional. Optional snapshot read timestamp to trade freshness for performance. |

**Response**: `ConnectSettings`

```typescript
const res = await sqladmin.connect.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

### `sql.connect.generateEphemeral`

**POST** `v1/projects/{project}/instances/{instance}:generateEphemeralCert`

Generates a short-lived X509 certificate containing the provided public key and signed by a private key specific to the target instance. Users may use the certificate to authenticate as themselves when connecting to the database.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Project ID of the project that contains the instance. |
| `instance` | `string` | path | Yes | Cloud SQL instance ID. This does not include the project ID. |

**Request body**: `GenerateEphemeralCertRequest`

**Response**: `GenerateEphemeralCertResponse`

```typescript
const res = await sqladmin.connect.generateEphemeral({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/sqlservice.admin`

---

## Schemas

### `AclEntry`

An entry for an Access Control list.

| Property | Type | Description |
|----------|------|-------------|
| `expirationTime` | `string` | The time when this access control entry expires in [RFC 3339](https://tools.ietf.org/html/rfc3339... |
| `kind` | `string` | This is always `sql#aclEntry`. |
| `name` | `string` | Optional. A label to identify this entry. |
| `value` | `string` | The allowlisted value for the access control list. |

### `AcquireSsrsLeaseContext`

Acquire SSRS lease context.

| Property | Type | Description |
|----------|------|-------------|
| `duration` | `string` | Lease duration needed for SSRS setup. |
| `reportDatabase` | `string` | The report database to be used for SSRS setup. |
| `serviceLogin` | `string` | The username to be used as the service login to connect to the report database for SSRS setup. |
| `setupLogin` | `string` | The username to be used as the setup login to connect to the database server for SSRS setup. |

### `AdvancedMachineFeatures`

Specifies options for controlling advanced machine features.

| Property | Type | Description |
|----------|------|-------------|
| `threadsPerCore` | `integer` | The number of threads per physical core. |

### `ApiWarning`

An Admin API warning message.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | Code to uniquely identify the warning type. |
| `message` | `string` | The warning message. |
| `region` | `string` | The region name for REGION_UNREACHABLE warning. |

### `AvailableDatabaseVersion`

An available database version. It can be a major or a minor version.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The database version's display name. |
| `majorVersion` | `string` | The version's major version name. |
| `name` | `string` | The database version name. For MySQL 8.0, this string provides the database major and minor version. |

### `Backup`

A backup resource.

| Property | Type | Description |
|----------|------|-------------|
| `backupInterval` | `Interval` | Output only. This output contains the following values: start_time: All database writes up to thi... |
| `backupKind` | `string` | Output only. Specifies the kind of backup, PHYSICAL or DEFAULT_SNAPSHOT. |
| `backupRun` | `string` | Output only. The mapping to backup run resource used for IAM validations. |
| `databaseVersion` | `string` | Output only. The database version of the instance of at the time this backup was made. |
| `description` | `string` | The description of this backup. |
| `error` | `OperationError` | Output only. Information about why the backup operation fails (for example, when the backup state... |
| `expiryTime` | `string` | Backup expiration time. A UTC timestamp of when this backup expired. |
| `instance` | `string` | The name of the source database instance. |
| `instanceDeletionTime` | `string` | Optional. Output only. Timestamp in UTC of when the instance associated with this backup is deleted. |
| `instanceSettings` | `DatabaseInstance` | Optional. Output only. The instance setting of the source instance that's associated with this ba... |
| `kind` | `string` | Output only. This is always `sql#backup`. |
| `kmsKey` | `string` | Output only. This output contains the encryption configuration for a backup and the resource name... |
| `kmsKeyVersion` | `string` | Output only. This output contains the encryption status for a backup and the version of the KMS k... |
| `location` | `string` | The storage location of the backups. The location can be multi-regional. |
| `maxChargeableBytes` | `string` | Output only. The maximum chargeable bytes for the backup. |
| `name` | `string` | Output only. The resource name of the backup. Format: projects/{project}/backups/{backup}. |
| `satisfiesPzi` | `boolean` | Output only. This status indicates whether the backup satisfies PZI. The status is reserved for f... |
| `satisfiesPzs` | `boolean` | Output only. This status indicates whether the backup satisfies PZS. The status is reserved for f... |
| `selfLink` | `string` | Output only. The URI of this resource. |
| `state` | `string` | Output only. The status of this backup. |
| `timeZone` | `string` | Output only. This output contains a backup time zone. If a Cloud SQL for SQL Server instance has ... |
| `ttlDays` | `string` | Input only. The time-to-live (TTL) interval for this resource (in days). For example: ttlDays:7, ... |
| `type` | `string` | Output only. The type of this backup. The type can be "AUTOMATED", "ON_DEMAND" or “FINAL”. |

### `BackupConfiguration`

Database instance backup configuration.

| Property | Type | Description |
|----------|------|-------------|
| `backupRetentionSettings` | `BackupRetentionSettings` | Backup retention settings. |
| `backupTier` | `string` | Output only. Backup tier that manages the backups for the instance. |
| `binaryLogEnabled` | `boolean` | (MySQL only) Whether binary log is enabled. If backup configuration is disabled, binarylog must b... |
| `enabled` | `boolean` | Whether this configuration is enabled. |
| `kind` | `string` | This is always `sql#backupConfiguration`. |
| `location` | `string` | Location of the backup |
| `pointInTimeRecoveryEnabled` | `boolean` | Whether point in time recovery is enabled. |
| `replicationLogArchivingEnabled` | `boolean` | Reserved for future use. |
| `startTime` | `string` | Start time for the daily backup configuration in UTC timezone in the 24 hour format - `HH:MM`. |
| `transactionLogRetentionDays` | `integer` | The number of days of transaction logs we retain for point in time restore, from 1-7. |
| `transactionalLogStorageState` | `string` | Output only. This value contains the storage location of transactional logs used to perform point... |

### `BackupContext`

Backup context.

| Property | Type | Description |
|----------|------|-------------|
| `backupId` | `string` | The identifier of the backup. |
| `kind` | `string` | This is always `sql#backupContext`. |
| `name` | `string` | The name of the backup. Format: projects/{project}/backups/{backup} |

### `BackupReencryptionConfig`

Backup Reencryption Config

| Property | Type | Description |
|----------|------|-------------|
| `backupLimit` | `integer` | Backup re-encryption limit |
| `backupType` | `string` | Type of backups users want to re-encrypt. |

### `BackupRetentionSettings`

We currently only support backup retention by specifying the number of backups we will retain.

| Property | Type | Description |
|----------|------|-------------|
| `retainedBackups` | `integer` | Depending on the value of retention_unit, this is used to determine if a backup needs to be delet... |
| `retentionUnit` | `string` | The unit that 'retained_backups' represents. |

### `BackupRun`

A BackupRun resource.

| Property | Type | Description |
|----------|------|-------------|
| `backupKind` | `string` | Specifies the kind of backup, PHYSICAL or DEFAULT_SNAPSHOT. |
| `databaseVersion` | `string` | Output only. The instance database version at the time this backup was made. |
| `description` | `string` | The description of this run, only applicable to on-demand backups. |
| `diskEncryptionConfiguration` | `DiskEncryptionConfiguration` | Encryption configuration specific to a backup. |
| `diskEncryptionStatus` | `DiskEncryptionStatus` | Encryption status specific to a backup. |
| `endTime` | `string` | The time the backup operation completed in UTC timezone in [RFC 3339](https://tools.ietf.org/html... |
| `enqueuedTime` | `string` | The time the run was enqueued in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) ... |
| `error` | `OperationError` | Information about why the backup operation failed. This is only present if the run has the FAILED... |
| `id` | `string` | The identifier for this backup run. Unique only for a specific Cloud SQL instance. |
| `instance` | `string` | Name of the database instance. |
| `kind` | `string` | This is always `sql#backupRun`. |
| `location` | `string` | Location of the backups. |
| `maxChargeableBytes` | `string` | Output only. The maximum chargeable bytes for the backup. |
| `selfLink` | `string` | The URI of this resource. |
| `startTime` | `string` | The time the backup operation actually started in UTC timezone in [RFC 3339](https://tools.ietf.o... |
| `status` | `string` | The status of this run. |
| `timeZone` | `string` | Backup time zone to prevent restores to an instance with a different time zone. Now relevant only... |
| `type` | `string` | The type of this run; can be either "AUTOMATED" or "ON_DEMAND" or "FINAL". This field defaults to... |
| `windowStartTime` | `string` | The start time of the backup window during which this the backup was attempted in [RFC 3339](http... |

### `BackupRunsListResponse`

Backup run list results.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<BackupRun>` | A list of backup runs in reverse chronological order of the enqueued time. |
| `kind` | `string` | This is always `sql#backupRunsList`. |
| `nextPageToken` | `string` | The continuation token, used to page through large result sets. Provide this value in a subsequen... |

### `BinLogCoordinates`

Binary log coordinates.

| Property | Type | Description |
|----------|------|-------------|
| `binLogFileName` | `string` | Name of the binary log file for a Cloud SQL instance. |
| `binLogPosition` | `string` | Position (offset) within the binary log file. |
| `kind` | `string` | This is always `sql#binLogCoordinates`. |

### `CloneContext`

Database instance clone context.

| Property | Type | Description |
|----------|------|-------------|
| `allocatedIpRange` | `string` | The name of the allocated ip range for the private ip Cloud SQL instance. For example: "google-ma... |
| `binLogCoordinates` | `BinLogCoordinates` | Binary log coordinates, if specified, identify the position up to which the source instance is cl... |
| `databaseNames` | `array<string>` | (SQL Server only) Clone only the specified databases from the source instance. Clone all database... |
| `destinationInstanceName` | `string` | Required. Name of the Cloud SQL instance to be created as a clone. |
| `destinationNetwork` | `string` | Optional. The fully qualified URI of the VPC network to which the cloned instance will be connect... |
| `destinationProject` | `string` | Optional. The project ID of the destination project where the cloned instance will be created. To... |
| `kind` | `string` | This is always `sql#cloneContext`. |
| `pitrTimestampMs` | `string` | Reserved for future use. |
| `pointInTime` | `string` | Timestamp, if specified, identifies the time to which the source instance is cloned. |
| `preferredSecondaryZone` | `string` | Optional. Copy clone and point-in-time recovery clone of a regional instance in the specified zon... |
| `preferredZone` | `string` | Optional. Copy clone and point-in-time recovery clone of an instance to the specified zone. If no... |
| `sourceInstanceDeletionTime` | `string` | The timestamp used to identify the time when the source instance is deleted. If this instance is ... |

### `Column`

Contains the name and datatype of a column.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Name of the column. |
| `type` | `string` | Datatype of the column. |

### `ConnectPoolNodeConfig`

Details of a single read pool node of a read pool.

| Property | Type | Description |
|----------|------|-------------|
| `dnsName` | `string` | Output only. The DNS name of the read pool node. |
| `dnsNames` | `array<DnsNameMapping>` | Output only. The list of DNS names used by this read pool node. |
| `ipAddresses` | `array<IpMapping>` | Output only. Mappings containing IP addresses that can be used to connect to the read pool node. |
| `name` | `string` | Output only. The name of the read pool node. Doesn't include the project ID. |

### `ConnectSettings`

Connect settings retrieval response.

| Property | Type | Description |
|----------|------|-------------|
| `backendType` | `string` | `SECOND_GEN`: Cloud SQL database instance. `EXTERNAL`: A database server that is not managed by G... |
| `customSubjectAlternativeNames` | `array<string>` | Custom subject alternative names for the server certificate. |
| `databaseVersion` | `string` | The database engine type and version. The `databaseVersion` field cannot be changed after instanc... |
| `dnsName` | `string` | The dns name of the instance. |
| `dnsNames` | `array<DnsNameMapping>` | Output only. The list of DNS names used by this instance. |
| `ipAddresses` | `array<IpMapping>` | The assigned IP addresses for the instance. |
| `kind` | `string` | This is always `sql#connectSettings`. |
| `mdxProtocolSupport` | `array<string>` | Optional. Output only. mdx_protocol_support controls how the client uses metadata exchange when c... |
| `nodeCount` | `integer` | The number of read pool nodes in a read pool. |
| `nodes` | `array<ConnectPoolNodeConfig>` | Output only. Entries containing information about each read pool node of the read pool. |
| `pscEnabled` | `boolean` | Whether PSC connectivity is enabled for this instance. |
| `region` | `string` | The cloud region for the instance. For example, `us-central1`, `europe-west1`. The region cannot ... |
| `serverCaCert` | `SslCert` | SSL configuration. |
| `serverCaMode` | `string` | Specify what type of CA is used for the server certificate. |

### `ConnectionPoolConfig`

The managed connection pooling configuration.

| Property | Type | Description |
|----------|------|-------------|
| `connectionPoolingEnabled` | `boolean` | Whether managed connection pooling is enabled. |
| `flags` | `array<ConnectionPoolFlags>` | Optional. List of connection pool configuration flags. |
| `poolerCount` | `integer` | Output only. Number of connection poolers. |

### `ConnectionPoolFlags`

Connection pool flags for Cloud SQL instances managed connection pool configuration.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. The name of the flag. |
| `value` | `string` | Required. The value of the flag. Boolean flags are set to `on` for true and `off` for false. This... |

### `DataCacheConfig`

Data cache configurations.

| Property | Type | Description |
|----------|------|-------------|
| `dataCacheEnabled` | `boolean` | Whether data cache is enabled for the instance. |

### `Database`

Represents a SQL database on the Cloud SQL instance.

| Property | Type | Description |
|----------|------|-------------|
| `charset` | `string` | The Cloud SQL charset value. |
| `collation` | `string` | The Cloud SQL collation value. |
| `etag` | `string` | This field is deprecated and will be removed from a future version of the API. |
| `instance` | `string` | The name of the Cloud SQL instance. This does not include the project ID. |
| `kind` | `string` | This is always `sql#database`. |
| `name` | `string` | The name of the database in the Cloud SQL instance. This does not include the project ID or insta... |
| `project` | `string` | The project ID of the project containing the Cloud SQL database. The Google apps domain is prefix... |
| `selfLink` | `string` | The URI of this resource. |
| `sqlserverDatabaseDetails` | `SqlServerDatabaseDetails` |  |

### `DatabaseFlags`

Database flags for Cloud SQL instances.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name of the flag. These flags are passed at instance startup, so include both server options ... |
| `value` | `string` | The value of the flag. Boolean flags are set to `on` for true and `off` for false. This field mus... |

### `DatabaseInstance`

A Cloud SQL instance resource.

| Property | Type | Description |
|----------|------|-------------|
| `availableMaintenanceVersions` | `array<string>` | Output only. List all maintenance versions applicable on the instance |
| `backendType` | `string` | The backend type. `SECOND_GEN`: Cloud SQL database instance. `EXTERNAL`: A database server that i... |
| `connectionName` | `string` | Connection name of the Cloud SQL instance used in connection strings. |
| `createTime` | `string` | Output only. The time when the instance was created in [RFC 3339](https://tools.ietf.org/html/rfc... |
| `currentDiskSize` | `string` | The current disk usage of the instance in bytes. This property has been deprecated. Use the "clou... |
| `databaseInstalledVersion` | `string` | Output only. Stores the current database version running on the instance including minor version ... |
| `databaseVersion` | `string` | The database engine type and version. The `databaseVersion` field cannot be changed after instanc... |
| `diskEncryptionConfiguration` | `DiskEncryptionConfiguration` | Disk encryption configuration specific to an instance. |
| `diskEncryptionStatus` | `DiskEncryptionStatus` | Disk encryption status specific to an instance. |
| `dnsName` | `string` | Output only. The dns name of the instance. |
| `dnsNames` | `array<DnsNameMapping>` | Output only. The list of DNS names used by this instance. |
| `etag` | `string` | This field is deprecated and will be removed from a future version of the API. Use the `settings.... |
| `failoverReplica` | `object` | The name and status of the failover replica. |
| `gceZone` | `string` | The Compute Engine zone that the instance is currently serving from. This value could be differen... |
| `geminiConfig` | `GeminiInstanceConfig` | Gemini instance configuration. |
| `includeReplicasForMajorVersionUpgrade` | `boolean` | Input only. Determines whether an in-place major version upgrade of replicas happens when an in-p... |
| `instanceType` | `string` | The instance type. |
| `ipAddresses` | `array<IpMapping>` | The assigned IP addresses for the instance. |
| `ipv6Address` | `string` | The IPv6 address assigned to the instance. (Deprecated) This property was applicable only to Firs... |
| `kind` | `string` | This is always `sql#instance`. |
| `maintenanceVersion` | `string` | The current software version on the instance. |
| `masterInstanceName` | `string` | The name of the instance which will act as primary in the replication setup. |
| `maxDiskSize` | `string` | The maximum disk size of the instance in bytes. |
| `name` | `string` | Name of the Cloud SQL instance. This does not include the project ID. |
| `nodeCount` | `integer` | The number of read pool nodes in a read pool. |
| `nodes` | `array<PoolNodeConfig>` | Output only. Entries containing information about each read pool node of the read pool. |
| `onPremisesConfiguration` | `OnPremisesConfiguration` | Configuration specific to on-premises instances. |
| `outOfDiskReport` | `SqlOutOfDiskReport` | This field represents the report generated by the proactive database wellness job for OutOfDisk i... |
| `primaryDnsName` | `string` | Output only. DEPRECATED: please use write_endpoint instead. |
| `project` | `string` | The project ID of the project containing the Cloud SQL instance. The Google apps domain is prefix... |
| `pscServiceAttachmentLink` | `string` | Output only. The link to service attachment of PSC instance. |
| `region` | `string` | The geographical region of the Cloud SQL instance. It can be one of the [regions](https://cloud.g... |
| `replicaConfiguration` | `ReplicaConfiguration` | Configuration specific to failover replicas and read replicas. |
| `replicaNames` | `array<string>` | The replicas of the instance. |
| `replicationCluster` | `ReplicationCluster` | Optional. A primary instance and disaster recovery (DR) replica pair. A DR replica is a cross-reg... |
| `rootPassword` | `string` | Initial root password. Use only on creation. You must set root passwords before you can connect t... |
| `satisfiesPzi` | `boolean` | Output only. This status indicates whether the instance satisfies PZI. The status is reserved for... |
| `satisfiesPzs` | `boolean` | This status indicates whether the instance satisfies PZS. The status is reserved for future use. |
| `scheduledMaintenance` | `SqlScheduledMaintenance` | The start time of any upcoming scheduled maintenance for this instance. |
| `secondaryGceZone` | `string` | The Compute Engine zone that the failover instance is currently serving from for a regional insta... |
| `selfLink` | `string` | The URI of this resource. |
| `serverCaCert` | `SslCert` | SSL configuration. |
| `serviceAccountEmailAddress` | `string` | The service account email address assigned to the instance.\This property is read-only. |
| `settings` | `Settings` | The user settings. |
| `sqlNetworkArchitecture` | `string` |  |
| `state` | `string` | The current serving state of the Cloud SQL instance. |
| `suspensionReason` | `array<string>` | If the instance state is SUSPENDED, the reason for the suspension. |
| `switchTransactionLogsToCloudStorageEnabled` | `boolean` | Input only. Whether Cloud SQL is enabled to switch storing point-in-time recovery log files from ... |
| `tags` | `object` | Optional. Input only. Immutable. Tag keys and tag values that are bound to this instance. You mus... |
| `upgradableDatabaseVersions` | `array<AvailableDatabaseVersion>` | Output only. All database versions that are available for upgrade. |
| `writeEndpoint` | `string` | Output only. The dns name of the primary instance in a replication group. |

### `DatabasesListResponse`

Database list response.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<Database>` | List of database resources in the instance. |
| `kind` | `string` | This is always `sql#databasesList`. |

### `DemoteContext`

This context is used to demote an existing standalone instance to be a Cloud SQL read replica for an external database server.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | This is always `sql#demoteContext`. |
| `sourceRepresentativeInstanceName` | `string` | Required. The name of the instance which acts as the on-premises primary instance in the replicat... |

### `DemoteMasterConfiguration`

Read-replica configuration for connecting to the on-premises primary instance.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | This is always `sql#demoteMasterConfiguration`. |
| `mysqlReplicaConfiguration` | `DemoteMasterMySqlReplicaConfiguration` | MySQL specific configuration when replicating from a MySQL on-premises primary instance. Replicat... |

### `DemoteMasterContext`

Database instance demote primary instance context.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | This is always `sql#demoteMasterContext`. |
| `masterInstanceName` | `string` | The name of the instance which will act as on-premises primary instance in the replication setup. |
| `replicaConfiguration` | `DemoteMasterConfiguration` | Configuration specific to read-replicas replicating from the on-premises primary instance. |
| `skipReplicationSetup` | `boolean` | Flag to skip replication setup on the instance. |
| `verifyGtidConsistency` | `boolean` | Verify the GTID consistency for demote operation. Default value: `True`. Setting this flag to `fa... |

### `DemoteMasterMySqlReplicaConfiguration`

Read-replica configuration specific to MySQL databases.

| Property | Type | Description |
|----------|------|-------------|
| `caCertificate` | `string` | PEM representation of the trusted CA's x509 certificate. |
| `clientCertificate` | `string` | PEM representation of the replica's x509 certificate. |
| `clientKey` | `string` | PEM representation of the replica's private key. The corresponding public key is encoded in the c... |
| `kind` | `string` | This is always `sql#demoteMasterMysqlReplicaConfiguration`. |
| `password` | `string` | The password for the replication connection. |
| `username` | `string` | The username for the replication connection. |

### `DenyMaintenancePeriod`

Deny maintenance Periods. This specifies a date range during when all CSA rollout will be denied.

| Property | Type | Description |
|----------|------|-------------|
| `endDate` | `string` | "deny maintenance period" end date. If the year of the end date is empty, the year of the start d... |
| `startDate` | `string` | "deny maintenance period" start date. If the year of the start date is empty, the year of the end... |
| `time` | `string` | Time in UTC when the "deny maintenance period" starts on start_date and ends on end_date. The tim... |

### `DiskEncryptionConfiguration`

Disk encryption configuration for an instance.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | This is always `sql#diskEncryptionConfiguration`. |
| `kmsKeyName` | `string` | Resource name of KMS key for disk encryption |

### `DiskEncryptionStatus`

Disk encryption status for an instance.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | This is always `sql#diskEncryptionStatus`. |
| `kmsKeyVersionName` | `string` | KMS key version used to encrypt the Cloud SQL instance resource |

### `DnsNameMapping`

DNS metadata.

| Property | Type | Description |
|----------|------|-------------|
| `connectionType` | `string` | Output only. The connection type of the DNS name. |
| `dnsScope` | `string` | Output only. The scope that the DNS name applies to. |
| `name` | `string` | Output only. The DNS name. |
| `recordManager` | `string` | Output only. The manager for this DNS record. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `ExecuteSqlPayload`

The request payload used to execute SQL statements.

| Property | Type | Description |
|----------|------|-------------|
| `application` | `string` | Optional. Specifies the name of the application that is making the request. This field is used fo... |
| `autoIamAuthn` | `boolean` | Optional. When set to true, the API caller identity associated with the request is used for datab... |
| `database` | `string` | Optional. Name of the database on which the statement will be executed. |
| `partialResultMode` | `string` | Optional. Controls how the API should respond when the SQL execution result is incomplete due to ... |
| `rowLimit` | `string` | Optional. The maximum number of rows returned per SQL statement. |
| `sqlStatement` | `string` | Required. SQL statements to run on the database. It can be a single statement or a sequence of st... |
| `user` | `string` | Optional. The name of an existing database user to connect to the database. When `auto_iam_authn`... |

### `ExportContext`

Database instance export context.

| Property | Type | Description |
|----------|------|-------------|
| `bakExportOptions` | `object` | Options for exporting BAK files (SQL Server-only) |
| `csvExportOptions` | `object` | Options for exporting data as CSV. `MySQL` and `PostgreSQL` instances only. |
| `databases` | `array<string>` | Databases to be exported. `MySQL instances:` If `fileType` is `SQL` and no database is specified,... |
| `fileType` | `string` | The file type for the specified uri. |
| `kind` | `string` | This is always `sql#exportContext`. |
| `offload` | `boolean` | Whether to perform a serverless export. |
| `sqlExportOptions` | `object` | Options for exporting data as SQL statements. |
| `tdeExportOptions` | `object` | Optional. Export parameters specific to SQL Server TDE certificates |
| `uri` | `string` | The path to the file in Google Cloud Storage where the export will be stored. The URI is in the f... |

### `ExternalSyncSelectedObject`

The selected object that Cloud SQL migrates.

| Property | Type | Description |
|----------|------|-------------|
| `database` | `string` | The name of the database that Cloud SQL migrates. |

### `FailoverContext`

Database instance failover context.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | This is always `sql#failoverContext`. |
| `settingsVersion` | `string` | The current settings version of this instance. Request will be rejected if this version doesn't m... |

### `FinalBackupConfig`

Config used to determine the final backup settings for the instance.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether the final backup is enabled for the instance. |
| `retentionDays` | `integer` | The number of days to retain the final backup after the instance deletion. The final backup will ... |

### `Flag`

A flag resource.

| Property | Type | Description |
|----------|------|-------------|
| `allowedIntValues` | `array<string>` | Use this field if only certain integers are accepted. Can be combined with min_value and max_valu... |
| `allowedStringValues` | `array<string>` | For `STRING` flags, a list of strings that the value can be set to. |
| `appliesTo` | `array<string>` | The database version this flag applies to. Can be MySQL instances: `MYSQL_8_0`, `MYSQL_8_0_18`, `... |
| `flagScope` | `string` | Scope of flag. |
| `inBeta` | `boolean` | Whether or not the flag is considered in beta. |
| `kind` | `string` | This is always `sql#flag`. |
| `maxValue` | `string` | For `INTEGER` flags, the maximum allowed value. |
| `minValue` | `string` | For `INTEGER` flags, the minimum allowed value. |
| `name` | `string` | This is the name of the flag. Flag names always use underscores, not hyphens, for example: `max_a... |
| `recommendedIntValue` | `string` | Recommended int value in integer format for UI display. |
| `recommendedStringValue` | `string` | Recommended string value in string format for UI display. |
| `requiresRestart` | `boolean` | Indicates whether changing this flag will trigger a database restart. Only applicable to Second G... |
| `type` | `string` | The type of the flag. Flags are typed to being `BOOLEAN`, `STRING`, `INTEGER` or `NONE`. `NONE` i... |

### `FlagsListResponse`

Flags list response.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<Flag>` | List of flags. |
| `kind` | `string` | This is always `sql#flagsList`. |

### `GeminiInstanceConfig`

Gemini instance configuration.

| Property | Type | Description |
|----------|------|-------------|
| `activeQueryEnabled` | `boolean` | Output only. Whether the active query is enabled. |
| `entitled` | `boolean` | Output only. Whether Gemini is enabled. |
| `flagRecommenderEnabled` | `boolean` | Output only. Whether the flag recommender is enabled. |
| `googleVacuumMgmtEnabled` | `boolean` | Output only. Whether the vacuum management is enabled. |
| `indexAdvisorEnabled` | `boolean` | Output only. Whether the index advisor is enabled. |
| `oomSessionCancelEnabled` | `boolean` | Output only. Whether canceling the out-of-memory (OOM) session is enabled. |

### `GenerateEphemeralCertRequest`

Ephemeral certificate creation request.

| Property | Type | Description |
|----------|------|-------------|
| `access_token` | `string` | Optional. Access token to include in the signed certificate. |
| `public_key` | `string` | PEM encoded public key to include in the signed certificate. |
| `readTime` | `string` | Optional. Optional snapshot read timestamp to trade freshness for performance. |
| `validDuration` | `string` | Optional. If set, it will contain the cert valid duration. |

### `GenerateEphemeralCertResponse`

Ephemeral certificate creation request.

| Property | Type | Description |
|----------|------|-------------|
| `ephemeralCert` | `SslCert` | Generated cert |

### `ImportContext`

Database instance import context.

| Property | Type | Description |
|----------|------|-------------|
| `bakImportOptions` | `object` | Import parameters specific to SQL Server .BAK files |
| `csvImportOptions` | `object` | Options for importing data as CSV. |
| `database` | `string` | The target database for the import. If `fileType` is `SQL`, this field is required only if the im... |
| `fileType` | `string` | The file type for the specified uri.\`SQL`: The file contains SQL statements. \`CSV`: The file co... |
| `importUser` | `string` | The PostgreSQL user for this import operation. PostgreSQL instances only. |
| `kind` | `string` | This is always `sql#importContext`. |
| `sqlImportOptions` | `object` | Optional. Options for importing data from SQL statements. |
| `tdeImportOptions` | `object` | Optional. Import parameters specific to SQL Server TDE certificates |
| `uri` | `string` | Path to the import file in Cloud Storage, in the form `gs://bucketName/fileName`. Compressed gzip... |

### `InsightsConfig`

Insights configuration. This specifies when Cloud SQL Insights feature is enabled and optional configuration.

| Property | Type | Description |
|----------|------|-------------|
| `enhancedQueryInsightsEnabled` | `boolean` | Optional. Whether enhanced query insights feature is enabled. |
| `queryInsightsEnabled` | `boolean` | Whether Query Insights feature is enabled. |
| `queryPlansPerMinute` | `integer` | Number of query execution plans captured by Insights per minute for all queries combined. Default... |
| `queryStringLength` | `integer` | Maximum query length stored in bytes. Default value: 1024 bytes. Range: 256-4500 bytes. Query len... |
| `recordApplicationTags` | `boolean` | Whether Query Insights will record application tags from query when enabled. |
| `recordClientAddress` | `boolean` | Whether Query Insights will record client address when enabled. |

### `InstanceReference`

Reference to another Cloud SQL instance.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name of the Cloud SQL instance being referenced. This does not include the project ID. |
| `project` | `string` | The project ID of the Cloud SQL instance being referenced. The default is the same project ID as ... |
| `region` | `string` | The region of the Cloud SQL instance being referenced. |

### `InstancesAcquireSsrsLeaseRequest`

Request to acquire a lease for SSRS.

| Property | Type | Description |
|----------|------|-------------|
| `acquireSsrsLeaseContext` | `AcquireSsrsLeaseContext` | Contains details about the acquire SSRS lease operation. |

### `InstancesCloneRequest`

Database instance clone request.

| Property | Type | Description |
|----------|------|-------------|
| `cloneContext` | `CloneContext` | Required. Contains details about the clone operation. |

### `InstancesDemoteMasterRequest`

Database demote primary instance request.

| Property | Type | Description |
|----------|------|-------------|
| `demoteMasterContext` | `DemoteMasterContext` | Contains details about the demoteMaster operation. |

### `InstancesDemoteRequest`

This request is used to demote an existing standalone instance to be a Cloud SQL read replica for an external database server.

| Property | Type | Description |
|----------|------|-------------|
| `demoteContext` | `DemoteContext` | Required. Contains details about the demote operation. |

### `InstancesExportRequest`

Database instance export request.

| Property | Type | Description |
|----------|------|-------------|
| `exportContext` | `ExportContext` | Contains details about the export operation. |

### `InstancesFailoverRequest`

Instance failover request.

| Property | Type | Description |
|----------|------|-------------|
| `failoverContext` | `FailoverContext` | Failover Context. |

### `InstancesImportRequest`

Database instance import request.

| Property | Type | Description |
|----------|------|-------------|
| `importContext` | `ImportContext` | Contains details about the import operation. |

### `InstancesListEntraIdCertificatesResponse`

Instances ListEntraIdCertificates response.

| Property | Type | Description |
|----------|------|-------------|
| `activeVersion` | `string` | The `sha1_fingerprint` of the active certificate from `certs`. |
| `certs` | `array<SslCert>` | List of Entra ID certificates for the instance. |
| `kind` | `string` | This is always `sql#instancesListEntraIdCertificates`. |

### `InstancesListResponse`

Database instances list response.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<DatabaseInstance>` | List of database instance resources. |
| `kind` | `string` | This is always `sql#instancesList`. |
| `nextPageToken` | `string` | The continuation token, used to page through large result sets. Provide this value in a subsequen... |
| `warnings` | `array<ApiWarning>` | List of warnings that occurred while handling the request. |

### `InstancesListServerCasResponse`

Instances ListServerCas response.

| Property | Type | Description |
|----------|------|-------------|
| `activeVersion` | `string` |  |
| `certs` | `array<SslCert>` | List of server CA certificates for the instance. |
| `kind` | `string` | This is always `sql#instancesListServerCas`. |

### `InstancesListServerCertificatesResponse`

Instances ListServerCertificates response.

| Property | Type | Description |
|----------|------|-------------|
| `activeVersion` | `string` | The `sha1_fingerprint` of the active certificate from `server_certs`. |
| `caCerts` | `array<SslCert>` | List of server CA certificates for the instance. |
| `kind` | `string` | This is always `sql#instancesListServerCertificates`. |
| `serverCerts` | `array<SslCert>` | List of server certificates for the instance, signed by the corresponding CA from the `ca_certs` ... |

### `InstancesPreCheckMajorVersionUpgradeRequest`

Request for Pre-checks for MVU

| Property | Type | Description |
|----------|------|-------------|
| `preCheckMajorVersionUpgradeContext` | `PreCheckMajorVersionUpgradeContext` | Required. Contains details about the pre-check major version upgrade operation. |

### `InstancesReencryptRequest`

Database Instance reencrypt request.

| Property | Type | Description |
|----------|------|-------------|
| `backupReencryptionConfig` | `BackupReencryptionConfig` | Configuration specific to backup re-encryption |

### `InstancesRestoreBackupRequest`

Database instance restore backup request.

| Property | Type | Description |
|----------|------|-------------|
| `backup` | `string` | The name of the backup that's used to restore a Cloud SQL instance: Format: projects/{project-id}... |
| `backupdrBackup` | `string` | The name of the backup that's used to restore a Cloud SQL instance: Format: "projects/{project-id... |
| `restoreBackupContext` | `RestoreBackupContext` | Parameters required to perform the restore backup operation. |
| `restoreInstanceClearOverridesFieldNames` | `array<string>` | Optional. This field has the same purpose as restore_instance_settings, changes any instance sett... |
| `restoreInstanceSettings` | `DatabaseInstance` | Optional. By using this parameter, Cloud SQL overrides any instance settings stored in the backup... |

### `InstancesRotateEntraIdCertificateRequest`

Rotate Entra ID certificate request.

| Property | Type | Description |
|----------|------|-------------|
| `rotateEntraIdCertificateContext` | `RotateEntraIdCertificateContext` | Optional. Contains details about the rotate server certificate operation. |

### `InstancesRotateServerCaRequest`

Rotate server CA request.

| Property | Type | Description |
|----------|------|-------------|
| `rotateServerCaContext` | `RotateServerCaContext` | Contains details about the rotate server CA operation. |

### `InstancesRotateServerCertificateRequest`

Rotate server certificate request.

| Property | Type | Description |
|----------|------|-------------|
| `rotateServerCertificateContext` | `RotateServerCertificateContext` | Optional. Contains details about the rotate server certificate operation. |

### `InstancesTruncateLogRequest`

Instance truncate log request.

| Property | Type | Description |
|----------|------|-------------|
| `truncateLogContext` | `TruncateLogContext` | Contains details about the truncate log operation. |

### `Interval`

Represents a time interval, encoded as a Timestamp start (inclusive) and a Timestamp end (exclusive). The start must be less than or equal to the end. When the start equals the end, the interval is empty (matches no time). When both start and end are unspecified, the interval matches any time.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | Optional. Exclusive end of the interval. If specified, a Timestamp matching this interval will ha... |
| `startTime` | `string` | Optional. Inclusive start of the interval. If specified, a Timestamp matching this interval will ... |

### `IpConfiguration`

IP Management configuration.

| Property | Type | Description |
|----------|------|-------------|
| `allocatedIpRange` | `string` | The name of the allocated ip range for the private ip Cloud SQL instance. For example: "google-ma... |
| `authorizedNetworks` | `array<AclEntry>` | The list of external networks that are allowed to connect to the instance using the IP. In 'CIDR'... |
| `customSubjectAlternativeNames` | `array<string>` | Optional. Custom Subject Alternative Name(SAN)s for a Cloud SQL instance. |
| `enablePrivatePathForGoogleCloudServices` | `boolean` | Controls connectivity to private IP instances from Google services, such as BigQuery. |
| `ipv4Enabled` | `boolean` | Whether the instance is assigned a public IP address or not. |
| `privateNetwork` | `string` | The resource link for the VPC network from which the Cloud SQL instance is accessible for private... |
| `pscConfig` | `PscConfig` | PSC settings for this instance. |
| `requireSsl` | `boolean` | Use `ssl_mode` instead. Whether SSL/TLS connections over IP are enforced. If set to false, then a... |
| `serverCaMode` | `string` | Specify what type of CA is used for the server certificate. |
| `serverCaPool` | `string` | Optional. The resource name of the server CA pool for an instance with `CUSTOMER_MANAGED_CAS_CA` ... |
| `serverCertificateRotationMode` | `string` | Optional. Controls the automatic server certificate rotation feature. This feature is disabled by... |
| `sslMode` | `string` | Specify how SSL/TLS is enforced in database connections. If you must use the `require_ssl` flag f... |

### `IpMapping`

Database instance IP mapping

| Property | Type | Description |
|----------|------|-------------|
| `ipAddress` | `string` | The IP address assigned. |
| `timeToRetire` | `string` | The due time for this IP to be retired in [RFC 3339](https://tools.ietf.org/html/rfc3339) format,... |
| `type` | `string` | The type of this IP address. A `PRIMARY` address is a public address that can accept incoming con... |

### `ListBackupsResponse`

The response payload containing a list of the backups.

| Property | Type | Description |
|----------|------|-------------|
| `backups` | `array<Backup>` | A list of backups. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `warnings` | `array<ApiWarning>` | If a region isn't unavailable or if an unknown error occurs, then a warning message is returned. |

### `LocationPreference`

Preferred location. This specifies where a Cloud SQL instance is located. Note that if the preferred location is not available, the instance will be located as close as possible within the region. Only one location may be specified.

| Property | Type | Description |
|----------|------|-------------|
| `followGaeApplication` | `string` | The App Engine application to follow, it must be in the same region as the Cloud SQL instance. WA... |
| `kind` | `string` | This is always `sql#locationPreference`. |
| `secondaryZone` | `string` | The preferred Compute Engine zone for the secondary/failover (for example: us-central1-a, us-cent... |
| `zone` | `string` | The preferred Compute Engine zone (for example: us-central1-a, us-central1-b, etc.). WARNING: Cha... |

### `MaintenanceWindow`

Maintenance window. This specifies when a Cloud SQL instance is restarted for system maintenance purposes.

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of week - `MONDAY`, `TUESDAY`, `WEDNESDAY`, `THURSDAY`, `FRIDAY`, `SATURDAY`, or `SUNDAY`. Sp... |
| `hour` | `integer` | Hour of day - 0 to 23. Specify in the UTC time zone. |
| `kind` | `string` | This is always `sql#maintenanceWindow`. |
| `updateTrack` | `string` | Maintenance timing settings: `canary`, `stable`, or `week5`. For more information, see [About mai... |

### `Message`

Represents a notice or warning message from the database.

| Property | Type | Description |
|----------|------|-------------|
| `message` | `string` | The full message string. For PostgreSQL, this is a formatted string that may include severity, co... |
| `severity` | `string` | The severity of the message (e.g., "NOTICE" for PostgreSQL, "WARNING" for MySQL). |

### `Metadata`

The additional metadata information regarding the execution of the SQL statements.

| Property | Type | Description |
|----------|------|-------------|
| `sqlStatementExecutionTime` | `string` | The time taken to execute the SQL statements. |

### `MySqlReplicaConfiguration`

Read-replica configuration specific to MySQL databases.

| Property | Type | Description |
|----------|------|-------------|
| `caCertificate` | `string` | PEM representation of the trusted CA's x509 certificate. |
| `clientCertificate` | `string` | PEM representation of the replica's x509 certificate. |
| `clientKey` | `string` | PEM representation of the replica's private key. The corresponding public key is encoded in the c... |
| `connectRetryInterval` | `integer` | Seconds to wait between connect retries. MySQL's default is 60 seconds. |
| `dumpFilePath` | `string` | Path to a SQL dump file in Google Cloud Storage from which the replica instance is to be created.... |
| `kind` | `string` | This is always `sql#mysqlReplicaConfiguration`. |
| `masterHeartbeatPeriod` | `string` | Interval in milliseconds between replication heartbeats. |
| `password` | `string` | The password for the replication connection. |
| `sslCipher` | `string` | A list of permissible ciphers to use for SSL encryption. |
| `username` | `string` | The username for the replication connection. |
| `verifyServerCertificate` | `boolean` | Whether or not to check the primary instance's Common Name value in the certificate that it sends... |

### `MySqlSyncConfig`

MySQL-specific external server sync settings.

| Property | Type | Description |
|----------|------|-------------|
| `initialSyncFlags` | `array<SyncFlags>` | Flags to use for the initial dump. |

### `OnPremisesConfiguration`

On-premises instance configuration.

| Property | Type | Description |
|----------|------|-------------|
| `caCertificate` | `string` | PEM representation of the trusted CA's x509 certificate. |
| `clientCertificate` | `string` | PEM representation of the replica's x509 certificate. |
| `clientKey` | `string` | PEM representation of the replica's private key. The corresponding public key is encoded in the c... |
| `dumpFilePath` | `string` | The dump file to create the Cloud SQL replica. |
| `hostPort` | `string` | The host and port of the on-premises instance in host:port format |
| `kind` | `string` | This is always `sql#onPremisesConfiguration`. |
| `password` | `string` | The password for connecting to on-premises instance. |
| `selectedObjects` | `array<SelectedObjects>` | Optional. A list of objects that the user selects for replication from an external source instance. |
| `sourceInstance` | `InstanceReference` | The reference to Cloud SQL instance if the source is Cloud SQL. |
| `sslOption` | `string` | Optional. SSL option for replica connection to the on-premises source. |
| `username` | `string` | The username for connecting to on-premises instance. |

### `Operation`

An Operation resource. For successful operations that return an Operation resource, only the fields relevant to the operation are populated in the resource.

| Property | Type | Description |
|----------|------|-------------|
| `acquireSsrsLeaseContext` | `AcquireSsrsLeaseContext` | The context for acquire SSRS lease operation, if applicable. |
| `apiWarning` | `ApiWarning` | An Admin API warning message. |
| `backupContext` | `BackupContext` | The context for backup operation, if applicable. |
| `endTime` | `string` | The time this operation finished in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc333... |
| `error` | `OperationErrors` | If errors occurred during processing of this operation, this field will be populated. |
| `exportContext` | `ExportContext` | The context for export operation, if applicable. |
| `importContext` | `ImportContext` | The context for import operation, if applicable. |
| `insertTime` | `string` | The time this operation was enqueued in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rf... |
| `kind` | `string` | This is always `sql#operation`. |
| `name` | `string` | An identifier that uniquely identifies the operation. You can use this identifier to retrieve the... |
| `operationType` | `string` | The type of the operation. Valid values are: * `CREATE` * `DELETE` * `UPDATE` * `RESTART` * `IMPO... |
| `preCheckMajorVersionUpgradeContext` | `PreCheckMajorVersionUpgradeContext` | This field is only populated when the operation_type is PRE_CHECK_MAJOR_VERSION_UPGRADE. The PreC... |
| `selfLink` | `string` | The URI of this resource. |
| `startTime` | `string` | The time this operation actually started in UTC timezone in [RFC 3339](https://tools.ietf.org/htm... |
| `status` | `string` | The status of an operation. |
| `subOperationType` | `SqlSubOperationType` | Optional. The sub operation based on the operation type. |
| `targetId` | `string` | Name of the resource on which this operation runs. |
| `targetLink` | `string` |  |
| `targetProject` | `string` | The project ID of the target instance related to this operation. |
| `user` | `string` | The email address of the user who initiated this operation. |

### `OperationError`

Database instance operation error.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | Identifies the specific error that occurred. |
| `kind` | `string` | This is always `sql#operationError`. |
| `message` | `string` | Additional information about the error encountered. |

### `OperationErrors`

Database instance operation errors list wrapper.

| Property | Type | Description |
|----------|------|-------------|
| `errors` | `array<OperationError>` | The list of errors encountered while processing this operation. |
| `kind` | `string` | This is always `sql#operationErrors`. |

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

### `OperationsListResponse`

Operations list response.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<Operation>` | List of operation resources. |
| `kind` | `string` | This is always `sql#operationsList`. |
| `nextPageToken` | `string` | The continuation token, used to page through large result sets. Provide this value in a subsequen... |

### `PasswordStatus`

Read-only password status.

| Property | Type | Description |
|----------|------|-------------|
| `locked` | `boolean` | If true, user does not have login privileges. |
| `passwordExpirationTime` | `string` | The expiration time of the current password. |

### `PasswordValidationPolicy`

Database instance local user password validation policy. This message defines the password policy for local database users. When enabled, it enforces constraints on password complexity, length, and reuse. Keep this policy enabled to help prevent unauthorized access.

| Property | Type | Description |
|----------|------|-------------|
| `complexity` | `string` | The complexity of the password. |
| `disallowCompromisedCredentials` | `boolean` | This field is deprecated and will be removed in a future version of the API. |
| `disallowUsernameSubstring` | `boolean` | Disallow username as a part of the password. |
| `enablePasswordPolicy` | `boolean` | Whether to enable the password policy or not. When enabled, passwords must meet complexity requir... |
| `minLength` | `integer` | Minimum number of characters allowed. |
| `passwordChangeInterval` | `string` | Minimum interval after which the password can be changed. This flag is only supported for Postgre... |
| `reuseInterval` | `integer` | Number of previous passwords that cannot be reused. |

### `PerformDiskShrinkContext`

Perform disk shrink context.

| Property | Type | Description |
|----------|------|-------------|
| `targetSizeGb` | `string` | The target disk shrink size in GigaBytes. |

### `PerformanceCaptureConfig`

Performance Capture configuration.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Optional. Enable or disable the Performance Capture feature. |
| `probeThreshold` | `integer` | Optional. The minimum number of consecutive readings above threshold that triggers instance state... |
| `probingIntervalSeconds` | `integer` | Optional. The time interval in seconds between any two probes. |
| `runningThreadsThreshold` | `integer` | Optional. The minimum number of server threads running to trigger the capture on primary. |
| `secondsBehindSourceThreshold` | `integer` | Optional. The minimum number of seconds replica must be lagging behind primary to trigger capture... |
| `transactionDurationThreshold` | `integer` | Optional. The amount of time in seconds that a transaction needs to have been open before the wat... |

### `PointInTimeRestoreContext`

The context to perform a point-in-time recovery of an instance managed by Backup and Disaster Recovery (DR) Service.

| Property | Type | Description |
|----------|------|-------------|
| `allocatedIpRange` | `string` | Optional. The name of the allocated IP range for the internal IP Cloud SQL instance. For example:... |
| `datasource` | `string` | The Backup and Disaster Recovery (DR) Service Datasource URI. Format: projects/{project}/location... |
| `pointInTime` | `string` | Required. The date and time to which you want to restore the instance. |
| `preferredSecondaryZone` | `string` | Optional. Point-in-time recovery of a regional instance in the specified zones. If not specified,... |
| `preferredZone` | `string` | Optional. Point-in-time recovery of an instance to the specified zone. If no zone is specified, t... |
| `privateNetwork` | `string` | Optional. The resource link for the VPC network from which the Cloud SQL instance is accessible f... |
| `targetInstance` | `string` | Target instance name. |

### `PoolNodeConfig`

Details of a single read pool node of a read pool.

| Property | Type | Description |
|----------|------|-------------|
| `dnsName` | `string` | Output only. The DNS name of the read pool node. |
| `dnsNames` | `array<DnsNameMapping>` | Output only. The list of DNS names used by this read pool node. |
| `gceZone` | `string` | Output only. The zone of the read pool node. |
| `ipAddresses` | `array<IpMapping>` | Output only. Mappings containing IP addresses that can be used to connect to the read pool node. |
| `name` | `string` | Output only. The name of the read pool node, to be used for retrieving metrics and logs. |
| `pscAutoConnections` | `array<PscAutoConnectionConfig>` | Output only. The list of settings for requested automatically-setup Private Service Connect (PSC)... |
| `pscServiceAttachmentLink` | `string` | Output only. The Private Service Connect (PSC) service attachment of the read pool node. |
| `state` | `string` | Output only. The current state of the read pool node. |

### `PreCheckMajorVersionUpgradeContext`

Pre-check major version upgrade context.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Optional. This is always `sql#preCheckMajorVersionUpgradeContext`. |
| `preCheckResponse` | `array<PreCheckResponse>` | Output only. The responses from the precheck operation. |
| `targetDatabaseVersion` | `string` | Required. The target database version to upgrade to. |

### `PreCheckResponse`

Structured PreCheckResponse containing message, type, and required actions.

| Property | Type | Description |
|----------|------|-------------|
| `actionsRequired` | `array<string>` | The actions that the user needs to take. Use repeated for multiple actions. |
| `message` | `string` | The message to be displayed to the user. |
| `messageType` | `string` | The type of message whether it is an info, warning, or error. |

### `PscAutoConnectionConfig`

Settings for an automatically-setup Private Service Connect consumer endpoint that is used to connect to a Cloud SQL instance.

| Property | Type | Description |
|----------|------|-------------|
| `consumerNetwork` | `string` | Optional. The consumer network of this consumer endpoint. This must be a resource path that inclu... |
| `consumerNetworkStatus` | `string` | The connection policy status of the consumer network. |
| `consumerProject` | `string` | Optional. This is the project ID of consumer service project of this consumer endpoint. Optional.... |
| `ipAddress` | `string` | The IP address of the consumer endpoint. |
| `status` | `string` | The connection status of the consumer endpoint. |

### `PscConfig`

PSC settings for a Cloud SQL instance.

| Property | Type | Description |
|----------|------|-------------|
| `allowedConsumerProjects` | `array<string>` | Optional. The list of consumer projects that are allow-listed for PSC connections to this instanc... |
| `networkAttachmentUri` | `string` | Optional. The network attachment of the consumer network that the Private Service Connect enabled... |
| `pscAutoConnections` | `array<PscAutoConnectionConfig>` | Optional. The list of settings for requested Private Service Connect consumer endpoints that can ... |
| `pscEnabled` | `boolean` | Whether PSC connectivity is enabled for this instance. |

### `QueryResult`

QueryResult contains the result of executing a single SQL statement.

| Property | Type | Description |
|----------|------|-------------|
| `columns` | `array<Column>` | List of columns included in the result. This also includes the data type of the column. |
| `message` | `string` | Message related to the SQL execution result. |
| `partialResult` | `boolean` | Set to true if the SQL execution's result is truncated due to size limits or an error retrieving ... |
| `rows` | `array<Row>` | Rows returned by the SQL statement. |
| `status` | `Status` | If results were truncated due to an error, details of that error. |

### `ReadPoolAutoScaleConfig`

The read pool auto-scale configuration.

| Property | Type | Description |
|----------|------|-------------|
| `disableScaleIn` | `boolean` | Indicates whether read pool auto scaling supports scale in operations (removing nodes). |
| `enabled` | `boolean` | Indicates whether read pool auto scaling is enabled. |
| `maxNodeCount` | `integer` | Maximum number of read pool nodes to be maintained. |
| `minNodeCount` | `integer` | Minimum number of read pool nodes to be maintained. |
| `scaleInCooldownSeconds` | `integer` | The cooldown period for scale-in operations. |
| `scaleOutCooldownSeconds` | `integer` | The cooldown period for scale-out operations. |
| `targetMetrics` | `array<TargetMetric>` | Optional. Target metrics for read pool auto scaling. |

### `ReplicaConfiguration`

Read-replica configuration for connecting to the primary instance.

| Property | Type | Description |
|----------|------|-------------|
| `cascadableReplica` | `boolean` | Optional. Specifies if a SQL Server replica is a cascadable replica. A cascadable replica is a SQ... |
| `failoverTarget` | `boolean` | Specifies if the replica is the failover target. If the field is set to `true`, the replica will ... |
| `kind` | `string` | This is always `sql#replicaConfiguration`. |
| `mysqlReplicaConfiguration` | `MySqlReplicaConfiguration` | MySQL specific configuration when replicating from a MySQL on-premises primary instance. Replicat... |

### `ReplicationCluster`

A primary instance and disaster recovery (DR) replica pair. A DR replica is a cross-region replica that you designate for failover in the event that the primary instance experiences regional failure. Applicable to MySQL and PostgreSQL.

| Property | Type | Description |
|----------|------|-------------|
| `drReplica` | `boolean` | Output only. Read-only field that indicates whether the replica is a DR replica. This field is no... |
| `failoverDrReplicaName` | `string` | Optional. If the instance is a primary instance, then this field identifies the disaster recovery... |
| `psaWriteEndpoint` | `string` | Output only. If set, this field indicates this instance has a private service access (PSA) DNS en... |

### `Reschedule`

| Property | Type | Description |
|----------|------|-------------|
| `rescheduleType` | `string` | Required. The type of the reschedule. |
| `scheduleTime` | `string` | Optional. Timestamp when the maintenance shall be rescheduled to if reschedule_type=SPECIFIC_TIME... |

### `RestoreBackupContext`

Database instance restore from backup context. Backup context contains source instance id and project id.

| Property | Type | Description |
|----------|------|-------------|
| `backupRunId` | `string` | The ID of the backup run to restore from. |
| `instanceId` | `string` | The ID of the instance that the backup was taken from. |
| `kind` | `string` | This is always `sql#restoreBackupContext`. |
| `project` | `string` | The full project ID of the source instance. |

### `RotateEntraIdCertificateContext`

Instance rotate Entra ID certificate context.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Optional. This is always `sql#rotateEntraIdCertificateContext`. |
| `nextVersion` | `string` | Optional. The fingerprint of the next version to be rotated to. If left unspecified, will be rota... |

### `RotateServerCaContext`

Instance rotate server CA context.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | This is always `sql#rotateServerCaContext`. |
| `nextVersion` | `string` | The fingerprint of the next version to be rotated to. If left unspecified, will be rotated to the... |

### `RotateServerCertificateContext`

Instance rotate server certificate context.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Optional. This is always `sql#rotateServerCertificateContext`. |
| `nextVersion` | `string` | The fingerprint of the next version to be rotated to. If left unspecified, will be rotated to the... |

### `Row`

Contains the values for a row.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<Value>` | The values for the row. |

### `SelectedObjects`

A list of objects that the user selects for replication from an external source instance.

| Property | Type | Description |
|----------|------|-------------|
| `database` | `string` | Required. The name of the database to migrate. |

### `Settings`

Database instance settings.

| Property | Type | Description |
|----------|------|-------------|
| `activationPolicy` | `string` | The activation policy specifies when the instance is activated; it is applicable only when the in... |
| `activeDirectoryConfig` | `SqlActiveDirectoryConfig` | Active Directory configuration, relevant only for Cloud SQL for SQL Server. |
| `advancedMachineFeatures` | `AdvancedMachineFeatures` | Specifies advanced machine configuration for the instances relevant only for SQL Server. |
| `authorizedGaeApplications` | `array<string>` | The App Engine app IDs that can access this instance. (Deprecated) Applied to First Generation in... |
| `autoUpgradeEnabled` | `boolean` | Optional. Cloud SQL for MySQL auto-upgrade configuration. When this parameter is set to true, aut... |
| `availabilityType` | `string` | Availability type. Potential values: * `ZONAL`: The instance serves data from only one zone. Outa... |
| `backupConfiguration` | `BackupConfiguration` | The daily backup configuration for the instance. |
| `collation` | `string` | The name of server Instance collation. |
| `connectionPoolConfig` | `ConnectionPoolConfig` | Optional. The managed connection pooling configuration for the instance. |
| `connectorEnforcement` | `string` | Specifies if connections must use Cloud SQL connectors. Option values include the following: `NOT... |
| `crashSafeReplicationEnabled` | `boolean` | Configuration specific to read replica instances. Indicates whether database flags for crash-safe... |
| `dataApiAccess` | `string` | This parameter controls whether to allow using ExecuteSql API to connect to the instance. Not all... |
| `dataCacheConfig` | `DataCacheConfig` | Configuration for data cache. |
| `dataDiskProvisionedIops` | `string` | Optional. Provisioned number of I/O operations per second for the data disk. This field is only u... |
| `dataDiskProvisionedThroughput` | `string` | Optional. Provisioned throughput measured in MiB per second for the data disk. This field is only... |
| `dataDiskSizeGb` | `string` | The size of data disk, in GB. The data disk size minimum is 10GB. |
| `dataDiskType` | `string` | The type of data disk: `PD_SSD` (default) or `PD_HDD`. Not used for First Generation instances. |
| `databaseFlags` | `array<DatabaseFlags>` | The database flags passed to the instance at startup. |
| `databaseReplicationEnabled` | `boolean` | Configuration specific to read replica instances. Indicates whether replication is enabled or not... |
| `deletionProtectionEnabled` | `boolean` | Configuration to protect against accidental instance deletion. |
| `denyMaintenancePeriods` | `array<DenyMaintenancePeriod>` | Deny maintenance periods |
| `edition` | `string` | Optional. The edition of the instance. |
| `enableDataplexIntegration` | `boolean` | Optional. By default, Cloud SQL instances have schema extraction disabled for Dataplex. When this... |
| `enableGoogleMlIntegration` | `boolean` | Optional. When this parameter is set to true, Cloud SQL instances can connect to Vertex AI to pas... |
| `entraidConfig` | `SqlServerEntraIdConfig` | Optional. The Microsoft Entra ID configuration for the SQL Server instance. |
| `finalBackupConfig` | `FinalBackupConfig` | Optional. The final backup configuration for the instance. |
| `insightsConfig` | `InsightsConfig` | Insights configuration, for now relevant only for Postgres. |
| `ipConfiguration` | `IpConfiguration` | The settings for IP Management. This allows to enable or disable the instance IP and manage which... |
| `kind` | `string` | This is always `sql#settings`. |
| `locationPreference` | `LocationPreference` | The location preference settings. This allows the instance to be located as near as possible to e... |
| `maintenanceWindow` | `MaintenanceWindow` | The maintenance window for this instance. This specifies when the instance can be restarted for m... |
| `passwordValidationPolicy` | `PasswordValidationPolicy` | The local user password validation policy of the instance. |
| `performanceCaptureConfig` | `PerformanceCaptureConfig` | Optional. Configuration for Performance Capture, provides diagnostic metrics during high load sit... |
| `pricingPlan` | `string` | The pricing plan for this instance. This can be either `PER_USE` or `PACKAGE`. Only `PER_USE` is ... |
| `readPoolAutoScaleConfig` | `ReadPoolAutoScaleConfig` | Optional. The read pool auto-scale configuration for the instance. |
| `replicationLagMaxSeconds` | `integer` | Optional. Configuration value for recreation of replica after certain replication lag |
| `replicationType` | `string` | The type of replication this instance uses. This can be either `ASYNCHRONOUS` or `SYNCHRONOUS`. (... |
| `retainBackupsOnDelete` | `boolean` | Optional. When this parameter is set to true, Cloud SQL retains backups of the instance even afte... |
| `settingsVersion` | `string` | The version of instance settings. This is a required field for update method to make sure concurr... |
| `sqlServerAuditConfig` | `SqlServerAuditConfig` | SQL Server specific audit configuration. |
| `storageAutoResize` | `boolean` | Configuration to increase storage size automatically. The default value is true. |
| `storageAutoResizeLimit` | `string` | The maximum size to which storage capacity can be automatically increased. The default value is 0... |
| `tier` | `string` | The tier (or machine type) for this instance, for example `db-custom-1-3840`. WARNING: Changing t... |
| `timeZone` | `string` | Server timezone, relevant only for Cloud SQL for SQL Server. |
| `userLabels` | `object` | User-provided labels, represented as a dictionary where each label is a single key value pair. |

### `SqlActiveDirectoryConfig`

Active Directory configuration, relevant only for Cloud SQL for SQL Server.

| Property | Type | Description |
|----------|------|-------------|
| `adminCredentialSecretName` | `string` | Optional. The secret manager key storing the administrator credential. (e.g., projects/{project}/... |
| `dnsServers` | `array<string>` | Optional. Domain controller IPv4 addresses used to bootstrap Active Directory. |
| `domain` | `string` | The name of the domain (e.g., mydomain.com). |
| `kind` | `string` | This is always sql#activeDirectoryConfig. |
| `mode` | `string` | Optional. The mode of the Active Directory configuration. |
| `organizationalUnit` | `string` | Optional. The organizational unit distinguished name. This is the full hierarchical path to the o... |

### `SqlExternalSyncSettingError`

External primary instance migration setting error/warning.

| Property | Type | Description |
|----------|------|-------------|
| `detail` | `string` | Additional information about the error encountered. |
| `kind` | `string` | Can be `sql#externalSyncSettingError` or `sql#externalSyncSettingWarning`. |
| `type` | `string` | Identifies the specific error that occurred. |

### `SqlInstancesAcquireSsrsLeaseResponse`

Response for the acquire SSRS lease request.

| Property | Type | Description |
|----------|------|-------------|
| `operationId` | `string` | The unique identifier for this operation. |

### `SqlInstancesExecuteSqlResponse`

Execute SQL statements response.

| Property | Type | Description |
|----------|------|-------------|
| `messages` | `array<Message>` | A list of notices and warnings generated during query execution. For PostgreSQL, this includes al... |
| `metadata` | `Metadata` | The additional metadata information regarding the execution of the SQL statements. |
| `results` | `array<QueryResult>` | The list of results after executing all the SQL statements. |
| `status` | `Status` | Contains the error from the database if the SQL execution failed. |

### `SqlInstancesGetDiskShrinkConfigResponse`

Instance get disk shrink config response.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | This is always `sql#getDiskShrinkConfig`. |
| `message` | `string` | Additional message to customers. |
| `minimalTargetSizeGb` | `string` | The minimum size to which a disk can be shrunk in GigaBytes. |

### `SqlInstancesGetLatestRecoveryTimeResponse`

Instance get latest recovery time response.

| Property | Type | Description |
|----------|------|-------------|
| `earliestRecoveryTime` | `string` | Timestamp, identifies the earliest recovery time of the source instance. |
| `kind` | `string` | This is always `sql#getLatestRecoveryTime`. |
| `latestRecoveryTime` | `string` | Timestamp, identifies the latest recovery time of the source instance. |

### `SqlInstancesReleaseSsrsLeaseResponse`

Response for the release SSRS lease request.

| Property | Type | Description |
|----------|------|-------------|
| `operationId` | `string` | The unique identifier for this operation. |

### `SqlInstancesRescheduleMaintenanceRequestBody`

Reschedule options for maintenance windows.

| Property | Type | Description |
|----------|------|-------------|
| `reschedule` | `Reschedule` | Required. The type of the reschedule the user wants. |

### `SqlInstancesResetReplicaSizeRequest`

Instance reset replica size request.

### `SqlInstancesStartExternalSyncRequest`

Instance start external sync request.

| Property | Type | Description |
|----------|------|-------------|
| `migrationType` | `string` | Optional. MigrationType configures the migration to use physical files or logical dump files. If ... |
| `mysqlSyncConfig` | `MySqlSyncConfig` | MySQL-specific settings for start external sync. |
| `replicaOverwriteEnabled` | `boolean` | Optional. MySQL only. True if end-user has confirmed that this SES call will wipe replica databas... |
| `skipVerification` | `boolean` | Whether to skip the verification step (VESS). |
| `syncMode` | `string` | External sync mode. |
| `syncParallelLevel` | `string` | Optional. Parallel level for initial data sync. Currently only applicable for MySQL. |

### `SqlInstancesVerifyExternalSyncSettingsRequest`

Instance verify external sync settings request.

| Property | Type | Description |
|----------|------|-------------|
| `migrationType` | `string` | Optional. MigrationType configures the migration to use physical files or logical dump files. If ... |
| `mysqlSyncConfig` | `MySqlSyncConfig` | Optional. MySQL-specific settings for start external sync. |
| `selectedObjects` | `array<ExternalSyncSelectedObject>` | Optional. Migrate only the specified objects from the source instance. If this field is empty, th... |
| `syncMode` | `string` | External sync mode |
| `syncParallelLevel` | `string` | Optional. Parallel level for initial data sync. Only applicable for PostgreSQL. |
| `verifyConnectionOnly` | `boolean` | Flag to enable verifying connection only |
| `verifyReplicationOnly` | `boolean` | Optional. Flag to verify settings required by replication setup only |

### `SqlInstancesVerifyExternalSyncSettingsResponse`

Instance verify external sync settings response.

| Property | Type | Description |
|----------|------|-------------|
| `errors` | `array<SqlExternalSyncSettingError>` | List of migration violations. |
| `kind` | `string` | This is always `sql#migrationSettingErrorList`. |
| `warnings` | `array<SqlExternalSyncSettingError>` | List of migration warnings. |

### `SqlOutOfDiskReport`

This message wraps up the information written by out-of-disk detection job.

| Property | Type | Description |
|----------|------|-------------|
| `sqlMinRecommendedIncreaseSizeGb` | `integer` | The minimum recommended increase size in GigaBytes This field is consumed by the frontend * Write... |
| `sqlOutOfDiskState` | `string` | This field represents the state generated by the proactive database wellness job for OutOfDisk is... |

### `SqlScheduledMaintenance`

Any scheduled maintenance for this instance.

| Property | Type | Description |
|----------|------|-------------|
| `canDefer` | `boolean` |  |
| `canReschedule` | `boolean` | If the scheduled maintenance can be rescheduled. |
| `scheduleDeadlineTime` | `string` | Maintenance cannot be rescheduled to start beyond this deadline. |
| `startTime` | `string` | The start time of any upcoming scheduled maintenance for this instance. |

### `SqlServerAuditConfig`

SQL Server specific audit configuration.

| Property | Type | Description |
|----------|------|-------------|
| `bucket` | `string` | The name of the destination bucket (e.g., gs://mybucket). |
| `kind` | `string` | This is always sql#sqlServerAuditConfig |
| `retentionInterval` | `string` | How long to keep generated audit files. |
| `uploadInterval` | `string` | How often to upload generated audit files. |

### `SqlServerDatabaseDetails`

Represents a Sql Server database on the Cloud SQL instance.

| Property | Type | Description |
|----------|------|-------------|
| `compatibilityLevel` | `integer` | The version of SQL Server with which the database is to be made compatible |
| `recoveryModel` | `string` | The recovery model of a SQL Server database |

### `SqlServerEntraIdConfig`

SQL Server Entra ID configuration.

| Property | Type | Description |
|----------|------|-------------|
| `applicationId` | `string` | Optional. The application ID for the Entra ID configuration. |
| `kind` | `string` | Output only. This is always sql#sqlServerEntraIdConfig |
| `tenantId` | `string` | Optional. The tenant ID for the Entra ID configuration. |

### `SqlServerUserDetails`

Represents a Sql Server user on the Cloud SQL instance.

| Property | Type | Description |
|----------|------|-------------|
| `disabled` | `boolean` | If the user has been disabled |
| `serverRoles` | `array<string>` | The server roles for this user |

### `SqlSubOperationType`

The sub operation type based on the operation type.

| Property | Type | Description |
|----------|------|-------------|
| `maintenanceType` | `string` | The type of maintenance to be performed on the instance. |

### `SslCert`

SslCerts Resource

| Property | Type | Description |
|----------|------|-------------|
| `cert` | `string` | PEM representation. |
| `certSerialNumber` | `string` | Serial number, as extracted from the certificate. |
| `commonName` | `string` | User supplied name. Constrained to [a-zA-Z.-_ ]+. |
| `createTime` | `string` | The time when the certificate was created in [RFC 3339](https://tools.ietf.org/html/rfc3339) form... |
| `expirationTime` | `string` | The time when the certificate expires in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, ... |
| `instance` | `string` | Name of the database instance. |
| `kind` | `string` | This is always `sql#sslCert`. |
| `selfLink` | `string` | The URI of this resource. |
| `sha1Fingerprint` | `string` | Sha1 Fingerprint. |

### `SslCertDetail`

SslCertDetail.

| Property | Type | Description |
|----------|------|-------------|
| `certInfo` | `SslCert` | The public information about the cert. |
| `certPrivateKey` | `string` | The private key for the client cert, in pem format. Keep private in order to protect your security. |

### `SslCertsCreateEphemeralRequest`

SslCerts create ephemeral certificate request.

| Property | Type | Description |
|----------|------|-------------|
| `access_token` | `string` | Access token to include in the signed certificate. |
| `public_key` | `string` | PEM encoded public key to include in the signed certificate. |

### `SslCertsInsertRequest`

SslCerts insert request.

| Property | Type | Description |
|----------|------|-------------|
| `commonName` | `string` | User supplied name. Must be a distinct name from the other certificates for this instance. |

### `SslCertsInsertResponse`

SslCert insert response.

| Property | Type | Description |
|----------|------|-------------|
| `clientCert` | `SslCertDetail` | The new client certificate and private key. |
| `kind` | `string` | This is always `sql#sslCertsInsert`. |
| `operation` | `Operation` | The operation to track the ssl certs insert request. |
| `serverCaCert` | `SslCert` | The server Certificate Authority's certificate. If this is missing you can force a new one to be ... |

### `SslCertsListResponse`

SslCerts list response.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<SslCert>` | List of client certificates for the instance. |
| `kind` | `string` | This is always `sql#sslCertsList`. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `SyncFlags`

Initial sync flags for certain Cloud SQL APIs. Currently used for the MySQL external server initial dump.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name of the flag. |
| `value` | `string` | The value of the flag. This field must be omitted if the flag doesn't take a value. |

### `TargetMetric`

Target metric for read pool auto scaling.

| Property | Type | Description |
|----------|------|-------------|
| `metric` | `string` | The metric name to be used for auto scaling. |
| `targetValue` | `number` | The target value for the metric. |

### `Tier`

A Google Cloud SQL service tier resource.

| Property | Type | Description |
|----------|------|-------------|
| `DiskQuota` | `string` | The maximum disk size of this tier in bytes. |
| `RAM` | `string` | The maximum RAM usage of this tier in bytes. |
| `kind` | `string` | This is always `sql#tier`. |
| `region` | `array<string>` | The applicable regions for this tier. |
| `tier` | `string` | An identifier for the machine type, for example, `db-custom-1-3840`. For related information, see... |

### `TiersListResponse`

Tiers list response.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<Tier>` | List of tiers. |
| `kind` | `string` | This is always `sql#tiersList`. |

### `TruncateLogContext`

Database Instance truncate log context.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | This is always `sql#truncateLogContext`. |
| `logType` | `string` | The type of log to truncate. Valid values are `MYSQL_GENERAL_TABLE` and `MYSQL_SLOW_TABLE`. |

### `User`

A Cloud SQL user resource.

| Property | Type | Description |
|----------|------|-------------|
| `databaseRoles` | `array<string>` | Optional. Role memberships of the user |
| `dualPasswordType` | `string` | Dual password status for the user. |
| `etag` | `string` | This field is deprecated and will be removed from a future version of the API. |
| `host` | `string` | Optional. The host from which the user can connect. For `insert` operations, host defaults to an ... |
| `iamEmail` | `string` | Optional. The full email for an IAM user. For normal database users, this will not be filled. Onl... |
| `iamStatus` | `string` | Indicates if a group is active or inactive for IAM database authentication. |
| `instance` | `string` | The name of the Cloud SQL instance. This does not include the project ID. Can be omitted for `upd... |
| `kind` | `string` | This is always `sql#user`. |
| `name` | `string` | The name of the user in the Cloud SQL instance. Can be omitted for `update` because it is already... |
| `password` | `string` | The password for the user. |
| `passwordPolicy` | `UserPasswordValidationPolicy` | User level password validation policy. |
| `project` | `string` | The project ID of the project containing the Cloud SQL database. The Google apps domain is prefix... |
| `sqlserverUserDetails` | `SqlServerUserDetails` |  |
| `type` | `string` | The user type. It determines the method to authenticate the user during login. The default is the... |

### `UserPasswordValidationPolicy`

User level password validation policy.

| Property | Type | Description |
|----------|------|-------------|
| `allowedFailedAttempts` | `integer` | Number of failed login attempts allowed before user get locked. |
| `enableFailedAttemptsCheck` | `boolean` | If true, failed login attempts check will be enabled. |
| `enablePasswordVerification` | `boolean` | If true, the user must specify the current password before changing the password. This flag is su... |
| `passwordExpirationDuration` | `string` | Expiration duration after password is updated. |
| `status` | `PasswordStatus` | Output only. Read-only password status. |

### `UsersListResponse`

User list response.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<User>` | List of user resources in the instance. |
| `kind` | `string` | This is always `sql#usersList`. |
| `nextPageToken` | `string` | Unused. |

### `Value`

The cell value of the table.

| Property | Type | Description |
|----------|------|-------------|
| `nullValue` | `boolean` | If cell value is null, then this flag will be set to true. |
| `value` | `string` | The cell value in string format. |

