# NetApp API - API Reference

**Version**: `v1` | **Methods**: 73 | **Schemas**: 66

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `netapp.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `netapp.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `netapp.projects.locations.backupVaults.create` | POST | `v1/{+parent}/backupVaults` | Creates new backup vault |
| `netapp.projects.locations.backupVaults.delete` | DELETE | `v1/{+name}` | Warning! This operation will permanently delete the backup vault. |
| `netapp.projects.locations.backupVaults.get` | GET | `v1/{+name}` | Returns the description of the specified backup vault |
| `netapp.projects.locations.backupVaults.patch` | PATCH | `v1/{+name}` | Updates the settings of a specific backup vault. |
| `netapp.projects.locations.backupVaults.list` | GET | `v1/{+parent}/backupVaults` | Returns list of all available backup vaults. |
| `netapp.projects.locations.backupVaults.backups.patch` | PATCH | `v1/{+name}` | Update backup with full spec. |
| `netapp.projects.locations.backupVaults.backups.get` | GET | `v1/{+name}` | Returns the description of the specified backup |
| `netapp.projects.locations.backupVaults.backups.delete` | DELETE | `v1/{+name}` | Warning! This operation will permanently delete the backup. |
| `netapp.projects.locations.backupVaults.backups.create` | POST | `v1/{+parent}/backups` | Creates a backup from the volume specified in the request The backup can be created from the give... |
| `netapp.projects.locations.backupVaults.backups.list` | GET | `v1/{+parent}/backups` | Returns descriptions of all backups for a backupVault. |
| `netapp.projects.locations.hostGroups.delete` | DELETE | `v1/{+name}` | Deletes a host group. |
| `netapp.projects.locations.hostGroups.patch` | PATCH | `v1/{+name}` | Updates an existing host group. |
| `netapp.projects.locations.hostGroups.list` | GET | `v1/{+parent}/hostGroups` | Returns a list of host groups in a `location`. Use `-` as location to list host groups across all... |
| `netapp.projects.locations.hostGroups.get` | GET | `v1/{+name}` | Returns details of the specified host group. |
| `netapp.projects.locations.hostGroups.create` | POST | `v1/{+parent}/hostGroups` | Creates a new host group. |
| `netapp.projects.locations.backupPolicies.get` | GET | `v1/{+name}` | Returns the description of the specified backup policy by backup_policy_id. |
| `netapp.projects.locations.backupPolicies.create` | POST | `v1/{+parent}/backupPolicies` | Creates new backup policy |
| `netapp.projects.locations.backupPolicies.delete` | DELETE | `v1/{+name}` | Warning! This operation will permanently delete the backup policy. |
| `netapp.projects.locations.backupPolicies.patch` | PATCH | `v1/{+name}` | Updates settings of a specific backup policy. |
| `netapp.projects.locations.backupPolicies.list` | GET | `v1/{+parent}/backupPolicies` | Returns list of all available backup policies. |
| `netapp.projects.locations.kmsConfigs.patch` | PATCH | `v1/{+name}` | Updates the Kms config properties with the full spec |
| `netapp.projects.locations.kmsConfigs.verify` | POST | `v1/{+name}:verify` | Verifies KMS config reachability. |
| `netapp.projects.locations.kmsConfigs.create` | POST | `v1/{+parent}/kmsConfigs` | Creates a new KMS config. |
| `netapp.projects.locations.kmsConfigs.get` | GET | `v1/{+name}` | Returns the description of the specified KMS config by kms_config_id. |
| `netapp.projects.locations.kmsConfigs.encrypt` | POST | `v1/{+name}:encrypt` | Encrypt the existing volumes without CMEK encryption with the desired the KMS config for the whol... |
| `netapp.projects.locations.kmsConfigs.delete` | DELETE | `v1/{+name}` | Warning! This operation will permanently delete the Kms config. |
| `netapp.projects.locations.kmsConfigs.list` | GET | `v1/{+parent}/kmsConfigs` | Returns descriptions of all KMS configs owned by the caller. |
| `netapp.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `netapp.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `netapp.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `netapp.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `netapp.projects.locations.activeDirectories.create` | POST | `v1/{+parent}/activeDirectories` | CreateActiveDirectory Creates the active directory specified in the request. |
| `netapp.projects.locations.activeDirectories.delete` | DELETE | `v1/{+name}` | Delete the active directory specified in the request. |
| `netapp.projects.locations.activeDirectories.list` | GET | `v1/{+parent}/activeDirectories` | Lists active directories. |
| `netapp.projects.locations.activeDirectories.get` | GET | `v1/{+name}` | Describes a specified active directory. |
| `netapp.projects.locations.activeDirectories.patch` | PATCH | `v1/{+name}` | Update the parameters of an active directories. |
| `netapp.projects.locations.storagePools.list` | GET | `v1/{+parent}/storagePools` | Returns descriptions of all storage pools owned by the caller. |
| `netapp.projects.locations.storagePools.create` | POST | `v1/{+parent}/storagePools` | Creates a new storage pool. |
| `netapp.projects.locations.storagePools.validateDirectoryService` | POST | `v1/{+name}:validateDirectoryService` | ValidateDirectoryService does a connectivity check for a directory service policy attached to the... |
| `netapp.projects.locations.storagePools.get` | GET | `v1/{+name}` | Returns the description of the specified storage pool by poolId. |
| `netapp.projects.locations.storagePools.patch` | PATCH | `v1/{+name}` | Updates the storage pool properties with the full spec |
| `netapp.projects.locations.storagePools.delete` | DELETE | `v1/{+name}` | Warning! This operation will permanently delete the storage pool. |
| `netapp.projects.locations.storagePools.switch` | POST | `v1/{+name}:switch` | This operation will switch the active/replica zone for a regional storagePool. |
| `netapp.projects.locations.volumes.list` | GET | `v1/{+parent}/volumes` | Lists Volumes in a given project. |
| `netapp.projects.locations.volumes.get` | GET | `v1/{+name}` | Gets details of a single Volume. |
| `netapp.projects.locations.volumes.create` | POST | `v1/{+parent}/volumes` | Creates a new Volume in a given project and location. |
| `netapp.projects.locations.volumes.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single Volume. |
| `netapp.projects.locations.volumes.delete` | DELETE | `v1/{+name}` | Deletes a single Volume. |
| `netapp.projects.locations.volumes.restore` | POST | `v1/{+name}:restore` | Restore files from a backup to a volume. |
| `netapp.projects.locations.volumes.establishPeering` | POST | `v1/{+name}:establishPeering` | Establish volume peering. This is used to establish cluster and svm peerings between the GCNV and... |
| `netapp.projects.locations.volumes.revert` | POST | `v1/{+name}:revert` | Revert an existing volume to a specified snapshot. Warning! This operation will permanently rever... |
| `netapp.projects.locations.volumes.quotaRules.delete` | DELETE | `v1/{+name}` | Deletes a quota rule. |
| `netapp.projects.locations.volumes.quotaRules.create` | POST | `v1/{+parent}/quotaRules` | Creates a new quota rule. |
| `netapp.projects.locations.volumes.quotaRules.get` | GET | `v1/{+name}` | Returns details of the specified quota rule. |
| `netapp.projects.locations.volumes.quotaRules.patch` | PATCH | `v1/{+name}` | Updates a quota rule. |
| `netapp.projects.locations.volumes.quotaRules.list` | GET | `v1/{+parent}/quotaRules` | Returns list of all quota rules in a location. |
| `netapp.projects.locations.volumes.replications.create` | POST | `v1/{+parent}/replications` | Create a new replication for a volume. |
| `netapp.projects.locations.volumes.replications.sync` | POST | `v1/{+name}:sync` | Syncs the replication. This will invoke one time volume data transfer from source to destination. |
| `netapp.projects.locations.volumes.replications.establishPeering` | POST | `v1/{+name}:establishPeering` | Establish replication peering. |
| `netapp.projects.locations.volumes.replications.patch` | PATCH | `v1/{+name}` | Updates the settings of a specific replication. |
| `netapp.projects.locations.volumes.replications.resume` | POST | `v1/{+name}:resume` | Resume Cross Region Replication. |
| `netapp.projects.locations.volumes.replications.stop` | POST | `v1/{+name}:stop` | Stop Cross Region Replication. |
| `netapp.projects.locations.volumes.replications.list` | GET | `v1/{+parent}/replications` | Returns descriptions of all replications for a volume. |
| `netapp.projects.locations.volumes.replications.get` | GET | `v1/{+name}` | Describe a replication for a volume. |
| `netapp.projects.locations.volumes.replications.delete` | DELETE | `v1/{+name}` | Deletes a replication. |
| `netapp.projects.locations.volumes.replications.reverseDirection` | POST | `v1/{+name}:reverseDirection` | Reverses direction of replication. Source becomes destination and destination becomes source. |
| `netapp.projects.locations.volumes.snapshots.create` | POST | `v1/{+parent}/snapshots` | Create a new snapshot for a volume. |
| `netapp.projects.locations.volumes.snapshots.patch` | PATCH | `v1/{+name}` | Updates the settings of a specific snapshot. |
| `netapp.projects.locations.volumes.snapshots.delete` | DELETE | `v1/{+name}` | Deletes a snapshot. |
| `netapp.projects.locations.volumes.snapshots.get` | GET | `v1/{+name}` | Describe a snapshot for a volume. |
| `netapp.projects.locations.volumes.snapshots.list` | GET | `v1/{+parent}/snapshots` | Returns descriptions of all snapshots for a volume. |

### `netapp.projects.locations.list`

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
const res = await netapp.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await netapp.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.backupVaults.create`

**POST** `v1/{+parent}/backupVaults`

Creates new backup vault

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The location to create the backup vaults, in the format `projects/{project_id}/locations/{location}` |
| `backupVaultId` | `string` | query | No | Required. The ID to use for the backupVault. The ID must be unique within the specified location. Must contain only l... |

**Request body**: `BackupVault`

**Response**: `Operation`

```typescript
const res = await netapp.backupVaults.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.backupVaults.delete`

**DELETE** `v1/{+name}`

Warning! This operation will permanently delete the backup vault.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The backupVault resource name, in the format `projects/{project_id}/locations/{location}/backupVaults/{back... |

**Response**: `Operation`

```typescript
const res = await netapp.backupVaults.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.backupVaults.get`

**GET** `v1/{+name}`

Returns the description of the specified backup vault

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The backupVault resource name, in the format `projects/{project_id}/locations/{location}/backupVaults/{back... |

**Response**: `BackupVault`

```typescript
const res = await netapp.backupVaults.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.backupVaults.patch`

**PATCH** `v1/{+name}`

Updates the settings of a specific backup vault.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the backup vault. Format: `projects/{project_id}/locations/{location}/backupVaults/{... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the Backup resource to be updated. The fields... |

**Request body**: `BackupVault`

**Response**: `Operation`

```typescript
const res = await netapp.backupVaults.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.backupVaults.list`

**GET** `v1/{+parent}/backupVaults`

Returns list of all available backup vaults.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The location for which to retrieve backupVault information, in the format `projects/{project_id}/locations/... |
| `filter` | `string` | query | No | List filter. |
| `orderBy` | `string` | query | No | Sort results. Supported values are "name", "name desc" or "" (unsorted). |
| `pageSize` | `integer` | query | No | The maximum number of items to return. |
| `pageToken` | `string` | query | No | The next_page_token value to use if there are additional results to retrieve for this list request. |

**Response**: `ListBackupVaultsResponse`

```typescript
const res = await netapp.backupVaults.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.backupVaults.backups.patch`

**PATCH** `v1/{+name}`

Update backup with full spec.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the backup. Format: `projects/{project_id}/locations/{location}/backupVaults/{backup... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the Backup resource to be updated. The fields... |

**Request body**: `Backup`

**Response**: `Operation`

```typescript
const res = await netapp.backups.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.backupVaults.backups.get`

**GET** `v1/{+name}`

Returns the description of the specified backup

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The backup resource name, in the format `projects/{project_id}/locations/{location}/backupVaults/{backup_va... |

**Response**: `Backup`

```typescript
const res = await netapp.backups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.backupVaults.backups.delete`

**DELETE** `v1/{+name}`

Warning! This operation will permanently delete the backup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The backup resource name, in the format `projects/{project_id}/locations/{location}/backupVaults/{backup_va... |

**Response**: `Operation`

```typescript
const res = await netapp.backups.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.backupVaults.backups.create`

**POST** `v1/{+parent}/backups`

Creates a backup from the volume specified in the request The backup can be created from the given snapshot if specified in the request. If no snapshot specified, there'll be a new snapshot taken to initiate the backup creation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The NetApp backupVault to create the backups of, in the format `projects/*/locations/*/backupVaults/{backup... |
| `backupId` | `string` | query | No | Required. The ID to use for the backup. The ID must be unique within the specified backupVault. Must contain only let... |

**Request body**: `Backup`

**Response**: `Operation`

```typescript
const res = await netapp.backups.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.backupVaults.backups.list`

**GET** `v1/{+parent}/backups`

Returns descriptions of all backups for a backupVault.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The backupVault for which to retrieve backup information, in the format `projects/{project_id}/locations/{l... |
| `filter` | `string` | query | No | The standard list filter. If specified, backups will be returned based on the attribute name that matches the filter ... |
| `orderBy` | `string` | query | No | Sort results. Supported values are "name", "name desc" or "" (unsorted). |
| `pageSize` | `integer` | query | No | The maximum number of items to return. The service may return fewer than this value. The maximum value is 1000; value... |
| `pageToken` | `string` | query | No | The next_page_token value to use if there are additional results to retrieve for this list request. |

**Response**: `ListBackupsResponse`

```typescript
const res = await netapp.backups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.hostGroups.delete`

**DELETE** `v1/{+name}`

Deletes a host group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the host group. Format: `projects/{project_number}/locations/{location_id}/hostGroups/... |

**Response**: `Operation`

```typescript
const res = await netapp.hostGroups.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.hostGroups.patch`

**PATCH** `v1/{+name}`

Updates an existing host group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the host group. Format: `projects/{project_number}/locations/{location_id}/hostGroup... |
| `updateMask` | `string` | query | No | Optional. The list of fields to update. |

**Request body**: `HostGroup`

**Response**: `Operation`

```typescript
const res = await netapp.hostGroups.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.hostGroups.list`

**GET** `v1/{+parent}/hostGroups`

Returns a list of host groups in a `location`. Use `-` as location to list host groups across all locations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for ListHostGroupsRequest |
| `filter` | `string` | query | No | Optional. Filter to apply to the request. |
| `orderBy` | `string` | query | No | Optional. Hint for how to order the results |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, the server will pick an ... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListHostGroupsResponse`

```typescript
const res = await netapp.hostGroups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.hostGroups.get`

**GET** `v1/{+name}`

Returns details of the specified host group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the host group. Format: `projects/{project_number}/locations/{location_id}/hostGroups/... |

**Response**: `HostGroup`

```typescript
const res = await netapp.hostGroups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.hostGroups.create`

**POST** `v1/{+parent}/hostGroups`

Creates a new host group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for CreateHostGroupRequest |
| `hostGroupId` | `string` | query | No | Required. ID of the host group to create. Must be unique within the parent resource. Must contain only letters, numbe... |

**Request body**: `HostGroup`

**Response**: `Operation`

```typescript
const res = await netapp.hostGroups.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.backupPolicies.get`

**GET** `v1/{+name}`

Returns the description of the specified backup policy by backup_policy_id.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The backupPolicy resource name, in the format `projects/{project_id}/locations/{location}/backupPolicies/{b... |

**Response**: `BackupPolicy`

```typescript
const res = await netapp.backupPolicies.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.backupPolicies.create`

**POST** `v1/{+parent}/backupPolicies`

Creates new backup policy

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The location to create the backup policies of, in the format `projects/{project_id}/locations/{location}` |
| `backupPolicyId` | `string` | query | No | Required. The ID to use for the backup policy. The ID must be unique within the specified location. Must contain only... |

**Request body**: `BackupPolicy`

**Response**: `Operation`

```typescript
const res = await netapp.backupPolicies.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.backupPolicies.delete`

**DELETE** `v1/{+name}`

Warning! This operation will permanently delete the backup policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The backup policy resource name, in the format `projects/{project_id}/locations/{location}/backupPolicies/{... |

**Response**: `Operation`

```typescript
const res = await netapp.backupPolicies.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.backupPolicies.patch`

**PATCH** `v1/{+name}`

Updates settings of a specific backup policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the backup policy. Format: `projects/{project_id}/locations/{location}/backupPolicie... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the Backup Policy resource by the update. The... |

**Request body**: `BackupPolicy`

**Response**: `Operation`

```typescript
const res = await netapp.backupPolicies.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.backupPolicies.list`

**GET** `v1/{+parent}/backupPolicies`

Returns list of all available backup policies.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for ListBackupPoliciesRequest |
| `filter` | `string` | query | No | Filtering results |
| `orderBy` | `string` | query | No | Hint for how to order the results |
| `pageSize` | `integer` | query | No | Requested page size. Server may return fewer items than requested. If unspecified, the server will pick an appropriat... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. |

**Response**: `ListBackupPoliciesResponse`

```typescript
const res = await netapp.backupPolicies.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.kmsConfigs.patch`

**PATCH** `v1/{+name}`

Updates the Kms config properties with the full spec

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Name of the KmsConfig. Format: `projects/{project}/locations/{location}/kmsConfigs/{kms_config}` |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the KmsConfig resource by the update. The fie... |

**Request body**: `KmsConfig`

**Response**: `Operation`

```typescript
const res = await netapp.kmsConfigs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.kmsConfigs.verify`

**POST** `v1/{+name}:verify`

Verifies KMS config reachability.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the KMS Config to be verified. |

**Request body**: `VerifyKmsConfigRequest`

**Response**: `VerifyKmsConfigResponse`

```typescript
const res = await netapp.kmsConfigs.verify({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.kmsConfigs.create`

**POST** `v1/{+parent}/kmsConfigs`

Creates a new KMS config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Value for parent. |
| `kmsConfigId` | `string` | query | No | Required. Id of the requesting KmsConfig. Must be unique within the parent resource. Must contain only letters, numbe... |

**Request body**: `KmsConfig`

**Response**: `Operation`

```typescript
const res = await netapp.kmsConfigs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.kmsConfigs.get`

**GET** `v1/{+name}`

Returns the description of the specified KMS config by kms_config_id.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the KmsConfig |

**Response**: `KmsConfig`

```typescript
const res = await netapp.kmsConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.kmsConfigs.encrypt`

**POST** `v1/{+name}:encrypt`

Encrypt the existing volumes without CMEK encryption with the desired the KMS config for the whole region.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the KmsConfig. |

**Request body**: `EncryptVolumesRequest`

**Response**: `Operation`

```typescript
const res = await netapp.kmsConfigs.encrypt({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.kmsConfigs.delete`

**DELETE** `v1/{+name}`

Warning! This operation will permanently delete the Kms config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the KmsConfig. |

**Response**: `Operation`

```typescript
const res = await netapp.kmsConfigs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.kmsConfigs.list`

**GET** `v1/{+parent}/kmsConfigs`

Returns descriptions of all KMS configs owned by the caller.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value |
| `filter` | `string` | query | No | List filter. |
| `orderBy` | `string` | query | No | Sort results. Supported values are "name", "name desc" or "" (unsorted). |
| `pageSize` | `integer` | query | No | The maximum number of items to return. |
| `pageToken` | `string` | query | No | The next_page_token value to use if there are additional results to retrieve for this list request. |

**Response**: `ListKmsConfigsResponse`

```typescript
const res = await netapp.kmsConfigs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await netapp.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.operations.list`

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
const res = await netapp.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await netapp.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await netapp.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.activeDirectories.create`

**POST** `v1/{+parent}/activeDirectories`

CreateActiveDirectory Creates the active directory specified in the request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Value for parent. |
| `activeDirectoryId` | `string` | query | No | Required. ID of the active directory to create. Must be unique within the parent resource. Must contain only letters,... |

**Request body**: `ActiveDirectory`

**Response**: `Operation`

```typescript
const res = await netapp.activeDirectories.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.activeDirectories.delete`

**DELETE** `v1/{+name}`

Delete the active directory specified in the request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the active directory. |

**Response**: `Operation`

```typescript
const res = await netapp.activeDirectories.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.activeDirectories.list`

**GET** `v1/{+parent}/activeDirectories`

Lists active directories.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for ListActiveDirectoriesRequest |
| `filter` | `string` | query | No | Filtering results |
| `orderBy` | `string` | query | No | Hint for how to order the results |
| `pageSize` | `integer` | query | No | Requested page size. Server may return fewer items than requested. If unspecified, the server will pick an appropriat... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. |

**Response**: `ListActiveDirectoriesResponse`

```typescript
const res = await netapp.activeDirectories.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.activeDirectories.get`

**GET** `v1/{+name}`

Describes a specified active directory.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the active directory. |

**Response**: `ActiveDirectory`

```typescript
const res = await netapp.activeDirectories.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.activeDirectories.patch`

**PATCH** `v1/{+name}`

Update the parameters of an active directories.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the active directory. Format: `projects/{project_number}/locations/{location_id}/act... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the Active Directory resource by the update. ... |

**Request body**: `ActiveDirectory`

**Response**: `Operation`

```typescript
const res = await netapp.activeDirectories.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.storagePools.list`

**GET** `v1/{+parent}/storagePools`

Returns descriptions of all storage pools owned by the caller.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value |
| `filter` | `string` | query | No | Optional. List filter. |
| `orderBy` | `string` | query | No | Optional. Sort results. Supported values are "name", "name desc" or "" (unsorted). |
| `pageSize` | `integer` | query | No | Optional. The maximum number of items to return. |
| `pageToken` | `string` | query | No | Optional. The next_page_token value to use if there are additional results to retrieve for this list request. |

**Response**: `ListStoragePoolsResponse`

```typescript
const res = await netapp.storagePools.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.storagePools.create`

**POST** `v1/{+parent}/storagePools`

Creates a new storage pool.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Value for parent. |
| `storagePoolId` | `string` | query | No | Required. Id of the requesting storage pool. Must be unique within the parent resource. Must contain only letters, nu... |

**Request body**: `StoragePool`

**Response**: `Operation`

```typescript
const res = await netapp.storagePools.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.storagePools.validateDirectoryService`

**POST** `v1/{+name}:validateDirectoryService`

ValidateDirectoryService does a connectivity check for a directory service policy attached to the storage pool.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the storage pool |

**Request body**: `ValidateDirectoryServiceRequest`

**Response**: `Operation`

```typescript
const res = await netapp.storagePools.validateDirectoryService({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.storagePools.get`

**GET** `v1/{+name}`

Returns the description of the specified storage pool by poolId.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the storage pool |

**Response**: `StoragePool`

```typescript
const res = await netapp.storagePools.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.storagePools.patch`

**PATCH** `v1/{+name}`

Updates the storage pool properties with the full spec

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Name of the storage pool |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the StoragePool resource by the update. The f... |

**Request body**: `StoragePool`

**Response**: `Operation`

```typescript
const res = await netapp.storagePools.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.storagePools.delete`

**DELETE** `v1/{+name}`

Warning! This operation will permanently delete the storage pool.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the storage pool |

**Response**: `Operation`

```typescript
const res = await netapp.storagePools.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.storagePools.switch`

**POST** `v1/{+name}:switch`

This operation will switch the active/replica zone for a regional storagePool.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the storage pool |

**Request body**: `SwitchActiveReplicaZoneRequest`

**Response**: `Operation`

```typescript
const res = await netapp.storagePools.switch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.volumes.list`

**GET** `v1/{+parent}/volumes`

Lists Volumes in a given project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for ListVolumesRequest |
| `filter` | `string` | query | No | Filtering results |
| `orderBy` | `string` | query | No | Hint for how to order the results |
| `pageSize` | `integer` | query | No | Requested page size. Server may return fewer items than requested. If unspecified, the server will pick an appropriat... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. |

**Response**: `ListVolumesResponse`

```typescript
const res = await netapp.volumes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.volumes.get`

**GET** `v1/{+name}`

Gets details of a single Volume.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the volume |

**Response**: `Volume`

```typescript
const res = await netapp.volumes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.volumes.create`

**POST** `v1/{+parent}/volumes`

Creates a new Volume in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Value for parent. |
| `volumeId` | `string` | query | No | Required. Id of the requesting volume. Must be unique within the parent resource. Must contain only letters, numbers ... |

**Request body**: `Volume`

**Response**: `Operation`

```typescript
const res = await netapp.volumes.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.volumes.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single Volume.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Name of the volume |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the Volume resource by the update. The fields... |

**Request body**: `Volume`

**Response**: `Operation`

```typescript
const res = await netapp.volumes.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.volumes.delete`

**DELETE** `v1/{+name}`

Deletes a single Volume.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the volume |
| `force` | `boolean` | query | No | If this field is set as true, CCFE will not block the volume resource deletion even if it has any snapshots resource.... |

**Response**: `Operation`

```typescript
const res = await netapp.volumes.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.volumes.restore`

**POST** `v1/{+name}:restore`

Restore files from a backup to a volume.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The volume resource name, in the format `projects/{project_id}/locations/{location}/volumes/{volume_id}` |

**Request body**: `RestoreBackupFilesRequest`

**Response**: `Operation`

```typescript
const res = await netapp.volumes.restore({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.volumes.establishPeering`

**POST** `v1/{+name}:establishPeering`

Establish volume peering. This is used to establish cluster and svm peerings between the GCNV and OnPrem clusters.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The volume resource name, in the format `projects/{project_id}/locations/{location}/volumes/{volume_id}` |

**Request body**: `EstablishVolumePeeringRequest`

**Response**: `Operation`

```typescript
const res = await netapp.volumes.establishPeering({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.volumes.revert`

**POST** `v1/{+name}:revert`

Revert an existing volume to a specified snapshot. Warning! This operation will permanently revert all changes made after the snapshot was created.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the volume, in the format of projects/{project_id}/locations/{location}/volumes/{volum... |

**Request body**: `RevertVolumeRequest`

**Response**: `Operation`

```typescript
const res = await netapp.volumes.revert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.volumes.quotaRules.delete`

**DELETE** `v1/{+name}`

Deletes a quota rule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the quota rule. |

**Response**: `Operation`

```typescript
const res = await netapp.quotaRules.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.volumes.quotaRules.create`

**POST** `v1/{+parent}/quotaRules`

Creates a new quota rule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for CreateQuotaRuleRequest |
| `quotaRuleId` | `string` | query | No | Required. ID of the quota rule to create. Must be unique within the parent resource. Must contain only letters, numbe... |

**Request body**: `QuotaRule`

**Response**: `Operation`

```typescript
const res = await netapp.quotaRules.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.volumes.quotaRules.get`

**GET** `v1/{+name}`

Returns details of the specified quota rule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the quota rule |

**Response**: `QuotaRule`

```typescript
const res = await netapp.quotaRules.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.volumes.quotaRules.patch`

**PATCH** `v1/{+name}`

Updates a quota rule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the quota rule. Format: `projects/{project_number}/locations/{location_id}/volumes/v... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the Quota Rule resource by the update. The fi... |

**Request body**: `QuotaRule`

**Response**: `Operation`

```typescript
const res = await netapp.quotaRules.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.volumes.quotaRules.list`

**GET** `v1/{+parent}/quotaRules`

Returns list of all quota rules in a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for ListQuotaRulesRequest |
| `filter` | `string` | query | No | Optional. Filtering results |
| `orderBy` | `string` | query | No | Optional. Hint for how to order the results |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, the server will pick an ... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListQuotaRulesResponse`

```typescript
const res = await netapp.quotaRules.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.volumes.replications.create`

**POST** `v1/{+parent}/replications`

Create a new replication for a volume.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The NetApp volume to create the replications of, in the format `projects/{project_id}/locations/{location}/... |
| `replicationId` | `string` | query | No | Required. ID of the replication to create. Must be unique within the parent resource. Must contain only letters, numb... |

**Request body**: `Replication`

**Response**: `Operation`

```typescript
const res = await netapp.replications.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.volumes.replications.sync`

**POST** `v1/{+name}:sync`

Syncs the replication. This will invoke one time volume data transfer from source to destination.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the replication, in the format of projects/{project_id}/locations/{location}/volumes/{... |

**Request body**: `SyncReplicationRequest`

**Response**: `Operation`

```typescript
const res = await netapp.replications.sync({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.volumes.replications.establishPeering`

**POST** `v1/{+name}:establishPeering`

Establish replication peering.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the replication, in the format of projects/{project_id}/locations/{location}/volumes/{... |

**Request body**: `EstablishPeeringRequest`

**Response**: `Operation`

```typescript
const res = await netapp.replications.establishPeering({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.volumes.replications.patch`

**PATCH** `v1/{+name}`

Updates the settings of a specific replication.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the Replication. Format: `projects/{project_id}/locations/{location}/volumes/{volume... |
| `updateMask` | `string` | query | No | Required. Mask of fields to update. At least one path must be supplied in this field. |

**Request body**: `Replication`

**Response**: `Operation`

```typescript
const res = await netapp.replications.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.volumes.replications.resume`

**POST** `v1/{+name}:resume`

Resume Cross Region Replication.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the replication, in the format of projects/{project_id}/locations/{location}/volumes/{... |

**Request body**: `ResumeReplicationRequest`

**Response**: `Operation`

```typescript
const res = await netapp.replications.resume({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.volumes.replications.stop`

**POST** `v1/{+name}:stop`

Stop Cross Region Replication.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the replication, in the format of projects/{project_id}/locations/{location}/volumes/{... |

**Request body**: `StopReplicationRequest`

**Response**: `Operation`

```typescript
const res = await netapp.replications.stop({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.volumes.replications.list`

**GET** `v1/{+parent}/replications`

Returns descriptions of all replications for a volume.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The volume for which to retrieve replication information, in the format `projects/{project_id}/locations/{l... |
| `filter` | `string` | query | No | List filter. |
| `orderBy` | `string` | query | No | Sort results. Supported values are "name", "name desc" or "" (unsorted). |
| `pageSize` | `integer` | query | No | The maximum number of items to return. |
| `pageToken` | `string` | query | No | The next_page_token value to use if there are additional results to retrieve for this list request. |

**Response**: `ListReplicationsResponse`

```typescript
const res = await netapp.replications.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.volumes.replications.get`

**GET** `v1/{+name}`

Describe a replication for a volume.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The replication resource name, in the format `projects/{project_id}/locations/{location}/volumes/{volume_id... |

**Response**: `Replication`

```typescript
const res = await netapp.replications.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.volumes.replications.delete`

**DELETE** `v1/{+name}`

Deletes a replication.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The replication resource name, in the format `projects/*/locations/*/volumes/*/replications/{replication_id}` |

**Response**: `Operation`

```typescript
const res = await netapp.replications.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.volumes.replications.reverseDirection`

**POST** `v1/{+name}:reverseDirection`

Reverses direction of replication. Source becomes destination and destination becomes source.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the replication, in the format of projects/{project_id}/locations/{location}/volumes/{... |

**Request body**: `ReverseReplicationDirectionRequest`

**Response**: `Operation`

```typescript
const res = await netapp.replications.reverseDirection({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.volumes.snapshots.create`

**POST** `v1/{+parent}/snapshots`

Create a new snapshot for a volume.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The NetApp volume to create the snapshots of, in the format `projects/{project_id}/locations/{location}/vol... |
| `snapshotId` | `string` | query | No | Required. ID of the snapshot to create. Must be unique within the parent resource. Must contain only letters, numbers... |

**Request body**: `Snapshot`

**Response**: `Operation`

```typescript
const res = await netapp.snapshots.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.volumes.snapshots.patch`

**PATCH** `v1/{+name}`

Updates the settings of a specific snapshot.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the snapshot. Format: `projects/{project_id}/locations/{location}/volumes/{volume_id... |
| `updateMask` | `string` | query | No | Required. Mask of fields to update. At least one path must be supplied in this field. |

**Request body**: `Snapshot`

**Response**: `Operation`

```typescript
const res = await netapp.snapshots.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.volumes.snapshots.delete`

**DELETE** `v1/{+name}`

Deletes a snapshot.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The snapshot resource name, in the format `projects/*/locations/*/volumes/*/snapshots/{snapshot_id}` |

**Response**: `Operation`

```typescript
const res = await netapp.snapshots.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.volumes.snapshots.get`

**GET** `v1/{+name}`

Describe a snapshot for a volume.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The snapshot resource name, in the format `projects/{project_id}/locations/{location}/volumes/{volume_id}/s... |

**Response**: `Snapshot`

```typescript
const res = await netapp.snapshots.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `netapp.projects.locations.volumes.snapshots.list`

**GET** `v1/{+parent}/snapshots`

Returns descriptions of all snapshots for a volume.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The volume for which to retrieve snapshot information, in the format `projects/{project_id}/locations/{loca... |
| `filter` | `string` | query | No | List filter. |
| `orderBy` | `string` | query | No | Sort results. Supported values are "name", "name desc" or "" (unsorted). |
| `pageSize` | `integer` | query | No | The maximum number of items to return. |
| `pageToken` | `string` | query | No | The next_page_token value to use if there are additional results to retrieve for this list request. |

**Response**: `ListSnapshotsResponse`

```typescript
const res = await netapp.snapshots.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `ActiveDirectory`

ActiveDirectory is the public representation of the active directory config.

| Property | Type | Description |
|----------|------|-------------|
| `administrators` | `array<string>` | Optional. Users to be added to the Built-in Admininstrators group. |
| `aesEncryption` | `boolean` | If enabled, AES encryption will be enabled for SMB communication. |
| `backupOperators` | `array<string>` | Optional. Users to be added to the Built-in Backup Operator active directory group. |
| `createTime` | `string` | Output only. Create time of the active directory. |
| `description` | `string` | Description of the active directory. |
| `dns` | `string` | Required. Comma separated list of DNS server IP addresses for the Active Directory domain. |
| `domain` | `string` | Required. Name of the Active Directory domain |
| `encryptDcConnections` | `boolean` | If enabled, traffic between the SMB server to Domain Controller (DC) will be encrypted. |
| `kdcHostname` | `string` | Name of the active directory machine. This optional parameter is used only while creating kerbero... |
| `kdcIp` | `string` | KDC server IP address for the active directory machine. |
| `labels` | `object` | Labels for the active directory. |
| `ldapSigning` | `boolean` | Specifies whether or not the LDAP traffic needs to be signed. |
| `name` | `string` | Identifier. The resource name of the active directory. Format: `projects/{project_number}/locatio... |
| `netBiosPrefix` | `string` | Required. NetBIOSPrefix is used as a prefix for SMB server name. |
| `nfsUsersWithLdap` | `boolean` | If enabled, will allow access to local users and LDAP users. If access is needed for only LDAP us... |
| `organizationalUnit` | `string` | The Organizational Unit (OU) within the Windows Active Directory the user belongs to. |
| `password` | `string` | Required. Password of the Active Directory domain administrator. |
| `securityOperators` | `array<string>` | Optional. Domain users to be given the SeSecurityPrivilege. |
| `site` | `string` | The Active Directory site the service will limit Domain Controller discovery too. |
| `state` | `string` | Output only. The state of the AD. |
| `stateDetails` | `string` | Output only. The state details of the Active Directory. |
| `username` | `string` | Required. Username of the Active Directory domain administrator. |

### `Backup`

A NetApp Backup.

| Property | Type | Description |
|----------|------|-------------|
| `backupRegion` | `string` | Output only. Region in which backup is stored. Format: `projects/{project_id}/locations/{location}` |
| `backupType` | `string` | Output only. Type of backup, manually created or created by a backup policy. |
| `chainStorageBytes` | `string` | Output only. Total size of all backups in a chain in bytes = baseline backup size + sum(increment... |
| `createTime` | `string` | Output only. The time when the backup was created. |
| `description` | `string` | A description of the backup with 2048 characters or less. Requests with longer descriptions will ... |
| `enforcedRetentionEndTime` | `string` | Output only. The time until which the backup is not deletable. |
| `labels` | `object` | Resource labels to represent user provided metadata. |
| `name` | `string` | Identifier. The resource name of the backup. Format: `projects/{project_id}/locations/{location}/... |
| `satisfiesPzi` | `boolean` | Output only. Reserved for future use |
| `satisfiesPzs` | `boolean` | Output only. Reserved for future use |
| `sourceSnapshot` | `string` | If specified, backup will be created from the given snapshot. If not specified, there will be a n... |
| `sourceVolume` | `string` | Volume full name of this backup belongs to. Format: `projects/{projects_id}/locations/{location}/... |
| `state` | `string` | Output only. The backup state. |
| `volumeRegion` | `string` | Output only. Region of the volume from which the backup was created. Format: `projects/{project_i... |
| `volumeUsageBytes` | `string` | Output only. Size of the file system when the backup was created. When creating a new volume from... |

### `BackupConfig`

BackupConfig contains backup related config on a volume.

| Property | Type | Description |
|----------|------|-------------|
| `backupChainBytes` | `string` | Output only. Total size of all backups in a chain in bytes = baseline backup size + sum(increment... |
| `backupPolicies` | `array<string>` | Optional. When specified, schedule backups will be created based on the policy configuration. |
| `backupVault` | `string` | Optional. Name of backup vault. Format: projects/{project_id}/locations/{location}/backupVaults/{... |
| `scheduledBackupEnabled` | `boolean` | Optional. When set to true, scheduled backup is enabled on the volume. This field should be nil w... |

### `BackupPolicy`

Backup Policy.

| Property | Type | Description |
|----------|------|-------------|
| `assignedVolumeCount` | `integer` | Output only. The total number of volumes assigned by this backup policy. |
| `createTime` | `string` | Output only. The time when the backup policy was created. |
| `dailyBackupLimit` | `integer` | Number of daily backups to keep. Note that the minimum daily backup limit is 2. |
| `description` | `string` | Description of the backup policy. |
| `enabled` | `boolean` | If enabled, make backups automatically according to the schedules. This will be applied to all vo... |
| `labels` | `object` | Resource labels to represent user provided metadata. |
| `monthlyBackupLimit` | `integer` | Number of monthly backups to keep. Note that the sum of daily, weekly and monthly backups should ... |
| `name` | `string` | Identifier. The resource name of the backup policy. Format: `projects/{project_id}/locations/{loc... |
| `state` | `string` | Output only. The backup policy state. |
| `weeklyBackupLimit` | `integer` | Number of weekly backups to keep. Note that the sum of daily, weekly and monthly backups should b... |

### `BackupRetentionPolicy`

Retention policy for backups in the backup vault

| Property | Type | Description |
|----------|------|-------------|
| `backupMinimumEnforcedRetentionDays` | `integer` | Required. Minimum retention duration in days for backups in the backup vault. |
| `dailyBackupImmutable` | `boolean` | Optional. Indicates if the daily backups are immutable. At least one of daily_backup_immutable, w... |
| `manualBackupImmutable` | `boolean` | Optional. Indicates if the manual backups are immutable. At least one of daily_backup_immutable, ... |
| `monthlyBackupImmutable` | `boolean` | Optional. Indicates if the monthly backups are immutable. At least one of daily_backup_immutable,... |
| `weeklyBackupImmutable` | `boolean` | Optional. Indicates if the weekly backups are immutable. At least one of daily_backup_immutable, ... |

### `BackupVault`

A NetApp BackupVault.

| Property | Type | Description |
|----------|------|-------------|
| `backupRegion` | `string` | Optional. Region where the backups are stored. Format: `projects/{project_id}/locations/{location}` |
| `backupRetentionPolicy` | `BackupRetentionPolicy` | Optional. Backup retention policy defining the retention of backups. |
| `backupVaultType` | `string` | Optional. Type of backup vault to be created. Default is IN_REGION. |
| `backupsCryptoKeyVersion` | `string` | Output only. The crypto key version used to encrypt the backup vault. Format: `projects/{project}... |
| `createTime` | `string` | Output only. Create time of the backup vault. |
| `description` | `string` | Description of the backup vault. |
| `destinationBackupVault` | `string` | Output only. Name of the Backup vault created in backup region. Format: `projects/{project_id}/lo... |
| `encryptionState` | `string` | Output only. Field indicating encryption state of CMEK backups. |
| `kmsConfig` | `string` | Optional. Specifies the Key Management System (KMS) configuration to be used for backup encryptio... |
| `labels` | `object` | Resource labels to represent user provided metadata. |
| `name` | `string` | Identifier. The resource name of the backup vault. Format: `projects/{project_id}/locations/{loca... |
| `sourceBackupVault` | `string` | Output only. Name of the Backup vault created in source region. Format: `projects/{project_id}/lo... |
| `sourceRegion` | `string` | Output only. Region in which the backup vault is created. Format: `projects/{project_id}/location... |
| `state` | `string` | Output only. The backup vault state. |

### `BlockDevice`

Block device represents the device(s) which are stored in the block volume.

| Property | Type | Description |
|----------|------|-------------|
| `hostGroups` | `array<string>` | Optional. A list of host groups that identify hosts that can mount the block volume. Format: `pro... |
| `identifier` | `string` | Output only. Device identifier of the block volume. This represents `lun_serial_number` for iSCSI... |
| `name` | `string` | Optional. User-defined name for the block device, unique within the volume. In case no user input... |
| `osType` | `string` | Required. Immutable. The OS type of the volume. This field can't be changed after the block devic... |
| `sizeGib` | `string` | Optional. The size of the block device in GiB. Any value provided for the `size_gib` field during... |

### `CacheConfig`

Configuration of the cache volume.

| Property | Type | Description |
|----------|------|-------------|
| `cachePrePopulate` | `CachePrePopulate` | Optional. Pre-populate cache volume with data from the origin volume. |
| `cachePrePopulateState` | `string` | Output only. State of the prepopulation job indicating how the prepopulation is progressing. |
| `cifsChangeNotifyEnabled` | `boolean` | Optional. Flag indicating whether a CIFS change notification is enabled for the FlexCache volume. |
| `writebackEnabled` | `boolean` | Optional. Flag indicating whether writeback is enabled for the FlexCache volume. |

### `CacheParameters`

Cache Parameters for the volume.

| Property | Type | Description |
|----------|------|-------------|
| `cacheConfig` | `CacheConfig` | Optional. Configuration of the cache volume. |
| `cacheState` | `string` | Output only. State of the cache volume indicating the peering status. |
| `command` | `string` | Output only. Copy-paste-able commands to be used on user's ONTAP to accept peering requests. |
| `enableGlobalFileLock` | `boolean` | Optional. Indicates whether the cache volume has global file lock enabled. |
| `passphrase` | `string` | Output only. Temporary passphrase generated to accept cluster peering command. |
| `peerClusterName` | `string` | Required. Name of the origin volume's ONTAP cluster. |
| `peerIpAddresses` | `array<string>` | Required. List of IC LIF addresses of the origin volume's ONTAP cluster. |
| `peerSvmName` | `string` | Required. Name of the origin volume's SVM. |
| `peerVolumeName` | `string` | Required. Name of the origin volume for the cache volume. |
| `peeringCommandExpiryTime` | `string` | Optional. Expiration time for the peering command to be executed on user's ONTAP. |
| `stateDetails` | `string` | Output only. Detailed description of the current cache state. |

### `CachePrePopulate`

Pre-populate cache volume with data from the origin volume.

| Property | Type | Description |
|----------|------|-------------|
| `excludePathList` | `array<string>` | Optional. List of directory-paths to be excluded for pre-population for the FlexCache volume. |
| `pathList` | `array<string>` | Optional. List of directory-paths to be pre-populated for the FlexCache volume. |
| `recursion` | `boolean` | Optional. Flag indicating whether the directories listed with the `path_list` need to be recursiv... |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `CloneDetails`

Details about a clone volume.

| Property | Type | Description |
|----------|------|-------------|
| `sharedSpaceGib` | `string` | Output only. Shared space in GiB. Determined at volume creation time based on size of source snap... |
| `sourceSnapshot` | `string` | Output only. Specifies the full resource name of the source snapshot from which this volume was c... |
| `sourceVolume` | `string` | Output only. Full name of the source volume resource. Format: projects/{project}/locations/{locat... |

### `DailySchedule`

Make a snapshot every day e.g. at 04:00, 05:20, 23:50

| Property | Type | Description |
|----------|------|-------------|
| `hour` | `number` | Set the hour to start the snapshot (0-23), defaults to midnight (0). |
| `minute` | `number` | Set the minute of the hour to start the snapshot (0-59), defaults to the top of the hour (0). |
| `snapshotsToKeep` | `number` | The maximum number of Snapshots to keep for the hourly schedule |

### `DestinationVolumeParameters`

DestinationVolumeParameters specify input parameters used for creating destination volume.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Description for the destination volume. |
| `shareName` | `string` | Destination volume's share name. If not specified, source volume's share name will be used. |
| `storagePool` | `string` | Required. Existing destination StoragePool name. |
| `tieringPolicy` | `TieringPolicy` | Optional. Tiering policy for the volume. |
| `volumeId` | `string` | Desired destination volume resource id. If not specified, source volume's resource id will be use... |

### `EncryptVolumesRequest`

EncryptVolumesRequest specifies the KMS config to encrypt existing volumes.

### `EstablishPeeringRequest`

EstablishPeeringRequest establishes cluster and svm peerings between the source and the destination replications.

| Property | Type | Description |
|----------|------|-------------|
| `peerClusterName` | `string` | Required. Name of the user's local source cluster to be peered with the destination cluster. |
| `peerIpAddresses` | `array<string>` | Optional. List of IPv4 ip addresses to be used for peering. |
| `peerSvmName` | `string` | Required. Name of the user's local source vserver svm to be peered with the destination vserver svm. |
| `peerVolumeName` | `string` | Required. Name of the user's local source volume to be peered with the destination volume. |

### `EstablishVolumePeeringRequest`

EstablishVolumePeeringRequest establishes cluster and svm peerings between the source and destination clusters.

| Property | Type | Description |
|----------|------|-------------|
| `peerClusterName` | `string` | Required. Name of the user's local source cluster to be peered with the destination cluster. |
| `peerIpAddresses` | `array<string>` | Optional. List of IPv4 ip addresses to be used for peering. |
| `peerSvmName` | `string` | Required. Name of the user's local source vserver svm to be peered with the destination vserver svm. |
| `peerVolumeName` | `string` | Required. Name of the user's local source volume to be peered with the destination volume. |

### `ExportPolicy`

Defines the export policy for the volume.

| Property | Type | Description |
|----------|------|-------------|
| `rules` | `array<SimpleExportPolicyRule>` | Required. List of export policy rules |

### `GoogleProtobufEmpty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `HostGroup`

Host group is a collection of hosts that can be used for accessing a Block Volume.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Create time of the host group. |
| `description` | `string` | Optional. Description of the host group. |
| `hosts` | `array<string>` | Required. The list of hosts associated with the host group. |
| `labels` | `object` | Optional. Labels of the host group. |
| `name` | `string` | Identifier. The resource name of the host group. Format: `projects/{project_number}/locations/{lo... |
| `osType` | `string` | Required. The OS type of the host group. It indicates the type of operating system used by all of... |
| `state` | `string` | Output only. State of the host group. |
| `type` | `string` | Required. Type of the host group. |

### `HourlySchedule`

Make a snapshot every hour e.g. at 04:00, 05:00, 06:00.

| Property | Type | Description |
|----------|------|-------------|
| `minute` | `number` | Set the minute of the hour to start the snapshot (0-59), defaults to the top of the hour (0). |
| `snapshotsToKeep` | `number` | The maximum number of Snapshots to keep for the hourly schedule |

### `HybridPeeringDetails`

HybridPeeringDetails contains details about the hybrid peering.

| Property | Type | Description |
|----------|------|-------------|
| `command` | `string` | Output only. Copy-paste-able commands to be used on user's ONTAP to accept peering requests. |
| `commandExpiryTime` | `string` | Output only. Expiration time for the peering command to be executed on user's ONTAP. |
| `passphrase` | `string` | Output only. Temporary passphrase generated to accept cluster peering command. |
| `peerClusterName` | `string` | Output only. Name of the user's local source cluster to be peered with the destination cluster. |
| `peerSvmName` | `string` | Output only. Name of the user's local source vserver svm to be peered with the destination vserve... |
| `peerVolumeName` | `string` | Output only. Name of the user's local source volume to be peered with the destination volume. |
| `subnetIp` | `string` | Output only. IP address of the subnet. |

### `HybridReplicationParameters`

The Hybrid Replication parameters for the volume.

| Property | Type | Description |
|----------|------|-------------|
| `clusterLocation` | `string` | Optional. Name of source cluster location associated with the Hybrid replication. This is a free-... |
| `description` | `string` | Optional. Description of the replication. |
| `hybridReplicationType` | `string` | Optional. Type of the hybrid replication. |
| `labels` | `object` | Optional. Labels to be added to the replication as the key value pairs. |
| `largeVolumeConstituentCount` | `integer` | Optional. Constituent volume count for large volume. |
| `peerClusterName` | `string` | Required. Name of the user's local source cluster to be peered with the destination cluster. |
| `peerIpAddresses` | `array<string>` | Required. List of node ip addresses to be peered with. |
| `peerSvmName` | `string` | Required. Name of the user's local source vserver svm to be peered with the destination vserver svm. |
| `peerVolumeName` | `string` | Required. Name of the user's local source volume to be peered with the destination volume. |
| `replication` | `string` | Required. Desired name for the replication of this volume. |
| `replicationSchedule` | `string` | Optional. Replication Schedule for the replication created. |

### `KmsConfig`

KmsConfig is the customer-managed encryption key(CMEK) configuration.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Create time of the KmsConfig. |
| `cryptoKeyName` | `string` | Required. Customer-managed crypto key resource full name. Format: `projects/{project}/locations/{... |
| `description` | `string` | Description of the KmsConfig. |
| `instructions` | `string` | Output only. Instructions to provide the access to the customer provided encryption key. |
| `labels` | `object` | Labels as key value pairs |
| `name` | `string` | Identifier. Name of the KmsConfig. Format: `projects/{project}/locations/{location}/kmsConfigs/{k... |
| `serviceAccount` | `string` | Output only. The Service account which will have access to the customer provided encryption key. |
| `state` | `string` | Output only. State of the KmsConfig. |
| `stateDetails` | `string` | Output only. State details of the KmsConfig. |

### `ListActiveDirectoriesResponse`

ListActiveDirectoriesResponse contains all the active directories requested.

| Property | Type | Description |
|----------|------|-------------|
| `activeDirectories` | `array<ActiveDirectory>` | The list of active directories. |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListBackupPoliciesResponse`

ListBackupPoliciesResponse contains all the backup policies requested.

| Property | Type | Description |
|----------|------|-------------|
| `backupPolicies` | `array<BackupPolicy>` | The list of backup policies. |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListBackupVaultsResponse`

ListBackupVaultsResponse is the result of ListBackupVaultsRequest.

| Property | Type | Description |
|----------|------|-------------|
| `backupVaults` | `array<BackupVault>` | A list of backupVaults in the project for the specified location. |
| `nextPageToken` | `string` | The token you can use to retrieve the next page of results. Not returned if there are no more res... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListBackupsResponse`

ListBackupsResponse is the result of ListBackupsRequest.

| Property | Type | Description |
|----------|------|-------------|
| `backups` | `array<Backup>` | A list of backups in the project. |
| `nextPageToken` | `string` | The token you can use to retrieve the next page of results. Not returned if there are no more res... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListHostGroupsResponse`

ListHostGroupsResponse is the response to a ListHostGroupsRequest.

| Property | Type | Description |
|----------|------|-------------|
| `hostGroups` | `array<HostGroup>` | The list of host groups. |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListKmsConfigsResponse`

ListKmsConfigsResponse is the response to a ListKmsConfigsRequest.

| Property | Type | Description |
|----------|------|-------------|
| `kmsConfigs` | `array<KmsConfig>` | The list of KmsConfigs |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
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

### `ListQuotaRulesResponse`

ListQuotaRulesResponse is the response to a ListQuotaRulesRequest.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `quotaRules` | `array<QuotaRule>` | List of quota rules |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListReplicationsResponse`

ListReplicationsResponse is the result of ListReplicationsRequest.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The token you can use to retrieve the next page of results. Not returned if there are no more res... |
| `replications` | `array<Replication>` | A list of replications in the project for the specified volume. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListSnapshotsResponse`

ListSnapshotsResponse is the result of ListSnapshotsRequest.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The token you can use to retrieve the next page of results. Not returned if there are no more res... |
| `snapshots` | `array<Snapshot>` | A list of snapshots in the project for the specified volume. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListStoragePoolsResponse`

ListStoragePoolsResponse is the response to a ListStoragePoolsRequest.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `storagePools` | `array<StoragePool>` | The list of StoragePools |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListVolumesResponse`

Message for response to listing Volumes

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `unreachable` | `array<string>` | Locations that could not be reached. |
| `volumes` | `array<Volume>` | The list of Volume |

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

Metadata for a given google.cloud.location.Location.

| Property | Type | Description |
|----------|------|-------------|
| `hasOntapProxy` | `boolean` | Output only. Indicates if the location has ONTAP Proxy support. |
| `hasVcp` | `boolean` | Output only. Indicates if the location has VCP support. |
| `supportedFlexPerformance` | `array<string>` | Output only. Supported flex performance in a location. |
| `supportedServiceLevels` | `array<string>` | Output only. Supported service levels in a location. |

### `MonthlySchedule`

Make a snapshot once a month e.g. at 2nd 04:00, 7th 05:20, 24th 23:50

| Property | Type | Description |
|----------|------|-------------|
| `daysOfMonth` | `string` | Set the day or days of the month to make a snapshot (1-31). Accepts a comma separated number of d... |
| `hour` | `number` | Set the hour to start the snapshot (0-23), defaults to midnight (0). |
| `minute` | `number` | Set the minute of the hour to start the snapshot (0-59), defaults to the top of the hour (0). |
| `snapshotsToKeep` | `number` | The maximum number of Snapshots to keep for the hourly schedule |

### `MountOption`

View only mount options for a volume.

| Property | Type | Description |
|----------|------|-------------|
| `export` | `string` | Export string |
| `exportFull` | `string` | Full export string |
| `instructions` | `string` | Instructions for mounting |
| `ipAddress` | `string` | Output only. IP Address. |
| `protocol` | `string` | Protocol to mount with. |

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
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `QuotaRule`

QuotaRule specifies the maximum disk space a user or group can use within a volume. They can be used for creating default and individual quota rules.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Create time of the quota rule |
| `description` | `string` | Optional. Description of the quota rule |
| `diskLimitMib` | `integer` | Required. The maximum allowed disk space in MiB. |
| `labels` | `object` | Optional. Labels of the quota rule |
| `name` | `string` | Identifier. The resource name of the quota rule. Format: `projects/{project_number}/locations/{lo... |
| `state` | `string` | Output only. State of the quota rule |
| `stateDetails` | `string` | Output only. State details of the quota rule |
| `target` | `string` | Optional. The quota rule applies to the specified user or group, identified by a Unix UID/GID, Wi... |
| `type` | `string` | Required. The type of quota rule. |

### `Replication`

Replication is a nested resource under Volume, that describes a cross-region replication relationship between 2 volumes in different regions.

| Property | Type | Description |
|----------|------|-------------|
| `clusterLocation` | `string` | Optional. Location of the user cluster. |
| `createTime` | `string` | Output only. Replication create time. |
| `description` | `string` | A description about this replication relationship. |
| `destinationVolume` | `string` | Output only. Full name of destination volume resource. Example : "projects/{project}/locations/{l... |
| `destinationVolumeParameters` | `DestinationVolumeParameters` | Required. Input only. Destination volume parameters |
| `healthy` | `boolean` | Output only. Condition of the relationship. Can be one of the following: - true: The replication ... |
| `hybridPeeringDetails` | `HybridPeeringDetails` | Output only. Hybrid peering details. |
| `hybridReplicationType` | `string` | Output only. Type of the hybrid replication. |
| `hybridReplicationUserCommands` | `UserCommands` | Output only. Copy pastable snapmirror commands to be executed on onprem cluster by the customer. |
| `labels` | `object` | Resource labels to represent user provided metadata. |
| `mirrorState` | `string` | Output only. Indicates the state of mirroring. |
| `name` | `string` | Identifier. The resource name of the Replication. Format: `projects/{project_id}/locations/{locat... |
| `replicationSchedule` | `string` | Required. Indicates the schedule for replication. |
| `role` | `string` | Output only. Indicates whether this points to source or destination. |
| `sourceVolume` | `string` | Output only. Full name of source volume resource. Example : "projects/{project}/locations/{locati... |
| `state` | `string` | Output only. State of the replication. |
| `stateDetails` | `string` | Output only. State details of the replication. |
| `transferStats` | `TransferStats` | Output only. Replication transfer statistics. |

### `RestoreBackupFilesRequest`

RestoreBackupFilesRequest restores files from a backup to a volume.

| Property | Type | Description |
|----------|------|-------------|
| `backup` | `string` | Required. The backup resource name, in the format `projects/{project_id}/locations/{location}/bac... |
| `fileList` | `array<string>` | Required. List of files to be restored, specified by their absolute path in the source volume. |
| `restoreDestinationPath` | `string` | Optional. Absolute directory path in the destination volume. This is required if the `file_list` ... |

### `RestoreParameters`

The RestoreParameters if volume is created from a snapshot or backup.

| Property | Type | Description |
|----------|------|-------------|
| `sourceBackup` | `string` | Full name of the backup resource. Format: projects/{project}/locations/{location}/backupVaults/{b... |
| `sourceSnapshot` | `string` | Full name of the snapshot resource. Format: projects/{project}/locations/{location}/volumes/{volu... |

### `ResumeReplicationRequest`

ResumeReplicationRequest resumes a stopped replication.

### `ReverseReplicationDirectionRequest`

ReverseReplicationDirectionRequest reverses direction of replication. Source becomes destination and destination becomes source.

### `RevertVolumeRequest`

RevertVolumeRequest reverts the given volume to the specified snapshot.

| Property | Type | Description |
|----------|------|-------------|
| `snapshotId` | `string` | Required. The snapshot resource ID, in the format 'my-snapshot', where the specified ID is the {s... |

### `SimpleExportPolicyRule`

An export policy rule describing various export options.

| Property | Type | Description |
|----------|------|-------------|
| `accessType` | `string` | Access type (ReadWrite, ReadOnly, None) |
| `allowedClients` | `string` | Comma separated list of allowed clients IP addresses |
| `anonUid` | `string` | Optional. An integer representing the anonymous user ID. Range is 0 to `4294967295`. Required whe... |
| `hasRootAccess` | `string` | Whether Unix root access will be granted. |
| `kerberos5ReadOnly` | `boolean` | If enabled (true) the rule defines a read only access for clients matching the 'allowedClients' s... |
| `kerberos5ReadWrite` | `boolean` | If enabled (true) the rule defines read and write access for clients matching the 'allowedClients... |
| `kerberos5iReadOnly` | `boolean` | If enabled (true) the rule defines a read only access for clients matching the 'allowedClients' s... |
| `kerberos5iReadWrite` | `boolean` | If enabled (true) the rule defines read and write access for clients matching the 'allowedClients... |
| `kerberos5pReadOnly` | `boolean` | If enabled (true) the rule defines a read only access for clients matching the 'allowedClients' s... |
| `kerberos5pReadWrite` | `boolean` | If enabled (true) the rule defines read and write access for clients matching the 'allowedClients... |
| `nfsv3` | `boolean` | NFS V3 protocol. |
| `nfsv4` | `boolean` | NFS V4 protocol. |
| `squashMode` | `string` | Optional. Defines how user identity squashing is applied for this export rule. This field is the ... |

### `Snapshot`

Snapshot is a point-in-time version of a Volume's content.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time when the snapshot was created. |
| `description` | `string` | A description of the snapshot with 2048 characters or less. Requests with longer descriptions wil... |
| `labels` | `object` | Resource labels to represent user provided metadata. |
| `name` | `string` | Identifier. The resource name of the snapshot. Format: `projects/{project_id}/locations/{location... |
| `state` | `string` | Output only. The snapshot state. |
| `stateDetails` | `string` | Output only. State details of the storage pool |
| `usedBytes` | `number` | Output only. Current storage usage for the snapshot in bytes. |

### `SnapshotPolicy`

Snapshot Policy for a volume.

| Property | Type | Description |
|----------|------|-------------|
| `dailySchedule` | `DailySchedule` | Daily schedule policy. |
| `enabled` | `boolean` | If enabled, make snapshots automatically according to the schedules. Default is false. |
| `hourlySchedule` | `HourlySchedule` | Hourly schedule policy. |
| `monthlySchedule` | `MonthlySchedule` | Monthly schedule policy. |
| `weeklySchedule` | `WeeklySchedule` | Weekly schedule policy. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `StopReplicationRequest`

StopReplicationRequest stops a replication until resumed.

| Property | Type | Description |
|----------|------|-------------|
| `force` | `boolean` | Indicates whether to stop replication forcefully while data transfer is in progress. Warning! if ... |

### `StoragePool`

StoragePool is a container for volumes with a service level and capacity. Volumes can be created in a pool of sufficient available capacity. StoragePool capacity is what you are billed for.

| Property | Type | Description |
|----------|------|-------------|
| `activeDirectory` | `string` | Optional. Specifies the Active Directory to be used for creating a SMB volume. |
| `allowAutoTiering` | `boolean` | Optional. True if the storage pool supports Auto Tiering enabled volumes. Default is false. Auto-... |
| `availableThroughputMibps` | `number` | Output only. Available throughput of the storage pool (in MiB/s). |
| `capacityGib` | `string` | Required. Capacity in GIB of the pool |
| `coldTierSizeUsedGib` | `string` | Output only. Total cold tier data rounded down to the nearest GiB used by the storage pool. |
| `createTime` | `string` | Output only. Create time of the storage pool |
| `customPerformanceEnabled` | `boolean` | Optional. True if using Independent Scaling of capacity and performance (Hyperdisk) By default se... |
| `description` | `string` | Optional. Description of the storage pool |
| `enableHotTierAutoResize` | `boolean` | Optional. Flag indicating that the hot-tier threshold will be auto-increased by 10% of the hot-ti... |
| `encryptionType` | `string` | Output only. Specifies the current pool encryption key source. |
| `globalAccessAllowed` | `boolean` | Deprecated. Used to allow SO pool to access AD or DNS server from other regions. |
| `hotTierSizeGib` | `string` | Optional. Total hot tier capacity for the Storage Pool. It is applicable only to Flex service lev... |
| `hotTierSizeUsedGib` | `string` | Output only. Total hot tier data rounded down to the nearest GiB used by the storage pool. |
| `kmsConfig` | `string` | Optional. Specifies the KMS config to be used for volume encryption. |
| `labels` | `object` | Optional. Labels as key value pairs |
| `ldapEnabled` | `boolean` | Optional. Flag indicating if the pool is NFS LDAP enabled or not. |
| `name` | `string` | Identifier. Name of the storage pool |
| `network` | `string` | Required. VPC Network name. Format: projects/{project}/global/networks/{network} |
| `psaRange` | `string` | Optional. This field is not implemented. The values provided in this field are ignored. |
| `qosType` | `string` | Optional. QoS (Quality of Service) Type of the storage pool |
| `replicaZone` | `string` | Optional. Specifies the replica zone for regional storagePool. |
| `satisfiesPzi` | `boolean` | Output only. Reserved for future use |
| `satisfiesPzs` | `boolean` | Output only. Reserved for future use |
| `serviceLevel` | `string` | Required. Service level of the storage pool |
| `state` | `string` | Output only. State of the storage pool |
| `stateDetails` | `string` | Output only. State details of the storage pool |
| `totalIops` | `string` | Optional. Custom Performance Total IOPS of the pool if not provided, it will be calculated based ... |
| `totalThroughputMibps` | `string` | Optional. Custom Performance Total Throughput of the pool (in MiBps) |
| `type` | `string` | Optional. Type of the storage pool. This field is used to control whether the pool supports `FILE... |
| `volumeCapacityGib` | `string` | Output only. Allocated size of all volumes in GIB in the storage pool |
| `volumeCount` | `integer` | Output only. Volume count of the storage pool |
| `zone` | `string` | Optional. Specifies the active zone for regional storagePool. |

### `SwitchActiveReplicaZoneRequest`

SwitchActiveReplicaZoneRequest switch the active/replica zone for a regional storagePool.

### `SyncReplicationRequest`

SyncReplicationRequest syncs the replication from source to destination.

### `TieringPolicy`

Defines tiering policy for the volume.

| Property | Type | Description |
|----------|------|-------------|
| `coolingThresholdDays` | `integer` | Optional. Time in days to mark the volume's data block as cold and make it eligible for tiering, ... |
| `hotTierBypassModeEnabled` | `boolean` | Optional. Flag indicating that the hot tier bypass mode is enabled. Default is false. This is onl... |
| `tierAction` | `string` | Optional. Flag indicating if the volume has tiering policy enable/pause. Default is PAUSED. |

### `TransferStats`

TransferStats reports all statistics related to replication transfer.

| Property | Type | Description |
|----------|------|-------------|
| `lagDuration` | `string` | Lag duration indicates the duration by which Destination region volume content lags behind the pr... |
| `lastTransferBytes` | `string` | Last transfer size in bytes. |
| `lastTransferDuration` | `string` | Time taken during last transfer. |
| `lastTransferEndTime` | `string` | Time when last transfer completed. |
| `lastTransferError` | `string` | A message describing the cause of the last transfer failure. |
| `totalTransferDuration` | `string` | Cumulative time taken across all transfers for the replication relationship. |
| `transferBytes` | `string` | Cumulative bytes transferred so far for the replication relationship. |
| `updateTime` | `string` | Time when progress was updated last. |

### `UserCommands`

UserCommands contains the commands to be executed by the customer.

| Property | Type | Description |
|----------|------|-------------|
| `commands` | `array<string>` | Output only. List of commands to be executed by the customer. |

### `ValidateDirectoryServiceRequest`

ValidateDirectoryServiceRequest validates the directory service policy attached to the storage pool.

| Property | Type | Description |
|----------|------|-------------|
| `directoryServiceType` | `string` | Type of directory service policy attached to the storage pool. |

### `VerifyKmsConfigRequest`

VerifyKmsConfigRequest specifies the KMS config to be validated.

### `VerifyKmsConfigResponse`

VerifyKmsConfigResponse contains the information if the config is correctly and error message.

| Property | Type | Description |
|----------|------|-------------|
| `healthError` | `string` | Output only. Error message if config is not healthy. |
| `healthy` | `boolean` | Output only. If the customer key configured correctly to the encrypt volume. |
| `instructions` | `string` | Output only. Instructions for the customers to provide the access to the encryption key. |

### `Volume`

Volume provides a filesystem that you can mount.

| Property | Type | Description |
|----------|------|-------------|
| `activeDirectory` | `string` | Output only. Specifies the ActiveDirectory name of a SMB volume. |
| `backupConfig` | `BackupConfig` | BackupConfig of the volume. |
| `blockDevices` | `array<BlockDevice>` | Optional. Block devices for the volume. Currently, only one block device is permitted per Volume. |
| `cacheParameters` | `CacheParameters` | Optional. Cache parameters for the volume. |
| `capacityGib` | `string` | Required. Capacity in GIB of the volume |
| `cloneDetails` | `CloneDetails` | Output only. If this volume is a clone, this field contains details about the clone. |
| `coldTierSizeGib` | `string` | Output only. Size of the volume cold tier data rounded down to the nearest GiB. |
| `createTime` | `string` | Output only. Create time of the volume |
| `description` | `string` | Optional. Description of the volume |
| `encryptionType` | `string` | Output only. Specified the current volume encryption key source. |
| `exportPolicy` | `ExportPolicy` | Optional. Export policy of the volume |
| `hasReplication` | `boolean` | Output only. Indicates whether the volume is part of a replication relationship. |
| `hotTierSizeUsedGib` | `string` | Output only. Total hot tier data rounded down to the nearest GiB used by the Volume. This field i... |
| `hybridReplicationParameters` | `HybridReplicationParameters` | Optional. The Hybrid Replication parameters for the volume. |
| `kerberosEnabled` | `boolean` | Optional. Flag indicating if the volume is a kerberos volume or not, export policy rules control ... |
| `kmsConfig` | `string` | Output only. Specifies the KMS config to be used for volume encryption. |
| `labels` | `object` | Optional. Labels as key value pairs |
| `largeCapacity` | `boolean` | Optional. Flag indicating if the volume will be a large capacity volume or a regular volume. |
| `ldapEnabled` | `boolean` | Output only. Flag indicating if the volume is NFS LDAP enabled or not. |
| `mountOptions` | `array<MountOption>` | Output only. Mount options of this volume |
| `multipleEndpoints` | `boolean` | Optional. Flag indicating if the volume will have an IP address per node for volumes supporting m... |
| `name` | `string` | Identifier. Name of the volume |
| `network` | `string` | Output only. VPC Network name. Format: projects/{project}/global/networks/{network} |
| `protocols` | `array<string>` | Required. Protocols required for the volume |
| `psaRange` | `string` | Output only. This field is not implemented. The values provided in this field are ignored. |
| `replicaZone` | `string` | Output only. Specifies the replica zone for regional volume. |
| `restoreParameters` | `RestoreParameters` | Optional. Specifies the source of the volume to be created from. |
| `restrictedActions` | `array<string>` | Optional. List of actions that are restricted on this volume. |
| `securityStyle` | `string` | Optional. Security Style of the Volume |
| `serviceLevel` | `string` | Output only. Service level of the volume |
| `shareName` | `string` | Required. Share name of the volume |
| `smbSettings` | `array<string>` | Optional. SMB share settings for the volume. |
| `snapReserve` | `number` | Optional. Snap_reserve specifies percentage of volume storage reserved for snapshot storage. Defa... |
| `snapshotDirectory` | `boolean` | Optional. Snapshot_directory if enabled (true) the volume will contain a read-only .snapshot dire... |
| `snapshotPolicy` | `SnapshotPolicy` | Optional. SnapshotPolicy for a volume. |
| `state` | `string` | Output only. State of the volume |
| `stateDetails` | `string` | Output only. State details of the volume |
| `storagePool` | `string` | Required. StoragePool name of the volume |
| `throughputMibps` | `number` | Optional. Throughput of the volume (in MiB/s) |
| `tieringPolicy` | `TieringPolicy` | Tiering policy for the volume. |
| `unixPermissions` | `string` | Optional. Default unix style permission (e.g. 777) the mount point will be created with. Applicab... |
| `usedGib` | `string` | Output only. Used capacity in GIB of the volume. This is computed periodically and it does not re... |
| `zone` | `string` | Output only. Specifies the active zone for regional volume. |

### `WeeklySchedule`

Make a snapshot every week e.g. at Monday 04:00, Wednesday 05:20, Sunday 23:50

| Property | Type | Description |
|----------|------|-------------|
| `day` | `string` | Set the day or days of the week to make a snapshot. Accepts a comma separated days of the week. D... |
| `hour` | `number` | Set the hour to start the snapshot (0-23), defaults to midnight (0). |
| `minute` | `number` | Set the minute of the hour to start the snapshot (0-59), defaults to the top of the hour (0). |
| `snapshotsToKeep` | `number` | The maximum number of Snapshots to keep for the hourly schedule |

