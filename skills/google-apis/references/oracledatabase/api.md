# Oracle Database@Google Cloud API - API Reference

**Version**: `v1` | **Methods**: 65 | **Schemas**: 105

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `oracledatabase.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `oracledatabase.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `oracledatabase.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `oracledatabase.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `oracledatabase.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `oracledatabase.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `oracledatabase.projects.locations.cloudExadataInfrastructures.list` | GET | `v1/{+parent}/cloudExadataInfrastructures` | Lists Exadata Infrastructures in a given project and location. |
| `oracledatabase.projects.locations.cloudExadataInfrastructures.get` | GET | `v1/{+name}` | Gets details of a single Exadata Infrastructure. |
| `oracledatabase.projects.locations.cloudExadataInfrastructures.create` | POST | `v1/{+parent}/cloudExadataInfrastructures` | Creates a new Exadata Infrastructure in a given project and location. |
| `oracledatabase.projects.locations.cloudExadataInfrastructures.delete` | DELETE | `v1/{+name}` | Deletes a single Exadata Infrastructure. |
| `oracledatabase.projects.locations.cloudExadataInfrastructures.dbServers.list` | GET | `v1/{+parent}/dbServers` | Lists the database servers of an Exadata Infrastructure instance. |
| `oracledatabase.projects.locations.cloudVmClusters.list` | GET | `v1/{+parent}/cloudVmClusters` | Lists the VM Clusters in a given project and location. |
| `oracledatabase.projects.locations.cloudVmClusters.get` | GET | `v1/{+name}` | Gets details of a single VM Cluster. |
| `oracledatabase.projects.locations.cloudVmClusters.create` | POST | `v1/{+parent}/cloudVmClusters` | Creates a new VM Cluster in a given project and location. |
| `oracledatabase.projects.locations.cloudVmClusters.delete` | DELETE | `v1/{+name}` | Deletes a single VM Cluster. |
| `oracledatabase.projects.locations.cloudVmClusters.dbNodes.list` | GET | `v1/{+parent}/dbNodes` | Lists the database nodes of a VM Cluster. |
| `oracledatabase.projects.locations.entitlements.list` | GET | `v1/{+parent}/entitlements` | Lists the entitlements in a given project. |
| `oracledatabase.projects.locations.giVersions.list` | GET | `v1/{+parent}/giVersions` | Lists all the valid Oracle Grid Infrastructure (GI) versions for the given project and location. |
| `oracledatabase.projects.locations.giVersions.minorVersions.list` | GET | `v1/{+parent}/minorVersions` | Lists all the valid minor versions for the given project, location, gi version and shape family. |
| `oracledatabase.projects.locations.dbSystemShapes.list` | GET | `v1/{+parent}/dbSystemShapes` | Lists the database system shapes available for the project and location. |
| `oracledatabase.projects.locations.autonomousDatabases.list` | GET | `v1/{+parent}/autonomousDatabases` | Lists the Autonomous Databases in a given project and location. |
| `oracledatabase.projects.locations.autonomousDatabases.get` | GET | `v1/{+name}` | Gets the details of a single Autonomous Database. |
| `oracledatabase.projects.locations.autonomousDatabases.create` | POST | `v1/{+parent}/autonomousDatabases` | Creates a new Autonomous Database in a given project and location. |
| `oracledatabase.projects.locations.autonomousDatabases.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single Autonomous Database. |
| `oracledatabase.projects.locations.autonomousDatabases.delete` | DELETE | `v1/{+name}` | Deletes a single Autonomous Database. |
| `oracledatabase.projects.locations.autonomousDatabases.restore` | POST | `v1/{+name}:restore` | Restores a single Autonomous Database. |
| `oracledatabase.projects.locations.autonomousDatabases.generateWallet` | POST | `v1/{+name}:generateWallet` | Generates a wallet for an Autonomous Database. |
| `oracledatabase.projects.locations.autonomousDatabases.stop` | POST | `v1/{+name}:stop` | Stops an Autonomous Database. |
| `oracledatabase.projects.locations.autonomousDatabases.start` | POST | `v1/{+name}:start` | Starts an Autonomous Database. |
| `oracledatabase.projects.locations.autonomousDatabases.restart` | POST | `v1/{+name}:restart` | Restarts an Autonomous Database. |
| `oracledatabase.projects.locations.autonomousDatabases.switchover` | POST | `v1/{+name}:switchover` | Initiates a switchover of specified autonomous database to the associated peer database. |
| `oracledatabase.projects.locations.autonomousDatabases.failover` | POST | `v1/{+name}:failover` | Initiates a failover to target autonomous database from the associated primary database. |
| `oracledatabase.projects.locations.autonomousDbVersions.list` | GET | `v1/{+parent}/autonomousDbVersions` | Lists all the available Autonomous Database versions for a project and location. |
| `oracledatabase.projects.locations.autonomousDatabaseCharacterSets.list` | GET | `v1/{+parent}/autonomousDatabaseCharacterSets` | Lists Autonomous Database Character Sets in a given project and location. |
| `oracledatabase.projects.locations.autonomousDatabaseBackups.list` | GET | `v1/{+parent}/autonomousDatabaseBackups` | Lists the long-term and automatic backups of an Autonomous Database. |
| `oracledatabase.projects.locations.odbNetworks.list` | GET | `v1/{+parent}/odbNetworks` | Lists the ODB Networks in a given project and location. |
| `oracledatabase.projects.locations.odbNetworks.get` | GET | `v1/{+name}` | Gets details of a single ODB Network. |
| `oracledatabase.projects.locations.odbNetworks.create` | POST | `v1/{+parent}/odbNetworks` | Creates a new ODB Network in a given project and location. |
| `oracledatabase.projects.locations.odbNetworks.delete` | DELETE | `v1/{+name}` | Deletes a single ODB Network. |
| `oracledatabase.projects.locations.odbNetworks.odbSubnets.list` | GET | `v1/{+parent}/odbSubnets` | Lists all the ODB Subnets in a given ODB Network. |
| `oracledatabase.projects.locations.odbNetworks.odbSubnets.get` | GET | `v1/{+name}` | Gets details of a single ODB Subnet. |
| `oracledatabase.projects.locations.odbNetworks.odbSubnets.create` | POST | `v1/{+parent}/odbSubnets` | Creates a new ODB Subnet in a given ODB Network. |
| `oracledatabase.projects.locations.odbNetworks.odbSubnets.delete` | DELETE | `v1/{+name}` | Deletes a single ODB Subnet. |
| `oracledatabase.projects.locations.exadbVmClusters.list` | GET | `v1/{+parent}/exadbVmClusters` | Lists all the Exadb (Exascale) VM Clusters for the given project and location. |
| `oracledatabase.projects.locations.exadbVmClusters.get` | GET | `v1/{+name}` | Gets details of a single Exadb (Exascale) VM Cluster. |
| `oracledatabase.projects.locations.exadbVmClusters.create` | POST | `v1/{+parent}/exadbVmClusters` | Creates a new Exadb (Exascale) VM Cluster resource. |
| `oracledatabase.projects.locations.exadbVmClusters.delete` | DELETE | `v1/{+name}` | Deletes a single Exadb (Exascale) VM Cluster. |
| `oracledatabase.projects.locations.exadbVmClusters.patch` | PATCH | `v1/{+name}` | Updates a single Exadb (Exascale) VM Cluster. To add virtual machines to existing exadb vm cluste... |
| `oracledatabase.projects.locations.exadbVmClusters.removeVirtualMachine` | POST | `v1/{+name}:removeVirtualMachine` | Removes virtual machines from an existing exadb vm cluster. |
| `oracledatabase.projects.locations.exadbVmClusters.dbNodes.list` | GET | `v1/{+parent}/dbNodes` | Lists the database nodes of a VM Cluster. |
| `oracledatabase.projects.locations.exascaleDbStorageVaults.list` | GET | `v1/{+parent}/exascaleDbStorageVaults` | Lists all the ExascaleDB Storage Vaults for the given project and location. |
| `oracledatabase.projects.locations.exascaleDbStorageVaults.get` | GET | `v1/{+name}` | Gets details of a single ExascaleDB Storage Vault. |
| `oracledatabase.projects.locations.exascaleDbStorageVaults.create` | POST | `v1/{+parent}/exascaleDbStorageVaults` | Creates a new ExascaleDB Storage Vault resource. |
| `oracledatabase.projects.locations.exascaleDbStorageVaults.delete` | DELETE | `v1/{+name}` | Deletes a single ExascaleDB Storage Vault. |
| `oracledatabase.projects.locations.dbSystemInitialStorageSizes.list` | GET | `v1/{+parent}/dbSystemInitialStorageSizes` | Lists all the DbSystemInitialStorageSizes for the given project and location. |
| `oracledatabase.projects.locations.databases.list` | GET | `v1/{+parent}/databases` | Lists all the Databases for the given project, location and DbSystem. |
| `oracledatabase.projects.locations.databases.get` | GET | `v1/{+name}` | Gets details of a single Database. |
| `oracledatabase.projects.locations.pluggableDatabases.list` | GET | `v1/{+parent}/pluggableDatabases` | Lists all the PluggableDatabases for the given project, location and Container Database. |
| `oracledatabase.projects.locations.pluggableDatabases.get` | GET | `v1/{+name}` | Gets details of a single PluggableDatabase. |
| `oracledatabase.projects.locations.dbSystems.list` | GET | `v1/{+parent}/dbSystems` | Lists all the DbSystems for the given project and location. |
| `oracledatabase.projects.locations.dbSystems.get` | GET | `v1/{+name}` | Gets details of a single DbSystem. |
| `oracledatabase.projects.locations.dbSystems.create` | POST | `v1/{+parent}/dbSystems` | Creates a new DbSystem in a given project and location. |
| `oracledatabase.projects.locations.dbSystems.delete` | DELETE | `v1/{+name}` | Deletes a single DbSystem. |
| `oracledatabase.projects.locations.dbVersions.list` | GET | `v1/{+parent}/dbVersions` | List DbVersions for the given project and location. |
| `oracledatabase.projects.locations.databaseCharacterSets.list` | GET | `v1/{+parent}/databaseCharacterSets` | List DatabaseCharacterSets for the given project and location. |

### `oracledatabase.projects.locations.list`

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
const res = await oracledatabase.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await oracledatabase.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.operations.list`

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
const res = await oracledatabase.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await oracledatabase.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await oracledatabase.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await oracledatabase.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.cloudExadataInfrastructures.list`

**GET** `v1/{+parent}/cloudExadataInfrastructures`

Lists Exadata Infrastructures in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent value for CloudExadataInfrastructure in the following format: projects/{project}/locations/{loca... |
| `filter` | `string` | query | No | Optional. An expression for filtering the results of the request. |
| `orderBy` | `string` | query | No | Optional. An expression for ordering the results of the request. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of items to return. If unspecified, at most 50 Exadata infrastructures will be returned.... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListCloudExadataInfrastructuresResponse`

```typescript
const res = await oracledatabase.cloudExadataInfrastructures.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.cloudExadataInfrastructures.get`

**GET** `v1/{+name}`

Gets details of a single Exadata Infrastructure.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Cloud Exadata Infrastructure in the following format: projects/{project}/locations/{locatio... |

**Response**: `CloudExadataInfrastructure`

```typescript
const res = await oracledatabase.cloudExadataInfrastructures.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.cloudExadataInfrastructures.create`

**POST** `v1/{+parent}/cloudExadataInfrastructures`

Creates a new Exadata Infrastructure in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent value for CloudExadataInfrastructure in the following format: projects/{project}/locations/{loca... |
| `cloudExadataInfrastructureId` | `string` | query | No | Required. The ID of the Exadata Infrastructure to create. This value is restricted to (^[a-z]([a-z0-9-]{0,61}[a-z0-9]... |
| `requestId` | `string` | query | No | Optional. An optional ID to identify the request. This value is used to identify duplicate requests. If you make a re... |

**Request body**: `CloudExadataInfrastructure`

**Response**: `Operation`

```typescript
const res = await oracledatabase.cloudExadataInfrastructures.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.cloudExadataInfrastructures.delete`

**DELETE** `v1/{+name}`

Deletes a single Exadata Infrastructure.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Cloud Exadata Infrastructure in the following format: projects/{project}/locations/{locatio... |
| `force` | `boolean` | query | No | Optional. If set to true, all VM clusters for this Exadata Infrastructure will be deleted. An Exadata Infrastructure ... |
| `requestId` | `string` | query | No | Optional. An optional ID to identify the request. This value is used to identify duplicate requests. If you make a re... |

**Response**: `Operation`

```typescript
const res = await oracledatabase.cloudExadataInfrastructures.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.cloudExadataInfrastructures.dbServers.list`

**GET** `v1/{+parent}/dbServers`

Lists the database servers of an Exadata Infrastructure instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent value for database server in the following format: projects/{project}/locations/{location}/cloud... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of items to return. If unspecified, a maximum of 50 db servers will be returned. The max... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListDbServersResponse`

```typescript
const res = await oracledatabase.dbServers.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.cloudVmClusters.list`

**GET** `v1/{+parent}/cloudVmClusters`

Lists the VM Clusters in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent in the following format: projects/{project}/locations/{location}. |
| `filter` | `string` | query | No | Optional. An expression for filtering the results of the request. |
| `pageSize` | `integer` | query | No | Optional. The number of VM clusters to return. If unspecified, at most 50 VM clusters will be returned. The maximum v... |
| `pageToken` | `string` | query | No | Optional. A token identifying the page of results the server returns. |

**Response**: `ListCloudVmClustersResponse`

```typescript
const res = await oracledatabase.cloudVmClusters.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.cloudVmClusters.get`

**GET** `v1/{+name}`

Gets details of a single VM Cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Cloud VM Cluster in the following format: projects/{project}/locations/{location}/cloudVmCl... |

**Response**: `CloudVmCluster`

```typescript
const res = await oracledatabase.cloudVmClusters.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.cloudVmClusters.create`

**POST** `v1/{+parent}/cloudVmClusters`

Creates a new VM Cluster in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent in the following format: projects/{project}/locations/{location}. |
| `cloudVmClusterId` | `string` | query | No | Required. The ID of the VM Cluster to create. This value is restricted to (^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$) and mus... |
| `requestId` | `string` | query | No | Optional. An optional ID to identify the request. This value is used to identify duplicate requests. If you make a re... |

**Request body**: `CloudVmCluster`

**Response**: `Operation`

```typescript
const res = await oracledatabase.cloudVmClusters.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.cloudVmClusters.delete`

**DELETE** `v1/{+name}`

Deletes a single VM Cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Cloud VM Cluster in the following format: projects/{project}/locations/{location}/cloudVmCl... |
| `force` | `boolean` | query | No | Optional. If set to true, all child resources for the VM Cluster will be deleted. A VM Cluster can only be deleted on... |
| `requestId` | `string` | query | No | Optional. An optional ID to identify the request. This value is used to identify duplicate requests. If you make a re... |

**Response**: `Operation`

```typescript
const res = await oracledatabase.cloudVmClusters.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.cloudVmClusters.dbNodes.list`

**GET** `v1/{+parent}/dbNodes`

Lists the database nodes of a VM Cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent value for database node in the following format: projects/{project}/locations/{location}/cloudVm... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of items to return. If unspecified, at most 50 db nodes will be returned. The maximum va... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the node should return. |

**Response**: `ListDbNodesResponse`

```typescript
const res = await oracledatabase.dbNodes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.entitlements.list`

**GET** `v1/{+parent}/entitlements`

Lists the entitlements in a given project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent value for the entitlement in the following format: projects/{project}/locations/{location}. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of items to return. If unspecified, a maximum of 50 entitlements will be returned. The m... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListEntitlementsResponse`

```typescript
const res = await oracledatabase.entitlements.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.giVersions.list`

**GET** `v1/{+parent}/giVersions`

Lists all the valid Oracle Grid Infrastructure (GI) versions for the given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent value for Grid Infrastructure Version in the following format: Format: projects/{project}/locati... |
| `filter` | `string` | query | No | Optional. An expression for filtering the results of the request. Only the shape, gcp_oracle_zone and gi_version fiel... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of items to return. If unspecified, a maximum of 50 Oracle Grid Infrastructure (GI) vers... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListGiVersionsResponse`

```typescript
const res = await oracledatabase.giVersions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.giVersions.minorVersions.list`

**GET** `v1/{+parent}/minorVersions`

Lists all the valid minor versions for the given project, location, gi version and shape family.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent value for the MinorVersion resource with the format: projects/{project}/locations/{location}/giV... |
| `filter` | `string` | query | No | Optional. An expression for filtering the results of the request. Only shapeFamily and gcp_oracle_zone_id are support... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of items to return. If unspecified, a maximum of 50 System Versions will be returned. Th... |
| `pageToken` | `string` | query | No | Optional. A token identifying the requested page of results to return. All fields except the filter should remain the... |

**Response**: `ListMinorVersionsResponse`

```typescript
const res = await oracledatabase.minorVersions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.dbSystemShapes.list`

**GET** `v1/{+parent}/dbSystemShapes`

Lists the database system shapes available for the project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent value for Database System Shapes in the following format: projects/{project}/locations/{location}. |
| `filter` | `string` | query | No | Optional. An expression for filtering the results of the request. Only the gcp_oracle_zone_id field is supported in t... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of items to return. If unspecified, at most 50 database system shapes will be returned. ... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListDbSystemShapesResponse`

```typescript
const res = await oracledatabase.dbSystemShapes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.autonomousDatabases.list`

**GET** `v1/{+parent}/autonomousDatabases`

Lists the Autonomous Databases in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent value for the Autonomous Database in the following format: projects/{project}/locations/{location}. |
| `filter` | `string` | query | No | Optional. An expression for filtering the results of the request. |
| `orderBy` | `string` | query | No | Optional. An expression for ordering the results of the request. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of items to return. If unspecified, at most 50 Autonomous Database will be returned. The... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListAutonomousDatabasesResponse`

```typescript
const res = await oracledatabase.autonomousDatabases.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.autonomousDatabases.get`

**GET** `v1/{+name}`

Gets the details of a single Autonomous Database.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Autonomous Database in the following format: projects/{project}/locations/{location}/autono... |

**Response**: `AutonomousDatabase`

```typescript
const res = await oracledatabase.autonomousDatabases.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.autonomousDatabases.create`

**POST** `v1/{+parent}/autonomousDatabases`

Creates a new Autonomous Database in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the parent in the following format: projects/{project}/locations/{location}. |
| `autonomousDatabaseId` | `string` | query | No | Required. The ID of the Autonomous Database to create. This value is restricted to (^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$... |
| `requestId` | `string` | query | No | Optional. An optional ID to identify the request. This value is used to identify duplicate requests. If you make a re... |

**Request body**: `AutonomousDatabase`

**Response**: `Operation`

```typescript
const res = await oracledatabase.autonomousDatabases.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.autonomousDatabases.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single Autonomous Database.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The name of the Autonomous Database resource in the following format: projects/{project}/locations/{regio... |
| `requestId` | `string` | query | No | Optional. An optional ID to identify the request. This value is used to identify duplicate requests. If you make a re... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the Exadata resource by the update. The field... |

**Request body**: `AutonomousDatabase`

**Response**: `Operation`

```typescript
const res = await oracledatabase.autonomousDatabases.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.autonomousDatabases.delete`

**DELETE** `v1/{+name}`

Deletes a single Autonomous Database.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource in the following format: projects/{project}/locations/{location}/autonomousDatabas... |
| `requestId` | `string` | query | No | Optional. An optional ID to identify the request. This value is used to identify duplicate requests. If you make a re... |

**Response**: `Operation`

```typescript
const res = await oracledatabase.autonomousDatabases.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.autonomousDatabases.restore`

**POST** `v1/{+name}:restore`

Restores a single Autonomous Database.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Autonomous Database in the following format: projects/{project}/locations/{location}/autono... |

**Request body**: `RestoreAutonomousDatabaseRequest`

**Response**: `Operation`

```typescript
const res = await oracledatabase.autonomousDatabases.restore({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.autonomousDatabases.generateWallet`

**POST** `v1/{+name}:generateWallet`

Generates a wallet for an Autonomous Database.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Autonomous Database in the following format: projects/{project}/locations/{location}/autono... |

**Request body**: `GenerateAutonomousDatabaseWalletRequest`

**Response**: `GenerateAutonomousDatabaseWalletResponse`

```typescript
const res = await oracledatabase.autonomousDatabases.generateWallet({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.autonomousDatabases.stop`

**POST** `v1/{+name}:stop`

Stops an Autonomous Database.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Autonomous Database in the following format: projects/{project}/locations/{location}/autono... |

**Request body**: `StopAutonomousDatabaseRequest`

**Response**: `Operation`

```typescript
const res = await oracledatabase.autonomousDatabases.stop({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.autonomousDatabases.start`

**POST** `v1/{+name}:start`

Starts an Autonomous Database.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Autonomous Database in the following format: projects/{project}/locations/{location}/autono... |

**Request body**: `StartAutonomousDatabaseRequest`

**Response**: `Operation`

```typescript
const res = await oracledatabase.autonomousDatabases.start({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.autonomousDatabases.restart`

**POST** `v1/{+name}:restart`

Restarts an Autonomous Database.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Autonomous Database in the following format: projects/{project}/locations/{location}/autono... |

**Request body**: `RestartAutonomousDatabaseRequest`

**Response**: `Operation`

```typescript
const res = await oracledatabase.autonomousDatabases.restart({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.autonomousDatabases.switchover`

**POST** `v1/{+name}:switchover`

Initiates a switchover of specified autonomous database to the associated peer database.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Autonomous Database in the following format: projects/{project}/locations/{location}/autono... |

**Request body**: `SwitchoverAutonomousDatabaseRequest`

**Response**: `Operation`

```typescript
const res = await oracledatabase.autonomousDatabases.switchover({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.autonomousDatabases.failover`

**POST** `v1/{+name}:failover`

Initiates a failover to target autonomous database from the associated primary database.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Autonomous Database in the following format: projects/{project}/locations/{location}/autono... |

**Request body**: `FailoverAutonomousDatabaseRequest`

**Response**: `Operation`

```typescript
const res = await oracledatabase.autonomousDatabases.failover({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.autonomousDbVersions.list`

**GET** `v1/{+parent}/autonomousDbVersions`

Lists all the available Autonomous Database versions for a project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent value for the Autonomous Database in the following format: projects/{project}/locations/{location}. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of items to return. If unspecified, at most 50 Autonomous DB Versions will be returned. ... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListAutonomousDbVersionsResponse`

```typescript
const res = await oracledatabase.autonomousDbVersions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.autonomousDatabaseCharacterSets.list`

**GET** `v1/{+parent}/autonomousDatabaseCharacterSets`

Lists Autonomous Database Character Sets in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent value for the Autonomous Database in the following format: projects/{project}/locations/{location}. |
| `filter` | `string` | query | No | Optional. An expression for filtering the results of the request. Only the **character_set_type** field is supported ... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of items to return. If unspecified, at most 50 Autonomous DB Character Sets will be retu... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListAutonomousDatabaseCharacterSetsResponse`

```typescript
const res = await oracledatabase.autonomousDatabaseCharacterSets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.autonomousDatabaseBackups.list`

**GET** `v1/{+parent}/autonomousDatabaseBackups`

Lists the long-term and automatic backups of an Autonomous Database.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent value for ListAutonomousDatabaseBackups in the following format: projects/{project}/locations/{l... |
| `filter` | `string` | query | No | Optional. An expression for filtering the results of the request. Only the **autonomous_database_id** field is suppor... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of items to return. If unspecified, at most 50 Autonomous DB Backups will be returned. T... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListAutonomousDatabaseBackupsResponse`

```typescript
const res = await oracledatabase.autonomousDatabaseBackups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.odbNetworks.list`

**GET** `v1/{+parent}/odbNetworks`

Lists the ODB Networks in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent value for the ODB Network in the following format: projects/{project}/locations/{location}. |
| `filter` | `string` | query | No | Optional. An expression for filtering the results of the request. |
| `orderBy` | `string` | query | No | Optional. An expression for ordering the results of the request. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of items to return. If unspecified, at most 50 ODB Networks will be returned. The maximu... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListOdbNetworksResponse`

```typescript
const res = await oracledatabase.odbNetworks.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.odbNetworks.get`

**GET** `v1/{+name}`

Gets details of a single ODB Network.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the OdbNetwork in the following format: projects/{project}/locations/{location}/odbNetworks/{od... |

**Response**: `OdbNetwork`

```typescript
const res = await oracledatabase.odbNetworks.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.odbNetworks.create`

**POST** `v1/{+parent}/odbNetworks`

Creates a new ODB Network in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent value for the OdbNetwork in the following format: projects/{project}/locations/{location}. |
| `odbNetworkId` | `string` | query | No | Required. The ID of the OdbNetwork to create. This value is restricted to (^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$) and mus... |
| `requestId` | `string` | query | No | Optional. An optional ID to identify the request. This value is used to identify duplicate requests. If you make a re... |

**Request body**: `OdbNetwork`

**Response**: `Operation`

```typescript
const res = await oracledatabase.odbNetworks.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.odbNetworks.delete`

**DELETE** `v1/{+name}`

Deletes a single ODB Network.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource in the following format: projects/{project}/locations/{location}/odbNetworks/{odb_... |
| `requestId` | `string` | query | No | Optional. An optional ID to identify the request. This value is used to identify duplicate requests. If you make a re... |

**Response**: `Operation`

```typescript
const res = await oracledatabase.odbNetworks.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.odbNetworks.odbSubnets.list`

**GET** `v1/{+parent}/odbSubnets`

Lists all the ODB Subnets in a given ODB Network.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent value for the OdbSubnet in the following format: projects/{project}/locations/{location}/odbNetw... |
| `filter` | `string` | query | No | Optional. An expression for filtering the results of the request. |
| `orderBy` | `string` | query | No | Optional. An expression for ordering the results of the request. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of items to return. If unspecified, at most 50 ODB Networks will be returned. The maximu... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListOdbSubnetsResponse`

```typescript
const res = await oracledatabase.odbSubnets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.odbNetworks.odbSubnets.get`

**GET** `v1/{+name}`

Gets details of a single ODB Subnet.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the OdbSubnet in the following format: projects/{project}/locations/{location}/odbNetworks/{odb... |

**Response**: `OdbSubnet`

```typescript
const res = await oracledatabase.odbSubnets.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.odbNetworks.odbSubnets.create`

**POST** `v1/{+parent}/odbSubnets`

Creates a new ODB Subnet in a given ODB Network.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent value for the OdbSubnet in the following format: projects/{project}/locations/{location}/odbNetw... |
| `odbSubnetId` | `string` | query | No | Required. The ID of the OdbSubnet to create. This value is restricted to (^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$) and must... |
| `requestId` | `string` | query | No | Optional. An optional ID to identify the request. This value is used to identify duplicate requests. If you make a re... |

**Request body**: `OdbSubnet`

**Response**: `Operation`

```typescript
const res = await oracledatabase.odbSubnets.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.odbNetworks.odbSubnets.delete`

**DELETE** `v1/{+name}`

Deletes a single ODB Subnet.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource in the following format: projects/{project}/locations/{region}/odbNetworks/{odb_ne... |
| `requestId` | `string` | query | No | Optional. An optional ID to identify the request. This value is used to identify duplicate requests. If you make a re... |

**Response**: `Operation`

```typescript
const res = await oracledatabase.odbSubnets.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.exadbVmClusters.list`

**GET** `v1/{+parent}/exadbVmClusters`

Lists all the Exadb (Exascale) VM Clusters for the given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent value for ExadbVmClusters in the following format: projects/{project}/locations/{location}. |
| `filter` | `string` | query | No | Optional. An expression for filtering the results of the request. |
| `orderBy` | `string` | query | No | Optional. An expression for ordering the results of the request. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of items to return. If unspecified, at most 50 ExadbVmClusters will be returned. The max... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListExadbVmClustersResponse`

```typescript
const res = await oracledatabase.exadbVmClusters.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.exadbVmClusters.get`

**GET** `v1/{+name}`

Gets details of a single Exadb (Exascale) VM Cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the ExadbVmCluster in the following format: projects/{project}/locations/{location}/exadbVmClus... |

**Response**: `ExadbVmCluster`

```typescript
const res = await oracledatabase.exadbVmClusters.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.exadbVmClusters.create`

**POST** `v1/{+parent}/exadbVmClusters`

Creates a new Exadb (Exascale) VM Cluster resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The value for parent of the ExadbVmCluster in the following format: projects/{project}/locations/{location}. |
| `exadbVmClusterId` | `string` | query | No | Required. The ID of the ExadbVmCluster to create. This value is restricted to (^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$) and... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `ExadbVmCluster`

**Response**: `Operation`

```typescript
const res = await oracledatabase.exadbVmClusters.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.exadbVmClusters.delete`

**DELETE** `v1/{+name}`

Deletes a single Exadb (Exascale) VM Cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the ExadbVmCluster in the following format: projects/{project}/locations/{location}/exadbVmClus... |
| `requestId` | `string` | query | No | Optional. An optional ID to identify the request. This value is used to identify duplicate requests. If you make a re... |

**Response**: `Operation`

```typescript
const res = await oracledatabase.exadbVmClusters.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.exadbVmClusters.patch`

**PATCH** `v1/{+name}`

Updates a single Exadb (Exascale) VM Cluster. To add virtual machines to existing exadb vm cluster, only pass the node count.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The name of the ExadbVmCluster resource in the following format: projects/{project}/locations/{region}/ex... |
| `requestId` | `string` | query | No | Optional. An optional ID to identify the request. This value is used to identify duplicate requests. If you make a re... |
| `updateMask` | `string` | query | No | Optional. A mask specifying which fields in th VM Cluster should be updated. A field specified in the mask is overwri... |

**Request body**: `ExadbVmCluster`

**Response**: `Operation`

```typescript
const res = await oracledatabase.exadbVmClusters.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.exadbVmClusters.removeVirtualMachine`

**POST** `v1/{+name}:removeVirtualMachine`

Removes virtual machines from an existing exadb vm cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the ExadbVmCluster in the following format: projects/{project}/locations/{location}/exadbVmClus... |

**Request body**: `RemoveVirtualMachineExadbVmClusterRequest`

**Response**: `Operation`

```typescript
const res = await oracledatabase.exadbVmClusters.removeVirtualMachine({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.exadbVmClusters.dbNodes.list`

**GET** `v1/{+parent}/dbNodes`

Lists the database nodes of a VM Cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent value for database node in the following format: projects/{project}/locations/{location}/cloudVm... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of items to return. If unspecified, at most 50 db nodes will be returned. The maximum va... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the node should return. |

**Response**: `ListDbNodesResponse`

```typescript
const res = await oracledatabase.dbNodes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.exascaleDbStorageVaults.list`

**GET** `v1/{+parent}/exascaleDbStorageVaults`

Lists all the ExascaleDB Storage Vaults for the given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent value for ExascaleDbStorageVault in the following format: projects/{project}/locations/{location}. |
| `filter` | `string` | query | No | Optional. An expression for filtering the results of the request. Filter the list as specified in https://google.aip.... |
| `orderBy` | `string` | query | No | Optional. An expression for ordering the results of the request. Order results as specified in https://google.aip.dev... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of items to return. If unspecified, at most 50 ExascaleDbStorageVaults will be returned.... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListExascaleDbStorageVaultsResponse`

```typescript
const res = await oracledatabase.exascaleDbStorageVaults.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.exascaleDbStorageVaults.get`

**GET** `v1/{+name}`

Gets details of a single ExascaleDB Storage Vault.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the ExascaleDbStorageVault in the following format: projects/{project}/locations/{location}/exa... |

**Response**: `ExascaleDbStorageVault`

```typescript
const res = await oracledatabase.exascaleDbStorageVaults.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.exascaleDbStorageVaults.create`

**POST** `v1/{+parent}/exascaleDbStorageVaults`

Creates a new ExascaleDB Storage Vault resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The value for parent of the ExascaleDbStorageVault in the following format: projects/{project}/locations/{l... |
| `exascaleDbStorageVaultId` | `string` | query | No | Required. The ID of the ExascaleDbStorageVault to create. This value is restricted to (^[a-z]([a-z0-9-]{0,61}[a-z0-9]... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `ExascaleDbStorageVault`

**Response**: `Operation`

```typescript
const res = await oracledatabase.exascaleDbStorageVaults.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.exascaleDbStorageVaults.delete`

**DELETE** `v1/{+name}`

Deletes a single ExascaleDB Storage Vault.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the ExascaleDbStorageVault in the following format: projects/{project}/locations/{location}/exa... |
| `requestId` | `string` | query | No | Optional. An optional ID to identify the request. This value is used to identify duplicate requests. If you make a re... |

**Response**: `Operation`

```typescript
const res = await oracledatabase.exascaleDbStorageVaults.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.dbSystemInitialStorageSizes.list`

**GET** `v1/{+parent}/dbSystemInitialStorageSizes`

Lists all the DbSystemInitialStorageSizes for the given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent value for the DbSystemInitialStorageSize resource with the format: projects/{project}/locations/... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of items to return. If unspecified, a maximum of 50 DbSystemInitialStorageSizes will be ... |
| `pageToken` | `string` | query | No | Optional. A token identifying the requested page of results to return. All fields except the filter should remain the... |

**Response**: `ListDbSystemInitialStorageSizesResponse`

```typescript
const res = await oracledatabase.dbSystemInitialStorageSizes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.databases.list`

**GET** `v1/{+parent}/databases`

Lists all the Databases for the given project, location and DbSystem.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name in the following format: projects/{project}/locations/{region} |
| `filter` | `string` | query | No | Optional. An expression for filtering the results of the request. list for container databases is supported only with... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of items to return. If unspecified, a maximum of 50 Databases will be returned. The maxi... |
| `pageToken` | `string` | query | No | Optional. A token identifying the requested page of results to return. All fields except the filter should remain the... |

**Response**: `ListDatabasesResponse`

```typescript
const res = await oracledatabase.databases.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.databases.get`

**GET** `v1/{+name}`

Gets details of a single Database.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Database resource in the following format: projects/{project}/locations/{region}/databases/... |

**Response**: `Database`

```typescript
const res = await oracledatabase.databases.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.pluggableDatabases.list`

**GET** `v1/{+parent}/pluggableDatabases`

Lists all the PluggableDatabases for the given project, location and Container Database.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of PluggableDatabases. Format: projects/{project}/locations/{location} |
| `filter` | `string` | query | No | Optional. An expression for filtering the results of the request. List for pluggable databases is supported only with... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of PluggableDatabases to return. The service may return fewer than this value. |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListPluggableDatabases` call. Provide this to retrieve the subseque... |

**Response**: `ListPluggableDatabasesResponse`

```typescript
const res = await oracledatabase.pluggableDatabases.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.pluggableDatabases.get`

**GET** `v1/{+name}`

Gets details of a single PluggableDatabase.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the PluggableDatabase resource in the following format: projects/{project}/locations/{region}/p... |

**Response**: `PluggableDatabase`

```typescript
const res = await oracledatabase.pluggableDatabases.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.dbSystems.list`

**GET** `v1/{+parent}/dbSystems`

Lists all the DbSystems for the given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent value for DbSystems in the following format: projects/{project}/locations/{location}. |
| `filter` | `string` | query | No | Optional. An expression for filtering the results of the request. |
| `orderBy` | `string` | query | No | Optional. An expression for ordering the results of the request. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of items to return. If unspecified, at most 50 DbSystems will be returned. The maximum v... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListDbSystemsResponse`

```typescript
const res = await oracledatabase.dbSystems.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.dbSystems.get`

**GET** `v1/{+name}`

Gets details of a single DbSystem.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the DbSystem in the following format: projects/{project}/locations/{location}/dbSystems/{db_sys... |

**Response**: `DbSystem`

```typescript
const res = await oracledatabase.dbSystems.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.dbSystems.create`

**POST** `v1/{+parent}/dbSystems`

Creates a new DbSystem in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The value for parent of the DbSystem in the following format: projects/{project}/locations/{location}. |
| `dbSystemId` | `string` | query | No | Required. The ID of the DbSystem to create. This value is restricted to (^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$) and must ... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `DbSystem`

**Response**: `Operation`

```typescript
const res = await oracledatabase.dbSystems.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.dbSystems.delete`

**DELETE** `v1/{+name}`

Deletes a single DbSystem.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the DbSystem in the following format: projects/{project}/locations/{location}/dbSystems/{db_sys... |
| `requestId` | `string` | query | No | Optional. An optional ID to identify the request. This value is used to identify duplicate requests. If you make a re... |

**Response**: `Operation`

```typescript
const res = await oracledatabase.dbSystems.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.dbVersions.list`

**GET** `v1/{+parent}/dbVersions`

List DbVersions for the given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent value for the DbVersion resource with the format: projects/{project}/locations/{location} |
| `filter` | `string` | query | No | Optional. Filter expression that matches a subset of the DbVersions to show. The supported filter for dbSystem creati... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of items to return. If unspecified, a maximum of 50 DbVersions will be returned. The max... |
| `pageToken` | `string` | query | No | Optional. A token identifying the requested page of results to return. All fields except the filter should remain the... |

**Response**: `ListDbVersionsResponse`

```typescript
const res = await oracledatabase.dbVersions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `oracledatabase.projects.locations.databaseCharacterSets.list`

**GET** `v1/{+parent}/databaseCharacterSets`

List DatabaseCharacterSets for the given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent value for DatabaseCharacterSets in the following format: projects/{project}/locations/{location}. |
| `filter` | `string` | query | No | Optional. An expression for filtering the results of the request. Only the **character_set_type** field is supported ... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of DatabaseCharacterSets to return. The service may return fewer than this value. If uns... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListDatabaseCharacterSets` call. Provide this to retrieve the subse... |

**Response**: `ListDatabaseCharacterSetsResponse`

```typescript
const res = await oracledatabase.databaseCharacterSets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AllConnectionStrings`

A list of all connection strings that can be used to connect to the Autonomous Database.

| Property | Type | Description |
|----------|------|-------------|
| `high` | `string` | Output only. The database service provides the highest level of resources to each SQL statement. |
| `low` | `string` | Output only. The database service provides the least level of resources to each SQL statement. |
| `medium` | `string` | Output only. The database service provides a lower level of resources to each SQL statement. |

### `AutonomousDatabase`

Details of the Autonomous Database resource. https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/AutonomousDatabase/

| Property | Type | Description |
|----------|------|-------------|
| `adminPassword` | `string` | Optional. Immutable. The password for the default ADMIN user. |
| `cidr` | `string` | Optional. Immutable. The subnet CIDR range for the Autonomous Database. |
| `createTime` | `string` | Output only. The date and time that the Autonomous Database was created. |
| `database` | `string` | Optional. Immutable. The name of the Autonomous Database. The database name must be unique in the... |
| `disasterRecoverySupportedLocations` | `array<string>` | Output only. List of supported GCP region to clone the Autonomous Database for disaster recovery.... |
| `displayName` | `string` | Optional. Immutable. The display name for the Autonomous Database. The name does not have to be u... |
| `entitlementId` | `string` | Output only. The ID of the subscription entitlement associated with the Autonomous Database. |
| `labels` | `object` | Optional. The labels or tags associated with the Autonomous Database. |
| `name` | `string` | Identifier. The name of the Autonomous Database resource in the following format: projects/{proje... |
| `network` | `string` | Optional. Immutable. The name of the VPC network used by the Autonomous Database in the following... |
| `odbNetwork` | `string` | Optional. Immutable. The name of the OdbNetwork associated with the Autonomous Database. Format: ... |
| `odbSubnet` | `string` | Optional. Immutable. The name of the OdbSubnet associated with the Autonomous Database. Format: p... |
| `peerAutonomousDatabases` | `array<string>` | Output only. The peer Autonomous Database names of the given Autonomous Database. |
| `properties` | `AutonomousDatabaseProperties` | Optional. The properties of the Autonomous Database. |
| `sourceConfig` | `SourceConfig` | Optional. Immutable. The source Autonomous Database configuration for the standby Autonomous Data... |

### `AutonomousDatabaseApex`

Oracle APEX Application Development. https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/AutonomousDatabaseApex

| Property | Type | Description |
|----------|------|-------------|
| `apexVersion` | `string` | Output only. The Oracle APEX Application Development version. |
| `ordsVersion` | `string` | Output only. The Oracle REST Data Services (ORDS) version. |

### `AutonomousDatabaseBackup`

Details of the Autonomous Database Backup resource. https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/AutonomousDatabaseBackup/

| Property | Type | Description |
|----------|------|-------------|
| `autonomousDatabase` | `string` | Required. The name of the Autonomous Database resource for which the backup is being created. For... |
| `displayName` | `string` | Optional. User friendly name for the Backup. The name does not have to be unique. |
| `labels` | `object` | Optional. labels or tags associated with the resource. |
| `name` | `string` | Identifier. The name of the Autonomous Database Backup resource with the format: projects/{projec... |
| `properties` | `AutonomousDatabaseBackupProperties` | Optional. Various properties of the backup. |

### `AutonomousDatabaseBackupProperties`

Properties of the Autonomous Database Backup resource.

| Property | Type | Description |
|----------|------|-------------|
| `availableTillTime` | `string` | Output only. Timestamp until when the backup will be available. |
| `compartmentId` | `string` | Output only. The OCID of the compartment. |
| `databaseSizeTb` | `number` | Output only. The quantity of data in the database, in terabytes. |
| `dbVersion` | `string` | Output only. A valid Oracle Database version for Autonomous Database. |
| `endTime` | `string` | Output only. The date and time the backup completed. |
| `isAutomaticBackup` | `boolean` | Output only. Indicates if the backup is automatic or user initiated. |
| `isLongTermBackup` | `boolean` | Output only. Indicates if the backup is long term backup. |
| `isRestorable` | `boolean` | Output only. Indicates if the backup can be used to restore the Autonomous Database. |
| `keyStoreId` | `string` | Optional. The OCID of the key store of Oracle Vault. |
| `keyStoreWallet` | `string` | Optional. The wallet name for Oracle Key Vault. |
| `kmsKeyId` | `string` | Optional. The OCID of the key container that is used as the master encryption key in database tra... |
| `kmsKeyVersionId` | `string` | Optional. The OCID of the key container version that is used in database transparent data encrypt... |
| `lifecycleDetails` | `string` | Output only. Additional information about the current lifecycle state. |
| `lifecycleState` | `string` | Output only. The lifecycle state of the backup. |
| `ocid` | `string` | Output only. OCID of the Autonomous Database backup. https://docs.oracle.com/en-us/iaas/Content/G... |
| `retentionPeriodDays` | `integer` | Optional. Retention period in days for the backup. |
| `sizeTb` | `number` | Output only. The backup size in terabytes. |
| `startTime` | `string` | Output only. The date and time the backup started. |
| `type` | `string` | Output only. The type of the backup. |
| `vaultId` | `string` | Optional. The OCID of the vault. |

### `AutonomousDatabaseCharacterSet`

Details of the Autonomous Database character set resource. https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/AutonomousDatabaseCharacterSets/

| Property | Type | Description |
|----------|------|-------------|
| `characterSet` | `string` | Output only. The character set name for the Autonomous Database which is the ID in the resource n... |
| `characterSetType` | `string` | Output only. The character set type for the Autonomous Database. |
| `name` | `string` | Identifier. The name of the Autonomous Database Character Set resource in the following format: p... |

### `AutonomousDatabaseConnectionStrings`

The connection string used to connect to the Autonomous Database. https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/AutonomousDatabaseConnectionStrings

| Property | Type | Description |
|----------|------|-------------|
| `allConnectionStrings` | `AllConnectionStrings` | Output only. Returns all connection strings that can be used to connect to the Autonomous Database. |
| `dedicated` | `string` | Output only. The database service provides the least level of resources to each SQL statement, bu... |
| `high` | `string` | Output only. The database service provides the highest level of resources to each SQL statement. |
| `low` | `string` | Output only. The database service provides the least level of resources to each SQL statement. |
| `medium` | `string` | Output only. The database service provides a lower level of resources to each SQL statement. |
| `profiles` | `array<DatabaseConnectionStringProfile>` | Output only. A list of connection string profiles to allow clients to group, filter, and select v... |

### `AutonomousDatabaseConnectionUrls`

The URLs for accessing Oracle Application Express (APEX) and SQL Developer Web with a browser from a Compute instance. https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/AutonomousDatabaseConnectionUrls

| Property | Type | Description |
|----------|------|-------------|
| `apexUri` | `string` | Output only. Oracle Application Express (APEX) URL. |
| `databaseTransformsUri` | `string` | Output only. The URL of the Database Transforms for the Autonomous Database. |
| `graphStudioUri` | `string` | Output only. The URL of the Graph Studio for the Autonomous Database. |
| `machineLearningNotebookUri` | `string` | Output only. The URL of the Oracle Machine Learning (OML) Notebook for the Autonomous Database. |
| `machineLearningUserManagementUri` | `string` | Output only. The URL of Machine Learning user management the Autonomous Database. |
| `mongoDbUri` | `string` | Output only. The URL of the MongoDB API for the Autonomous Database. |
| `ordsUri` | `string` | Output only. The Oracle REST Data Services (ORDS) URL of the Web Access for the Autonomous Database. |
| `sqlDevWebUri` | `string` | Output only. The URL of the Oracle SQL Developer Web for the Autonomous Database. |

### `AutonomousDatabaseProperties`

The properties of an Autonomous Database.

| Property | Type | Description |
|----------|------|-------------|
| `actualUsedDataStorageSizeTb` | `number` | Output only. The amount of storage currently being used for user and system data, in terabytes. |
| `allocatedStorageSizeTb` | `number` | Output only. The amount of storage currently allocated for the database tables and billed for, ro... |
| `allowlistedIps` | `array<string>` | Optional. Immutable. The list of allowlisted IP addresses for the Autonomous Database. |
| `apexDetails` | `AutonomousDatabaseApex` | Output only. The details for the Oracle APEX Application Development. |
| `arePrimaryAllowlistedIpsUsed` | `boolean` | Output only. This field indicates the status of Data Guard and Access control for the Autonomous ... |
| `autonomousContainerDatabaseId` | `string` | Output only. The Autonomous Container Database OCID. |
| `availableUpgradeVersions` | `array<string>` | Output only. The list of available Oracle Database upgrade versions for an Autonomous Database. |
| `backupRetentionPeriodDays` | `integer` | Optional. Immutable. The retention period for the Autonomous Database. This field is specified in... |
| `characterSet` | `string` | Optional. Immutable. The character set for the Autonomous Database. The default is AL32UTF8. |
| `computeCount` | `number` | Optional. Immutable. The number of compute servers for the Autonomous Database. |
| `connectionStrings` | `AutonomousDatabaseConnectionStrings` | Output only. The connection strings used to connect to an Autonomous Database. |
| `connectionUrls` | `AutonomousDatabaseConnectionUrls` | Output only. The Oracle Connection URLs for an Autonomous Database. |
| `cpuCoreCount` | `integer` | Optional. Immutable. The number of CPU cores to be made available to the database. |
| `customerContacts` | `array<CustomerContact>` | Optional. Immutable. The list of customer contacts. |
| `dataGuardRoleChangedTime` | `string` | Output only. The date and time the Autonomous Data Guard role was changed for the standby Autonom... |
| `dataSafeState` | `string` | Output only. The current state of the Data Safe registration for the Autonomous Database. |
| `dataStorageSizeGb` | `integer` | Optional. Immutable. The size of the data stored in the database, in gigabytes. |
| `dataStorageSizeTb` | `integer` | Optional. Immutable. The size of the data stored in the database, in terabytes. |
| `databaseManagementState` | `string` | Output only. The current state of database management for the Autonomous Database. |
| `dbEdition` | `string` | Optional. Immutable. The edition of the Autonomous Databases. |
| `dbVersion` | `string` | Optional. Immutable. The Oracle Database version for the Autonomous Database. |
| `dbWorkload` | `string` | Required. Immutable. The workload type of the Autonomous Database. |
| `disasterRecoveryRoleChangedTime` | `string` | Output only. The date and time the Disaster Recovery role was changed for the standby Autonomous ... |
| `encryptionKey` | `EncryptionKey` | Optional. The encryption key used to encrypt the Autonomous Database. Updating this field will ad... |
| `encryptionKeyHistoryEntries` | `array<EncryptionKeyHistoryEntry>` | Output only. The history of the encryption keys used to encrypt the Autonomous Database. |
| `failedDataRecoveryDuration` | `string` | Output only. This field indicates the number of seconds of data loss during a Data Guard failover. |
| `isAutoScalingEnabled` | `boolean` | Optional. Immutable. This field indicates if auto scaling is enabled for the Autonomous Database ... |
| `isLocalDataGuardEnabled` | `boolean` | Output only. This field indicates whether the Autonomous Database has local (in-region) Data Guar... |
| `isStorageAutoScalingEnabled` | `boolean` | Optional. Immutable. This field indicates if auto scaling is enabled for the Autonomous Database ... |
| `licenseType` | `string` | Required. Immutable. The license type used for the Autonomous Database. |
| `lifecycleDetails` | `string` | Output only. The details of the current lifestyle state of the Autonomous Database. |
| `localAdgAutoFailoverMaxDataLossLimit` | `integer` | Output only. This field indicates the maximum data loss limit for an Autonomous Database, in seco... |
| `localDisasterRecoveryType` | `string` | Output only. This field indicates the local disaster recovery (DR) type of an Autonomous Database. |
| `localStandbyDb` | `AutonomousDatabaseStandbySummary` | Output only. The details of the Autonomous Data Guard standby database. |
| `maintenanceBeginTime` | `string` | Output only. The date and time when maintenance will begin. |
| `maintenanceEndTime` | `string` | Output only. The date and time when maintenance will end. |
| `maintenanceScheduleType` | `string` | Optional. Immutable. The maintenance schedule of the Autonomous Database. |
| `memoryPerOracleComputeUnitGbs` | `integer` | Output only. The amount of memory enabled per ECPU, in gigabytes. |
| `memoryTableGbs` | `integer` | Output only. The memory assigned to in-memory tables in an Autonomous Database. |
| `mtlsConnectionRequired` | `boolean` | Optional. Immutable. This field specifies if the Autonomous Database requires mTLS connections. |
| `nCharacterSet` | `string` | Optional. Immutable. The national character set for the Autonomous Database. The default is AL16U... |
| `nextLongTermBackupTime` | `string` | Output only. The long term backup schedule of the Autonomous Database. |
| `ociUrl` | `string` | Output only. The Oracle Cloud Infrastructure link for the Autonomous Database. |
| `ocid` | `string` | Output only. OCID of the Autonomous Database. https://docs.oracle.com/en-us/iaas/Content/General/... |
| `openMode` | `string` | Output only. This field indicates the current mode of the Autonomous Database. |
| `operationsInsightsState` | `string` | Output only. This field indicates the state of Operations Insights for the Autonomous Database. |
| `peerDbIds` | `array<string>` | Output only. The list of OCIDs of standby databases located in Autonomous Data Guard remote regio... |
| `permissionLevel` | `string` | Output only. The permission level of the Autonomous Database. |
| `privateEndpoint` | `string` | Output only. The private endpoint for the Autonomous Database. |
| `privateEndpointIp` | `string` | Optional. Immutable. The private endpoint IP address for the Autonomous Database. |
| `privateEndpointLabel` | `string` | Optional. Immutable. The private endpoint label for the Autonomous Database. |
| `refreshableMode` | `string` | Output only. The refresh mode of the cloned Autonomous Database. |
| `refreshableState` | `string` | Output only. The refresh State of the clone. |
| `role` | `string` | Output only. The Data Guard role of the Autonomous Database. |
| `scheduledOperationDetails` | `array<ScheduledOperationDetails>` | Output only. The list and details of the scheduled operations of the Autonomous Database. |
| `secretId` | `string` | Optional. Immutable. The ID of the Oracle Cloud Infrastructure vault secret. |
| `serviceAgentEmail` | `string` | Output only. An Oracle-managed Google Cloud service account on which customers can grant roles to... |
| `sqlWebDeveloperUrl` | `string` | Output only. The SQL Web Developer URL for the Autonomous Database. |
| `state` | `string` | Output only. The current lifecycle state of the Autonomous Database. |
| `supportedCloneRegions` | `array<string>` | Output only. The list of available regions that can be used to create a clone for the Autonomous ... |
| `totalAutoBackupStorageSizeGbs` | `number` | Output only. The storage space used by automatic backups of Autonomous Database, in gigabytes. |
| `usedDataStorageSizeTbs` | `integer` | Output only. The storage space used by Autonomous Database, in gigabytes. |
| `vaultId` | `string` | Optional. Immutable. The ID of the Oracle Cloud Infrastructure vault. |

### `AutonomousDatabaseStandbySummary`

Autonomous Data Guard standby database details. https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/AutonomousDatabaseStandbySummary

| Property | Type | Description |
|----------|------|-------------|
| `dataGuardRoleChangedTime` | `string` | Output only. The date and time the Autonomous Data Guard role was switched for the standby Autono... |
| `disasterRecoveryRoleChangedTime` | `string` | Output only. The date and time the Disaster Recovery role was switched for the standby Autonomous... |
| `lagTimeDuration` | `string` | Output only. The amount of time, in seconds, that the data of the standby database lags in compar... |
| `lifecycleDetails` | `string` | Output only. The additional details about the current lifecycle state of the Autonomous Database. |
| `state` | `string` | Output only. The current lifecycle state of the Autonomous Database. |

### `AutonomousDbVersion`

Details of the Autonomous Database version. https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/AutonomousDbVersionSummary/

| Property | Type | Description |
|----------|------|-------------|
| `dbWorkload` | `string` | Output only. The Autonomous Database workload type. |
| `name` | `string` | Identifier. The name of the Autonomous Database Version resource with the format: projects/{proje... |
| `version` | `string` | Output only. An Oracle Database version for Autonomous Database. |
| `workloadUri` | `string` | Output only. A URL that points to a detailed description of the Autonomous Database version. |

### `BackupDestinationDetails`

The details of the database backup destination.

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | Optional. The type of the database backup destination. |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `CloudAccountDetails`

Details of the OCI Cloud Account.

| Property | Type | Description |
|----------|------|-------------|
| `accountCreationUri` | `string` | Output only. URL to create a new account and link. |
| `cloudAccount` | `string` | Output only. OCI account name. |
| `cloudAccountHomeRegion` | `string` | Output only. OCI account home region. |
| `linkExistingAccountUri` | `string` | Output only. URL to link an existing account. |

### `CloudExadataInfrastructure`

Represents CloudExadataInfrastructure resource. https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/CloudExadataInfrastructure/

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The date and time that the Exadata Infrastructure was created. |
| `displayName` | `string` | Optional. User friendly name for this resource. |
| `entitlementId` | `string` | Output only. Entitlement ID of the private offer against which this infrastructure resource is pr... |
| `gcpOracleZone` | `string` | Optional. The GCP Oracle zone where Oracle Exadata Infrastructure is hosted. Example: us-east4-b-... |
| `labels` | `object` | Optional. Labels or tags associated with the resource. |
| `name` | `string` | Identifier. The name of the Exadata Infrastructure resource with the format: projects/{project}/l... |
| `properties` | `CloudExadataInfrastructureProperties` | Optional. Various properties of the infra. |

### `CloudExadataInfrastructureProperties`

Various properties of Exadata Infrastructure.

| Property | Type | Description |
|----------|------|-------------|
| `activatedStorageCount` | `integer` | Output only. The requested number of additional storage servers activated for the Exadata Infrast... |
| `additionalStorageCount` | `integer` | Output only. The requested number of additional storage servers for the Exadata Infrastructure. |
| `availableStorageSizeGb` | `integer` | Output only. The available storage can be allocated to the Exadata Infrastructure resource, in gi... |
| `computeCount` | `integer` | Optional. The number of compute servers for the Exadata Infrastructure. |
| `computeModel` | `string` | Output only. The compute model of the Exadata Infrastructure. |
| `cpuCount` | `integer` | Output only. The number of enabled CPU cores. |
| `customerContacts` | `array<CustomerContact>` | Optional. The list of customer contacts. |
| `dataStorageSizeTb` | `number` | Output only. Size, in terabytes, of the DATA disk group. |
| `databaseServerType` | `string` | Output only. The database server type of the Exadata Infrastructure. |
| `dbNodeStorageSizeGb` | `integer` | Output only. The local node storage allocated in GBs. |
| `dbServerVersion` | `string` | Output only. The software version of the database servers (dom0) in the Exadata Infrastructure. |
| `maintenanceWindow` | `MaintenanceWindow` | Optional. Maintenance window for repair. |
| `maxCpuCount` | `integer` | Output only. The total number of CPU cores available. |
| `maxDataStorageTb` | `number` | Output only. The total available DATA disk group size. |
| `maxDbNodeStorageSizeGb` | `integer` | Output only. The total local node storage available in GBs. |
| `maxMemoryGb` | `integer` | Output only. The total memory available in GBs. |
| `memorySizeGb` | `integer` | Output only. The memory allocated in GBs. |
| `monthlyDbServerVersion` | `string` | Output only. The monthly software version of the database servers (dom0) in the Exadata Infrastru... |
| `monthlyStorageServerVersion` | `string` | Output only. The monthly software version of the storage servers (cells) in the Exadata Infrastru... |
| `nextMaintenanceRunId` | `string` | Output only. The OCID of the next maintenance run. |
| `nextMaintenanceRunTime` | `string` | Output only. The time when the next maintenance run will occur. |
| `nextSecurityMaintenanceRunTime` | `string` | Output only. The time when the next security maintenance run will occur. |
| `ociUrl` | `string` | Output only. Deep link to the OCI console to view this resource. |
| `ocid` | `string` | Output only. OCID of created infra. https://docs.oracle.com/en-us/iaas/Content/General/Concepts/i... |
| `shape` | `string` | Required. The shape of the Exadata Infrastructure. The shape determines the amount of CPU, storag... |
| `state` | `string` | Output only. The current lifecycle state of the Exadata Infrastructure. |
| `storageCount` | `integer` | Optional. The number of Cloud Exadata storage servers for the Exadata Infrastructure. |
| `storageServerType` | `string` | Output only. The storage server type of the Exadata Infrastructure. |
| `storageServerVersion` | `string` | Output only. The software version of the storage servers (cells) in the Exadata Infrastructure. |
| `totalStorageSizeGb` | `integer` | Optional. The total storage allocated to the Exadata Infrastructure resource, in gigabytes (GB). |

### `CloudVmCluster`

Details of the Cloud VM Cluster resource. https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/CloudVmCluster/

| Property | Type | Description |
|----------|------|-------------|
| `backupOdbSubnet` | `string` | Optional. The name of the backup OdbSubnet associated with the VM Cluster. Format: projects/{proj... |
| `backupSubnetCidr` | `string` | Optional. CIDR range of the backup subnet. |
| `cidr` | `string` | Optional. Network settings. CIDR to use for cluster IP allocation. |
| `createTime` | `string` | Output only. The date and time that the VM cluster was created. |
| `displayName` | `string` | Optional. User friendly name for this resource. |
| `exadataInfrastructure` | `string` | Required. The name of the Exadata Infrastructure resource on which VM cluster resource is created... |
| `gcpOracleZone` | `string` | Output only. The GCP Oracle zone where Oracle CloudVmCluster is hosted. This will be the same as ... |
| `identityConnector` | `IdentityConnector` | Output only. The identity connector details which will allow OCI to securely access the resources... |
| `labels` | `object` | Optional. Labels or tags associated with the VM Cluster. |
| `name` | `string` | Identifier. The name of the VM Cluster resource with the format: projects/{project}/locations/{re... |
| `network` | `string` | Optional. The name of the VPC network. Format: projects/{project}/global/networks/{network} |
| `odbNetwork` | `string` | Optional. The name of the OdbNetwork associated with the VM Cluster. Format: projects/{project}/l... |
| `odbSubnet` | `string` | Optional. The name of the OdbSubnet associated with the VM Cluster for IP allocation. Format: pro... |
| `properties` | `CloudVmClusterProperties` | Optional. Various properties of the VM Cluster. |

### `CloudVmClusterProperties`

Various properties and settings associated with Exadata VM cluster.

| Property | Type | Description |
|----------|------|-------------|
| `clusterName` | `string` | Optional. OCI Cluster name. |
| `compartmentId` | `string` | Output only. Compartment ID of cluster. |
| `computeModel` | `string` | Output only. The compute model of the VM Cluster. |
| `cpuCoreCount` | `integer` | Required. Number of enabled CPU cores. |
| `dataStorageSizeTb` | `number` | Optional. The data disk group size to be allocated in TBs. |
| `dbNodeStorageSizeGb` | `integer` | Optional. Local storage per VM. |
| `dbServerOcids` | `array<string>` | Optional. OCID of database servers. |
| `diagnosticsDataCollectionOptions` | `DataCollectionOptions` | Optional. Data collection options for diagnostics. |
| `diskRedundancy` | `string` | Optional. The type of redundancy. |
| `dnsListenerIp` | `string` | Output only. DNS listener IP. |
| `domain` | `string` | Output only. Parent DNS domain where SCAN DNS and hosts names are qualified. ex: ocispdelegated.o... |
| `giVersion` | `string` | Optional. Grid Infrastructure Version. |
| `hostname` | `string` | Output only. host name without domain. format: "-" with some suffix. ex: sp2-yi0xq where "sp2" is... |
| `hostnamePrefix` | `string` | Optional. Prefix for VM cluster host names. |
| `licenseType` | `string` | Required. License type of VM Cluster. |
| `localBackupEnabled` | `boolean` | Optional. Use local backup. |
| `memorySizeGb` | `integer` | Optional. Memory allocated in GBs. |
| `nodeCount` | `integer` | Optional. Number of database servers. |
| `ociUrl` | `string` | Output only. Deep link to the OCI console to view this resource. |
| `ocid` | `string` | Output only. Oracle Cloud Infrastructure ID of VM Cluster. |
| `ocpuCount` | `number` | Optional. OCPU count per VM. Minimum is 0.1. |
| `scanDns` | `string` | Output only. SCAN DNS name. ex: sp2-yi0xq-scan.ocispdelegated.ocisp10jvnet.oraclevcn.com |
| `scanDnsRecordId` | `string` | Output only. OCID of scan DNS record. |
| `scanIpIds` | `array<string>` | Output only. OCIDs of scan IPs. |
| `scanListenerPortTcp` | `integer` | Output only. SCAN listener port - TCP |
| `scanListenerPortTcpSsl` | `integer` | Output only. SCAN listener port - TLS |
| `shape` | `string` | Output only. Shape of VM Cluster. |
| `sparseDiskgroupEnabled` | `boolean` | Optional. Use exadata sparse snapshots. |
| `sshPublicKeys` | `array<string>` | Optional. SSH public keys to be stored with cluster. |
| `state` | `string` | Output only. State of the cluster. |
| `storageSizeGb` | `integer` | Output only. The storage allocation for the disk group, in gigabytes (GB). |
| `systemVersion` | `string` | Optional. Operating system version of the image. |
| `timeZone` | `TimeZone` | Optional. Time zone of VM Cluster to set. Defaults to UTC if not specified. |

### `CustomerContact`

The CustomerContact reference as defined by Oracle. https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/CustomerContact

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | Required. The email address used by Oracle to send notifications regarding databases and infrastr... |

### `DataCollectionOptions`

Data collection options for diagnostics.

| Property | Type | Description |
|----------|------|-------------|
| `diagnosticsEventsEnabled` | `boolean` | Optional. Indicates whether diagnostic collection is enabled for the VM cluster |
| `healthMonitoringEnabled` | `boolean` | Optional. Indicates whether health monitoring is enabled for the VM cluster |
| `incidentLogsEnabled` | `boolean` | Optional. Indicates whether incident logs and trace collection are enabled for the VM cluster |

### `DataCollectionOptionsCommon`

Data collection options for diagnostics. https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/DataCollectionOptions

| Property | Type | Description |
|----------|------|-------------|
| `isDiagnosticsEventsEnabled` | `boolean` | Optional. Indicates whether to enable data collection for diagnostics. |
| `isHealthMonitoringEnabled` | `boolean` | Optional. Indicates whether to enable health monitoring. |
| `isIncidentLogsEnabled` | `boolean` | Optional. Indicates whether to enable incident logs and trace collection. |

### `DataCollectionOptionsDbSystem`

Data collection options for DbSystem.

| Property | Type | Description |
|----------|------|-------------|
| `isDiagnosticsEventsEnabled` | `boolean` | Optional. Indicates whether to enable data collection for diagnostics. |
| `isIncidentLogsEnabled` | `boolean` | Optional. Indicates whether to enable incident logs and trace collection. |

### `Database`

Details of the Database resource. https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/Database/

| Property | Type | Description |
|----------|------|-------------|
| `adminPassword` | `string` | Required. The password for the default ADMIN user. |
| `characterSet` | `string` | Optional. The character set for the database. The default is AL32UTF8. |
| `createTime` | `string` | Output only. The date and time that the Database was created. |
| `databaseId` | `string` | Optional. The database ID of the Database. |
| `dbHomeName` | `string` | Optional. The name of the DbHome resource associated with the Database. |
| `dbName` | `string` | Optional. The database name. The name must begin with an alphabetic character and can contain a m... |
| `dbUniqueName` | `string` | Optional. The DB_UNIQUE_NAME of the Oracle Database being backed up. |
| `gcpOracleZone` | `string` | Output only. The GCP Oracle zone where the Database is created. |
| `name` | `string` | Identifier. The name of the Database resource in the following format: projects/{project}/locatio... |
| `ncharacterSet` | `string` | Optional. The national character set for the database. The default is AL16UTF16. |
| `ociUrl` | `string` | Output only. HTTPS link to OCI resources exposed to Customer via UI Interface. |
| `opsInsightsStatus` | `string` | Output only. The Status of Operations Insights for this Database. |
| `properties` | `DatabaseProperties` | Optional. The properties of the Database. |
| `tdeWalletPassword` | `string` | Optional. The TDE wallet password for the database. |

### `DatabaseCharacterSet`

Details of the Database character set resource.

| Property | Type | Description |
|----------|------|-------------|
| `characterSet` | `string` | Output only. The character set name for the Database which is the ID in the resource name. |
| `characterSetType` | `string` | Output only. The character set type for the Database. |
| `name` | `string` | Identifier. The name of the Database Character Set resource in the following format: projects/{pr... |

### `DatabaseConnectionStringProfile`

The connection string profile to allow clients to group. https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/DatabaseConnectionStringProfile

| Property | Type | Description |
|----------|------|-------------|
| `consumerGroup` | `string` | Output only. The current consumer group being used by the connection. |
| `displayName` | `string` | Output only. The display name for the database connection. |
| `hostFormat` | `string` | Output only. The host name format being currently used in connection string. |
| `isRegional` | `boolean` | Output only. This field indicates if the connection string is regional and is only applicable for... |
| `protocol` | `string` | Output only. The protocol being used by the connection. |
| `sessionMode` | `string` | Output only. The current session mode of the connection. |
| `syntaxFormat` | `string` | Output only. The syntax of the connection string. |
| `tlsAuthentication` | `string` | Output only. This field indicates the TLS authentication type of the connection. |
| `value` | `string` | Output only. The value of the connection string. |

### `DatabaseManagementConfig`

The configuration of the Database Management service.

| Property | Type | Description |
|----------|------|-------------|
| `managementState` | `string` | Output only. The status of the Database Management service. |
| `managementType` | `string` | Output only. The Database Management type. |

### `DatabaseProperties`

The properties of a Database.

| Property | Type | Description |
|----------|------|-------------|
| `databaseManagementConfig` | `DatabaseManagementConfig` | Output only. The Database Management config. |
| `dbBackupConfig` | `DbBackupConfig` | Optional. Backup options for the Database. |
| `dbVersion` | `string` | Required. The Oracle Database version. |
| `state` | `string` | Output only. State of the Database. |

### `DbBackupConfig`

Backup Options for the Database.

| Property | Type | Description |
|----------|------|-------------|
| `autoBackupEnabled` | `boolean` | Optional. If set to true, enables automatic backups on the database. |
| `autoFullBackupDay` | `string` | Optional. The day of the week on which the full backup should be performed on the database. If no... |
| `autoFullBackupWindow` | `string` | Optional. The window in which the full backup should be performed on the database. If no value is... |
| `autoIncrementalBackupWindow` | `string` | Optional. The window in which the incremental backup should be performed on the database. If no v... |
| `backupDeletionPolicy` | `string` | Optional. This defines when the backups will be deleted after Database termination. |
| `backupDestinationDetails` | `array<BackupDestinationDetails>` | Optional. Details of the database backup destinations. |
| `retentionPeriodDays` | `integer` | Optional. The number of days an automatic backup is retained before being automatically deleted. ... |

### `DbHome`

Details of the Database Home resource.

| Property | Type | Description |
|----------|------|-------------|
| `database` | `Database` | Required. The Database resource. |
| `dbVersion` | `string` | Required. A valid Oracle Database version. For a list of supported versions, use the ListDbVersio... |
| `displayName` | `string` | Optional. The display name for the Database Home. The name does not have to be unique within your... |
| `isUnifiedAuditingEnabled` | `boolean` | Optional. Whether unified auditing is enabled for the Database Home. |

### `DbNode`

Details of the database node resource. https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/DbNode/

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Identifier. The name of the database node resource in the following format: projects/{project}/lo... |
| `properties` | `DbNodeProperties` | Optional. Various properties of the database node. |

### `DbNodeProperties`

Various properties and settings associated with Db node.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The date and time that the database node was created. |
| `dbNodeStorageSizeGb` | `integer` | Optional. Local storage per database node. |
| `dbServerOcid` | `string` | Optional. Database server OCID. |
| `hostname` | `string` | Optional. DNS |
| `memorySizeGb` | `integer` | Memory allocated in GBs. |
| `ocid` | `string` | Output only. OCID of database node. |
| `ocpuCount` | `integer` | Optional. OCPU count per database node. |
| `state` | `string` | Output only. State of the database node. |
| `totalCpuCoreCount` | `integer` | Total CPU core count of the database node. |

### `DbServer`

Details of the database server resource. https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/DbServer/

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Optional. User friendly name for this resource. |
| `name` | `string` | Identifier. The name of the database server resource with the format: projects/{project}/location... |
| `properties` | `DbServerProperties` | Optional. Various properties of the database server. |

### `DbServerProperties`

Various properties and settings associated with Exadata database server.

| Property | Type | Description |
|----------|------|-------------|
| `dbNodeIds` | `array<string>` | Output only. OCID of database nodes associated with the database server. |
| `dbNodeStorageSizeGb` | `integer` | Optional. Local storage per VM. |
| `maxDbNodeStorageSizeGb` | `integer` | Optional. Maximum local storage per VM. |
| `maxMemorySizeGb` | `integer` | Optional. Maximum memory allocated in GBs. |
| `maxOcpuCount` | `integer` | Optional. Maximum OCPU count per database. |
| `memorySizeGb` | `integer` | Optional. Memory allocated in GBs. |
| `ocid` | `string` | Output only. OCID of database server. |
| `ocpuCount` | `integer` | Optional. OCPU count per database. |
| `state` | `string` | Output only. State of the database server. |
| `vmCount` | `integer` | Optional. Vm count per database. |

### `DbSystem`

Details of the DbSystem (BaseDB) resource. https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/DbSystem/

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The date and time that the DbSystem was created. |
| `displayName` | `string` | Required. The display name for the System db. The name does not have to be unique within your pro... |
| `entitlementId` | `string` | Output only. The ID of the subscription entitlement associated with the DbSystem |
| `gcpOracleZone` | `string` | Optional. The GCP Oracle zone where Oracle DbSystem is hosted. Example: us-east4-b-r2. If not spe... |
| `labels` | `object` | Optional. The labels or tags associated with the DbSystem. |
| `name` | `string` | Identifier. The name of the DbSystem resource in the following format: projects/{project}/locatio... |
| `ociUrl` | `string` | Output only. HTTPS link to OCI resources exposed to Customer via UI Interface. |
| `odbNetwork` | `string` | Optional. The name of the OdbNetwork associated with the DbSystem. Format: projects/{project}/loc... |
| `odbSubnet` | `string` | Required. The name of the OdbSubnet associated with the DbSystem for IP allocation. Format: proje... |
| `properties` | `DbSystemProperties` | Optional. The properties of the DbSystem. |

### `DbSystemInitialStorageSize`

Summary of the DbSystem initial storage size.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Output only. The name of the resource. |
| `properties` | `DbSystemInitialStorageSizeProperties` | Output only. The properties of the DbSystem initial storage size summary. |

### `DbSystemInitialStorageSizeProperties`

The properties of a DbSystem initial storage size summary.

| Property | Type | Description |
|----------|------|-------------|
| `launchFromBackupStorageSizeDetails` | `array<StorageSizeDetails>` | Output only. List of storage disk details available for launches from backup. |
| `shapeType` | `string` | Output only. VM shape platform type |
| `storageManagement` | `string` | Output only. The storage option used in DB system. |
| `storageSizeDetails` | `array<StorageSizeDetails>` | Output only. List of storage disk details. |

### `DbSystemOptions`

Details of the DbSystem Options.

| Property | Type | Description |
|----------|------|-------------|
| `storageManagement` | `string` | Optional. The storage option used in DB system. |

### `DbSystemProperties`

The properties of a DbSystem.

| Property | Type | Description |
|----------|------|-------------|
| `computeCount` | `integer` | Required. The number of CPU cores to enable for the DbSystem. |
| `computeModel` | `string` | Optional. The compute model of the DbSystem. |
| `dataCollectionOptions` | `DataCollectionOptionsDbSystem` | Optional. Data collection options for diagnostics. |
| `dataStorageSizeGb` | `integer` | Optional. The data storage size in GB that is currently available to DbSystems. |
| `databaseEdition` | `string` | Required. The database edition of the DbSystem. |
| `dbHome` | `DbHome` | Optional. Details for creating a Database Home. |
| `dbSystemOptions` | `DbSystemOptions` | Optional. The options for the DbSystem. |
| `domain` | `string` | Optional. The host domain name of the DbSystem. |
| `hostname` | `string` | Output only. The hostname of the DbSystem. |
| `hostnamePrefix` | `string` | Optional. Prefix for DB System host names. |
| `initialDataStorageSizeGb` | `integer` | Required. The initial data storage size in GB. |
| `licenseModel` | `string` | Required. The license model of the DbSystem. |
| `lifecycleState` | `string` | Output only. State of the DbSystem. |
| `memorySizeGb` | `integer` | Optional. The memory size in GB. |
| `nodeCount` | `integer` | Optional. The number of nodes in the DbSystem. |
| `ocid` | `string` | Output only. OCID of the DbSystem. |
| `privateIp` | `string` | Optional. The private IP address of the DbSystem. |
| `recoStorageSizeGb` | `integer` | Optional. The reco/redo storage size in GB. |
| `shape` | `string` | Required. Shape of DB System. |
| `sshPublicKeys` | `array<string>` | Required. SSH public keys to be stored with the DbSystem. |
| `timeZone` | `TimeZone` | Optional. Time zone of the DbSystem. |

### `DbSystemShape`

Details of the Database System Shapes resource. https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/DbSystemShapeSummary/

| Property | Type | Description |
|----------|------|-------------|
| `availableCoreCountPerNode` | `integer` | Optional. Number of cores per node. |
| `availableDataStorageTb` | `integer` | Optional. Storage per storage server in terabytes. |
| `availableMemoryPerNodeGb` | `integer` | Optional. Memory per database server node in gigabytes. |
| `maxNodeCount` | `integer` | Optional. Maximum number of database servers. |
| `maxStorageCount` | `integer` | Optional. Maximum number of storage servers. |
| `minCoreCountPerNode` | `integer` | Optional. Minimum core count per node. |
| `minDbNodeStoragePerNodeGb` | `integer` | Optional. Minimum node storage per database server in gigabytes. |
| `minMemoryPerNodeGb` | `integer` | Optional. Minimum memory per node in gigabytes. |
| `minNodeCount` | `integer` | Optional. Minimum number of database servers. |
| `minStorageCount` | `integer` | Optional. Minimum number of storage servers. |
| `name` | `string` | Identifier. The name of the Database System Shape resource with the format: projects/{project}/lo... |
| `shape` | `string` | Optional. shape |

### `DbVersion`

A valid Oracle Database version.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Output only. The name of the DbVersion resource in the following format: projects/{project}/locat... |
| `properties` | `DbVersionProperties` | Output only. The properties of the DbVersion. |

### `DbVersionProperties`

The properties of a DbVersion.

| Property | Type | Description |
|----------|------|-------------|
| `isLatestForMajorVersion` | `boolean` | Output only. True if this version of the Oracle Database software is the latest version for a rel... |
| `isPreviewDbVersion` | `boolean` | Output only. True if this version of the Oracle Database software is the preview version. |
| `isUpgradeSupported` | `boolean` | Output only. True if this version of the Oracle Database software is supported for Upgrade. |
| `supportsPdb` | `boolean` | Output only. True if this version of the Oracle Database software supports pluggable databases. |
| `version` | `string` | Output only. A valid Oracle Database version. |

### `DefinedTagValue`

Wrapper message for the value of a defined tag.

| Property | Type | Description |
|----------|------|-------------|
| `tags` | `object` | The tags within the namespace. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `EncryptionKey`

The encryption key used to encrypt the Autonomous Database.

| Property | Type | Description |
|----------|------|-------------|
| `kmsKey` | `string` | Optional. The KMS key used to encrypt the Autonomous Database. This field is required if the prov... |
| `provider` | `string` | Optional. The provider of the encryption key. |

### `EncryptionKeyHistoryEntry`

The history of the encryption keys used to encrypt the Autonomous Database.

| Property | Type | Description |
|----------|------|-------------|
| `activationTime` | `string` | Output only. The date and time when the encryption key was activated on the Autonomous Database.. |
| `encryptionKey` | `EncryptionKey` | Output only. The encryption key used to encrypt the Autonomous Database. |

### `Entitlement`

Details of the Entitlement resource.

| Property | Type | Description |
|----------|------|-------------|
| `cloudAccountDetails` | `CloudAccountDetails` | Details of the OCI Cloud Account. |
| `entitlementId` | `string` | Output only. Google Cloud Marketplace order ID (aka entitlement ID) |
| `name` | `string` | Identifier. The name of the Entitlement resource with the format: projects/{project}/locations/{r... |
| `state` | `string` | Output only. Entitlement State. |

### `ExadbVmCluster`

ExadbVmCluster represents a cluster of VMs that are used to run Exadata workloads. https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/ExadbVmCluster/

| Property | Type | Description |
|----------|------|-------------|
| `backupOdbSubnet` | `string` | Required. Immutable. The name of the backup OdbSubnet associated with the ExadbVmCluster. Format:... |
| `createTime` | `string` | Output only. The date and time that the ExadbVmCluster was created. |
| `displayName` | `string` | Required. Immutable. The display name for the ExadbVmCluster. The name does not have to be unique... |
| `entitlementId` | `string` | Output only. The ID of the subscription entitlement associated with the ExadbVmCluster. |
| `gcpOracleZone` | `string` | Output only. Immutable. The GCP Oracle zone where Oracle ExadbVmCluster is hosted. Example: us-ea... |
| `labels` | `object` | Optional. The labels or tags associated with the ExadbVmCluster. |
| `name` | `string` | Identifier. The name of the ExadbVmCluster resource in the following format: projects/{project}/l... |
| `odbNetwork` | `string` | Optional. Immutable. The name of the OdbNetwork associated with the ExadbVmCluster. Format: proje... |
| `odbSubnet` | `string` | Required. Immutable. The name of the OdbSubnet associated with the ExadbVmCluster for IP allocati... |
| `properties` | `ExadbVmClusterProperties` | Required. The properties of the ExadbVmCluster. |

### `ExadbVmClusterProperties`

The properties of an ExadbVmCluster.

| Property | Type | Description |
|----------|------|-------------|
| `additionalEcpuCountPerNode` | `integer` | Optional. Immutable. The number of additional ECPUs per node for an Exadata VM cluster on exascal... |
| `clusterName` | `string` | Optional. Immutable. The cluster name for Exascale vm cluster. The cluster name must begin with a... |
| `dataCollectionOptions` | `DataCollectionOptionsCommon` | Optional. Immutable. Indicates user preference for data collection options. |
| `enabledEcpuCountPerNode` | `integer` | Required. Immutable. The number of ECPUs enabled per node for an exadata vm cluster on exascale i... |
| `exascaleDbStorageVault` | `string` | Required. Immutable. The name of ExascaleDbStorageVault associated with the ExadbVmCluster. It ca... |
| `giVersion` | `string` | Output only. The Oracle Grid Infrastructure (GI) software version. |
| `gridImageId` | `string` | Required. Immutable. Grid Infrastructure Version. |
| `hostname` | `string` | Output only. The hostname of the ExadbVmCluster. |
| `hostnamePrefix` | `string` | Required. Immutable. Prefix for VM cluster host names. |
| `licenseModel` | `string` | Optional. Immutable. The license type of the ExadbVmCluster. |
| `lifecycleState` | `string` | Output only. State of the cluster. |
| `memorySizeGb` | `integer` | Output only. Memory per VM (GB) (Read-only): Shows the amount of memory allocated to each VM. Mem... |
| `nodeCount` | `integer` | Required. The number of nodes/VMs in the ExadbVmCluster. |
| `ociUri` | `string` | Output only. Deep link to the OCI console to view this resource. |
| `scanListenerPortTcp` | `integer` | Optional. Immutable. SCAN listener port - TCP |
| `shapeAttribute` | `string` | Required. Immutable. The shape attribute of the VM cluster. The type of Exascale storage used for... |
| `sshPublicKeys` | `array<string>` | Required. Immutable. The SSH public keys for the ExadbVmCluster. |
| `timeZone` | `TimeZone` | Optional. Immutable. The time zone of the ExadbVmCluster. |
| `vmFileSystemStorage` | `ExadbVmClusterStorageDetails` | Required. Immutable. Total storage details for the ExadbVmCluster. |

### `ExadbVmClusterStorageDetails`

The storage allocation for the exadbvmcluster, in gigabytes (GB).

| Property | Type | Description |
|----------|------|-------------|
| `sizeInGbsPerNode` | `integer` | Required. The storage allocation for the exadbvmcluster per node, in gigabytes (GB). This field i... |

### `ExascaleDbStorageDetails`

The storage details of the ExascaleDbStorageVault.

| Property | Type | Description |
|----------|------|-------------|
| `availableSizeGbs` | `integer` | Output only. The available storage capacity for the ExascaleDbStorageVault, in gigabytes (GB). |
| `totalSizeGbs` | `integer` | Required. The total storage allocation for the ExascaleDbStorageVault, in gigabytes (GB). |

### `ExascaleDbStorageVault`

ExascaleDbStorageVault represents a storage vault exadb vm cluster resource. https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/ExascaleDbStorageVault/

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The date and time when the ExascaleDbStorageVault was created. |
| `displayName` | `string` | Required. The display name for the ExascaleDbStorageVault. The name does not have to be unique wi... |
| `entitlementId` | `string` | Output only. The ID of the subscription entitlement associated with the ExascaleDbStorageVault. |
| `gcpOracleZone` | `string` | Optional. The GCP Oracle zone where Oracle ExascaleDbStorageVault is hosted. Example: us-east4-b-... |
| `labels` | `object` | Optional. The labels or tags associated with the ExascaleDbStorageVault. |
| `name` | `string` | Identifier. The resource name of the ExascaleDbStorageVault. Format: projects/{project}/locations... |
| `properties` | `ExascaleDbStorageVaultProperties` | Required. The properties of the ExascaleDbStorageVault. |

### `ExascaleDbStorageVaultProperties`

The properties of the ExascaleDbStorageVault. next ID: 12

| Property | Type | Description |
|----------|------|-------------|
| `additionalFlashCachePercent` | `integer` | Optional. The size of additional flash cache in percentage of high capacity database storage. |
| `attachedShapeAttributes` | `array<string>` | Output only. The shape attributes of the VM clusters attached to the ExascaleDbStorageVault. |
| `availableShapeAttributes` | `array<string>` | Output only. The shape attributes available for the VM clusters to be attached to the ExascaleDbS... |
| `description` | `string` | Optional. The description of the ExascaleDbStorageVault. |
| `exascaleDbStorageDetails` | `ExascaleDbStorageDetails` | Required. The storage details of the ExascaleDbStorageVault. |
| `ociUri` | `string` | Output only. Deep link to the OCI console to view this resource. |
| `ocid` | `string` | Output only. The OCID for the ExascaleDbStorageVault. |
| `state` | `string` | Output only. The state of the ExascaleDbStorageVault. |
| `timeZone` | `TimeZone` | Output only. The time zone of the ExascaleDbStorageVault. |
| `vmClusterCount` | `integer` | Output only. The number of VM clusters associated with the ExascaleDbStorageVault. |
| `vmClusterIds` | `array<string>` | Output only. The list of VM cluster OCIDs associated with the ExascaleDbStorageVault. |

### `FailoverAutonomousDatabaseRequest`

The request for `OracleDatabase.FailoverAutonomousDatabase`.

| Property | Type | Description |
|----------|------|-------------|
| `peerAutonomousDatabase` | `string` | Optional. The peer database name to fail over to. Required for cross-region standby, and must be ... |

### `GenerateAutonomousDatabaseWalletRequest`

The request for `AutonomousDatabase.GenerateWallet`.

| Property | Type | Description |
|----------|------|-------------|
| `isRegional` | `boolean` | Optional. True when requesting regional connection strings in PDB connect info, applicable to cro... |
| `password` | `string` | Required. The password used to encrypt the keys inside the wallet. The password must be a minimum... |
| `type` | `string` | Optional. The type of wallet generation for the Autonomous Database. The default value is SINGLE. |

### `GenerateAutonomousDatabaseWalletResponse`

The response for `AutonomousDatabase.GenerateWallet`.

| Property | Type | Description |
|----------|------|-------------|
| `archiveContent` | `string` | Output only. The base64 encoded wallet files. |

### `GiVersion`

Details of the Oracle Grid Infrastructure (GI) version resource. https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/GiVersionSummary/

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Identifier. The name of the Oracle Grid Infrastructure (GI) version resource with the format: pro... |
| `version` | `string` | Optional. version |

### `IdentityConnector`

The identity connector details which will allow OCI to securely access the resources in the customer project.

| Property | Type | Description |
|----------|------|-------------|
| `connectionState` | `string` | Output only. The connection state of the identity connector. |
| `serviceAgentEmail` | `string` | Output only. A google managed service account on which customers can grant roles to access resour... |

### `ListAutonomousDatabaseBackupsResponse`

The response for `AutonomousDatabaseBackup.List`.

| Property | Type | Description |
|----------|------|-------------|
| `autonomousDatabaseBackups` | `array<AutonomousDatabaseBackup>` | The list of Autonomous Database Backups. |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |

### `ListAutonomousDatabaseCharacterSetsResponse`

The response for `AutonomousDatabaseCharacterSet.List`.

| Property | Type | Description |
|----------|------|-------------|
| `autonomousDatabaseCharacterSets` | `array<AutonomousDatabaseCharacterSet>` | The list of Autonomous Database Character Sets. |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |

### `ListAutonomousDatabasesResponse`

The response for `AutonomousDatabase.List`.

| Property | Type | Description |
|----------|------|-------------|
| `autonomousDatabases` | `array<AutonomousDatabase>` | The list of Autonomous Databases. |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |

### `ListAutonomousDbVersionsResponse`

The response for `AutonomousDbVersion.List`.

| Property | Type | Description |
|----------|------|-------------|
| `autonomousDbVersions` | `array<AutonomousDbVersion>` | The list of Autonomous Database versions. |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |

### `ListCloudExadataInfrastructuresResponse`

The response for `CloudExadataInfrastructures.list`.

| Property | Type | Description |
|----------|------|-------------|
| `cloudExadataInfrastructures` | `array<CloudExadataInfrastructure>` | The list of Exadata Infrastructures. |
| `nextPageToken` | `string` | A token for fetching next page of response. |

### `ListCloudVmClustersResponse`

The response for `CloudVmCluster.List`.

| Property | Type | Description |
|----------|------|-------------|
| `cloudVmClusters` | `array<CloudVmCluster>` | The list of VM Clusters. |
| `nextPageToken` | `string` | A token to fetch the next page of results. |

### `ListDatabaseCharacterSetsResponse`

The response for `DatabaseCharacterSet.List`.

| Property | Type | Description |
|----------|------|-------------|
| `databaseCharacterSets` | `array<DatabaseCharacterSet>` | The list of DatabaseCharacterSets. |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |

### `ListDatabasesResponse`

The response for `Database.List`.

| Property | Type | Description |
|----------|------|-------------|
| `databases` | `array<Database>` | The list of Databases. |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |

### `ListDbNodesResponse`

The response for `DbNode.List`.

| Property | Type | Description |
|----------|------|-------------|
| `dbNodes` | `array<DbNode>` | The list of DB Nodes |
| `nextPageToken` | `string` | A token identifying a page of results the node should return. |

### `ListDbServersResponse`

The response for `DbServer.List`.

| Property | Type | Description |
|----------|------|-------------|
| `dbServers` | `array<DbServer>` | The list of database servers. |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |

### `ListDbSystemInitialStorageSizesResponse`

The response for `DbSystemInitialStorageSizes.List`.

| Property | Type | Description |
|----------|------|-------------|
| `dbSystemInitialStorageSizes` | `array<DbSystemInitialStorageSize>` | The list of DbSystemInitialStorageSizes. |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |

### `ListDbSystemShapesResponse`

The response for `DbSystemShape.List`.

| Property | Type | Description |
|----------|------|-------------|
| `dbSystemShapes` | `array<DbSystemShape>` | The list of Database System shapes. |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |

### `ListDbSystemsResponse`

The response for `DbSystem.List`.

| Property | Type | Description |
|----------|------|-------------|
| `dbSystems` | `array<DbSystem>` | The list of DbSystems. |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |

### `ListDbVersionsResponse`

The response for `DbVersions.List`.

| Property | Type | Description |
|----------|------|-------------|
| `dbVersions` | `array<DbVersion>` | The list of DbVersions. |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |

### `ListEntitlementsResponse`

The response for `Entitlement.List`.

| Property | Type | Description |
|----------|------|-------------|
| `entitlements` | `array<Entitlement>` | The list of Entitlements |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |

### `ListExadbVmClustersResponse`

The response for `ExadbVmCluster.List`.

| Property | Type | Description |
|----------|------|-------------|
| `exadbVmClusters` | `array<ExadbVmCluster>` | The list of ExadbVmClusters. |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |

### `ListExascaleDbStorageVaultsResponse`

The response for `ExascaleDbStorageVault.List`.

| Property | Type | Description |
|----------|------|-------------|
| `exascaleDbStorageVaults` | `array<ExascaleDbStorageVault>` | The ExascaleDbStorageVaults. |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. If present, the next page token c... |

### `ListGiVersionsResponse`

The response for `GiVersion.List`.

| Property | Type | Description |
|----------|------|-------------|
| `giVersions` | `array<GiVersion>` | The list of Oracle Grid Infrastructure (GI) versions. |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |

### `ListLocationsResponse`

The response message for Locations.ListLocations.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<Location>` | A list of locations that matches the specified filter in the request. |
| `nextPageToken` | `string` | The standard List next-page token. |

### `ListMinorVersionsResponse`

The response for `MinorVersion.List`.

| Property | Type | Description |
|----------|------|-------------|
| `minorVersions` | `array<MinorVersion>` | The list of MinorVersions. |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |

### `ListOdbNetworksResponse`

The response for `OdbNetwork.List`.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `odbNetworks` | `array<OdbNetwork>` | The list of ODB Networks. |
| `unreachable` | `array<string>` | Unreachable locations when listing resources across all locations using wildcard location '-'. |

### `ListOdbSubnetsResponse`

The response for `OdbSubnet.List`.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `odbSubnets` | `array<OdbSubnet>` | The list of ODB Subnets. |
| `unreachable` | `array<string>` | Unreachable locations when listing resources across all locations using wildcard location '-'. |

### `ListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<Operation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `ListPluggableDatabasesResponse`

The response for `PluggableDatabase.List`.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `pluggableDatabases` | `array<PluggableDatabase>` | The list of PluggableDatabases. |

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

Metadata for a given Location.

| Property | Type | Description |
|----------|------|-------------|
| `gcpOracleZones` | `array<string>` | Output only. Google Cloud Platform Oracle zones in a location. |

### `MaintenanceWindow`

Maintenance window as defined by Oracle. https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/MaintenanceWindow

| Property | Type | Description |
|----------|------|-------------|
| `customActionTimeoutMins` | `integer` | Optional. Determines the amount of time the system will wait before the start of each database se... |
| `daysOfWeek` | `array<string>` | Optional. Days during the week when maintenance should be performed. |
| `hoursOfDay` | `array<integer>` | Optional. The window of hours during the day when maintenance should be performed. The window is ... |
| `isCustomActionTimeoutEnabled` | `boolean` | Optional. If true, enables the configuration of a custom action timeout (waiting period) between ... |
| `leadTimeWeek` | `integer` | Optional. Lead time window allows user to set a lead time to prepare for a down time. The lead ti... |
| `months` | `array<string>` | Optional. Months during the year when maintenance should be performed. |
| `patchingMode` | `string` | Optional. Cloud CloudExadataInfrastructure node patching method, either "ROLLING" or "NONROLLING"... |
| `preference` | `string` | Optional. The maintenance window scheduling preference. |
| `weeksOfMonth` | `array<integer>` | Optional. Weeks during the month when maintenance should be performed. Weeks start on the 1st, 8t... |

### `MinorVersion`

MinorVersion represents a minor version of a GI. https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/GiMinorVersionSummary/

| Property | Type | Description |
|----------|------|-------------|
| `gridImageId` | `string` | Optional. The ID of the Grid Image. |
| `name` | `string` | Identifier. The name of the MinorVersion resource with the format: projects/{project}/locations/{... |
| `version` | `string` | Optional. The valid Oracle grid infrastructure software version. |

### `OdbNetwork`

Represents OdbNetwork resource.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The date and time that the OdbNetwork was created. |
| `entitlementId` | `string` | Output only. The ID of the subscription entitlement associated with the OdbNetwork. |
| `gcpOracleZone` | `string` | Optional. The GCP Oracle zone where OdbNetwork is hosted. Example: us-east4-b-r2. If not specifie... |
| `labels` | `object` | Optional. Labels or tags associated with the resource. |
| `name` | `string` | Identifier. The name of the OdbNetwork resource in the following format: projects/{project}/locat... |
| `network` | `string` | Required. The name of the VPC network in the following format: projects/{project}/global/networks... |
| `state` | `string` | Output only. State of the ODB Network. |

### `OdbSubnet`

Represents OdbSubnet resource.

| Property | Type | Description |
|----------|------|-------------|
| `cidrRange` | `string` | Required. The CIDR range of the subnet. |
| `createTime` | `string` | Output only. The date and time that the OdbNetwork was created. |
| `labels` | `object` | Optional. Labels or tags associated with the resource. |
| `name` | `string` | Identifier. The name of the OdbSubnet resource in the following format: projects/{project}/locati... |
| `purpose` | `string` | Required. Purpose of the subnet. |
| `state` | `string` | Output only. State of the ODB Subnet. |

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
| `percentComplete` | `number` | Output only. An estimated percentage of the operation that has been completed at a given moment o... |
| `requestedCancellation` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. Operations ... |
| `statusMessage` | `string` | Output only. The status of the operation. |
| `target` | `string` | Output only. Server-defined resource path for the target of the operation. |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `PluggableDatabase`

The PluggableDatabase resource. https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/PluggableDatabase/

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The date and time that the PluggableDatabase was created. |
| `name` | `string` | Identifier. The name of the PluggableDatabase resource in the following format: projects/{project... |
| `ociUrl` | `string` | Output only. HTTPS link to OCI resources exposed to Customer via UI Interface. |
| `properties` | `PluggableDatabaseProperties` | Optional. The properties of the PluggableDatabase. |

### `PluggableDatabaseConnectionStrings`

The connection strings used to connect to the Oracle Database.

| Property | Type | Description |
|----------|------|-------------|
| `allConnectionStrings` | `object` | Optional. All connection strings to use to connect to the pluggable database. |
| `pdbDefault` | `string` | Optional. The default connection string to use to connect to the pluggable database. |
| `pdbIpDefault` | `string` | Optional. The default connection string to use to connect to the pluggable database using IP. |

### `PluggableDatabaseNodeLevelDetails`

The Pluggable Database Node Level Details.

| Property | Type | Description |
|----------|------|-------------|
| `nodeName` | `string` | Required. The Node name of the Database home. |
| `openMode` | `string` | Required. The mode that the pluggable database is in to open it. |
| `pluggableDatabaseId` | `string` | Required. The OCID of the Pluggable Database. |

### `PluggableDatabaseProperties`

The properties of a PluggableDatabase.

| Property | Type | Description |
|----------|------|-------------|
| `compartmentId` | `string` | Required. The OCID of the compartment. |
| `connectionStrings` | `PluggableDatabaseConnectionStrings` | Optional. The Connection strings used to connect to the Oracle Database. |
| `containerDatabaseOcid` | `string` | Required. The OCID of the CDB. |
| `databaseManagementConfig` | `DatabaseManagementConfig` | Output only. The configuration of the Database Management service. |
| `definedTags` | `object` | Optional. Defined tags for this resource. Each key is predefined and scoped to a namespace. |
| `freeformTags` | `object` | Optional. Free-form tags for this resource. Each tag is a simple key-value pair with no predefine... |
| `isRestricted` | `boolean` | Optional. The restricted mode of the pluggable database. If a pluggable database is opened in res... |
| `lifecycleDetails` | `string` | Output only. Additional information about the current lifecycle state. |
| `lifecycleState` | `string` | Output only. The current state of the pluggable database. |
| `ocid` | `string` | Output only. The OCID of the pluggable database. |
| `operationsInsightsState` | `string` | Output only. The status of Operations Insights for this Database. |
| `pdbName` | `string` | Required. The database name. |
| `pdbNodeLevelDetails` | `array<PluggableDatabaseNodeLevelDetails>` | Optional. Pluggable Database Node Level Details |

### `RemoveVirtualMachineExadbVmClusterRequest`

The request for `ExadbVmCluster.RemoveVirtualMachine`.

| Property | Type | Description |
|----------|------|-------------|
| `hostnames` | `array<string>` | Required. The list of host names of db nodes to be removed from the ExadbVmCluster. |
| `requestId` | `string` | Optional. An optional ID to identify the request. This value is used to identify duplicate reques... |

### `RestartAutonomousDatabaseRequest`

The request for `AutonomousDatabase.Restart`.

### `RestoreAutonomousDatabaseRequest`

The request for `AutonomousDatabase.Restore`.

| Property | Type | Description |
|----------|------|-------------|
| `restoreTime` | `string` | Required. The time and date to restore the database to. |

### `ScheduledOperationDetails`

Details of scheduled operation. https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/ScheduledOperationDetails

| Property | Type | Description |
|----------|------|-------------|
| `dayOfWeek` | `string` | Output only. Day of week. |
| `startTime` | `TimeOfDay` | Output only. Auto start time. |
| `stopTime` | `TimeOfDay` | Output only. Auto stop time. |

### `SourceConfig`

The source configuration for the standby Autonomous Database.

| Property | Type | Description |
|----------|------|-------------|
| `automaticBackupsReplicationEnabled` | `boolean` | Optional. This field specifies if the replication of automatic backups is enabled when creating a... |
| `autonomousDatabase` | `string` | Optional. The name of the primary Autonomous Database that is used to create a Peer Autonomous Da... |

### `StartAutonomousDatabaseRequest`

The request for `AutonomousDatabase.Start`.

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `StopAutonomousDatabaseRequest`

The request for `AutonomousDatabase.Stop`.

### `StorageSizeDetails`

The initial storage size, in gigabytes, that is applicable for virtual machine DBSystem.

| Property | Type | Description |
|----------|------|-------------|
| `dataStorageSizeInGbs` | `integer` | Output only. The data storage size, in gigabytes, that is applicable for virtual machine DBSystem. |
| `recoStorageSizeInGbs` | `integer` | Output only. The RECO/REDO storage size, in gigabytes, that is applicable for virtual machine DBS... |

### `SwitchoverAutonomousDatabaseRequest`

The request for `OracleDatabase.SwitchoverAutonomousDatabase`.

| Property | Type | Description |
|----------|------|-------------|
| `peerAutonomousDatabase` | `string` | Optional. The peer database name to switch over to. Required for cross-region standby, and must b... |

### `TimeOfDay`

Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and `google.protobuf.Timestamp`.

| Property | Type | Description |
|----------|------|-------------|
| `hours` | `integer` | Hours of a day in 24 hour format. Must be greater than or equal to 0 and typically must be less t... |
| `minutes` | `integer` | Minutes of an hour. Must be greater than or equal to 0 and less than or equal to 59. |
| `nanos` | `integer` | Fractions of seconds, in nanoseconds. Must be greater than or equal to 0 and less than or equal t... |
| `seconds` | `integer` | Seconds of a minute. Must be greater than or equal to 0 and typically must be less than or equal ... |

### `TimeZone`

Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/time-zones).

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | IANA Time Zone Database time zone. For example "America/New_York". |
| `version` | `string` | Optional. IANA Time Zone Database version number. For example "2019a". |

