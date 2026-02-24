# VM Migration API - API Reference

**Version**: `v1` | **Methods**: 68 | **Schemas**: 132

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `vmmigration.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `vmmigration.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `vmmigration.projects.locations.sources.list` | GET | `v1/{+parent}/sources` | Lists Sources in a given project and location. |
| `vmmigration.projects.locations.sources.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single Source. |
| `vmmigration.projects.locations.sources.delete` | DELETE | `v1/{+name}` | Deletes a single Source. |
| `vmmigration.projects.locations.sources.fetchStorageInventory` | GET | `v1/{+source}:fetchStorageInventory` | List remote source's inventory of storage resources. The remote source is another cloud vendor (e... |
| `vmmigration.projects.locations.sources.get` | GET | `v1/{+name}` | Gets details of a single Source. |
| `vmmigration.projects.locations.sources.fetchInventory` | GET | `v1/{+source}:fetchInventory` | List remote source's inventory of VMs. The remote source is the onprem vCenter (remote in the sen... |
| `vmmigration.projects.locations.sources.create` | POST | `v1/{+parent}/sources` | Creates a new Source in a given project and location. |
| `vmmigration.projects.locations.sources.utilizationReports.list` | GET | `v1/{+parent}/utilizationReports` | Lists Utilization Reports of the given Source. |
| `vmmigration.projects.locations.sources.utilizationReports.get` | GET | `v1/{+name}` | Gets a single Utilization Report. |
| `vmmigration.projects.locations.sources.utilizationReports.create` | POST | `v1/{+parent}/utilizationReports` | Creates a new UtilizationReport. |
| `vmmigration.projects.locations.sources.utilizationReports.delete` | DELETE | `v1/{+name}` | Deletes a single Utilization Report. |
| `vmmigration.projects.locations.sources.migratingVms.finalizeMigration` | POST | `v1/{+migratingVm}:finalizeMigration` | Marks a migration as completed, deleting migration resources that are no longer being used. Only ... |
| `vmmigration.projects.locations.sources.migratingVms.resumeMigration` | POST | `v1/{+migratingVm}:resumeMigration` | Resumes a migration for a VM. When called on a paused migration, will start the process of upload... |
| `vmmigration.projects.locations.sources.migratingVms.startMigration` | POST | `v1/{+migratingVm}:startMigration` | Starts migration for a VM. Starts the process of uploading data and creating snapshots, in replic... |
| `vmmigration.projects.locations.sources.migratingVms.list` | GET | `v1/{+parent}/migratingVms` | Lists MigratingVms in a given Source. |
| `vmmigration.projects.locations.sources.migratingVms.extendMigration` | POST | `v1/{+migratingVm}:extendMigration` | Extend the migrating VM time to live. |
| `vmmigration.projects.locations.sources.migratingVms.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single MigratingVm. |
| `vmmigration.projects.locations.sources.migratingVms.pauseMigration` | POST | `v1/{+migratingVm}:pauseMigration` | Pauses a migration for a VM. If cycle tasks are running they will be cancelled, preserving source... |
| `vmmigration.projects.locations.sources.migratingVms.delete` | DELETE | `v1/{+name}` | Deletes a single MigratingVm. |
| `vmmigration.projects.locations.sources.migratingVms.get` | GET | `v1/{+name}` | Gets details of a single MigratingVm. |
| `vmmigration.projects.locations.sources.migratingVms.create` | POST | `v1/{+parent}/migratingVms` | Creates a new MigratingVm in a given Source. |
| `vmmigration.projects.locations.sources.migratingVms.replicationCycles.list` | GET | `v1/{+parent}/replicationCycles` | Lists ReplicationCycles in a given MigratingVM. |
| `vmmigration.projects.locations.sources.migratingVms.replicationCycles.get` | GET | `v1/{+name}` | Gets details of a single ReplicationCycle. |
| `vmmigration.projects.locations.sources.migratingVms.cloneJobs.get` | GET | `v1/{+name}` | Gets details of a single CloneJob. |
| `vmmigration.projects.locations.sources.migratingVms.cloneJobs.list` | GET | `v1/{+parent}/cloneJobs` | Lists the CloneJobs of a migrating VM. Only 25 most recent CloneJobs are listed. |
| `vmmigration.projects.locations.sources.migratingVms.cloneJobs.create` | POST | `v1/{+parent}/cloneJobs` | Initiates a Clone of a specific migrating VM. |
| `vmmigration.projects.locations.sources.migratingVms.cloneJobs.cancel` | POST | `v1/{+name}:cancel` | Initiates the cancellation of a running clone job. |
| `vmmigration.projects.locations.sources.migratingVms.cutoverJobs.get` | GET | `v1/{+name}` | Gets details of a single CutoverJob. |
| `vmmigration.projects.locations.sources.migratingVms.cutoverJobs.create` | POST | `v1/{+parent}/cutoverJobs` | Initiates a Cutover of a specific migrating VM. The returned LRO is completed when the cutover jo... |
| `vmmigration.projects.locations.sources.migratingVms.cutoverJobs.cancel` | POST | `v1/{+name}:cancel` | Initiates the cancellation of a running cutover job. |
| `vmmigration.projects.locations.sources.migratingVms.cutoverJobs.list` | GET | `v1/{+parent}/cutoverJobs` | Lists the CutoverJobs of a migrating VM. Only 25 most recent CutoverJobs are listed. |
| `vmmigration.projects.locations.sources.datacenterConnectors.get` | GET | `v1/{+name}` | Gets details of a single DatacenterConnector. |
| `vmmigration.projects.locations.sources.datacenterConnectors.delete` | DELETE | `v1/{+name}` | Deletes a single DatacenterConnector. |
| `vmmigration.projects.locations.sources.datacenterConnectors.upgradeAppliance` | POST | `v1/{+datacenterConnector}:upgradeAppliance` | Upgrades the appliance relate to this DatacenterConnector to the in-place updateable version. |
| `vmmigration.projects.locations.sources.datacenterConnectors.create` | POST | `v1/{+parent}/datacenterConnectors` | Creates a new DatacenterConnector in a given Source. |
| `vmmigration.projects.locations.sources.datacenterConnectors.list` | GET | `v1/{+parent}/datacenterConnectors` | Lists DatacenterConnectors in a given Source. |
| `vmmigration.projects.locations.sources.diskMigrationJobs.create` | POST | `v1/{+parent}/diskMigrationJobs` | Creates a new disk migration job in a given Source. |
| `vmmigration.projects.locations.sources.diskMigrationJobs.cancel` | POST | `v1/{+name}:cancel` | Cancels the disk migration job. |
| `vmmigration.projects.locations.sources.diskMigrationJobs.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single DiskMigrationJob. |
| `vmmigration.projects.locations.sources.diskMigrationJobs.run` | POST | `v1/{+name}:run` | Runs the disk migration job. |
| `vmmigration.projects.locations.sources.diskMigrationJobs.get` | GET | `v1/{+name}` | Gets details of a single DiskMigrationJob. |
| `vmmigration.projects.locations.sources.diskMigrationJobs.delete` | DELETE | `v1/{+name}` | Deletes a single DiskMigrationJob. |
| `vmmigration.projects.locations.sources.diskMigrationJobs.list` | GET | `v1/{+parent}/diskMigrationJobs` | Lists DiskMigrationJobs in a given Source. |
| `vmmigration.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `vmmigration.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `vmmigration.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `vmmigration.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `vmmigration.projects.locations.groups.removeGroupMigration` | POST | `v1/{+group}:removeGroupMigration` | Removes a MigratingVm from a Group. |
| `vmmigration.projects.locations.groups.create` | POST | `v1/{+parent}/groups` | Creates a new Group in a given project and location. |
| `vmmigration.projects.locations.groups.delete` | DELETE | `v1/{+name}` | Deletes a single Group. |
| `vmmigration.projects.locations.groups.get` | GET | `v1/{+name}` | Gets details of a single Group. |
| `vmmigration.projects.locations.groups.list` | GET | `v1/{+parent}/groups` | Lists Groups in a given project and location. |
| `vmmigration.projects.locations.groups.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single Group. |
| `vmmigration.projects.locations.groups.addGroupMigration` | POST | `v1/{+group}:addGroupMigration` | Adds a MigratingVm to a Group. |
| `vmmigration.projects.locations.targetProjects.list` | GET | `v1/{+parent}/targetProjects` | Lists TargetProjects in a given project. NOTE: TargetProject is a global resource; hence the only... |
| `vmmigration.projects.locations.targetProjects.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single TargetProject. NOTE: TargetProject is a global resource; hence... |
| `vmmigration.projects.locations.targetProjects.get` | GET | `v1/{+name}` | Gets details of a single TargetProject. NOTE: TargetProject is a global resource; hence the only ... |
| `vmmigration.projects.locations.targetProjects.create` | POST | `v1/{+parent}/targetProjects` | Creates a new TargetProject in a given project. NOTE: TargetProject is a global resource; hence t... |
| `vmmigration.projects.locations.targetProjects.delete` | DELETE | `v1/{+name}` | Deletes a single TargetProject. NOTE: TargetProject is a global resource; hence the only supporte... |
| `vmmigration.projects.locations.imageImports.delete` | DELETE | `v1/{+name}` | Deletes a single ImageImport. |
| `vmmigration.projects.locations.imageImports.list` | GET | `v1/{+parent}/imageImports` | Lists ImageImports in a given project. |
| `vmmigration.projects.locations.imageImports.create` | POST | `v1/{+parent}/imageImports` | Creates a new ImageImport in a given project. |
| `vmmigration.projects.locations.imageImports.get` | GET | `v1/{+name}` | Gets details of a single ImageImport. |
| `vmmigration.projects.locations.imageImports.imageImportJobs.cancel` | POST | `v1/{+name}:cancel` | Initiates the cancellation of a running ImageImportJob. |
| `vmmigration.projects.locations.imageImports.imageImportJobs.list` | GET | `v1/{+parent}/imageImportJobs` | Lists ImageImportJobs in a given project. |
| `vmmigration.projects.locations.imageImports.imageImportJobs.get` | GET | `v1/{+name}` | Gets details of a single ImageImportJob. |

### `vmmigration.projects.locations.list`

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
const res = await vmmigration.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await vmmigration.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.sources.list`

**GET** `v1/{+parent}/sources`

Lists Sources in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of sources. |
| `filter` | `string` | query | No | Optional. The filter request. |
| `orderBy` | `string` | query | No | Optional. the order by fields for the result. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of sources to return. The service may return fewer than this value. If unspecified, at m... |
| `pageToken` | `string` | query | No | Required. A page token, received from a previous `ListSources` call. Provide this to retrieve the subsequent page. Wh... |

**Response**: `ListSourcesResponse`

```typescript
const res = await vmmigration.sources.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.sources.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single Source.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The Source name. |
| `requestId` | `string` | query | No | A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server wil... |
| `updateMask` | `string` | query | No | Field mask is used to specify the fields to be overwritten in the Source resource by the update. The fields specified... |

**Request body**: `Source`

**Response**: `Operation`

```typescript
const res = await vmmigration.sources.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.sources.delete`

**DELETE** `v1/{+name}`

Deletes a single Source.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The Source name. |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |

**Response**: `Operation`

```typescript
const res = await vmmigration.sources.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.sources.fetchStorageInventory`

**GET** `v1/{+source}:fetchStorageInventory`

List remote source's inventory of storage resources. The remote source is another cloud vendor (e.g. AWS, Azure). The inventory describes the list of existing storage resources in that source. Note that this operation lists the resources on the remote source, as opposed to listing the MigratingVms resources in the vmmigration service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `source` | `string` | path | Yes | Required. The name of the Source. |
| `forceRefresh` | `boolean` | query | No | Optional. If this flag is set to true, the source will be queried instead of using cached results. Using this flag wi... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of VMs to return. The service may return fewer than this value. |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `FetchStorageInventory` call. Provide this to retrieve the subsequen... |
| `type` | `string` | query | No | Required. The type of the storage inventory to fetch. |

**Response**: `FetchStorageInventoryResponse`

```typescript
const res = await vmmigration.sources.fetchStorageInventory({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.sources.get`

**GET** `v1/{+name}`

Gets details of a single Source.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The Source name. |

**Response**: `Source`

```typescript
const res = await vmmigration.sources.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.sources.fetchInventory`

**GET** `v1/{+source}:fetchInventory`

List remote source's inventory of VMs. The remote source is the onprem vCenter (remote in the sense it's not in Compute Engine). The inventory describes the list of existing VMs in that source. Note that this operation lists the VMs on the remote source, as opposed to listing the MigratingVms resources in the vmmigration service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `source` | `string` | path | Yes | Required. The name of the Source. |
| `forceRefresh` | `boolean` | query | No | If this flag is set to true, the source will be queried instead of using cached results. Using this flag will make th... |
| `pageSize` | `integer` | query | No | The maximum number of VMs to return. The service may return fewer than this value. For AWS source: If unspecified, at... |
| `pageToken` | `string` | query | No | A page token, received from a previous `FetchInventory` call. Provide this to retrieve the subsequent page. When pagi... |

**Response**: `FetchInventoryResponse`

```typescript
const res = await vmmigration.sources.fetchInventory({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.sources.create`

**POST** `v1/{+parent}/sources`

Creates a new Source in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The Source's parent. |
| `requestId` | `string` | query | No | A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server wil... |
| `sourceId` | `string` | query | No | Required. The source identifier. |

**Request body**: `Source`

**Response**: `Operation`

```typescript
const res = await vmmigration.sources.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.sources.utilizationReports.list`

**GET** `v1/{+parent}/utilizationReports`

Lists Utilization Reports of the given Source.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The Utilization Reports parent. |
| `filter` | `string` | query | No | Optional. The filter request. |
| `orderBy` | `string` | query | No | Optional. the order by fields for the result. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of reports to return. The service may return fewer than this value. If unspecified, at m... |
| `pageToken` | `string` | query | No | Required. A page token, received from a previous `ListUtilizationReports` call. Provide this to retrieve the subseque... |
| `view` | `string` | query | No | Optional. The level of details of each report. Defaults to BASIC. |

**Response**: `ListUtilizationReportsResponse`

```typescript
const res = await vmmigration.utilizationReports.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.sources.utilizationReports.get`

**GET** `v1/{+name}`

Gets a single Utilization Report.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The Utilization Report name. |
| `view` | `string` | query | No | Optional. The level of details of the report. Defaults to FULL |

**Response**: `UtilizationReport`

```typescript
const res = await vmmigration.utilizationReports.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.sources.utilizationReports.create`

**POST** `v1/{+parent}/utilizationReports`

Creates a new UtilizationReport.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The Utilization Report's parent. |
| `requestId` | `string` | query | No | A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server wil... |
| `utilizationReportId` | `string` | query | No | Required. The ID to use for the report, which will become the final component of the reports's resource name. This va... |

**Request body**: `UtilizationReport`

**Response**: `Operation`

```typescript
const res = await vmmigration.utilizationReports.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.sources.utilizationReports.delete`

**DELETE** `v1/{+name}`

Deletes a single Utilization Report.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The Utilization Report name. |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |

**Response**: `Operation`

```typescript
const res = await vmmigration.utilizationReports.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.sources.migratingVms.finalizeMigration`

**POST** `v1/{+migratingVm}:finalizeMigration`

Marks a migration as completed, deleting migration resources that are no longer being used. Only applicable after cutover is done.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `migratingVm` | `string` | path | Yes | Required. The name of the MigratingVm. |

**Request body**: `FinalizeMigrationRequest`

**Response**: `Operation`

```typescript
const res = await vmmigration.migratingVms.finalizeMigration({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.sources.migratingVms.resumeMigration`

**POST** `v1/{+migratingVm}:resumeMigration`

Resumes a migration for a VM. When called on a paused migration, will start the process of uploading data and creating snapshots; when called on a completed cut-over migration, will update the migration to active state and start the process of uploading data and creating snapshots.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `migratingVm` | `string` | path | Yes | Required. The name of the MigratingVm. |

**Request body**: `ResumeMigrationRequest`

**Response**: `Operation`

```typescript
const res = await vmmigration.migratingVms.resumeMigration({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.sources.migratingVms.startMigration`

**POST** `v1/{+migratingVm}:startMigration`

Starts migration for a VM. Starts the process of uploading data and creating snapshots, in replication cycles scheduled by the policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `migratingVm` | `string` | path | Yes | Required. The name of the MigratingVm. |

**Request body**: `StartMigrationRequest`

**Response**: `Operation`

```typescript
const res = await vmmigration.migratingVms.startMigration({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.sources.migratingVms.list`

**GET** `v1/{+parent}/migratingVms`

Lists MigratingVms in a given Source.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of MigratingVms. |
| `filter` | `string` | query | No | Optional. The filter request. |
| `orderBy` | `string` | query | No | Optional. the order by fields for the result. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of migrating VMs to return. The service may return fewer than this value. If unspecified... |
| `pageToken` | `string` | query | No | Required. A page token, received from a previous `ListMigratingVms` call. Provide this to retrieve the subsequent pag... |
| `view` | `string` | query | No | Optional. The level of details of each migrating VM. |

**Response**: `ListMigratingVmsResponse`

```typescript
const res = await vmmigration.migratingVms.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.sources.migratingVms.extendMigration`

**POST** `v1/{+migratingVm}:extendMigration`

Extend the migrating VM time to live.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `migratingVm` | `string` | path | Yes | Required. The name of the MigratingVm. |

**Request body**: `ExtendMigrationRequest`

**Response**: `Operation`

```typescript
const res = await vmmigration.migratingVms.extendMigration({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.sources.migratingVms.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single MigratingVm.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The identifier of the MigratingVm. |
| `requestId` | `string` | query | No | A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server wil... |
| `updateMask` | `string` | query | No | Field mask is used to specify the fields to be overwritten in the MigratingVm resource by the update. The fields spec... |

**Request body**: `MigratingVm`

**Response**: `Operation`

```typescript
const res = await vmmigration.migratingVms.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.sources.migratingVms.pauseMigration`

**POST** `v1/{+migratingVm}:pauseMigration`

Pauses a migration for a VM. If cycle tasks are running they will be cancelled, preserving source task data. Further replication cycles will not be triggered while the VM is paused.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `migratingVm` | `string` | path | Yes | Required. The name of the MigratingVm. |

**Request body**: `PauseMigrationRequest`

**Response**: `Operation`

```typescript
const res = await vmmigration.migratingVms.pauseMigration({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.sources.migratingVms.delete`

**DELETE** `v1/{+name}`

Deletes a single MigratingVm.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the MigratingVm. |

**Response**: `Operation`

```typescript
const res = await vmmigration.migratingVms.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.sources.migratingVms.get`

**GET** `v1/{+name}`

Gets details of a single MigratingVm.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the MigratingVm. |
| `view` | `string` | query | No | Optional. The level of details of the migrating VM. |

**Response**: `MigratingVm`

```typescript
const res = await vmmigration.migratingVms.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.sources.migratingVms.create`

**POST** `v1/{+parent}/migratingVms`

Creates a new MigratingVm in a given Source.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The MigratingVm's parent. |
| `migratingVmId` | `string` | query | No | Required. The migratingVm identifier. |
| `requestId` | `string` | query | No | A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server wil... |

**Request body**: `MigratingVm`

**Response**: `Operation`

```typescript
const res = await vmmigration.migratingVms.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.sources.migratingVms.replicationCycles.list`

**GET** `v1/{+parent}/replicationCycles`

Lists ReplicationCycles in a given MigratingVM.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of ReplicationCycles. |
| `filter` | `string` | query | No | Optional. The filter request. |
| `orderBy` | `string` | query | No | Optional. the order by fields for the result. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of replication cycles to return. The service may return fewer than this value. If unspec... |
| `pageToken` | `string` | query | No | Required. A page token, received from a previous `ListReplicationCycles` call. Provide this to retrieve the subsequen... |

**Response**: `ListReplicationCyclesResponse`

```typescript
const res = await vmmigration.replicationCycles.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.sources.migratingVms.replicationCycles.get`

**GET** `v1/{+name}`

Gets details of a single ReplicationCycle.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the ReplicationCycle. |

**Response**: `ReplicationCycle`

```typescript
const res = await vmmigration.replicationCycles.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.sources.migratingVms.cloneJobs.get`

**GET** `v1/{+name}`

Gets details of a single CloneJob.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the CloneJob. |

**Response**: `CloneJob`

```typescript
const res = await vmmigration.cloneJobs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.sources.migratingVms.cloneJobs.list`

**GET** `v1/{+parent}/cloneJobs`

Lists the CloneJobs of a migrating VM. Only 25 most recent CloneJobs are listed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of source VMs. |
| `filter` | `string` | query | No | Optional. The filter request. |
| `orderBy` | `string` | query | No | Optional. the order by fields for the result. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of clone jobs to return. The service may return fewer than this value. If unspecified, a... |
| `pageToken` | `string` | query | No | Required. A page token, received from a previous `ListCloneJobs` call. Provide this to retrieve the subsequent page. ... |

**Response**: `ListCloneJobsResponse`

```typescript
const res = await vmmigration.cloneJobs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.sources.migratingVms.cloneJobs.create`

**POST** `v1/{+parent}/cloneJobs`

Initiates a Clone of a specific migrating VM.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The Clone's parent. |
| `cloneJobId` | `string` | query | No | Required. The clone job identifier. |
| `requestId` | `string` | query | No | A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server wil... |

**Request body**: `CloneJob`

**Response**: `Operation`

```typescript
const res = await vmmigration.cloneJobs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.sources.migratingVms.cloneJobs.cancel`

**POST** `v1/{+name}:cancel`

Initiates the cancellation of a running clone job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The clone job id |

**Request body**: `CancelCloneJobRequest`

**Response**: `Operation`

```typescript
const res = await vmmigration.cloneJobs.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.sources.migratingVms.cutoverJobs.get`

**GET** `v1/{+name}`

Gets details of a single CutoverJob.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the CutoverJob. |

**Response**: `CutoverJob`

```typescript
const res = await vmmigration.cutoverJobs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.sources.migratingVms.cutoverJobs.create`

**POST** `v1/{+parent}/cutoverJobs`

Initiates a Cutover of a specific migrating VM. The returned LRO is completed when the cutover job resource is created and the job is initiated.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The Cutover's parent. |
| `cutoverJobId` | `string` | query | No | Required. The cutover job identifier. |
| `requestId` | `string` | query | No | A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server wil... |

**Request body**: `CutoverJob`

**Response**: `Operation`

```typescript
const res = await vmmigration.cutoverJobs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.sources.migratingVms.cutoverJobs.cancel`

**POST** `v1/{+name}:cancel`

Initiates the cancellation of a running cutover job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The cutover job id |

**Request body**: `CancelCutoverJobRequest`

**Response**: `Operation`

```typescript
const res = await vmmigration.cutoverJobs.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.sources.migratingVms.cutoverJobs.list`

**GET** `v1/{+parent}/cutoverJobs`

Lists the CutoverJobs of a migrating VM. Only 25 most recent CutoverJobs are listed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of migrating VMs. |
| `filter` | `string` | query | No | Optional. The filter request. |
| `orderBy` | `string` | query | No | Optional. the order by fields for the result. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of cutover jobs to return. The service may return fewer than this value. If unspecified,... |
| `pageToken` | `string` | query | No | Required. A page token, received from a previous `ListCutoverJobs` call. Provide this to retrieve the subsequent page... |

**Response**: `ListCutoverJobsResponse`

```typescript
const res = await vmmigration.cutoverJobs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.sources.datacenterConnectors.get`

**GET** `v1/{+name}`

Gets details of a single DatacenterConnector.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the DatacenterConnector. |

**Response**: `DatacenterConnector`

```typescript
const res = await vmmigration.datacenterConnectors.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.sources.datacenterConnectors.delete`

**DELETE** `v1/{+name}`

Deletes a single DatacenterConnector.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The DatacenterConnector name. |
| `requestId` | `string` | query | No | A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server wil... |

**Response**: `Operation`

```typescript
const res = await vmmigration.datacenterConnectors.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.sources.datacenterConnectors.upgradeAppliance`

**POST** `v1/{+datacenterConnector}:upgradeAppliance`

Upgrades the appliance relate to this DatacenterConnector to the in-place updateable version.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `datacenterConnector` | `string` | path | Yes | Required. The DatacenterConnector name. |

**Request body**: `UpgradeApplianceRequest`

**Response**: `Operation`

```typescript
const res = await vmmigration.datacenterConnectors.upgradeAppliance({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.sources.datacenterConnectors.create`

**POST** `v1/{+parent}/datacenterConnectors`

Creates a new DatacenterConnector in a given Source.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The DatacenterConnector's parent. Required. The Source in where the new DatacenterConnector will be created... |
| `datacenterConnectorId` | `string` | query | No | Required. The datacenterConnector identifier. |
| `requestId` | `string` | query | No | A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server wil... |

**Request body**: `DatacenterConnector`

**Response**: `Operation`

```typescript
const res = await vmmigration.datacenterConnectors.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.sources.datacenterConnectors.list`

**GET** `v1/{+parent}/datacenterConnectors`

Lists DatacenterConnectors in a given Source.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of connectors. |
| `filter` | `string` | query | No | Optional. The filter request. |
| `orderBy` | `string` | query | No | Optional. the order by fields for the result. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of connectors to return. The service may return fewer than this value. If unspecified, a... |
| `pageToken` | `string` | query | No | Required. A page token, received from a previous `ListDatacenterConnectors` call. Provide this to retrieve the subseq... |

**Response**: `ListDatacenterConnectorsResponse`

```typescript
const res = await vmmigration.datacenterConnectors.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.sources.diskMigrationJobs.create`

**POST** `v1/{+parent}/diskMigrationJobs`

Creates a new disk migration job in a given Source.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The DiskMigrationJob's parent. |
| `diskMigrationJobId` | `string` | query | No | Required. The DiskMigrationJob identifier. The maximum length of this value is 63 characters. Valid characters are lo... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |

**Request body**: `DiskMigrationJob`

**Response**: `Operation`

```typescript
const res = await vmmigration.diskMigrationJobs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.sources.diskMigrationJobs.cancel`

**POST** `v1/{+name}:cancel`

Cancels the disk migration job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the DiskMigrationJob. |

**Request body**: `CancelDiskMigrationJobRequest`

**Response**: `Operation`

```typescript
const res = await vmmigration.diskMigrationJobs.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.sources.diskMigrationJobs.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single DiskMigrationJob.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Identifier. The identifier of the DiskMigrationJob. |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the DiskMigrationJob resource by the update. ... |

**Request body**: `DiskMigrationJob`

**Response**: `Operation`

```typescript
const res = await vmmigration.diskMigrationJobs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.sources.diskMigrationJobs.run`

**POST** `v1/{+name}:run`

Runs the disk migration job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the DiskMigrationJob. |

**Request body**: `RunDiskMigrationJobRequest`

**Response**: `Operation`

```typescript
const res = await vmmigration.diskMigrationJobs.run({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.sources.diskMigrationJobs.get`

**GET** `v1/{+name}`

Gets details of a single DiskMigrationJob.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the DiskMigrationJob. |

**Response**: `DiskMigrationJob`

```typescript
const res = await vmmigration.diskMigrationJobs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.sources.diskMigrationJobs.delete`

**DELETE** `v1/{+name}`

Deletes a single DiskMigrationJob.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the DiskMigrationJob. |

**Response**: `Operation`

```typescript
const res = await vmmigration.diskMigrationJobs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.sources.diskMigrationJobs.list`

**GET** `v1/{+parent}/diskMigrationJobs`

Lists DiskMigrationJobs in a given Source.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of DiskMigrationJobs. |
| `filter` | `string` | query | No | Optional. The filter request (according to AIP-160). |
| `orderBy` | `string` | query | No | Optional. Ordering of the result list. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of disk migration jobs to return. The service may return fewer than this value. If unspe... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListDiskMigrationJobs` call. Provide this to retrieve the subsequen... |

**Response**: `ListDiskMigrationJobsResponse`

```typescript
const res = await vmmigration.diskMigrationJobs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await vmmigration.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.operations.list`

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
const res = await vmmigration.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await vmmigration.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await vmmigration.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.groups.removeGroupMigration`

**POST** `v1/{+group}:removeGroupMigration`

Removes a MigratingVm from a Group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `group` | `string` | path | Yes | Required. The name of the Group. |

**Request body**: `RemoveGroupMigrationRequest`

**Response**: `Operation`

```typescript
const res = await vmmigration.groups.removeGroupMigration({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.groups.create`

**POST** `v1/{+parent}/groups`

Creates a new Group in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The Group's parent. |
| `groupId` | `string` | query | No | Required. The group identifier. |
| `requestId` | `string` | query | No | A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server wil... |

**Request body**: `Group`

**Response**: `Operation`

```typescript
const res = await vmmigration.groups.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.groups.delete`

**DELETE** `v1/{+name}`

Deletes a single Group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The Group name. |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |

**Response**: `Operation`

```typescript
const res = await vmmigration.groups.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.groups.get`

**GET** `v1/{+name}`

Gets details of a single Group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The group name. |

**Response**: `Group`

```typescript
const res = await vmmigration.groups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.groups.list`

**GET** `v1/{+parent}/groups`

Lists Groups in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of groups. |
| `filter` | `string` | query | No | Optional. The filter request. |
| `orderBy` | `string` | query | No | Optional. the order by fields for the result. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of groups to return. The service may return fewer than this value. If unspecified, at mo... |
| `pageToken` | `string` | query | No | Required. A page token, received from a previous `ListGroups` call. Provide this to retrieve the subsequent page. Whe... |

**Response**: `ListGroupsResponse`

```typescript
const res = await vmmigration.groups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.groups.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single Group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The Group name. |
| `requestId` | `string` | query | No | A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server wil... |
| `updateMask` | `string` | query | No | Field mask is used to specify the fields to be overwritten in the Group resource by the update. The fields specified ... |

**Request body**: `Group`

**Response**: `Operation`

```typescript
const res = await vmmigration.groups.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.groups.addGroupMigration`

**POST** `v1/{+group}:addGroupMigration`

Adds a MigratingVm to a Group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `group` | `string` | path | Yes | Required. The full path name of the Group to add to. |

**Request body**: `AddGroupMigrationRequest`

**Response**: `Operation`

```typescript
const res = await vmmigration.groups.addGroupMigration({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.targetProjects.list`

**GET** `v1/{+parent}/targetProjects`

Lists TargetProjects in a given project. NOTE: TargetProject is a global resource; hence the only supported value for location is `global`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of targets. |
| `filter` | `string` | query | No | Optional. The filter request. |
| `orderBy` | `string` | query | No | Optional. the order by fields for the result. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of targets to return. The service may return fewer than this value. If unspecified, at m... |
| `pageToken` | `string` | query | No | Required. A page token, received from a previous `ListTargets` call. Provide this to retrieve the subsequent page. Wh... |

**Response**: `ListTargetProjectsResponse`

```typescript
const res = await vmmigration.targetProjects.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.targetProjects.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single TargetProject. NOTE: TargetProject is a global resource; hence the only supported value for location is `global`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The name of the target project. |
| `requestId` | `string` | query | No | A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server wil... |
| `updateMask` | `string` | query | No | Field mask is used to specify the fields to be overwritten in the TargetProject resource by the update. The fields sp... |

**Request body**: `TargetProject`

**Response**: `Operation`

```typescript
const res = await vmmigration.targetProjects.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.targetProjects.get`

**GET** `v1/{+name}`

Gets details of a single TargetProject. NOTE: TargetProject is a global resource; hence the only supported value for location is `global`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The TargetProject name. |

**Response**: `TargetProject`

```typescript
const res = await vmmigration.targetProjects.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.targetProjects.create`

**POST** `v1/{+parent}/targetProjects`

Creates a new TargetProject in a given project. NOTE: TargetProject is a global resource; hence the only supported value for location is `global`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The TargetProject's parent. |
| `requestId` | `string` | query | No | A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server wil... |
| `targetProjectId` | `string` | query | No | Required. The target_project identifier. |

**Request body**: `TargetProject`

**Response**: `Operation`

```typescript
const res = await vmmigration.targetProjects.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.targetProjects.delete`

**DELETE** `v1/{+name}`

Deletes a single TargetProject. NOTE: TargetProject is a global resource; hence the only supported value for location is `global`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The TargetProject name. |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |

**Response**: `Operation`

```typescript
const res = await vmmigration.targetProjects.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.imageImports.delete`

**DELETE** `v1/{+name}`

Deletes a single ImageImport.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The ImageImport name. |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |

**Response**: `Operation`

```typescript
const res = await vmmigration.imageImports.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.imageImports.list`

**GET** `v1/{+parent}/imageImports`

Lists ImageImports in a given project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of targets. |
| `filter` | `string` | query | No | Optional. The filter request (according to AIP-160). |
| `orderBy` | `string` | query | No | Optional. The order by fields for the result (according to AIP-132). Currently ordering is only possible by "name" fi... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of targets to return. The service may return fewer than this value. If unspecified, at m... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListImageImports` call. Provide this to retrieve the subsequent pag... |

**Response**: `ListImageImportsResponse`

```typescript
const res = await vmmigration.imageImports.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.imageImports.create`

**POST** `v1/{+parent}/imageImports`

Creates a new ImageImport in a given project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The ImageImport's parent. |
| `imageImportId` | `string` | query | No | Required. The image import identifier. This value maximum length is 63 characters, and valid characters are /a-z-/. I... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |

**Request body**: `ImageImport`

**Response**: `Operation`

```typescript
const res = await vmmigration.imageImports.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.imageImports.get`

**GET** `v1/{+name}`

Gets details of a single ImageImport.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The ImageImport name. |

**Response**: `ImageImport`

```typescript
const res = await vmmigration.imageImports.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.imageImports.imageImportJobs.cancel`

**POST** `v1/{+name}:cancel`

Initiates the cancellation of a running ImageImportJob.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The image import job id. |

**Request body**: `CancelImageImportJobRequest`

**Response**: `Operation`

```typescript
const res = await vmmigration.imageImportJobs.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.imageImports.imageImportJobs.list`

**GET** `v1/{+parent}/imageImportJobs`

Lists ImageImportJobs in a given project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of targets. |
| `filter` | `string` | query | No | Optional. The filter request (according to AIP-160). |
| `orderBy` | `string` | query | No | Optional. The order by fields for the result (according to AIP-132). Currently ordering is only possible by "name" fi... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of targets to return. The service may return fewer than this value. If unspecified, at m... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListImageImportJobs` call. Provide this to retrieve the subsequent ... |

**Response**: `ListImageImportJobsResponse`

```typescript
const res = await vmmigration.imageImportJobs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vmmigration.projects.locations.imageImports.imageImportJobs.get`

**GET** `v1/{+name}`

Gets details of a single ImageImportJob.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The ImageImportJob name. |

**Response**: `ImageImportJob`

```typescript
const res = await vmmigration.imageImportJobs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AccessKeyCredentials`

Message describing AWS Credentials using access key id and secret.

| Property | Type | Description |
|----------|------|-------------|
| `accessKeyId` | `string` | AWS access key ID. |
| `secretAccessKey` | `string` | Input only. AWS secret access key. |
| `sessionToken` | `string` | Input only. AWS session token. Used only when AWS security token service (STS) is responsible for... |

### `AdaptationModifier`

AdaptationModifier a modifier to be used for configuration of the OS adaptation process.

| Property | Type | Description |
|----------|------|-------------|
| `modifier` | `string` | Optional. The modifier name. |
| `value` | `string` | Optional. The value of the modifier. The actual value depends on the modifier and can also be empty. |

### `AdaptingOSStep`

AdaptingOSStep contains specific step details.

### `AddGroupMigrationRequest`

Request message for 'AddGroupMigration' request.

| Property | Type | Description |
|----------|------|-------------|
| `migratingVm` | `string` | The full path name of the MigratingVm to add. |

### `ApplianceVersion`

Describes an appliance version.

| Property | Type | Description |
|----------|------|-------------|
| `critical` | `boolean` | Determine whether it's critical to upgrade the appliance to this version. |
| `releaseNotesUri` | `string` | Link to a page that contains the version release notes. |
| `uri` | `string` | A link for downloading the version. |
| `version` | `string` | The appliance version. |

### `AppliedLicense`

AppliedLicense holds the license data returned by adaptation module report.

| Property | Type | Description |
|----------|------|-------------|
| `osLicense` | `string` | The OS license returned from the adaptation module's report. |
| `type` | `string` | The license type that was used in OS adaptation. |

### `AvailableUpdates`

Holds information about the available versions for upgrade.

| Property | Type | Description |
|----------|------|-------------|
| `inPlaceUpdate` | `ApplianceVersion` | The latest version for in place update. The current appliance can be updated to this version usin... |
| `newDeployableAppliance` | `ApplianceVersion` | The newest deployable version of the appliance. The current appliance can't be updated into this ... |

### `AwsDiskDetails`

The details of an AWS instance disk.

| Property | Type | Description |
|----------|------|-------------|
| `diskNumber` | `integer` | Output only. The ordinal number of the disk. |
| `sizeGb` | `string` | Output only. Size in GB. |
| `volumeId` | `string` | Output only. AWS volume ID. |

### `AwsSecurityGroup`

AwsSecurityGroup describes a security group of an AWS VM.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The AWS security group id. |
| `name` | `string` | The AWS security group name. |

### `AwsSourceDetails`

AwsSourceDetails message describes a specific source details for the AWS source type.

| Property | Type | Description |
|----------|------|-------------|
| `accessKeyCreds` | `AccessKeyCredentials` | AWS Credentials using access key id and secret. |
| `awsRegion` | `string` | Immutable. The AWS region that the source VMs will be migrated from. |
| `error` | `Status` | Output only. Provides details on the state of the Source in case of an error. |
| `inventorySecurityGroupNames` | `array<string>` | AWS security group names to limit the scope of the source inventory. |
| `inventoryTagList` | `array<Tag>` | AWS resource tags to limit the scope of the source inventory. |
| `migrationResourcesUserTags` | `object` | User specified tags to add to every M2VM generated resource in AWS. These tags will be set in add... |
| `publicIp` | `string` | Output only. The source's public IP. All communication initiated by this source will originate fr... |
| `state` | `string` | Output only. State of the source as determined by the health check. |

### `AwsSourceDiskDetails`

Represents the source AWS Disk details.

| Property | Type | Description |
|----------|------|-------------|
| `diskType` | `string` | Optional. Output only. Disk type. |
| `sizeGib` | `string` | Output only. Size in GiB. |
| `tags` | `object` | Optional. Output only. A map of AWS volume tags. |
| `volumeId` | `string` | Required. AWS volume ID. |

### `AwsSourceVmDetails`

Represent the source AWS VM details.

| Property | Type | Description |
|----------|------|-------------|
| `architecture` | `string` | Output only. The VM architecture. |
| `committedStorageBytes` | `string` | Output only. The total size of the disks being migrated in bytes. |
| `disks` | `array<AwsDiskDetails>` | Output only. The disks attached to the source VM. |
| `firmware` | `string` | Output only. The firmware type of the source VM. |
| `vmCapabilitiesInfo` | `VmCapabilities` | Output only. Information about VM capabilities needed for some Compute Engine features. |

### `AwsVmDetails`

AwsVmDetails describes a VM in AWS.

| Property | Type | Description |
|----------|------|-------------|
| `architecture` | `string` | The CPU architecture. |
| `bootOption` | `string` | The VM Boot Option. |
| `committedStorageMb` | `string` | The total size of the storage allocated to the VM in MB. |
| `cpuCount` | `integer` | The number of CPU cores the VM has. |
| `diskCount` | `integer` | The number of disks the VM has. |
| `displayName` | `string` | The display name of the VM. Note that this value is not necessarily unique. |
| `instanceType` | `string` | The instance type of the VM. |
| `memoryMb` | `integer` | The memory size of the VM in MB. |
| `osDescription` | `string` | The VM's OS. |
| `powerState` | `string` | Output only. The power state of the VM at the moment list was taken. |
| `securityGroups` | `array<AwsSecurityGroup>` | The security groups the VM belongs to. |
| `sourceDescription` | `string` | The descriptive name of the AWS's source this VM is connected to. |
| `sourceId` | `string` | The id of the AWS's source this VM is connected to. |
| `tags` | `object` | The tags of the VM. |
| `vcpuCount` | `integer` | The number of vCPUs the VM has. It is calculated as the number of CPU cores * threads per CPU the... |
| `virtualizationType` | `string` | The virtualization type. |
| `vmId` | `string` | The VM ID in AWS. |
| `vpcId` | `string` | The VPC ID the VM belongs to. |
| `zone` | `string` | The AWS zone of the VM. |

### `AwsVmsDetails`

AWSVmsDetails describes VMs in AWS.

| Property | Type | Description |
|----------|------|-------------|
| `details` | `array<AwsVmDetails>` | The details of the AWS VMs. |

### `AzureDiskDetails`

The details of an Azure VM disk.

| Property | Type | Description |
|----------|------|-------------|
| `diskId` | `string` | Output only. Azure disk ID. |
| `diskNumber` | `integer` | Output only. The ordinal number of the disk. |
| `sizeGb` | `string` | Output only. Size in GB. |

### `AzureSourceDetails`

AzureSourceDetails message describes a specific source details for the Azure source type.

| Property | Type | Description |
|----------|------|-------------|
| `azureLocation` | `string` | Immutable. The Azure location (region) that the source VMs will be migrated from. |
| `clientSecretCreds` | `ClientSecretCredentials` | Azure Credentials using tenant ID, client ID and secret. |
| `error` | `Status` | Output only. Provides details on the state of the Source in case of an error. |
| `migrationResourcesUserTags` | `object` | User specified tags to add to every M2VM generated resource in Azure. These tags will be set in a... |
| `resourceGroupId` | `string` | Output only. The ID of the Azure resource group that contains all resources related to the migrat... |
| `state` | `string` | Output only. State of the source as determined by the health check. |
| `subscriptionId` | `string` | Immutable. Azure subscription ID. |

### `AzureSourceVmDetails`

Represent the source Azure VM details.

| Property | Type | Description |
|----------|------|-------------|
| `architecture` | `string` | Output only. The VM architecture. |
| `committedStorageBytes` | `string` | Output only. The total size of the disks being migrated in bytes. |
| `disks` | `array<AzureDiskDetails>` | Output only. The disks attached to the source VM. |
| `firmware` | `string` | Output only. The firmware type of the source VM. |
| `vmCapabilitiesInfo` | `VmCapabilities` | Output only. Information about VM capabilities needed for some Compute Engine features. |

### `AzureVmDetails`

AzureVmDetails describes a VM in Azure.

| Property | Type | Description |
|----------|------|-------------|
| `architecture` | `string` | The CPU architecture. |
| `bootOption` | `string` | The VM Boot Option. |
| `committedStorageMb` | `string` | The total size of the storage allocated to the VM in MB. |
| `computerName` | `string` | The VM's ComputerName. |
| `cpuCount` | `integer` | The number of cpus the VM has. |
| `diskCount` | `integer` | The number of disks the VM has, including OS disk. |
| `disks` | `array<Disk>` | Description of the data disks. |
| `memoryMb` | `integer` | The memory size of the VM in MB. |
| `osDescription` | `OSDescription` | Description of the OS. |
| `osDisk` | `OSDisk` | Description of the OS disk. |
| `powerState` | `string` | The power state of the VM at the moment list was taken. |
| `tags` | `object` | The tags of the VM. |
| `vmId` | `string` | The VM full path in Azure. |
| `vmSize` | `string` | VM size as configured in Azure. Determines the VM's hardware spec. |

### `AzureVmsDetails`

AzureVmsDetails describes VMs in Azure.

| Property | Type | Description |
|----------|------|-------------|
| `details` | `array<AzureVmDetails>` | The details of the Azure VMs. |

### `BootDiskDefaults`

BootDiskDefaults hold information about the boot disk of a VM.

| Property | Type | Description |
|----------|------|-------------|
| `deviceName` | `string` | Optional. Specifies a unique device name of your choice that is reflected into the /dev/disk/by-i... |
| `diskName` | `string` | Optional. The name of the disk. |
| `diskType` | `string` | Optional. The type of disk provisioning to use for the VM. |
| `encryption` | `Encryption` | Optional. The encryption to apply to the boot disk. |
| `image` | `DiskImageDefaults` | The image to use when creating the disk. |

### `CancelCloneJobRequest`

Request message for 'CancelCloneJob' request.

### `CancelCutoverJobRequest`

Request message for 'CancelCutoverJob' request.

### `CancelDiskMigrationJobRequest`

Request message for 'CancelDiskMigrationJob' request.

### `CancelImageImportJobRequest`

Request message for 'CancelImageImportJob' request.

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `ClientSecretCredentials`

Message describing Azure Credentials using tenant ID, client ID and secret.

| Property | Type | Description |
|----------|------|-------------|
| `clientId` | `string` | Azure client ID. |
| `clientSecret` | `string` | Input only. Azure client secret. |
| `tenantId` | `string` | Azure tenant ID. |

### `CloneJob`

CloneJob describes the process of creating a clone of a MigratingVM to the requested target based on the latest successful uploaded snapshots. While the migration cycles of a MigratingVm take place, it is possible to verify the uploaded VM can be started in the cloud, by creating a clone. The clone can be created without any downtime, and it is created using the latest snapshots which are already in the cloud. The cloneJob is only responsible for its work, not its products, which means once it is finished, it will never touch the instance it created. It will only delete it in case of the CloneJob being cancelled or upon failure to clone.

| Property | Type | Description |
|----------|------|-------------|
| `computeEngineDisksTargetDetails` | `ComputeEngineDisksTargetDetails` | Output only. Details of the target Persistent Disks in Compute Engine. |
| `computeEngineTargetDetails` | `ComputeEngineTargetDetails` | Output only. Details of the target VM in Compute Engine. |
| `createTime` | `string` | Output only. The time the clone job was created (as an API call, not when it was actually created... |
| `endTime` | `string` | Output only. The time the clone job was ended. |
| `error` | `Status` | Output only. Provides details for the errors that led to the Clone Job's state. |
| `name` | `string` | Output only. The name of the clone. |
| `state` | `string` | Output only. State of the clone job. |
| `stateTime` | `string` | Output only. The time the state was last updated. |
| `steps` | `array<CloneStep>` | Output only. The clone steps list representing its progress. |

### `CloneStep`

CloneStep holds information about the clone step progress.

| Property | Type | Description |
|----------|------|-------------|
| `adaptingOs` | `AdaptingOSStep` | Adapting OS step. |
| `endTime` | `string` | The time the step has ended. |
| `instantiatingMigratedVm` | `InstantiatingMigratedVMStep` | Instantiating migrated VM step. |
| `preparingVmDisks` | `PreparingVMDisksStep` | Preparing VM disks step. |
| `startTime` | `string` | The time the step has started. |

### `ComputeEngineDisk`

Compute Engine disk target details.

| Property | Type | Description |
|----------|------|-------------|
| `diskId` | `string` | Optional. Target Compute Engine Disk ID. This is the resource ID segment of the Compute Engine Di... |
| `diskType` | `string` | Required. The disk type to use. |
| `replicaZones` | `array<string>` | Optional. Replication zones of the regional disk. Should be of the form: projects/{target-project... |
| `zone` | `string` | Required. The Compute Engine zone in which to create the disk. Should be of the form: projects/{t... |

### `ComputeEngineDisksTargetDefaults`

ComputeEngineDisksTargetDefaults is a collection of details for creating Persistent Disks in a target Compute Engine project.

| Property | Type | Description |
|----------|------|-------------|
| `disks` | `array<PersistentDiskDefaults>` | The details of each Persistent Disk to create. |
| `disksTargetDefaults` | `DisksMigrationDisksTargetDefaults` | Details of the disk only migration target. |
| `targetProject` | `string` | The full path of the resource of type TargetProject which represents the Compute Engine project i... |
| `vmTargetDefaults` | `DisksMigrationVmTargetDefaults` | Details of the VM migration target. |
| `zone` | `string` | The zone in which to create the Persistent Disks. |

### `ComputeEngineDisksTargetDetails`

ComputeEngineDisksTargetDetails is a collection of created Persistent Disks details.

| Property | Type | Description |
|----------|------|-------------|
| `disks` | `array<PersistentDisk>` | The details of each created Persistent Disk. |
| `disksTargetDetails` | `DisksMigrationDisksTargetDetails` | Details of the disks-only migration target. |
| `vmTargetDetails` | `DisksMigrationVmTargetDetails` | Details for the VM the migrated data disks are attached to. |

### `ComputeEngineTargetDefaults`

ComputeEngineTargetDefaults is a collection of details for creating a VM in a target Compute Engine project.

| Property | Type | Description |
|----------|------|-------------|
| `adaptationModifiers` | `array<AdaptationModifier>` | Optional. AdaptationModifiers are the set of modifiers used during OS adaptation. |
| `additionalLicenses` | `array<string>` | Additional licenses to assign to the VM. |
| `appliedLicense` | `AppliedLicense` | Output only. The OS license returned from the adaptation module report. |
| `bootConversion` | `string` | Optional. By default the virtual machine will keep its existing boot option. Setting this propert... |
| `bootOption` | `string` | Output only. The VM Boot Option, as set in the source VM. |
| `computeScheduling` | `ComputeScheduling` | Compute instance scheduling information (if empty default is used). |
| `diskReplicaZones` | `array<string>` | Optional. Additional replica zones of the target regional disks. If this list is not empty a regi... |
| `diskType` | `string` | The disk type to use in the VM. |
| `enableIntegrityMonitoring` | `boolean` | Optional. Defines whether the instance has integrity monitoring enabled. This can be set to true ... |
| `enableVtpm` | `boolean` | Optional. Defines whether the instance has vTPM enabled. This can be set to true only if the VM b... |
| `encryption` | `Encryption` | Optional. Immutable. The encryption to apply to the VM disks. |
| `hostname` | `string` | The hostname to assign to the VM. |
| `labels` | `object` | A map of labels to associate with the VM. |
| `licenseType` | `string` | The license type to use in OS adaptation. |
| `machineType` | `string` | The machine type to create the VM with. |
| `machineTypeSeries` | `string` | The machine type series to create the VM with. |
| `metadata` | `object` | The metadata key/value pairs to assign to the VM. |
| `networkInterfaces` | `array<NetworkInterface>` | List of NICs connected to this VM. |
| `networkTags` | `array<string>` | A list of network tags to associate with the VM. |
| `secureBoot` | `boolean` | Defines whether the instance has Secure Boot enabled. This can be set to true only if the VM boot... |
| `serviceAccount` | `string` | Optional. The service account to associate the VM with. |
| `storagePool` | `string` | Optional. If specified this will be the storage pool in which the disk is created. This is the fu... |
| `targetProject` | `string` | The full path of the resource of type TargetProject which represents the Compute Engine project i... |
| `vmName` | `string` | The name of the VM to create. |
| `zone` | `string` | The zone in which to create the VM. |

### `ComputeEngineTargetDetails`

ComputeEngineTargetDetails is a collection of details for creating a VM in a target Compute Engine project.

| Property | Type | Description |
|----------|------|-------------|
| `adaptationModifiers` | `array<AdaptationModifier>` | Optional. Modifiers to be used as configuration of the OS adaptation process. |
| `additionalLicenses` | `array<string>` | Additional licenses to assign to the VM. |
| `appliedLicense` | `AppliedLicense` | The OS license returned from the adaptation module report. |
| `bootConversion` | `string` | Optional. By default the virtual machine will keep its existing boot option. Setting this propert... |
| `bootOption` | `string` | The VM Boot Option, as set in the source VM. |
| `computeScheduling` | `ComputeScheduling` | Compute instance scheduling information (if empty default is used). |
| `diskReplicaZones` | `array<string>` | Optional. Additional replica zones of the target regional disks. If this list is not empty a regi... |
| `diskType` | `string` | The disk type to use in the VM. |
| `enableIntegrityMonitoring` | `boolean` | Optional. Defines whether the instance has integrity monitoring enabled. |
| `enableVtpm` | `boolean` | Optional. Defines whether the instance has vTPM enabled. |
| `encryption` | `Encryption` | Optional. The encryption to apply to the VM disks. |
| `hostname` | `string` | The hostname to assign to the VM. |
| `labels` | `object` | A map of labels to associate with the VM. |
| `licenseType` | `string` | The license type to use in OS adaptation. |
| `machineType` | `string` | The machine type to create the VM with. |
| `machineTypeSeries` | `string` | The machine type series to create the VM with. |
| `metadata` | `object` | The metadata key/value pairs to assign to the VM. |
| `networkInterfaces` | `array<NetworkInterface>` | List of NICs connected to this VM. |
| `networkTags` | `array<string>` | A list of network tags to associate with the VM. |
| `project` | `string` | The Google Cloud target project ID or project name. |
| `secureBoot` | `boolean` | Defines whether the instance has Secure Boot enabled. This can be set to true only if the VM boot... |
| `serviceAccount` | `string` | The service account to associate the VM with. |
| `storagePool` | `string` | Optional. The storage pool used for the VM disks. If specified this will be the storage pool in w... |
| `vmName` | `string` | The name of the VM to create. |
| `zone` | `string` | The zone in which to create the VM. |

### `ComputeScheduling`

Scheduling information for VM on maintenance/restart behaviour and node allocation in sole tenant nodes. Options for instance behavior when the host machine undergoes maintenance that may temporarily impact instance performance.

| Property | Type | Description |
|----------|------|-------------|
| `minNodeCpus` | `integer` | The minimum number of virtual CPUs this instance will consume when running on a sole-tenant node.... |
| `nodeAffinities` | `array<SchedulingNodeAffinity>` | A set of node affinity and anti-affinity configurations for sole tenant nodes. |
| `onHostMaintenance` | `string` | How the instance should behave when the host machine undergoes maintenance that may temporarily i... |
| `restartType` | `string` | Whether the Instance should be automatically restarted whenever it is terminated by Compute Engin... |

### `CopyingSourceDiskSnapshotStep`

CopyingSourceDiskSnapshotStep contains specific step details.

### `CreatingImageStep`

CreatingImageStep contains specific step details.

### `CreatingSourceDiskSnapshotStep`

CreatingSourceDiskSnapshotStep contains specific step details.

### `CutoverForecast`

CutoverForecast holds information about future CutoverJobs of a MigratingVm.

| Property | Type | Description |
|----------|------|-------------|
| `estimatedCutoverJobDuration` | `string` | Output only. Estimation of the CutoverJob duration. |

### `CutoverJob`

CutoverJob message describes a cutover of a migrating VM. The CutoverJob is the operation of shutting down the VM, creating a snapshot and cloning the VM using the replicated snapshot.

| Property | Type | Description |
|----------|------|-------------|
| `computeEngineDisksTargetDetails` | `ComputeEngineDisksTargetDetails` | Output only. Details of the target Persistent Disks in Compute Engine. |
| `computeEngineTargetDetails` | `ComputeEngineTargetDetails` | Output only. Details of the target VM in Compute Engine. |
| `createTime` | `string` | Output only. The time the cutover job was created (as an API call, not when it was actually creat... |
| `endTime` | `string` | Output only. The time the cutover job had finished. |
| `error` | `Status` | Output only. Provides details for the errors that led to the Cutover Job's state. |
| `name` | `string` | Output only. The name of the cutover job. |
| `progressPercent` | `integer` | Output only. The current progress in percentage of the cutover job. |
| `state` | `string` | Output only. State of the cutover job. |
| `stateMessage` | `string` | Output only. A message providing possible extra details about the current state. |
| `stateTime` | `string` | Output only. The time the state was last updated. |
| `steps` | `array<CutoverStep>` | Output only. The cutover steps list representing its progress. |

### `CutoverStep`

CutoverStep holds information about the cutover step progress.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | The time the step has ended. |
| `finalSync` | `ReplicationCycle` | Final sync step. |
| `instantiatingMigratedVm` | `InstantiatingMigratedVMStep` | Instantiating migrated VM step. |
| `preparingVmDisks` | `PreparingVMDisksStep` | Preparing VM disks step. |
| `previousReplicationCycle` | `ReplicationCycle` | A replication cycle prior cutover step. |
| `shuttingDownSourceVm` | `ShuttingDownSourceVMStep` | Shutting down VM step. |
| `startTime` | `string` | The time the step has started. |

### `CycleStep`

CycleStep holds information about a step progress.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | The time the cycle step has ended. |
| `initializingReplication` | `InitializingReplicationStep` | Initializing replication step. |
| `postProcessing` | `PostProcessingStep` | Post processing step. |
| `replicating` | `ReplicatingStep` | Replicating step. |
| `startTime` | `string` | The time the cycle step has started. |

### `DataDiskImageImport`

Used when the image import is not using OS adaptation process.

| Property | Type | Description |
|----------|------|-------------|
| `guestOsFeatures` | `array<string>` | Optional. A list of guest OS features to apply to the imported image. These features are flags th... |

### `DatacenterConnector`

DatacenterConnector message describes a connector between the Source and Google Cloud, which is installed on a vmware datacenter (an OVA vm installed by the user) to connect the Datacenter to Google Cloud and support vm migration data transfer.

| Property | Type | Description |
|----------|------|-------------|
| `applianceInfrastructureVersion` | `string` | Output only. Appliance OVA version. This is the OVA which is manually installed by the user and c... |
| `applianceSoftwareVersion` | `string` | Output only. Appliance last installed update bundle version. This is the version of the automatic... |
| `availableVersions` | `AvailableUpdates` | Output only. The available versions for updating this appliance. |
| `bucket` | `string` | Output only. The communication channel between the datacenter connector and Google Cloud. |
| `createTime` | `string` | Output only. The time the connector was created (as an API call, not when it was actually install... |
| `error` | `Status` | Output only. Provides details on the state of the Datacenter Connector in case of an error. |
| `name` | `string` | Output only. The connector's name. |
| `registrationId` | `string` | Immutable. A unique key for this connector. This key is internal to the OVA connector and is supp... |
| `serviceAccount` | `string` | The service account to use in the connector when communicating with the cloud. |
| `state` | `string` | Output only. State of the DatacenterConnector, as determined by the health checks. |
| `stateTime` | `string` | Output only. The time the state was last set. |
| `updateTime` | `string` | Output only. The last time the connector was updated with an API call. |
| `upgradeStatus` | `UpgradeStatus` | Output only. The status of the current / last upgradeAppliance operation. |
| `version` | `string` | The version running in the DatacenterConnector. This is supplied by the OVA connector during the ... |

### `Disk`

A message describing a data disk.

| Property | Type | Description |
|----------|------|-------------|
| `lun` | `integer` | The disk's Logical Unit Number (LUN). |
| `name` | `string` | The disk name. |
| `sizeGb` | `integer` | The disk size in GB. |

### `DiskImageDefaults`

Contains details about the image source used to create the disk.

| Property | Type | Description |
|----------|------|-------------|
| `sourceImage` | `string` | Required. The Image resource used when creating the disk. |

### `DiskImageTargetDetails`

The target details of the image resource that will be created by the import job.

| Property | Type | Description |
|----------|------|-------------|
| `additionalLicenses` | `array<string>` | Optional. Additional licenses to assign to the image. Format: https://www.googleapis.com/compute/... |
| `dataDiskImageImport` | `DataDiskImageImport` | Optional. Use to skip OS adaptation process. |
| `description` | `string` | Optional. An optional description of the image. |
| `encryption` | `Encryption` | Immutable. The encryption to apply to the image. |
| `familyName` | `string` | Optional. The name of the image family to which the new image belongs. |
| `imageName` | `string` | Required. The name of the image to be created. |
| `labels` | `object` | Optional. A map of labels to associate with the image. |
| `osAdaptationParameters` | `ImageImportOsAdaptationParameters` | Optional. Use to set the parameters relevant for the OS adaptation process. |
| `singleRegionStorage` | `boolean` | Optional. Set to true to set the image storageLocations to the single region of the import job. W... |
| `targetProject` | `string` | Required. Reference to the TargetProject resource that represents the target project in which the... |

### `DiskMigrationJob`

Describes the disk which will be migrated from the source environment. The source disk has to be unattached.

| Property | Type | Description |
|----------|------|-------------|
| `awsSourceDiskDetails` | `AwsSourceDiskDetails` | Details of the unattached AWS source disk. |
| `createTime` | `string` | Output only. The time the DiskMigrationJob resource was created. |
| `errors` | `array<Status>` | Output only. Provides details on the errors that led to the disk migration job's state in case of... |
| `name` | `string` | Output only. Identifier. The identifier of the DiskMigrationJob. |
| `state` | `string` | Output only. State of the DiskMigrationJob. |
| `steps` | `array<DiskMigrationStep>` | Output only. The disk migration steps list representing its progress. |
| `targetDetails` | `DiskMigrationJobTargetDetails` | Required. Details of the target Disk in Compute Engine. |
| `updateTime` | `string` | Output only. The last time the DiskMigrationJob resource was updated. |

### `DiskMigrationJobTargetDetails`

Details of the target disk in Compute Engine.

| Property | Type | Description |
|----------|------|-------------|
| `encryption` | `Encryption` | Optional. The encryption to apply to the disk. If the DiskMigrationJob parent Source resource has... |
| `labels` | `object` | Optional. A map of labels to associate with the disk. |
| `targetDisk` | `ComputeEngineDisk` | Required. The target disk. |
| `targetProject` | `string` | Required. The name of the resource of type TargetProject which represents the Compute Engine proj... |

### `DiskMigrationStep`

DiskMigrationStep holds information about the disk migration step progress.

| Property | Type | Description |
|----------|------|-------------|
| `copyingSourceDiskSnapshot` | `CopyingSourceDiskSnapshotStep` | Copying source disk snapshot step. |
| `creatingSourceDiskSnapshot` | `CreatingSourceDiskSnapshotStep` | Creating source disk snapshot step. |
| `endTime` | `string` | Output only. The time the step has ended. |
| `provisioningTargetDisk` | `ProvisioningTargetDiskStep` | Creating target disk step. |
| `startTime` | `string` | Output only. The time the step has started. |

### `DisksMigrationDisksTargetDefaults`

Details for a disk only migration.

### `DisksMigrationDisksTargetDetails`

Details for a disks-only migration.

### `DisksMigrationVmTargetDefaults`

Details for creation of a VM that migrated data disks will be attached to.

| Property | Type | Description |
|----------|------|-------------|
| `additionalLicenses` | `array<string>` | Optional. Additional licenses to assign to the VM. |
| `bootDiskDefaults` | `BootDiskDefaults` | Optional. Details of the boot disk of the VM. |
| `computeScheduling` | `ComputeScheduling` | Optional. Compute instance scheduling information (if empty default is used). |
| `enableIntegrityMonitoring` | `boolean` | Optional. Defines whether the instance has integrity monitoring enabled. |
| `enableVtpm` | `boolean` | Optional. Defines whether the instance has vTPM enabled. |
| `encryption` | `Encryption` | Optional. The encryption to apply to the VM. |
| `hostname` | `string` | Optional. The hostname to assign to the VM. |
| `labels` | `object` | Optional. A map of labels to associate with the VM. |
| `machineType` | `string` | Required. The machine type to create the VM with. |
| `machineTypeSeries` | `string` | Optional. The machine type series to create the VM with. For presentation only. |
| `metadata` | `object` | Optional. The metadata key/value pairs to assign to the VM. |
| `networkInterfaces` | `array<NetworkInterface>` | Optional. NICs to attach to the VM. |
| `networkTags` | `array<string>` | Optional. A list of network tags to associate with the VM. |
| `secureBoot` | `boolean` | Optional. Defines whether the instance has Secure Boot enabled. This can be set to true only if t... |
| `serviceAccount` | `string` | Optional. The service account to associate the VM with. |
| `vmName` | `string` | Required. The name of the VM to create. |

### `DisksMigrationVmTargetDetails`

Details for the VM created VM as part of disks migration.

| Property | Type | Description |
|----------|------|-------------|
| `vmUri` | `string` | Output only. The URI of the Compute Engine VM. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Encryption`

Encryption message describes the details of the applied encryption.

| Property | Type | Description |
|----------|------|-------------|
| `kmsKey` | `string` | Required. The name of the encryption key that is stored in Google Cloud KMS. |

### `Expiration`

Expiration holds information about the expiration of a MigratingVm.

| Property | Type | Description |
|----------|------|-------------|
| `expireTime` | `string` | Output only. Timestamp of when this resource is considered expired. |
| `extendable` | `boolean` | Output only. Describes whether the expiration can be extended. |
| `extensionCount` | `integer` | Output only. The number of times expiration was extended. |

### `ExtendMigrationRequest`

Request message for 'ExtendMigrationRequest' request.

### `FetchInventoryResponse`

Response message for fetchInventory.

| Property | Type | Description |
|----------|------|-------------|
| `awsVms` | `AwsVmsDetails` | The description of the VMs in a Source of type AWS. |
| `azureVms` | `AzureVmsDetails` | The description of the VMs in a Source of type Azure. |
| `nextPageToken` | `string` | Output only. A token, which can be sent as `page_token` to retrieve the next page. If this field ... |
| `updateTime` | `string` | Output only. The timestamp when the source was last queried (if the result is from the cache). |
| `vmwareVms` | `VmwareVmsDetails` | The description of the VMs in a Source of type Vmware. |

### `FetchStorageInventoryResponse`

Response message for fetchStorageInventory.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Output only. A token, which can be sent as `page_token` to retrieve the next page. If this field ... |
| `resources` | `array<SourceStorageResource>` | The list of storage resources in the source. |
| `updateTime` | `string` | Output only. The timestamp when the source was last queried (if the result is from the cache). |

### `FinalizeMigrationRequest`

Request message for 'FinalizeMigration' request.

### `Group`

Describes message for 'Group' resource. The Group is a collections of several MigratingVms.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The create time timestamp. |
| `description` | `string` | User-provided description of the group. |
| `displayName` | `string` | Display name is a user defined name for this group which can be updated. |
| `migrationTargetType` | `string` | Immutable. The target type of this group. |
| `name` | `string` | Output only. The Group name. |
| `updateTime` | `string` | Output only. The update time timestamp. |

### `ImageImport`

ImageImport describes the configuration of the image import to run.

| Property | Type | Description |
|----------|------|-------------|
| `cloudStorageUri` | `string` | Immutable. The path to the Cloud Storage file from which the image should be imported. |
| `createTime` | `string` | Output only. The time the image import was created. |
| `diskImageTargetDefaults` | `DiskImageTargetDetails` | Immutable. Target details for importing a disk image, will be used by ImageImportJob. |
| `encryption` | `Encryption` | Immutable. The encryption details used by the image import process during the image adaptation fo... |
| `machineImageTargetDefaults` | `MachineImageTargetDetails` | Immutable. Target details for importing a machine image, will be used by ImageImportJob. |
| `name` | `string` | Output only. The resource path of the ImageImport. |
| `recentImageImportJobs` | `array<ImageImportJob>` | Output only. The result of the most recent runs for this ImageImport. All jobs for this ImageImpo... |

### `ImageImportJob`

ImageImportJob describes the progress and result of an image import.

| Property | Type | Description |
|----------|------|-------------|
| `cloudStorageUri` | `string` | Output only. The path to the Cloud Storage file from which the image should be imported. |
| `createTime` | `string` | Output only. The time the image import was created (as an API call, not when it was actually crea... |
| `createdResources` | `array<string>` | Output only. The resource paths of the resources created by the image import job. |
| `diskImageTargetDetails` | `DiskImageTargetDetails` | Output only. Target details used to import a disk image. |
| `endTime` | `string` | Output only. The time the image import was ended. |
| `errors` | `array<Status>` | Output only. Provides details on the error that led to the image import state in case of an error. |
| `machineImageTargetDetails` | `MachineImageTargetDetails` | Output only. Target details used to import a machine image. |
| `name` | `string` | Output only. The resource path of the ImageImportJob. |
| `state` | `string` | Output only. The state of the image import. |
| `steps` | `array<ImageImportStep>` | Output only. The image import steps list representing its progress. |
| `warnings` | `array<MigrationWarning>` | Output only. Warnings that occurred during the image import. |

### `ImageImportOsAdaptationParameters`

Parameters affecting the OS adaptation process.

| Property | Type | Description |
|----------|------|-------------|
| `adaptationModifiers` | `array<AdaptationModifier>` | Optional. Modifiers to be used as configuration of the OS adaptation process. |
| `bootConversion` | `string` | Optional. By default the image will keep its existing boot option. Setting this property will tri... |
| `generalize` | `boolean` | Optional. Set to true in order to generalize the imported image. The generalization process enabl... |
| `licenseType` | `string` | Optional. Choose which type of license to apply to the imported image. |

### `ImageImportStep`

ImageImportStep holds information about the image import step progress.

| Property | Type | Description |
|----------|------|-------------|
| `adaptingOs` | `AdaptingOSStep` | Adapting OS step. |
| `creatingImage` | `CreatingImageStep` | Creating image step. |
| `endTime` | `string` | Output only. The time the step has ended. |
| `initializing` | `InitializingImageImportStep` | Initializing step. |
| `loadingSourceFiles` | `LoadingImageSourceFilesStep` | Loading source files step. |
| `startTime` | `string` | Output only. The time the step has started. |

### `InitializingImageImportStep`

InitializingImageImportStep contains specific step details.

### `InitializingReplicationStep`

InitializingReplicationStep contains specific step details.

### `InstantiatingMigratedVMStep`

InstantiatingMigratedVMStep contains specific step details.

### `Link`

Describes a URL link.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Describes what the link offers. |
| `url` | `string` | The URL of the link. |

### `ListCloneJobsResponse`

Response message for 'ListCloneJobs' request.

| Property | Type | Description |
|----------|------|-------------|
| `cloneJobs` | `array<CloneJob>` | Output only. The list of clone jobs response. |
| `nextPageToken` | `string` | Output only. A token, which can be sent as `page_token` to retrieve the next page. If this field ... |
| `unreachable` | `array<string>` | Output only. Locations that could not be reached. |

### `ListCutoverJobsResponse`

Response message for 'ListCutoverJobs' request.

| Property | Type | Description |
|----------|------|-------------|
| `cutoverJobs` | `array<CutoverJob>` | Output only. The list of cutover jobs response. |
| `nextPageToken` | `string` | Output only. A token, which can be sent as `page_token` to retrieve the next page. If this field ... |
| `unreachable` | `array<string>` | Output only. Locations that could not be reached. |

### `ListDatacenterConnectorsResponse`

Response message for 'ListDatacenterConnectors' request.

| Property | Type | Description |
|----------|------|-------------|
| `datacenterConnectors` | `array<DatacenterConnector>` | Output only. The list of sources response. |
| `nextPageToken` | `string` | Output only. A token, which can be sent as `page_token` to retrieve the next page. If this field ... |
| `unreachable` | `array<string>` | Output only. Locations that could not be reached. |

### `ListDiskMigrationJobsResponse`

Response message for 'ListDiskMigrationJobs' request.

| Property | Type | Description |
|----------|------|-------------|
| `diskMigrationJobs` | `array<DiskMigrationJob>` | Output only. The list of the disk migration jobs. |
| `nextPageToken` | `string` | Optional. Output only. A token, which can be sent as `page_token` to retrieve the next page. If t... |
| `unreachable` | `array<string>` | Output only. Locations that could not be reached. |

### `ListGroupsResponse`

Response message for 'ListGroups' request.

| Property | Type | Description |
|----------|------|-------------|
| `groups` | `array<Group>` | Output only. The list of groups response. |
| `nextPageToken` | `string` | Output only. A token, which can be sent as `page_token` to retrieve the next page. If this field ... |
| `unreachable` | `array<string>` | Output only. Locations that could not be reached. |

### `ListImageImportJobsResponse`

Response message for 'ListImageImportJobs' call.

| Property | Type | Description |
|----------|------|-------------|
| `imageImportJobs` | `array<ImageImportJob>` | Output only. The list of target response. |
| `nextPageToken` | `string` | Output only. A token, which can be sent as `page_token` to retrieve the next page. If this field ... |
| `unreachable` | `array<string>` | Output only. Locations that could not be reached. |

### `ListImageImportsResponse`

Response message for 'ListImageImports' call.

| Property | Type | Description |
|----------|------|-------------|
| `imageImports` | `array<ImageImport>` | Output only. The list of target response. |
| `nextPageToken` | `string` | Output only. A token, which can be sent as `page_token` to retrieve the next page. If this field ... |
| `unreachable` | `array<string>` | Output only. Locations that could not be reached. |

### `ListLocationsResponse`

The response message for Locations.ListLocations.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<Location>` | A list of locations that matches the specified filter in the request. |
| `nextPageToken` | `string` | The standard List next-page token. |

### `ListMigratingVmsResponse`

Response message for 'ListMigratingVms' request.

| Property | Type | Description |
|----------|------|-------------|
| `migratingVms` | `array<MigratingVm>` | Output only. The list of Migrating VMs response. |
| `nextPageToken` | `string` | Output only. A token, which can be sent as `page_token` to retrieve the next page. If this field ... |
| `unreachable` | `array<string>` | Output only. Locations that could not be reached. |

### `ListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<Operation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `ListReplicationCyclesResponse`

Response message for 'ListReplicationCycles' request.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Output only. A token, which can be sent as `page_token` to retrieve the next page. If this field ... |
| `replicationCycles` | `array<ReplicationCycle>` | Output only. The list of replication cycles response. |
| `unreachable` | `array<string>` | Output only. Locations that could not be reached. |

### `ListSourcesResponse`

Response message for 'ListSources' request.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Output only. A token, which can be sent as `page_token` to retrieve the next page. If this field ... |
| `sources` | `array<Source>` | Output only. The list of sources response. |
| `unreachable` | `array<string>` | Output only. Locations that could not be reached. |

### `ListTargetProjectsResponse`

Response message for 'ListTargetProjects' call.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Output only. A token, which can be sent as `page_token` to retrieve the next page. If this field ... |
| `targetProjects` | `array<TargetProject>` | Output only. The list of target response. |
| `unreachable` | `array<string>` | Output only. Locations that could not be reached. |

### `ListUtilizationReportsResponse`

Response message for 'ListUtilizationReports' request.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Output only. A token, which can be sent as `page_token` to retrieve the next page. If this field ... |
| `unreachable` | `array<string>` | Output only. Locations that could not be reached. |
| `utilizationReports` | `array<UtilizationReport>` | Output only. The list of reports. |

### `LoadingImageSourceFilesStep`

LoadingImageSourceFilesStep contains specific step details.

### `LocalizedMessage`

Provides a localized error message that is safe to return to the user which can be attached to an RPC error.

| Property | Type | Description |
|----------|------|-------------|
| `locale` | `string` | The locale used following the specification defined at https://www.rfc-editor.org/rfc/bcp/bcp47.t... |
| `message` | `string` | The localized error message in the above locale. |

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `MachineImageParametersOverrides`

Parameters overriding decisions based on the source machine image configurations.

| Property | Type | Description |
|----------|------|-------------|
| `machineType` | `string` | Optional. The machine type to create the MachineImage with. If empty, the service will choose a r... |

### `MachineImageTargetDetails`

The target details of the machine image resource that will be created by the image import job.

| Property | Type | Description |
|----------|------|-------------|
| `additionalLicenses` | `array<string>` | Optional. Additional licenses to assign to the instance created by the machine image. Format: htt... |
| `description` | `string` | Optional. An optional description of the machine image. |
| `encryption` | `Encryption` | Immutable. The encryption to apply to the machine image. If the Image Import resource has an encr... |
| `labels` | `object` | Optional. The labels to apply to the instance created by the machine image. |
| `machineImageName` | `string` | Required. The name of the machine image to be created. |
| `machineImageParametersOverrides` | `MachineImageParametersOverrides` | Optional. Parameters overriding decisions based on the source machine image configurations. |
| `networkInterfaces` | `array<NetworkInterface>` | Optional. The network interfaces to create with the instance created by the machine image. Intern... |
| `osAdaptationParameters` | `ImageImportOsAdaptationParameters` | Optional. Use to set the parameters relevant for the OS adaptation process. |
| `serviceAccount` | `ServiceAccount` | Optional. The service account to assign to the instance created by the machine image. |
| `shieldedInstanceConfig` | `ShieldedInstanceConfig` | Optional. Shielded instance configuration. |
| `singleRegionStorage` | `boolean` | Optional. Set to true to set the machine image storageLocations to the single region of the impor... |
| `skipOsAdaptation` | `SkipOsAdaptation` | Optional. Use to skip OS adaptation process. |
| `tags` | `array<string>` | Optional. The tags to apply to the instance created by the machine image. |
| `targetProject` | `string` | Required. Reference to the TargetProject resource that represents the target project in which the... |

### `MigratingVm`

MigratingVm describes the VM that will be migrated from a Source environment and its replication state.

| Property | Type | Description |
|----------|------|-------------|
| `awsSourceVmDetails` | `AwsSourceVmDetails` | Output only. Details of the VM from an AWS source. |
| `azureSourceVmDetails` | `AzureSourceVmDetails` | Output only. Details of the VM from an Azure source. |
| `computeEngineDisksTargetDefaults` | `ComputeEngineDisksTargetDefaults` | Details of the target Persistent Disks in Compute Engine. |
| `computeEngineTargetDefaults` | `ComputeEngineTargetDefaults` | Details of the target VM in Compute Engine. |
| `createTime` | `string` | Output only. The time the migrating VM was created (this refers to this resource and not to the t... |
| `currentSyncInfo` | `ReplicationCycle` | Output only. Details of the current running replication cycle. |
| `cutoverForecast` | `CutoverForecast` | Output only. Provides details of future CutoverJobs of a MigratingVm. Set to empty when cutover f... |
| `description` | `string` | The description attached to the migrating VM by the user. |
| `displayName` | `string` | The display name attached to the MigratingVm by the user. |
| `error` | `Status` | Output only. Provides details on the state of the Migrating VM in case of an error in replication. |
| `expiration` | `Expiration` | Output only. Provides details about the expiration state of the migrating VM. |
| `group` | `string` | Output only. The group this migrating vm is included in, if any. The group is represented by the ... |
| `labels` | `object` | The labels of the migrating VM. |
| `lastReplicationCycle` | `ReplicationCycle` | Output only. Details of the last replication cycle. This will be updated whenever a replication c... |
| `lastSync` | `ReplicationSync` | Output only. The most updated snapshot created time in the source that finished replication. |
| `name` | `string` | Output only. The identifier of the MigratingVm. |
| `policy` | `SchedulePolicy` | The replication schedule policy. |
| `recentCloneJobs` | `array<CloneJob>` | Output only. The recent clone jobs performed on the migrating VM. This field holds the vm's last ... |
| `recentCutoverJobs` | `array<CutoverJob>` | Output only. The recent cutover jobs performed on the migrating VM. This field holds the vm's las... |
| `sourceVmId` | `string` | The unique ID of the VM in the source. The VM's name in vSphere can be changed, so this is not th... |
| `state` | `string` | Output only. State of the MigratingVm. |
| `stateTime` | `string` | Output only. The last time the migrating VM state was updated. |
| `updateTime` | `string` | Output only. The last time the migrating VM resource was updated. |
| `vmwareSourceVmDetails` | `VmwareSourceVmDetails` | Output only. Details of the VM from a Vmware source. |

### `MigrationError`

Represents migration resource error information that can be used with google.rpc.Status message. MigrationError is used to present the user with error information in migration operations.

| Property | Type | Description |
|----------|------|-------------|
| `actionItem` | `LocalizedMessage` | Output only. Suggested action for solving the error. |
| `code` | `string` | Output only. The error code. |
| `errorMessage` | `LocalizedMessage` | Output only. The localized error message. |
| `errorTime` | `string` | Output only. The time the error occurred. |
| `helpLinks` | `array<Link>` | Output only. URL(s) pointing to additional information on handling the current error. |

### `MigrationWarning`

Represents migration resource warning information that can be used with google.rpc.Status message. MigrationWarning is used to present the user with warning information in migration operations.

| Property | Type | Description |
|----------|------|-------------|
| `actionItem` | `LocalizedMessage` | Output only. Suggested action for solving the warning. |
| `code` | `string` | The warning code. |
| `helpLinks` | `array<Link>` | Output only. URL(s) pointing to additional information on handling the current warning. |
| `warningMessage` | `LocalizedMessage` | Output only. The localized warning message. |
| `warningTime` | `string` | The time the warning occurred. |

### `NetworkInterface`

NetworkInterface represents a NIC of a VM.

| Property | Type | Description |
|----------|------|-------------|
| `externalIp` | `string` | Optional. The external IP to define in the NIC. |
| `internalIp` | `string` | Optional. The internal IP to define in the NIC. The formats accepted are: `ephemeral` \ ipv4 addr... |
| `network` | `string` | Optional. The network to connect the NIC to. |
| `networkTier` | `string` | Optional. The networking tier used for optimizing connectivity between instances and systems on t... |
| `subnetwork` | `string` | Optional. The subnetwork to connect the NIC to. |

### `OSDescription`

A message describing the VM's OS. Including OS, Publisher, Offer and Plan if applicable.

| Property | Type | Description |
|----------|------|-------------|
| `offer` | `string` | OS offer. |
| `plan` | `string` | OS plan. |
| `publisher` | `string` | OS publisher. |
| `type` | `string` | OS type. |

### `OSDisk`

A message describing the OS disk.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The disk's full name. |
| `sizeGb` | `integer` | The disk's size in GB. |
| `type` | `string` | The disk's type. |

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

### `PauseMigrationRequest`

Request message for 'PauseMigration' request.

### `PersistentDisk`

Details of a created Persistent Disk.

| Property | Type | Description |
|----------|------|-------------|
| `diskUri` | `string` | The URI of the Persistent Disk. |
| `sourceDiskNumber` | `integer` | The ordinal number of the source VM disk. |

### `PersistentDiskDefaults`

Details for creation of a Persistent Disk.

| Property | Type | Description |
|----------|------|-------------|
| `additionalLabels` | `object` | A map of labels to associate with the Persistent Disk. |
| `diskName` | `string` | Optional. The name of the Persistent Disk to create. |
| `diskType` | `string` | The disk type to use. |
| `encryption` | `Encryption` | Optional. The encryption to apply to the disk. |
| `sourceDiskNumber` | `integer` | Required. The ordinal number of the source VM disk. |
| `vmAttachmentDetails` | `VmAttachmentDetails` | Optional. Details for attachment of the disk to a VM. Used when the disk is set to be attached to... |

### `PostProcessingStep`

PostProcessingStep contains specific step details.

### `PreparingVMDisksStep`

PreparingVMDisksStep contains specific step details.

### `ProvisioningTargetDiskStep`

ProvisioningTargetDiskStep contains specific step details.

### `RemoveGroupMigrationRequest`

Request message for 'RemoveMigration' request.

| Property | Type | Description |
|----------|------|-------------|
| `migratingVm` | `string` | The MigratingVm to remove. |

### `ReplicatingStep`

ReplicatingStep contains specific step details.

| Property | Type | Description |
|----------|------|-------------|
| `lastThirtyMinutesAverageBytesPerSecond` | `string` | The source disks replication rate for the last 30 minutes in bytes per second. |
| `lastTwoMinutesAverageBytesPerSecond` | `string` | The source disks replication rate for the last 2 minutes in bytes per second. |
| `replicatedBytes` | `string` | Replicated bytes in the step. |
| `totalBytes` | `string` | Total bytes to be handled in the step. |

### `ReplicationCycle`

ReplicationCycle contains information about the current replication cycle status.

| Property | Type | Description |
|----------|------|-------------|
| `cycleNumber` | `integer` | The cycle's ordinal number. |
| `endTime` | `string` | The time the replication cycle has ended. |
| `error` | `Status` | Output only. Provides details on the state of the cycle in case of an error. |
| `name` | `string` | The identifier of the ReplicationCycle. |
| `progressPercent` | `integer` | The current progress in percentage of this cycle. Was replaced by 'steps' field, which breaks dow... |
| `startTime` | `string` | The time the replication cycle has started. |
| `state` | `string` | State of the ReplicationCycle. |
| `steps` | `array<CycleStep>` | The cycle's steps list representing its progress. |
| `totalPauseDuration` | `string` | The accumulated duration the replication cycle was paused. |
| `warnings` | `array<MigrationWarning>` | Output only. Warnings that occurred during the cycle. |

### `ReplicationSync`

ReplicationSync contain information about the last replica sync to the cloud.

| Property | Type | Description |
|----------|------|-------------|
| `lastSyncTime` | `string` | The most updated snapshot created time in the source that finished replication. |

### `ResumeMigrationRequest`

Request message for 'ResumeMigration' request.

### `RunDiskMigrationJobRequest`

Request message for 'RunDiskMigrationJobRequest' request.

### `SchedulePolicy`

A policy for scheduling replications.

| Property | Type | Description |
|----------|------|-------------|
| `idleDuration` | `string` | The idle duration between replication stages. |
| `skipOsAdaptation` | `boolean` | A flag to indicate whether to skip OS adaptation during the replication sync. OS adaptation is a ... |

### `SchedulingNodeAffinity`

Node Affinity: the configuration of desired nodes onto which this Instance could be scheduled. Based on https://cloud.google.com/compute/docs/reference/rest/v1/instances/setScheduling

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | The label key of Node resource to reference. |
| `operator` | `string` | The operator to use for the node resources specified in the `values` parameter. |
| `values` | `array<string>` | Corresponds to the label values of Node resource. |

### `ServiceAccount`

Service account to assign to the instance created by the machine image.

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | Required. The email address of the service account. |
| `scopes` | `array<string>` | Optional. The list of scopes to be made available for this service account. |

### `ShieldedInstanceConfig`

Shielded instance configuration.

| Property | Type | Description |
|----------|------|-------------|
| `enableIntegrityMonitoring` | `boolean` | Optional. Defines whether the instance created by the machine image has integrity monitoring enab... |
| `enableVtpm` | `boolean` | Optional. Defines whether the instance created by the machine image has vTPM enabled. This can be... |
| `secureBoot` | `string` | Optional. Defines whether the instance created by the machine image has Secure Boot enabled. This... |

### `ShuttingDownSourceVMStep`

ShuttingDownSourceVMStep contains specific step details.

### `SkipOsAdaptation`

Mentions that the machine image import is not using OS adaptation process.

### `Source`

Source message describes a specific vm migration Source resource. It contains the source environment information.

| Property | Type | Description |
|----------|------|-------------|
| `aws` | `AwsSourceDetails` | AWS type source details. |
| `azure` | `AzureSourceDetails` | Azure type source details. |
| `createTime` | `string` | Output only. The create time timestamp. |
| `description` | `string` | User-provided description of the source. |
| `encryption` | `Encryption` | Optional. Immutable. The encryption details of the source data stored by the service. |
| `labels` | `object` | The labels of the source. |
| `name` | `string` | Output only. The Source name. |
| `updateTime` | `string` | Output only. The update time timestamp. |
| `vmware` | `VmwareSourceDetails` | Vmware type source details. |

### `SourceStorageResource`

SourceStorageResource describes a storage resource in the source.

| Property | Type | Description |
|----------|------|-------------|
| `awsDiskDetails` | `AwsSourceDiskDetails` | Source AWS volume details. |

### `StartMigrationRequest`

Request message for 'StartMigrationRequest' request.

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `Tag`

Tag is an AWS tag representation.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | Required. Key of tag. |
| `value` | `string` | Required. Value of tag. |

### `TargetProject`

TargetProject message represents a target Compute Engine project for a migration or a clone.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time this target project resource was created (not related to when the Compute E... |
| `description` | `string` | The target project's description. |
| `name` | `string` | Output only. The name of the target project. |
| `project` | `string` | Required. The target project ID (number) or project name. |
| `updateTime` | `string` | Output only. The last time the target project resource was updated. |

### `UpgradeApplianceRequest`

Request message for 'UpgradeAppliance' request.

| Property | Type | Description |
|----------|------|-------------|
| `requestId` | `string` | A request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

### `UpgradeStatus`

UpgradeStatus contains information about upgradeAppliance operation.

| Property | Type | Description |
|----------|------|-------------|
| `error` | `Status` | Output only. Provides details on the state of the upgrade operation in case of an error. |
| `previousVersion` | `string` | The version from which we upgraded. |
| `startTime` | `string` | The time the operation was started. |
| `state` | `string` | The state of the upgradeAppliance operation. |
| `version` | `string` | The version to upgrade to. |

### `UtilizationReport`

Utilization report details the utilization (CPU, memory, etc.) of selected source VMs.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the report was created (this refers to the time of the request, not the tim... |
| `displayName` | `string` | The report display name, as assigned by the user. |
| `error` | `Status` | Output only. Provides details on the state of the report in case of an error. |
| `frameEndTime` | `string` | Output only. The point in time when the time frame ends. Notice that the time frame is counted ba... |
| `name` | `string` | Output only. The report unique name. |
| `state` | `string` | Output only. Current state of the report. |
| `stateTime` | `string` | Output only. The time the state was last set. |
| `timeFrame` | `string` | Time frame of the report. |
| `vmCount` | `integer` | Output only. Total number of VMs included in the report. |
| `vms` | `array<VmUtilizationInfo>` | List of utilization information per VM. When sent as part of the request, the "vm_id" field is us... |

### `VmAttachmentDetails`

Details for attachment of the disk to a VM.

| Property | Type | Description |
|----------|------|-------------|
| `deviceName` | `string` | Optional. Specifies a unique device name of your choice that is reflected into the /dev/disk/by-i... |

### `VmCapabilities`

Migrating VM source information about the VM capabilities needed for some Compute Engine features.

| Property | Type | Description |
|----------|------|-------------|
| `lastOsCapabilitiesUpdateTime` | `string` | Output only. The last time OS capabilities list was updated. |
| `osCapabilities` | `array<string>` | Output only. Unordered list. List of certain VM OS capabilities needed for some Compute Engine fe... |

### `VmUtilizationInfo`

Utilization information of a single VM.

| Property | Type | Description |
|----------|------|-------------|
| `utilization` | `VmUtilizationMetrics` | Utilization metrics for this VM. |
| `vmId` | `string` | The VM's ID in the source. |
| `vmwareVmDetails` | `VmwareVmDetails` | The description of the VM in a Source of type Vmware. |

### `VmUtilizationMetrics`

Utilization metrics values for a single VM.

| Property | Type | Description |
|----------|------|-------------|
| `cpuAveragePercent` | `integer` | Average CPU usage, percent. |
| `cpuMaxPercent` | `integer` | Max CPU usage, percent. |
| `diskIoRateAverageKbps` | `string` | Average disk IO rate, in kilobytes per second. |
| `diskIoRateMaxKbps` | `string` | Max disk IO rate, in kilobytes per second. |
| `memoryAveragePercent` | `integer` | Average memory usage, percent. |
| `memoryMaxPercent` | `integer` | Max memory usage, percent. |
| `networkThroughputAverageKbps` | `string` | Average network throughput (combined transmit-rates and receive-rates), in kilobytes per second. |
| `networkThroughputMaxKbps` | `string` | Max network throughput (combined transmit-rates and receive-rates), in kilobytes per second. |

### `VmwareDiskDetails`

The details of a Vmware VM disk.

| Property | Type | Description |
|----------|------|-------------|
| `diskNumber` | `integer` | Output only. The ordinal number of the disk. |
| `label` | `string` | Output only. The disk label. |
| `sizeGb` | `string` | Output only. Size in GB. |

### `VmwareSourceDetails`

VmwareSourceDetails message describes a specific source details for the vmware source type.

| Property | Type | Description |
|----------|------|-------------|
| `password` | `string` | Input only. The credentials password. This is write only and can not be read in a GET operation. |
| `resolvedVcenterHost` | `string` | The hostname of the vcenter. |
| `thumbprint` | `string` | The thumbprint representing the certificate for the vcenter. |
| `username` | `string` | The credentials username. |
| `vcenterIp` | `string` | The ip address of the vcenter this Source represents. |

### `VmwareSourceVmDetails`

Represent the source Vmware VM details.

| Property | Type | Description |
|----------|------|-------------|
| `architecture` | `string` | Output only. The VM architecture. |
| `committedStorageBytes` | `string` | Output only. The total size of the disks being migrated in bytes. |
| `disks` | `array<VmwareDiskDetails>` | Output only. The disks attached to the source VM. |
| `firmware` | `string` | Output only. The firmware type of the source VM. |
| `vmCapabilitiesInfo` | `VmCapabilities` | Output only. Information about VM capabilities needed for some Compute Engine features. |

### `VmwareVmDetails`

VmwareVmDetails describes a VM in vCenter.

| Property | Type | Description |
|----------|------|-------------|
| `architecture` | `string` | Output only. The CPU architecture. |
| `bootOption` | `string` | Output only. The VM Boot Option. |
| `committedStorageMb` | `string` | The total size of the storage allocated to the VM in MB. |
| `cpuCount` | `integer` | The number of cpus in the VM. |
| `datacenterDescription` | `string` | The descriptive name of the vCenter's datacenter this VM is contained in. |
| `datacenterId` | `string` | The id of the vCenter's datacenter this VM is contained in. |
| `diskCount` | `integer` | The number of disks the VM has. |
| `displayName` | `string` | The display name of the VM. Note that this is not necessarily unique. |
| `guestDescription` | `string` | The VM's OS. See for example https://vdc-repo.vmware.com/vmwb-repository/dcr-public/da47f910-60ac... |
| `memoryMb` | `integer` | The size of the memory of the VM in MB. |
| `powerState` | `string` | The power state of the VM at the moment list was taken. |
| `uuid` | `string` | The unique identifier of the VM in vCenter. |
| `vmId` | `string` | The VM's id in the source (note that this is not the MigratingVm's id). This is the moref id of t... |

### `VmwareVmsDetails`

VmwareVmsDetails describes VMs in vCenter.

| Property | Type | Description |
|----------|------|-------------|
| `details` | `array<VmwareVmDetails>` | The details of the vmware VMs. |

