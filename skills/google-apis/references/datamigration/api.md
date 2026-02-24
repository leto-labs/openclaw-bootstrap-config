# Database Migration API - API Reference

**Version**: `v1` | **Methods**: 67 | **Schemas**: 171

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `datamigration.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `datamigration.projects.locations.fetchStaticIps` | GET | `v1/{+name}:fetchStaticIps` | Fetches a set of static IP addresses that need to be allowlisted by the customer when using the s... |
| `datamigration.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `datamigration.projects.locations.conversionWorkspaces.searchBackgroundJobs` | GET | `v1/{+conversionWorkspace}:searchBackgroundJobs` | Searches/lists the background jobs for a specific conversion workspace. The background jobs are n... |
| `datamigration.projects.locations.conversionWorkspaces.describeDatabaseEntities` | GET | `v1/{+conversionWorkspace}:describeDatabaseEntities` | Describes the database entities tree for a specific conversion workspace and a specific tree type... |
| `datamigration.projects.locations.conversionWorkspaces.create` | POST | `v1/{+parent}/conversionWorkspaces` | Creates a new conversion workspace in a given project and location. |
| `datamigration.projects.locations.conversionWorkspaces.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `datamigration.projects.locations.conversionWorkspaces.delete` | DELETE | `v1/{+name}` | Deletes a single conversion workspace. |
| `datamigration.projects.locations.conversionWorkspaces.rollback` | POST | `v1/{+name}:rollback` | Rolls back a conversion workspace to the last committed snapshot. |
| `datamigration.projects.locations.conversionWorkspaces.apply` | POST | `v1/{+name}:apply` | Applies draft tree onto a specific destination database. |
| `datamigration.projects.locations.conversionWorkspaces.convert` | POST | `v1/{+name}:convert` | Creates a draft tree schema for the destination database. |
| `datamigration.projects.locations.conversionWorkspaces.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single conversion workspace. |
| `datamigration.projects.locations.conversionWorkspaces.describeConversionWorkspaceRevisions` | GET | `v1/{+conversionWorkspace}:describeConversionWorkspaceRevisions` | Retrieves a list of committed revisions of a specific conversion workspace. |
| `datamigration.projects.locations.conversionWorkspaces.seed` | POST | `v1/{+name}:seed` | Imports a snapshot of the source database into the conversion workspace. |
| `datamigration.projects.locations.conversionWorkspaces.commit` | POST | `v1/{+name}:commit` | Marks all the data in the conversion workspace as committed. |
| `datamigration.projects.locations.conversionWorkspaces.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `datamigration.projects.locations.conversionWorkspaces.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `datamigration.projects.locations.conversionWorkspaces.list` | GET | `v1/{+parent}/conversionWorkspaces` | Lists conversion workspaces in a given project and location. |
| `datamigration.projects.locations.conversionWorkspaces.get` | GET | `v1/{+name}` | Gets details of a single conversion workspace. |
| `datamigration.projects.locations.conversionWorkspaces.mappingRules.create` | POST | `v1/{+parent}/mappingRules` | Creates a new mapping rule for a given conversion workspace. |
| `datamigration.projects.locations.conversionWorkspaces.mappingRules.import` | POST | `v1/{+parent}/mappingRules:import` | Imports the mapping rules for a given conversion workspace. Supports various formats of external ... |
| `datamigration.projects.locations.conversionWorkspaces.mappingRules.get` | GET | `v1/{+name}` | Gets the details of a mapping rule. |
| `datamigration.projects.locations.conversionWorkspaces.mappingRules.list` | GET | `v1/{+parent}/mappingRules` | Lists the mapping rules for a specific conversion workspace. |
| `datamigration.projects.locations.conversionWorkspaces.mappingRules.delete` | DELETE | `v1/{+name}` | Deletes a single mapping rule. |
| `datamigration.projects.locations.connectionProfiles.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `datamigration.projects.locations.connectionProfiles.list` | GET | `v1/{+parent}/connectionProfiles` | Retrieves a list of all connection profiles in a given project and location. |
| `datamigration.projects.locations.connectionProfiles.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `datamigration.projects.locations.connectionProfiles.get` | GET | `v1/{+name}` | Gets details of a single connection profile. |
| `datamigration.projects.locations.connectionProfiles.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `datamigration.projects.locations.connectionProfiles.delete` | DELETE | `v1/{+name}` | Deletes a single Database Migration Service connection profile. A connection profile can only be ... |
| `datamigration.projects.locations.connectionProfiles.create` | POST | `v1/{+parent}/connectionProfiles` | Creates a new connection profile in a given project and location. |
| `datamigration.projects.locations.connectionProfiles.patch` | PATCH | `v1/{+name}` | Update the configuration of a single connection profile. |
| `datamigration.projects.locations.privateConnections.create` | POST | `v1/{+parent}/privateConnections` | Creates a new private connection in a given project and location. |
| `datamigration.projects.locations.privateConnections.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `datamigration.projects.locations.privateConnections.get` | GET | `v1/{+name}` | Gets details of a single private connection. |
| `datamigration.projects.locations.privateConnections.list` | GET | `v1/{+parent}/privateConnections` | Retrieves a list of private connections in a given project and location. |
| `datamigration.projects.locations.privateConnections.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `datamigration.projects.locations.privateConnections.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `datamigration.projects.locations.privateConnections.delete` | DELETE | `v1/{+name}` | Deletes a single Database Migration Service private connection. |
| `datamigration.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `datamigration.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `datamigration.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `datamigration.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `datamigration.projects.locations.migrationJobs.verify` | POST | `v1/{+name}:verify` | Verify a migration job, making sure the destination can reach the source and that all configurati... |
| `datamigration.projects.locations.migrationJobs.generateSshScript` | POST | `v1/{+migrationJob}:generateSshScript` | Generate a SSH configuration script to configure the reverse SSH connectivity. |
| `datamigration.projects.locations.migrationJobs.fetchSourceObjects` | GET | `v1/{+name}:fetchSourceObjects` | Retrieves objects from the source database that can be selected for data migration. This is appli... |
| `datamigration.projects.locations.migrationJobs.demoteDestination` | POST | `v1/{+name}:demoteDestination` | Demotes the destination database to become a read replica of the source. This is applicable for t... |
| `datamigration.projects.locations.migrationJobs.create` | POST | `v1/{+parent}/migrationJobs` | Creates a new migration job in a given project and location. |
| `datamigration.projects.locations.migrationJobs.promote` | POST | `v1/{+name}:promote` | Promote a migration job, stopping replication to the destination and promoting the destination to... |
| `datamigration.projects.locations.migrationJobs.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `datamigration.projects.locations.migrationJobs.generateTcpProxyScript` | POST | `v1/{+migrationJob}:generateTcpProxyScript` | Generate a TCP Proxy configuration script to configure a cloud-hosted VM running a TCP Proxy. |
| `datamigration.projects.locations.migrationJobs.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single migration job. |
| `datamigration.projects.locations.migrationJobs.stop` | POST | `v1/{+name}:stop` | Stops a running migration job. |
| `datamigration.projects.locations.migrationJobs.start` | POST | `v1/{+name}:start` | Start an already created migration job. |
| `datamigration.projects.locations.migrationJobs.resume` | POST | `v1/{+name}:resume` | Resume a migration job that is currently stopped and is resumable (was stopped during CDC phase). |
| `datamigration.projects.locations.migrationJobs.list` | GET | `v1/{+parent}/migrationJobs` | Lists migration jobs in a given project and location. |
| `datamigration.projects.locations.migrationJobs.delete` | DELETE | `v1/{+name}` | Deletes a single migration job. |
| `datamigration.projects.locations.migrationJobs.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `datamigration.projects.locations.migrationJobs.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `datamigration.projects.locations.migrationJobs.get` | GET | `v1/{+name}` | Gets details of a single migration job. |
| `datamigration.projects.locations.migrationJobs.restart` | POST | `v1/{+name}:restart` | Restart a stopped or failed migration job, resetting the destination instance to its original sta... |
| `datamigration.projects.locations.migrationJobs.objects.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `datamigration.projects.locations.migrationJobs.objects.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `datamigration.projects.locations.migrationJobs.objects.list` | GET | `v1/{+parent}/objects` | Use this method to list the objects of a specific migration job. |
| `datamigration.projects.locations.migrationJobs.objects.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `datamigration.projects.locations.migrationJobs.objects.lookup` | POST | `v1/{+parent}/objects:lookup` | Use this method to look up a migration job object by its source object identifier. |
| `datamigration.projects.locations.migrationJobs.objects.get` | GET | `v1/{+name}` | Use this method to get details about a migration job object. |

### `datamigration.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await datamigration.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.fetchStaticIps`

**GET** `v1/{+name}:fetchStaticIps`

Fetches a set of static IP addresses that need to be allowlisted by the customer when using the static-IP connectivity method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name for the location for which static IPs should be returned. Must be in the format `projects... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of IPs to return. |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `FetchStaticIps` call. |

**Response**: `FetchStaticIpsResponse`

```typescript
const res = await datamigration.locations.fetchStaticIps({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.list`

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
const res = await datamigration.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.conversionWorkspaces.searchBackgroundJobs`

**GET** `v1/{+conversionWorkspace}:searchBackgroundJobs`

Searches/lists the background jobs for a specific conversion workspace. The background jobs are not resources like conversion workspaces or mapping rules, and they can't be created, updated or deleted. Instead, they are a way to expose the data plane jobs log.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `conversionWorkspace` | `string` | path | Yes | Required. Name of the conversion workspace resource whose jobs are listed, in the form of: projects/{project}/locatio... |
| `completedUntilTime` | `string` | query | No | Optional. If provided, only returns jobs that completed until (not including) the given timestamp. |
| `maxSize` | `integer` | query | No | Optional. The maximum number of jobs to return. The service may return fewer than this value. If unspecified, at most... |
| `returnMostRecentPerJobType` | `boolean` | query | No | Optional. Whether or not to return just the most recent job per job type, |

**Response**: `SearchBackgroundJobsResponse`

```typescript
const res = await datamigration.conversionWorkspaces.searchBackgroundJobs({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.conversionWorkspaces.describeDatabaseEntities`

**GET** `v1/{+conversionWorkspace}:describeDatabaseEntities`

Describes the database entities tree for a specific conversion workspace and a specific tree type. Database entities are not resources like conversion workspaces or mapping rules, and they can't be created, updated or deleted. Instead, they are simple data objects describing the structure of the client database.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `conversionWorkspace` | `string` | path | Yes | Required. Name of the conversion workspace resource whose database entities are described. Must be in the form of: pr... |
| `commitId` | `string` | query | No | Optional. Request a specific commit ID. If not specified, the entities from the latest commit are returned. |
| `filter` | `string` | query | No | Optional. Filter the returned entities based on AIP-160 standard. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of entities to return. The service may return fewer entities than the value specifies. |
| `pageToken` | `string` | query | No | Optional. The nextPageToken value received in the previous call to conversionWorkspace.describeDatabaseEntities, used... |
| `tree` | `string` | query | No | Required. The tree to fetch. |
| `uncommitted` | `boolean` | query | No | Optional. Whether to retrieve the latest committed version of the entities or the latest version. This field is ignor... |
| `view` | `string` | query | No | Optional. Results view based on AIP-157 |

**Response**: `DescribeDatabaseEntitiesResponse`

```typescript
const res = await datamigration.conversionWorkspaces.describeDatabaseEntities({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.conversionWorkspaces.create`

**POST** `v1/{+parent}/conversionWorkspaces`

Creates a new conversion workspace in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent which owns this collection of conversion workspaces. |
| `conversionWorkspaceId` | `string` | query | No | Required. The ID of the conversion workspace to create. |
| `requestId` | `string` | query | No | Optional. A unique ID used to identify the request. If the server receives two requests with the same ID, then the se... |

**Request body**: `ConversionWorkspace`

**Response**: `Operation`

```typescript
const res = await datamigration.conversionWorkspaces.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.conversionWorkspaces.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await datamigration.conversionWorkspaces.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.conversionWorkspaces.delete`

**DELETE** `v1/{+name}`

Deletes a single conversion workspace.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the conversion workspace resource to delete. |
| `force` | `boolean` | query | No | Optional. Force delete the conversion workspace, even if there's a running migration that is using the workspace. |
| `requestId` | `string` | query | No | Optional. A unique ID used to identify the request. If the server receives two requests with the same ID, then the se... |

**Response**: `Operation`

```typescript
const res = await datamigration.conversionWorkspaces.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.conversionWorkspaces.rollback`

**POST** `v1/{+name}:rollback`

Rolls back a conversion workspace to the last committed snapshot.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the conversion workspace resource to roll back to. |

**Request body**: `RollbackConversionWorkspaceRequest`

**Response**: `Operation`

```typescript
const res = await datamigration.conversionWorkspaces.rollback({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.conversionWorkspaces.apply`

**POST** `v1/{+name}:apply`

Applies draft tree onto a specific destination database.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the conversion workspace resource for which to apply the draft tree. Must be in the form of: pr... |

**Request body**: `ApplyConversionWorkspaceRequest`

**Response**: `Operation`

```typescript
const res = await datamigration.conversionWorkspaces.apply({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.conversionWorkspaces.convert`

**POST** `v1/{+name}:convert`

Creates a draft tree schema for the destination database.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Name of the conversion workspace resource to convert in the form of: projects/{project}/locations/{location}/conversi... |

**Request body**: `ConvertConversionWorkspaceRequest`

**Response**: `Operation`

```typescript
const res = await datamigration.conversionWorkspaces.convert({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.conversionWorkspaces.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single conversion workspace.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Full name of the workspace resource, in the form of: projects/{project}/locations/{location}/conversionWorkspaces/{co... |
| `requestId` | `string` | query | No | Optional. A unique ID used to identify the request. If the server receives two requests with the same ID, then the se... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten by the update in the conversion workspace resource. |

**Request body**: `ConversionWorkspace`

**Response**: `Operation`

```typescript
const res = await datamigration.conversionWorkspaces.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.conversionWorkspaces.describeConversionWorkspaceRevisions`

**GET** `v1/{+conversionWorkspace}:describeConversionWorkspaceRevisions`

Retrieves a list of committed revisions of a specific conversion workspace.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `conversionWorkspace` | `string` | path | Yes | Required. Name of the conversion workspace resource whose revisions are listed. Must be in the form of: projects/{pro... |
| `commitId` | `string` | query | No | Optional. Optional filter to request a specific commit ID. |

**Response**: `DescribeConversionWorkspaceRevisionsResponse`

```typescript
const res = await datamigration.conversionWorkspaces.describeConversionWorkspaceRevisions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.conversionWorkspaces.seed`

**POST** `v1/{+name}:seed`

Imports a snapshot of the source database into the conversion workspace.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Name of the conversion workspace resource to seed with new database structure, in the form of: projects/{project}/loc... |

**Request body**: `SeedConversionWorkspaceRequest`

**Response**: `Operation`

```typescript
const res = await datamigration.conversionWorkspaces.seed({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.conversionWorkspaces.commit`

**POST** `v1/{+name}:commit`

Marks all the data in the conversion workspace as committed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the conversion workspace resource to commit. |

**Request body**: `CommitConversionWorkspaceRequest`

**Response**: `Operation`

```typescript
const res = await datamigration.conversionWorkspaces.commit({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.conversionWorkspaces.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await datamigration.conversionWorkspaces.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.conversionWorkspaces.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await datamigration.conversionWorkspaces.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.conversionWorkspaces.list`

**GET** `v1/{+parent}/conversionWorkspaces`

Lists conversion workspaces in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent which owns this collection of conversion workspaces. |
| `filter` | `string` | query | No | Optional. A filter expression that filters conversion workspaces listed in the response. The expression must specify ... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of conversion workspaces to return. The service may return fewer than this value. If uns... |
| `pageToken` | `string` | query | No | Optional. The nextPageToken value received in the previous call to conversionWorkspaces.list, used in the subsequent ... |

**Response**: `ListConversionWorkspacesResponse`

```typescript
const res = await datamigration.conversionWorkspaces.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.conversionWorkspaces.get`

**GET** `v1/{+name}`

Gets details of a single conversion workspace.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the conversion workspace resource to get. |

**Response**: `ConversionWorkspace`

```typescript
const res = await datamigration.conversionWorkspaces.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.conversionWorkspaces.mappingRules.create`

**POST** `v1/{+parent}/mappingRules`

Creates a new mapping rule for a given conversion workspace.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent which owns this collection of mapping rules. |
| `mappingRuleId` | `string` | query | No | Required. The ID of the rule to create. |
| `requestId` | `string` | query | No | Optional. A unique ID used to identify the request. If the server receives two requests with the same ID, then the se... |

**Request body**: `MappingRule`

**Response**: `MappingRule`

```typescript
const res = await datamigration.mappingRules.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.conversionWorkspaces.mappingRules.import`

**POST** `v1/{+parent}/mappingRules:import`

Imports the mapping rules for a given conversion workspace. Supports various formats of external rules files.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the conversion workspace resource to import the rules to in the form of: projects/{project}/locatio... |

**Request body**: `ImportMappingRulesRequest`

**Response**: `Operation`

```typescript
const res = await datamigration.mappingRules.import({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.conversionWorkspaces.mappingRules.get`

**GET** `v1/{+name}`

Gets the details of a mapping rule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the mapping rule resource to get. Example: conversionWorkspaces/123/mappingRules/rule123 In order t... |

**Response**: `MappingRule`

```typescript
const res = await datamigration.mappingRules.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.conversionWorkspaces.mappingRules.list`

**GET** `v1/{+parent}/mappingRules`

Lists the mapping rules for a specific conversion workspace.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the conversion workspace resource whose mapping rules are listed in the form of: projects/{project}... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of rules to return. The service may return fewer than this value. |
| `pageToken` | `string` | query | No | Optional. The nextPageToken value received in the previous call to mappingRules.list, used in the subsequent request ... |

**Response**: `ListMappingRulesResponse`

```typescript
const res = await datamigration.mappingRules.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.conversionWorkspaces.mappingRules.delete`

**DELETE** `v1/{+name}`

Deletes a single mapping rule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the mapping rule resource to delete. |
| `requestId` | `string` | query | No | Optional. A unique ID used to identify the request. If the server receives two requests with the same ID, then the se... |

**Response**: `Empty`

```typescript
const res = await datamigration.mappingRules.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.connectionProfiles.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await datamigration.connectionProfiles.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.connectionProfiles.list`

**GET** `v1/{+parent}/connectionProfiles`

Retrieves a list of all connection profiles in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent which owns this collection of connection profiles. |
| `filter` | `string` | query | No | Optional. A filter expression that filters connection profiles listed in the response. The expression must specify th... |
| `orderBy` | `string` | query | No | Optional. A comma-separated list of fields to order results according to. |
| `pageSize` | `integer` | query | No | The maximum number of connection profiles to return. The service may return fewer than this value. If unspecified, at... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListConnectionProfiles` call. Provide this to retrieve the subseque... |

**Response**: `ListConnectionProfilesResponse`

```typescript
const res = await datamigration.connectionProfiles.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.connectionProfiles.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await datamigration.connectionProfiles.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.connectionProfiles.get`

**GET** `v1/{+name}`

Gets details of a single connection profile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the connection profile resource to get. |

**Response**: `ConnectionProfile`

```typescript
const res = await datamigration.connectionProfiles.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.connectionProfiles.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await datamigration.connectionProfiles.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.connectionProfiles.delete`

**DELETE** `v1/{+name}`

Deletes a single Database Migration Service connection profile. A connection profile can only be deleted if it is not in use by any active migration jobs.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the connection profile resource to delete. |
| `force` | `boolean` | query | No | In case of force delete, the CloudSQL replica database is also deleted (only for CloudSQL connection profile). |
| `requestId` | `string` | query | No | A unique ID used to identify the request. If the server receives two requests with the same ID, then the second reque... |

**Response**: `Operation`

```typescript
const res = await datamigration.connectionProfiles.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.connectionProfiles.create`

**POST** `v1/{+parent}/connectionProfiles`

Creates a new connection profile in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent which owns this collection of connection profiles. |
| `connectionProfileId` | `string` | query | No | Required. The connection profile identifier. |
| `requestId` | `string` | query | No | Optional. A unique ID used to identify the request. If the server receives two requests with the same ID, then the se... |
| `skipValidation` | `boolean` | query | No | Optional. Create the connection profile without validating it. The default is false. Only supported for Oracle connec... |
| `validateOnly` | `boolean` | query | No | Optional. Only validate the connection profile, but don't create any resources. The default is false. Only supported ... |

**Request body**: `ConnectionProfile`

**Response**: `Operation`

```typescript
const res = await datamigration.connectionProfiles.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.connectionProfiles.patch`

**PATCH** `v1/{+name}`

Update the configuration of a single connection profile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of this connection profile resource in the form of projects/{project}/locations/{location}/connectionProfile... |
| `requestId` | `string` | query | No | Optional. A unique ID used to identify the request. If the server receives two requests with the same ID, then the se... |
| `skipValidation` | `boolean` | query | No | Optional. Update the connection profile without validating it. The default is false. Only supported for Oracle connec... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten by the update in the conversion workspace resource. |
| `validateOnly` | `boolean` | query | No | Optional. Only validate the connection profile, but don't update any resources. The default is false. Only supported ... |

**Request body**: `ConnectionProfile`

**Response**: `Operation`

```typescript
const res = await datamigration.connectionProfiles.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.privateConnections.create`

**POST** `v1/{+parent}/privateConnections`

Creates a new private connection in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent that owns the collection of PrivateConnections. |
| `privateConnectionId` | `string` | query | No | Required. The private connection identifier. |
| `requestId` | `string` | query | No | Optional. A unique ID used to identify the request. If the server receives two requests with the same ID, then the se... |
| `skipValidation` | `boolean` | query | No | Optional. If set to true, will skip validations. |
| `validateOnly` | `boolean` | query | No | Optional. For PSC Interface only - get the tenant project before creating the resource. |

**Request body**: `PrivateConnection`

**Response**: `Operation`

```typescript
const res = await datamigration.privateConnections.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.privateConnections.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await datamigration.privateConnections.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.privateConnections.get`

**GET** `v1/{+name}`

Gets details of a single private connection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the private connection to get. |

**Response**: `PrivateConnection`

```typescript
const res = await datamigration.privateConnections.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.privateConnections.list`

**GET** `v1/{+parent}/privateConnections`

Retrieves a list of private connections in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent that owns the collection of private connections. |
| `filter` | `string` | query | No | Optional. A filter expression that filters private connections listed in the response. The expression must specify th... |
| `orderBy` | `string` | query | No | Optional. Order by fields for the result. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of private connections to return. If unspecified, at most 50 private connections that are re... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous `ListPrivateConnections` call. Provide this to retrieve the subsequent ... |

**Response**: `ListPrivateConnectionsResponse`

```typescript
const res = await datamigration.privateConnections.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.privateConnections.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await datamigration.privateConnections.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.privateConnections.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await datamigration.privateConnections.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.privateConnections.delete`

**DELETE** `v1/{+name}`

Deletes a single Database Migration Service private connection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the private connection to delete. |
| `requestId` | `string` | query | No | Optional. A unique ID used to identify the request. If the server receives two requests with the same ID, then the se... |

**Response**: `Operation`

```typescript
const res = await datamigration.privateConnections.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await datamigration.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await datamigration.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await datamigration.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.operations.list`

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
const res = await datamigration.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.migrationJobs.verify`

**POST** `v1/{+name}:verify`

Verify a migration job, making sure the destination can reach the source and that all configuration and prerequisites are met.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Name of the migration job resource to verify. |

**Request body**: `VerifyMigrationJobRequest`

**Response**: `Operation`

```typescript
const res = await datamigration.migrationJobs.verify({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.migrationJobs.generateSshScript`

**POST** `v1/{+migrationJob}:generateSshScript`

Generate a SSH configuration script to configure the reverse SSH connectivity.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `migrationJob` | `string` | path | Yes | Name of the migration job resource to generate the SSH script. |

**Request body**: `GenerateSshScriptRequest`

**Response**: `SshScript`

```typescript
const res = await datamigration.migrationJobs.generateSshScript({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.migrationJobs.fetchSourceObjects`

**GET** `v1/{+name}:fetchSourceObjects`

Retrieves objects from the source database that can be selected for data migration. This is applicable for the following migrations: 1. PostgreSQL to Cloud SQL for PostgreSQL 2. PostgreSQL to AlloyDB for PostgreSQL.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name for the migration job for which source objects should be returned. |

**Response**: `Operation`

```typescript
const res = await datamigration.migrationJobs.fetchSourceObjects({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.migrationJobs.demoteDestination`

**POST** `v1/{+name}:demoteDestination`

Demotes the destination database to become a read replica of the source. This is applicable for the following migrations: 1. MySQL to Cloud SQL for MySQL 2. PostgreSQL to Cloud SQL for PostgreSQL 3. PostgreSQL to AlloyDB for PostgreSQL.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the migration job resource to demote its destination. |

**Request body**: `DemoteDestinationRequest`

**Response**: `Operation`

```typescript
const res = await datamigration.migrationJobs.demoteDestination({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.migrationJobs.create`

**POST** `v1/{+parent}/migrationJobs`

Creates a new migration job in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent which owns this collection of migration jobs. |
| `migrationJobId` | `string` | query | No | Required. The ID of the instance to create. |
| `requestId` | `string` | query | No | Optional. A unique ID used to identify the request. If the server receives two requests with the same ID, then the se... |

**Request body**: `MigrationJob`

**Response**: `Operation`

```typescript
const res = await datamigration.migrationJobs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.migrationJobs.promote`

**POST** `v1/{+name}:promote`

Promote a migration job, stopping replication to the destination and promoting the destination to be a standalone database.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Name of the migration job resource to promote. |

**Request body**: `PromoteMigrationJobRequest`

**Response**: `Operation`

```typescript
const res = await datamigration.migrationJobs.promote({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.migrationJobs.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await datamigration.migrationJobs.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.migrationJobs.generateTcpProxyScript`

**POST** `v1/{+migrationJob}:generateTcpProxyScript`

Generate a TCP Proxy configuration script to configure a cloud-hosted VM running a TCP Proxy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `migrationJob` | `string` | path | Yes | Name of the migration job resource to generate the TCP Proxy script. |

**Request body**: `GenerateTcpProxyScriptRequest`

**Response**: `TcpProxyScript`

```typescript
const res = await datamigration.migrationJobs.generateTcpProxyScript({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.migrationJobs.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single migration job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name (URI) of this migration job resource, in the form of: projects/{project}/locations/{location}/migrationJobs/... |
| `requestId` | `string` | query | No | Optional. A unique ID used to identify the request. If the server receives two requests with the same ID, then the se... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten by the update in the conversion workspace resource. |

**Request body**: `MigrationJob`

**Response**: `Operation`

```typescript
const res = await datamigration.migrationJobs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.migrationJobs.stop`

**POST** `v1/{+name}:stop`

Stops a running migration job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Name of the migration job resource to stop. |

**Request body**: `StopMigrationJobRequest`

**Response**: `Operation`

```typescript
const res = await datamigration.migrationJobs.stop({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.migrationJobs.start`

**POST** `v1/{+name}:start`

Start an already created migration job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Name of the migration job resource to start. |

**Request body**: `StartMigrationJobRequest`

**Response**: `Operation`

```typescript
const res = await datamigration.migrationJobs.start({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.migrationJobs.resume`

**POST** `v1/{+name}:resume`

Resume a migration job that is currently stopped and is resumable (was stopped during CDC phase).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Name of the migration job resource to resume. |

**Request body**: `ResumeMigrationJobRequest`

**Response**: `Operation`

```typescript
const res = await datamigration.migrationJobs.resume({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.migrationJobs.list`

**GET** `v1/{+parent}/migrationJobs`

Lists migration jobs in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent which owns this collection of migrationJobs. |
| `filter` | `string` | query | No | Optional. A filter expression that filters migration jobs listed in the response. The expression must specify the fie... |
| `orderBy` | `string` | query | No | Optional. Sort the results based on the migration job name. Valid values are: "name", "name asc", and "name desc". |
| `pageSize` | `integer` | query | No | Optional. The maximum number of migration jobs to return. The service may return fewer than this value. If unspecifie... |
| `pageToken` | `string` | query | No | Optional. The nextPageToken value received in the previous call to migrationJobs.list, used in the subsequent request... |

**Response**: `ListMigrationJobsResponse`

```typescript
const res = await datamigration.migrationJobs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.migrationJobs.delete`

**DELETE** `v1/{+name}`

Deletes a single migration job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the migration job resource to delete. |
| `force` | `boolean` | query | No | Optional. The destination CloudSQL connection profile is always deleted with the migration job. In case of force dele... |
| `requestId` | `string` | query | No | Optional. A unique ID used to identify the request. If the server receives two requests with the same ID, then the se... |

**Response**: `Operation`

```typescript
const res = await datamigration.migrationJobs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.migrationJobs.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await datamigration.migrationJobs.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.migrationJobs.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await datamigration.migrationJobs.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.migrationJobs.get`

**GET** `v1/{+name}`

Gets details of a single migration job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the migration job resource to get. |

**Response**: `MigrationJob`

```typescript
const res = await datamigration.migrationJobs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.migrationJobs.restart`

**POST** `v1/{+name}:restart`

Restart a stopped or failed migration job, resetting the destination instance to its original state and starting the migration process from scratch.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Name of the migration job resource to restart. |

**Request body**: `RestartMigrationJobRequest`

**Response**: `Operation`

```typescript
const res = await datamigration.migrationJobs.restart({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.migrationJobs.objects.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await datamigration.objects.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.migrationJobs.objects.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await datamigration.objects.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.migrationJobs.objects.list`

**GET** `v1/{+parent}/objects`

Use this method to list the objects of a specific migration job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent migration job that owns the collection of objects. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of objects to return. Default is 50. The maximum value is 1000; values above 1000 will be co... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous `ListMigrationJObObjectsRequest` call. Provide this to retrieve the sub... |

**Response**: `ListMigrationJobObjectsResponse`

```typescript
const res = await datamigration.objects.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.migrationJobs.objects.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await datamigration.objects.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.migrationJobs.objects.lookup`

**POST** `v1/{+parent}/objects:lookup`

Use this method to look up a migration job object by its source object identifier.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent migration job that owns the collection of objects. |

**Request body**: `LookupMigrationJobObjectRequest`

**Response**: `MigrationJobObject`

```typescript
const res = await datamigration.objects.lookup({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datamigration.projects.locations.migrationJobs.objects.get`

**GET** `v1/{+name}`

Use this method to get details about a migration job object.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the migration job object resource to get. |

**Response**: `MigrationJobObject`

```typescript
const res = await datamigration.objects.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AlloyDbConnectionProfile`

Specifies required connection parameters, and the parameters required to create an AlloyDB destination cluster.

| Property | Type | Description |
|----------|------|-------------|
| `clusterId` | `string` | Required. The AlloyDB cluster ID that this connection profile is associated with. |
| `settings` | `AlloyDbSettings` | Immutable. Metadata used to create the destination AlloyDB cluster. |

### `AlloyDbSettings`

Settings for creating an AlloyDB cluster.

| Property | Type | Description |
|----------|------|-------------|
| `databaseVersion` | `string` | Optional. The database engine major version. This is an optional field. If a database version is ... |
| `encryptionConfig` | `EncryptionConfig` | Optional. The encryption config can be specified to encrypt the data disks and other persistent d... |
| `initialUser` | `UserPassword` | Required. Input only. Initial user to setup during cluster creation. Required. |
| `labels` | `object` | Labels for the AlloyDB cluster created by DMS. An object containing a list of 'key', 'value' pairs. |
| `primaryInstanceSettings` | `PrimaryInstanceSettings` | Settings for the cluster's primary instance |
| `vpcNetwork` | `string` | Required. The resource link for the VPC network in which cluster resources are created and from w... |

### `ApplyConversionWorkspaceRequest`

Request message for 'ApplyConversionWorkspace' request.

| Property | Type | Description |
|----------|------|-------------|
| `autoCommit` | `boolean` | Optional. Specifies whether the conversion workspace is to be committed automatically after the a... |
| `connectionProfile` | `string` | Optional. Fully qualified (Uri) name of the destination connection profile. |
| `dryRun` | `boolean` | Optional. Only validates the apply process, but doesn't change the destination database. Only wor... |
| `filter` | `string` | Optional. Filter which entities to apply. Leaving this field empty will apply all of the entities... |

### `ApplyHash`

Apply a hash function on the value.

| Property | Type | Description |
|----------|------|-------------|
| `uuidFromBytes` | `Empty` | Optional. Generate UUID from the data's byte array |

### `ApplyJobDetails`

Details regarding an Apply background job.

| Property | Type | Description |
|----------|------|-------------|
| `connectionProfile` | `string` | Output only. The connection profile which was used for the apply job. |
| `filter` | `string` | Output only. AIP-160 based filter used to specify the entities to apply |

### `AssignSpecificValue`

Set to a specific value (value is converted to fit the target data type)

| Property | Type | Description |
|----------|------|-------------|
| `value` | `string` | Required. Specific value to be assigned |

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

### `AuthorizedNetwork`

AuthorizedNetwork contains metadata for an authorized network.

| Property | Type | Description |
|----------|------|-------------|
| `cidrRange` | `string` | Optional. CIDR range for one authorzied network of the instance. |

### `BackgroundJobLogEntry`

Execution log of a background job.

| Property | Type | Description |
|----------|------|-------------|
| `applyJobDetails` | `ApplyJobDetails` | Output only. Apply job details. |
| `completionComment` | `string` | Output only. Job completion comment, such as how many entities were seeded, how many warnings wer... |
| `completionState` | `string` | Output only. Job completion state, i.e. the final state after the job completed. |
| `convertJobDetails` | `ConvertJobDetails` | Output only. Convert job details. |
| `finishTime` | `string` | The timestamp when the background job was finished. |
| `id` | `string` | The background job log entry ID. |
| `importRulesJobDetails` | `ImportRulesJobDetails` | Output only. Import rules job details. |
| `jobType` | `string` | The type of job that was executed. |
| `requestAutocommit` | `boolean` | Output only. Whether the client requested the conversion workspace to be committed after a succes... |
| `seedJobDetails` | `SeedJobDetails` | Output only. Seed job details. |
| `startTime` | `string` | The timestamp when the background job was started. |

### `BadRequest`

Describes violations in a client request. This error type focuses on the syntactic aspects of the request.

| Property | Type | Description |
|----------|------|-------------|
| `fieldViolations` | `array<FieldViolation>` | Describes all violations in a client request. |

### `BinaryLogParser`

Configuration to use Binary Log Parser CDC technique.

| Property | Type | Description |
|----------|------|-------------|
| `logFileDirectories` | `LogFileDirectories` | Use Oracle directories. |
| `oracleAsmLogFileAccess` | `OracleAsmLogFileAccess` | Use Oracle ASM. |

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `CloudSqlConnectionProfile`

Specifies required connection parameters, and, optionally, the parameters required to create a Cloud SQL destination database instance.

| Property | Type | Description |
|----------|------|-------------|
| `additionalPublicIp` | `string` | Output only. The Cloud SQL database instance's additional (outgoing) public IP. Used when the Clo... |
| `cloudSqlId` | `string` | Output only. The Cloud SQL instance ID that this connection profile is associated with. |
| `privateIp` | `string` | Output only. The Cloud SQL database instance's private IP. |
| `publicIp` | `string` | Output only. The Cloud SQL database instance's public IP. |
| `settings` | `CloudSqlSettings` | Immutable. Metadata used to create the destination Cloud SQL database. |

### `CloudSqlSettings`

Settings for creating a Cloud SQL database instance.

| Property | Type | Description |
|----------|------|-------------|
| `activationPolicy` | `string` | The activation policy specifies when the instance is activated; it is applicable only when the in... |
| `autoStorageIncrease` | `boolean` | [default: ON] If you enable this setting, Cloud SQL checks your available storage every 30 second... |
| `availabilityType` | `string` | Optional. Availability type. Potential values: * `ZONAL`: The instance serves data from only one ... |
| `cmekKeyName` | `string` | The KMS key name used for the csql instance. |
| `collation` | `string` | The Cloud SQL default instance level collation. |
| `dataCacheConfig` | `DataCacheConfig` | Optional. Data cache is an optional feature available for Cloud SQL for MySQL Enterprise Plus edi... |
| `dataDiskProvisionedIops` | `string` | Optional. Provisioned number of I/O operations per second for the data disk. This field is only u... |
| `dataDiskProvisionedThroughput` | `string` | Optional. Provisioned throughput measured in MiB per second for the data disk. This field is only... |
| `dataDiskSizeGb` | `string` | The storage capacity available to the database, in GB. The minimum (and default) size is 10GB. |
| `dataDiskType` | `string` | The type of storage: `PD_SSD` (default) or `PD_HDD` or `HYPERDISK_BALANCED`. |
| `databaseFlags` | `object` | The database flags passed to the Cloud SQL instance at startup. An object containing a list of "k... |
| `databaseVersion` | `string` | The database engine type and version. Deprecated. Use database_version_name instead. |
| `databaseVersionName` | `string` | Optional. The database engine type and version name. |
| `edition` | `string` | Optional. The edition of the given Cloud SQL instance. |
| `ipConfig` | `SqlIpConfig` | The settings for IP Management. This allows to enable or disable the instance IP and manage which... |
| `rootPassword` | `string` | Input only. Initial root password. |
| `rootPasswordSet` | `boolean` | Output only. Indicates If this connection profile root password is stored. |
| `secondaryZone` | `string` | Optional. The Google Cloud Platform zone where the failover Cloud SQL database instance is locate... |
| `sourceId` | `string` | The Database Migration Service source connection profile ID, in the format: `projects/my_project_... |
| `storageAutoResizeLimit` | `string` | The maximum size to which storage capacity can be automatically increased. The default value is 0... |
| `tier` | `string` | The tier (or machine type) for this instance, for example: `db-n1-standard-1` (MySQL instances) o... |
| `userLabels` | `object` | The resource labels for a Cloud SQL instance to use to annotate any related underlying resources ... |
| `zone` | `string` | The Google Cloud Platform zone where your Cloud SQL database instance is located. |

### `ColumnEntity`

Column is not used as an independent entity, it is retrieved as part of a Table entity.

| Property | Type | Description |
|----------|------|-------------|
| `array` | `boolean` | Is the column of array type. |
| `arrayLength` | `integer` | If the column is array, of which length. |
| `autoGenerated` | `boolean` | Is the column auto-generated/identity. |
| `charset` | `string` | Charset override - instead of table level charset. |
| `collation` | `string` | Collation override - instead of table level collation. |
| `comment` | `string` | Comment associated with the column. |
| `computed` | `boolean` | Is the column a computed column. |
| `customFeatures` | `object` | Custom engine specific features. |
| `dataType` | `string` | Column data type. |
| `defaultValue` | `string` | Default value of the column. |
| `fractionalSecondsPrecision` | `integer` | Column fractional second precision - used for timestamp based datatypes. |
| `length` | `string` | Column length - e.g. varchar (50). |
| `name` | `string` | Column name. |
| `nullable` | `boolean` | Is the column nullable. |
| `ordinalPosition` | `integer` | Column order in the table. |
| `precision` | `integer` | Column precision - when relevant. |
| `scale` | `integer` | Column scale - when relevant. |
| `setValues` | `array<string>` | Specifies the list of values allowed in the column. Only used for set data type. |
| `udt` | `boolean` | Is the column a UDT. |

### `CommitConversionWorkspaceRequest`

Request message for 'CommitConversionWorkspace' request.

| Property | Type | Description |
|----------|------|-------------|
| `commitName` | `string` | Optional. Optional name of the commit. |

### `ConditionalColumnSetValue`

Options to configure rule type ConditionalColumnSetValue. The rule is used to transform the data which is being replicated/migrated. The rule filter field can refer to one or more entities. The rule scope can be one of: Column.

| Property | Type | Description |
|----------|------|-------------|
| `customFeatures` | `object` | Optional. Custom engine specific features. |
| `sourceNumericFilter` | `SourceNumericFilter` | Optional. Optional filter on source column precision and scale. Used for fixed point numbers such... |
| `sourceTextFilter` | `SourceTextFilter` | Optional. Optional filter on source column length. Used for text based data types like varchar. |
| `valueTransformation` | `ValueTransformation` | Required. Description of data transformation during migration. |

### `ConnectionProfile`

A connection profile definition.

| Property | Type | Description |
|----------|------|-------------|
| `alloydb` | `AlloyDbConnectionProfile` | An AlloyDB cluster connection profile. |
| `cloudsql` | `CloudSqlConnectionProfile` | A CloudSQL database connection profile. |
| `createTime` | `string` | Output only. The timestamp when the resource was created. A timestamp in RFC3339 UTC "Zulu" forma... |
| `displayName` | `string` | The connection profile display name. |
| `error` | `Status` | Output only. The error details in case of state FAILED. |
| `labels` | `object` | The resource labels for connection profile to use to annotate any related underlying resources su... |
| `mysql` | `MySqlConnectionProfile` | A MySQL database connection profile. |
| `name` | `string` | The name of this connection profile resource in the form of projects/{project}/locations/{locatio... |
| `oracle` | `OracleConnectionProfile` | An Oracle database connection profile. |
| `postgresql` | `PostgreSqlConnectionProfile` | A PostgreSQL database connection profile. |
| `provider` | `string` | The database provider. |
| `role` | `string` | Optional. The connection profile role. |
| `satisfiesPzi` | `boolean` | Output only. Reserved for future use. |
| `satisfiesPzs` | `boolean` | Output only. Reserved for future use. |
| `sqlserver` | `SqlServerConnectionProfile` | Connection profile for a SQL Server data source. |
| `state` | `string` | The current connection profile state (e.g. DRAFT, READY, or FAILED). |
| `updateTime` | `string` | Output only. The timestamp when the resource was last updated. A timestamp in RFC3339 UTC "Zulu" ... |

### `ConstraintEntity`

Constraint is not used as an independent entity, it is retrieved as part of another entity such as Table or View.

| Property | Type | Description |
|----------|------|-------------|
| `customFeatures` | `object` | Custom engine specific features. |
| `name` | `string` | The name of the table constraint. |
| `referenceColumns` | `array<string>` | Reference columns which may be associated with the constraint. For example, if the constraint is ... |
| `referenceTable` | `string` | Reference table which may be associated with the constraint. For example, if the constraint is a ... |
| `tableColumns` | `array<string>` | Table columns used as part of the Constraint, for example primary key constraint should list the ... |
| `tableName` | `string` | Table which is associated with the constraint. In case the constraint is defined on a table, this... |
| `type` | `string` | Type of constraint, for example unique, primary key, foreign key (currently only primary key is s... |

### `ConversionWorkspace`

The main conversion workspace resource entity.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The timestamp when the workspace resource was created. |
| `destination` | `DatabaseEngineInfo` | Required. The destination engine details. |
| `destinationProvider` | `string` | Optional. The provider for the destination database. |
| `displayName` | `string` | Optional. The display name for the workspace. |
| `globalSettings` | `object` | Optional. A generic list of settings for the workspace. The settings are database pair dependant ... |
| `hasUncommittedChanges` | `boolean` | Output only. Whether the workspace has uncommitted changes (changes which were made after the wor... |
| `latestCommitId` | `string` | Output only. The latest commit ID. |
| `latestCommitTime` | `string` | Output only. The timestamp when the workspace was committed. |
| `name` | `string` | Full name of the workspace resource, in the form of: projects/{project}/locations/{location}/conv... |
| `source` | `DatabaseEngineInfo` | Required. The source engine details. |
| `sourceProvider` | `string` | Optional. The provider for the source database. |
| `updateTime` | `string` | Output only. The timestamp when the workspace resource was last updated. |

### `ConversionWorkspaceInfo`

A conversion workspace's version.

| Property | Type | Description |
|----------|------|-------------|
| `commitId` | `string` | The commit ID of the conversion workspace. |
| `name` | `string` | The resource name (URI) of the conversion workspace. |

### `ConvertConversionWorkspaceRequest`

Request message for 'ConvertConversionWorkspace' request.

| Property | Type | Description |
|----------|------|-------------|
| `autoCommit` | `boolean` | Optional. Specifies whether the conversion workspace is to be committed automatically after the c... |
| `convertFullPath` | `boolean` | Optional. Automatically convert the full entity path for each entity specified by the filter. For... |
| `filter` | `string` | Optional. Filter the entities to convert. Leaving this field empty will convert all of the entiti... |

### `ConvertJobDetails`

Details regarding a Convert background job.

| Property | Type | Description |
|----------|------|-------------|
| `filter` | `string` | Output only. AIP-160 based filter used to specify the entities to convert |

### `ConvertRowIdToColumn`

Options to configure rule type ConvertROWIDToColumn. The rule is used to add column rowid to destination tables based on an Oracle rowid function/property. The rule filter field can refer to one or more entities. The rule scope can be one of: Table. This rule requires additional filter to be specified beyond the basic rule filter field, which is whether or not to work on tables which already have a primary key defined.

| Property | Type | Description |
|----------|------|-------------|
| `onlyIfNoPrimaryKey` | `boolean` | Required. Only work on tables without primary key defined |

### `DataCacheConfig`

Data cache is an optional feature available for Cloud SQL for MySQL Enterprise Plus edition only. For more information on data cache, see [Data cache overview](https://cloud.google.com/sql/help/mysql-data-cache) in Cloud SQL documentation.

| Property | Type | Description |
|----------|------|-------------|
| `dataCacheEnabled` | `boolean` | Optional. Whether data cache is enabled for the instance. |

### `DatabaseEngineInfo`

The type and version of a source or destination database.

| Property | Type | Description |
|----------|------|-------------|
| `engine` | `string` | Required. Engine type. |
| `version` | `string` | Required. Engine version, for example "12.c.1". |

### `DatabaseEntity`

The base entity type for all the database related entities. The message contains the entity name, the name of its parent, the entity type, and the specific details per entity type.

| Property | Type | Description |
|----------|------|-------------|
| `database` | `DatabaseInstanceEntity` | Database. |
| `databaseFunction` | `FunctionEntity` | Function. |
| `databasePackage` | `PackageEntity` | Package. |
| `entityDdl` | `array<EntityDdl>` | Details about the entity DDL script. Multiple DDL scripts are provided for child entities such as... |
| `entityType` | `string` | The type of the database entity (table, view, index, ...). |
| `issues` | `array<EntityIssue>` | Details about the various issues found for the entity. |
| `mappings` | `array<EntityMapping>` | Details about entity mappings. For source tree entities, this holds the draft entities which were... |
| `materializedView` | `MaterializedViewEntity` | Materialized view. |
| `parentEntity` | `string` | The full name of the parent entity (e.g. schema name). |
| `schema` | `SchemaEntity` | Schema. |
| `sequence` | `SequenceEntity` | Sequence. |
| `shortName` | `string` | The short name (e.g. table name) of the entity. |
| `storedProcedure` | `StoredProcedureEntity` | Stored procedure. |
| `synonym` | `SynonymEntity` | Synonym. |
| `table` | `TableEntity` | Table. |
| `tree` | `string` | The type of tree the entity belongs to. |
| `udt` | `UDTEntity` | UDT. |
| `view` | `ViewEntity` | View. |

### `DatabaseInstanceEntity`

DatabaseInstance acts as a parent entity to other database entities.

| Property | Type | Description |
|----------|------|-------------|
| `customFeatures` | `object` | Custom engine specific features. |

### `DatabaseType`

A message defining the database engine and provider.

| Property | Type | Description |
|----------|------|-------------|
| `engine` | `string` | The database engine. |
| `provider` | `string` | The database provider. |

### `DebugInfo`

Describes additional debugging info.

| Property | Type | Description |
|----------|------|-------------|
| `detail` | `string` | Additional debugging information provided by the server. |
| `stackEntries` | `array<string>` | The stack trace entries indicating where the error occurred. |

### `DemoteDestinationRequest`

Request message for 'DemoteDestination' request.

### `DescribeConversionWorkspaceRevisionsResponse`

Response message for 'DescribeConversionWorkspaceRevisions' request.

| Property | Type | Description |
|----------|------|-------------|
| `revisions` | `array<ConversionWorkspace>` | The list of conversion workspace revisions. |

### `DescribeDatabaseEntitiesResponse`

Response message for 'DescribeDatabaseEntities' request.

| Property | Type | Description |
|----------|------|-------------|
| `databaseEntities` | `array<DatabaseEntity>` | The list of database entities for the conversion workspace. |
| `nextPageToken` | `string` | A token which can be sent as `page_token` to retrieve the next page. If this field is omitted, th... |

### `DoubleComparisonFilter`

Filter based on relation between source value and compare value of type double in ConditionalColumnSetValue

| Property | Type | Description |
|----------|------|-------------|
| `value` | `number` | Required. Double compare value to be used |
| `valueComparison` | `string` | Required. Relation between source value and compare value |

### `DumpFlag`

Dump flag definition.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name of the flag |
| `value` | `string` | The value of the flag. |

### `DumpFlags`

Dump flags definition.

| Property | Type | Description |
|----------|------|-------------|
| `dumpFlags` | `array<DumpFlag>` | The flags for the initial dump. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `EncryptionConfig`

EncryptionConfig describes the encryption config of a cluster that is encrypted with a CMEK (customer-managed encryption key).

| Property | Type | Description |
|----------|------|-------------|
| `kmsKeyName` | `string` | The fully-qualified resource name of the KMS key. Each Cloud KMS key is regionalized and has the ... |

### `EntityDdl`

A single DDL statement for a specific entity

| Property | Type | Description |
|----------|------|-------------|
| `ddl` | `string` | The actual ddl code. |
| `ddlKind` | `string` | The DDL Kind selected for apply, or UNSPECIFIED if the entity wasn't converted yet. |
| `ddlType` | `string` | Type of DDL (Create, Alter). |
| `editedDdlKind` | `string` | If ddl_kind is USER_EDIT, this holds the DDL kind of the original content - DETERMINISTIC or AI. ... |
| `entity` | `string` | The name of the database entity the ddl refers to. |
| `entityType` | `string` | The entity type (if the DDL is for a sub entity). |
| `issueId` | `array<string>` | EntityIssues found for this ddl. |

### `EntityIssue`

Issue related to the entity.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | Error/Warning code |
| `ddl` | `string` | The ddl which caused the issue, if relevant. |
| `entityType` | `string` | The entity type (if the DDL is for a sub entity). |
| `id` | `string` | Unique Issue ID. |
| `message` | `string` | Issue detailed message |
| `position` | `Position` | The position of the issue found, if relevant. |
| `severity` | `string` | Severity of the issue |
| `type` | `string` | The type of the issue. |

### `EntityMapping`

Details of the mappings of a database entity.

| Property | Type | Description |
|----------|------|-------------|
| `draftEntity` | `string` | Target entity full name. The draft entity can also include a column, index or constraint using th... |
| `draftType` | `string` | Type of draft entity. |
| `mappingLog` | `array<EntityMappingLogEntry>` | Entity mapping log entries. Multiple rules can be effective and contribute changes to a converted... |
| `sourceEntity` | `string` | Source entity full name. The source entity can also be a column, index or constraint using the sa... |
| `sourceType` | `string` | Type of source entity. |

### `EntityMappingLogEntry`

A single record of a rule which was used for a mapping.

| Property | Type | Description |
|----------|------|-------------|
| `mappingComment` | `string` | Comment. |
| `ruleId` | `string` | Which rule caused this log entry. |
| `ruleRevisionId` | `string` | Rule revision ID. |

### `EntityMove`

Options to configure rule type EntityMove. The rule is used to move an entity to a new schema. The rule filter field can refer to one or more entities. The rule scope can be one of: Table, Column, Constraint, Index, View, Function, Stored Procedure, Materialized View, Sequence, UDT

| Property | Type | Description |
|----------|------|-------------|
| `newSchema` | `string` | Required. The new schema |

### `ErrorInfo`

Describes the cause of the error with structured details. Example of an error when contacting the "pubsub.googleapis.com" API when it is not enabled: { "reason": "API_DISABLED" "domain": "googleapis.com" "metadata": { "resource": "projects/123", "service": "pubsub.googleapis.com" } } This response indicates that the pubsub.googleapis.com API is not enabled. Example of an error that is returned when attempting to create a Spanner instance in a region that is out of stock: { "reason": "STOCKOUT" "domain": "spanner.googleapis.com", "metadata": { "availableRegions": "us-central1,us-east2" } }

| Property | Type | Description |
|----------|------|-------------|
| `domain` | `string` | The logical grouping to which the "reason" belongs. The error domain is typically the registered ... |
| `metadata` | `object` | Additional structured details about this error. Keys must match a regular expression of `a-z+` bu... |
| `reason` | `string` | The reason of the error. This is a constant value that identifies the proximate cause of the erro... |

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `FetchStaticIpsResponse`

Response message for a 'FetchStaticIps' request.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, the... |
| `staticIps` | `array<string>` | List of static IPs. |

### `FieldViolation`

A message type used to describe a single bad request field.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | A description of why the request element is bad. |
| `field` | `string` | A path that leads to a field in the request body. The value will be a sequence of dot-separated i... |
| `localizedMessage` | `LocalizedMessage` | Provides a localized error message for field-level errors that is safe to return to the API consu... |
| `reason` | `string` | The reason of the field-level error. This is a constant value that identifies the proximate cause... |

### `FilterTableColumns`

Options to configure rule type FilterTableColumns. The rule is used to filter the list of columns to include or exclude from a table. The rule filter field can refer to one entity. The rule scope can be: Table Only one of the two lists can be specified for the rule.

| Property | Type | Description |
|----------|------|-------------|
| `excludeColumns` | `array<string>` | Optional. List of columns to be excluded for a particular table. |
| `includeColumns` | `array<string>` | Optional. List of columns to be included for a particular table. |

### `ForwardSshTunnelConnectivity`

Forward SSH Tunnel connectivity.

| Property | Type | Description |
|----------|------|-------------|
| `hostname` | `string` | Required. Hostname for the SSH tunnel. |
| `password` | `string` | Input only. SSH password. |
| `port` | `integer` | Port for the SSH tunnel, default value is 22. |
| `privateKey` | `string` | Input only. SSH private key. |
| `username` | `string` | Required. Username for the SSH tunnel. |

### `FunctionEntity`

Function's parent is a schema.

| Property | Type | Description |
|----------|------|-------------|
| `customFeatures` | `object` | Custom engine specific features. |
| `sqlCode` | `string` | The SQL code which creates the function. |

### `GenerateSshScriptRequest`

Request message for 'GenerateSshScript' request.

| Property | Type | Description |
|----------|------|-------------|
| `vm` | `string` | Required. Bastion VM Instance name to use or to create. |
| `vmCreationConfig` | `VmCreationConfig` | The VM creation configuration |
| `vmPort` | `integer` | The port that will be open on the bastion host. |
| `vmSelectionConfig` | `VmSelectionConfig` | The VM selection configuration |

### `GenerateTcpProxyScriptRequest`

Request message for 'GenerateTcpProxyScript' request.

| Property | Type | Description |
|----------|------|-------------|
| `vmMachineType` | `string` | Required. The type of the Compute instance that will host the proxy. |
| `vmName` | `string` | Required. The name of the Compute instance that will host the proxy. |
| `vmSubnet` | `string` | Required. The name of the subnet the Compute instance will use for private connectivity. Must be ... |
| `vmZone` | `string` | Optional. The Google Cloud Platform zone to create the VM in. The fully qualified name of the zon... |

### `GoogleCloudClouddmsV1OperationMetadata`

Represents the metadata of the long-running operation.

| Property | Type | Description |
|----------|------|-------------|
| `apiVersion` | `string` | Output only. API version used to start the operation. |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `metadata` | `object` | Output only. Additional metadata that is returned by the backend for the operation. |
| `requestedCancellation` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. Operations ... |
| `statusMessage` | `string` | Output only. Human-readable status of the operation, if any. |
| `target` | `string` | Output only. Server-defined resource path for the target of the operation. |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `Help`

Provides links to documentation or for performing an out of band action. For example, if a quota check failed with an error indicating the calling project hasn't enabled the accessed service, this can contain a URL pointing directly to the right place in the developer console to flip the bit.

| Property | Type | Description |
|----------|------|-------------|
| `links` | `array<Link>` | URL(s) pointing to additional information on handling the current error. |

### `HeterogeneousMetadata`

Metadata for heterogeneous migration jobs objects.

| Property | Type | Description |
|----------|------|-------------|
| `unsupportedEventsCount` | `string` | The number of unsupported events. |

### `ImportMappingRulesRequest`

Request message for 'ImportMappingRules' request.

| Property | Type | Description |
|----------|------|-------------|
| `autoCommit` | `boolean` | Required. Should the conversion workspace be committed automatically after the import operation. |
| `rulesFiles` | `array<RulesFile>` | Required. One or more rules files. |
| `rulesFormat` | `string` | Required. The format of the rules content file. |

### `ImportRulesJobDetails`

Details regarding an Import Rules background job.

| Property | Type | Description |
|----------|------|-------------|
| `fileFormat` | `string` | Output only. The requested file format. |
| `files` | `array<string>` | Output only. File names used for the import rules job. |

### `IndexEntity`

Index is not used as an independent entity, it is retrieved as part of a Table entity.

| Property | Type | Description |
|----------|------|-------------|
| `customFeatures` | `object` | Custom engine specific features. |
| `name` | `string` | The name of the index. |
| `tableColumns` | `array<string>` | Table columns used as part of the Index, for example B-TREE index should list the columns which c... |
| `tableColumnsDescending` | `array<boolean>` | For each table_column, mark whether it's sorting order is ascending (false) or descending (true).... |
| `type` | `string` | Type of index, for example B-TREE. |
| `unique` | `boolean` | Boolean value indicating whether the index is unique. |

### `InstanceNetworkConfig`

Metadata related to instance level network configuration.

| Property | Type | Description |
|----------|------|-------------|
| `authorizedExternalNetworks` | `array<AuthorizedNetwork>` | Optional. A list of external network authorized to access this instance. |
| `enableOutboundPublicIp` | `boolean` | Optional. Enabling an outbound public IP address to support a database server sending requests ou... |
| `enablePublicIp` | `boolean` | Optional. Enabling public ip for the instance. |

### `IntComparisonFilter`

Filter based on relation between source value and compare value of type integer in ConditionalColumnSetValue

| Property | Type | Description |
|----------|------|-------------|
| `value` | `string` | Required. Integer compare value to be used |
| `valueComparison` | `string` | Required. Relation between source value and compare value |

### `Link`

Describes a URL link.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Describes what the link offers. |
| `url` | `string` | The URL of the link. |

### `ListConnectionProfilesResponse`

Response message for 'ListConnectionProfiles' request.

| Property | Type | Description |
|----------|------|-------------|
| `connectionProfiles` | `array<ConnectionProfile>` | The response list of connection profiles. |
| `nextPageToken` | `string` | A token which can be sent as `page_token` to retrieve the next page. If this field is omitted, th... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListConversionWorkspacesResponse`

Response message for 'ListConversionWorkspaces' request.

| Property | Type | Description |
|----------|------|-------------|
| `conversionWorkspaces` | `array<ConversionWorkspace>` | The list of conversion workspace objects. |
| `nextPageToken` | `string` | A token which can be sent as `page_token` to retrieve the next page. If this field is omitted, th... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListLocationsResponse`

The response message for Locations.ListLocations.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<Location>` | A list of locations that matches the specified filter in the request. |
| `nextPageToken` | `string` | The standard List next-page token. |

### `ListMappingRulesResponse`

Response message for 'ListMappingRulesRequest' request.

| Property | Type | Description |
|----------|------|-------------|
| `mappingRules` | `array<MappingRule>` | The list of conversion workspace mapping rules. |
| `nextPageToken` | `string` | A token which can be sent as `page_token` to retrieve the next page. If this field is omitted, th... |

### `ListMigrationJobObjectsResponse`

Response containing the objects for a migration job.

| Property | Type | Description |
|----------|------|-------------|
| `migrationJobObjects` | `array<MigrationJobObject>` | List of migration job objects. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. |

### `ListMigrationJobsResponse`

Response message for 'ListMigrationJobs' request.

| Property | Type | Description |
|----------|------|-------------|
| `migrationJobs` | `array<MigrationJob>` | The list of migration jobs objects. |
| `nextPageToken` | `string` | A token which can be sent as `page_token` to retrieve the next page. If this field is omitted, th... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<Operation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `ListPrivateConnectionsResponse`

Response message for 'ListPrivateConnections' request.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token which can be sent as `page_token` to retrieve the next page. If this field is omitted, th... |
| `privateConnections` | `array<PrivateConnection>` | List of private connections. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

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

### `LogFileDirectories`

Configuration to specify the Oracle directories to access the log files.

| Property | Type | Description |
|----------|------|-------------|
| `archivedLogDirectory` | `string` | Required. Oracle directory for archived logs. |
| `onlineLogDirectory` | `string` | Required. Oracle directory for online logs. |

### `LogMiner`

Configuration to use LogMiner CDC method.

### `LookupMigrationJobObjectRequest`

Request for looking up a specific migration job object by its source object identifier.

| Property | Type | Description |
|----------|------|-------------|
| `sourceObjectIdentifier` | `SourceObjectIdentifier` | Required. The source object identifier which maps to the migration job object. |

### `MachineConfig`

MachineConfig describes the configuration of a machine.

| Property | Type | Description |
|----------|------|-------------|
| `cpuCount` | `integer` | The number of CPU's in the VM instance. |
| `machineType` | `string` | Optional. Machine type of the VM instance. E.g. "n2-highmem-4", "n2-highmem-8", "c4a-highmem-4-ls... |

### `MappingRule`

Definition of a transformation that is to be applied to a group of entities in the source schema. Several such transformations can be applied to an entity sequentially to define the corresponding entity in the target schema.

| Property | Type | Description |
|----------|------|-------------|
| `conditionalColumnSetValue` | `ConditionalColumnSetValue` | Optional. Rule to specify how the data contained in a column should be transformed (such as trimm... |
| `convertRowidColumn` | `ConvertRowIdToColumn` | Optional. Rule to specify how multiple tables should be converted with an additional rowid column. |
| `displayName` | `string` | Optional. A human readable name |
| `entityMove` | `EntityMove` | Optional. Rule to specify how multiple entities should be relocated into a different schema. |
| `filter` | `MappingRuleFilter` | Required. The rule filter |
| `filterTableColumns` | `FilterTableColumns` | Optional. Rule to specify the list of columns to include or exclude from a table. |
| `multiColumnDataTypeChange` | `MultiColumnDatatypeChange` | Optional. Rule to specify how multiple columns should be converted to a different data type. |
| `multiEntityRename` | `MultiEntityRename` | Optional. Rule to specify how multiple entities should be renamed. |
| `name` | `string` | Full name of the mapping rule resource, in the form of: projects/{project}/locations/{location}/c... |
| `revisionCreateTime` | `string` | Output only. The timestamp that the revision was created. |
| `revisionId` | `string` | Output only. The revision ID of the mapping rule. A new revision is committed whenever the mappin... |
| `ruleOrder` | `string` | Required. The order in which the rule is applied. Lower order rules are applied before higher val... |
| `ruleScope` | `string` | Required. The rule scope |
| `setTablePrimaryKey` | `SetTablePrimaryKey` | Optional. Rule to specify the primary key for a table |
| `singleColumnChange` | `SingleColumnChange` | Optional. Rule to specify how a single column is converted. |
| `singleEntityRename` | `SingleEntityRename` | Optional. Rule to specify how a single entity should be renamed. |
| `singlePackageChange` | `SinglePackageChange` | Optional. Rule to specify how a single package is converted. |
| `sourceSqlChange` | `SourceSqlChange` | Optional. Rule to change the sql code for an entity, for example, function, procedure. |
| `state` | `string` | Optional. The mapping rule state |

### `MappingRuleFilter`

A filter defining the entities that a mapping rule should be applied to. When more than one field is specified, the rule is applied only to entities which match all the fields.

| Property | Type | Description |
|----------|------|-------------|
| `entities` | `array<string>` | Optional. The rule should be applied to specific entities defined by their fully qualified names. |
| `entityNameContains` | `string` | Optional. The rule should be applied to entities whose non-qualified name contains the given string. |
| `entityNamePrefix` | `string` | Optional. The rule should be applied to entities whose non-qualified name starts with the given p... |
| `entityNameSuffix` | `string` | Optional. The rule should be applied to entities whose non-qualified name ends with the given suf... |
| `parentEntity` | `string` | Optional. The rule should be applied to entities whose parent entity (fully qualified name) match... |

### `MaterializedViewEntity`

MaterializedView's parent is a schema.

| Property | Type | Description |
|----------|------|-------------|
| `customFeatures` | `object` | Custom engine specific features. |
| `indices` | `array<IndexEntity>` | View indices. |
| `sqlCode` | `string` | The SQL code which creates the view. |

### `MigrationJob`

Represents a Database Migration Service migration job object.

| Property | Type | Description |
|----------|------|-------------|
| `cmekKeyName` | `string` | The CMEK (customer-managed encryption key) fully qualified key name used for the migration job. T... |
| `conversionWorkspace` | `ConversionWorkspaceInfo` | The conversion workspace used by the migration. |
| `createTime` | `string` | Output only. The timestamp when the migration job resource was created. A timestamp in RFC3339 UT... |
| `destination` | `string` | Required. The resource name (URI) of the destination connection profile. |
| `destinationDatabase` | `DatabaseType` | The database engine type and provider of the destination. |
| `displayName` | `string` | The migration job display name. |
| `dumpFlags` | `DumpFlags` | The initial dump flags. This field and the "dump_path" field are mutually exclusive. |
| `dumpPath` | `string` | The path to the dump file in Google Cloud Storage, in the format: (gs://[BUCKET_NAME]/[OBJECT_NAM... |
| `dumpType` | `string` | Optional. The type of the data dump. Supported for MySQL to CloudSQL for MySQL migrations only. |
| `duration` | `string` | Output only. The duration of the migration job (in seconds). A duration in seconds with up to nin... |
| `endTime` | `string` | Output only. If the migration job is completed, the time when it was completed. |
| `error` | `Status` | Output only. The error details in case of state FAILED. |
| `filter` | `string` | This field can be used to select the entities to migrate as part of the migration job. It uses AI... |
| `labels` | `object` | The resource labels for migration job to use to annotate any related underlying resources such as... |
| `name` | `string` | The name (URI) of this migration job resource, in the form of: projects/{project}/locations/{loca... |
| `objectsConfig` | `MigrationJobObjectsConfig` | Optional. The objects that need to be migrated. |
| `oracleToPostgresConfig` | `OracleToPostgresConfig` | Configuration for heterogeneous **Oracle to Cloud SQL for PostgreSQL** and **Oracle to AlloyDB fo... |
| `originalMigrationName` | `string` | Optional. A failback replication pointer to the resource name (URI) of the original migration job. |
| `performanceConfig` | `PerformanceConfig` | Optional. Data dump parallelism settings used by the migration. |
| `phase` | `string` | Output only. The current migration job phase. |
| `postgresToSqlserverConfig` | `PostgresToSqlServerConfig` | Configuration for heterogeneous failback migrations from **PostgreSQL to SQL Server**. |
| `purpose` | `string` | Output only. Migration job mode. Migration jobs can be standard forward jobs or failback migratio... |
| `reverseSshConnectivity` | `ReverseSshConnectivity` | The details needed to communicate to the source over Reverse SSH tunnel connectivity. |
| `satisfiesPzi` | `boolean` | Output only. Reserved for future use. |
| `satisfiesPzs` | `boolean` | Output only. Reserved for future use. |
| `source` | `string` | Required. The resource name (URI) of the source connection profile. |
| `sourceDatabase` | `DatabaseType` | The database engine type and provider of the source. |
| `sqlserverHomogeneousMigrationJobConfig` | `SqlServerHomogeneousMigrationJobConfig` | Optional. Configuration for SQL Server homogeneous migration. |
| `sqlserverToPostgresConfig` | `SqlServerToPostgresConfig` | Configuration for heterogeneous **SQL Server to Cloud SQL for PostgreSQL** migrations. |
| `state` | `string` | The current migration job state. |
| `staticIpConnectivity` | `StaticIpConnectivity` | static ip connectivity data (default, no additional details needed). |
| `type` | `string` | Required. The migration job type. |
| `updateTime` | `string` | Output only. The timestamp when the migration job resource was last updated. A timestamp in RFC33... |
| `vpcPeeringConnectivity` | `VpcPeeringConnectivity` | The details of the VPC network that the source database is located in. |

### `MigrationJobObject`

A specific Migration Job Object (e.g. a specifc DB Table)

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The creation time of the migration job object. |
| `error` | `Status` | Output only. The error details in case of failure. |
| `heterogeneousMetadata` | `HeterogeneousMetadata` | Output only. Metadata for heterogeneous migration jobs objects. |
| `name` | `string` | The object's name. |
| `phase` | `string` | Output only. The phase of the migration job object. |
| `sourceObject` | `SourceObjectIdentifier` | The object identifier in the data source. |
| `state` | `string` | The state of the migration job object. |
| `updateTime` | `string` | Output only. The last update time of the migration job object. |

### `MigrationJobObjectsConfig`

Configuration for the objects to be migrated.

| Property | Type | Description |
|----------|------|-------------|
| `sourceObjectsConfig` | `SourceObjectsConfig` | The list of the migration job objects. |

### `MigrationJobVerificationError`

Error message of a verification Migration job.

| Property | Type | Description |
|----------|------|-------------|
| `errorCode` | `string` | Output only. An instance of ErrorCode specifying the error that occurred. |
| `errorDetailMessage` | `string` | Output only. A specific detailed error message, if supplied by the engine. |
| `errorMessage` | `string` | Output only. A formatted message with further details about the error and a CTA. |

### `MultiColumnDatatypeChange`

Options to configure rule type MultiColumnDatatypeChange. The rule is used to change the data type and associated properties of multiple columns at once. The rule filter field can refer to one or more entities. The rule scope can be one of:Column. This rule requires additional filters to be specified beyond the basic rule filter field, which is the source data type, but the rule supports additional filtering capabilities such as the minimum and maximum field length. All additional filters which are specified are required to be met in order for the rule to be applied (logical AND between the fields).

| Property | Type | Description |
|----------|------|-------------|
| `customFeatures` | `object` | Optional. Custom engine specific features. |
| `newDataType` | `string` | Required. New data type. |
| `overrideFractionalSecondsPrecision` | `integer` | Optional. Column fractional seconds precision - used only for timestamp based datatypes - if not ... |
| `overrideLength` | `string` | Optional. Column length - e.g. varchar (50) - if not specified and relevant uses the source colum... |
| `overridePrecision` | `integer` | Optional. Column precision - when relevant - if not specified and relevant uses the source column... |
| `overrideScale` | `integer` | Optional. Column scale - when relevant - if not specified and relevant uses the source column scale. |
| `sourceDataTypeFilter` | `string` | Required. Filter on source data type. |
| `sourceNumericFilter` | `SourceNumericFilter` | Optional. Filter for fixed point number data types such as NUMERIC/NUMBER. |
| `sourceTextFilter` | `SourceTextFilter` | Optional. Filter for text-based data types like varchar. |

### `MultiEntityRename`

Options to configure rule type MultiEntityRename. The rule is used to rename multiple entities. The rule filter field can refer to one or more entities. The rule scope can be one of: Database, Schema, Table, Column, Constraint, Index, View, Function, Stored Procedure, Materialized View, Sequence, UDT

| Property | Type | Description |
|----------|------|-------------|
| `newNamePattern` | `string` | Optional. The pattern used to generate the new entity's name. This pattern must include the chara... |
| `sourceNameTransformation` | `string` | Optional. Additional transformation that can be done on the source entity name before it is being... |

### `MySqlConnectionProfile`

Specifies connection parameters required specifically for MySQL databases.

| Property | Type | Description |
|----------|------|-------------|
| `cloudSqlId` | `string` | If the source is a Cloud SQL database, use this field to provide the Cloud SQL instance ID of the... |
| `host` | `string` | Required. The IP or hostname of the source MySQL database. |
| `password` | `string` | Required. Input only. The password for the user that Database Migration Service will be using to ... |
| `passwordSet` | `boolean` | Output only. Indicates If this connection profile password is stored. |
| `port` | `integer` | Required. The network port of the source MySQL database. |
| `ssl` | `SslConfig` | SSL configuration for the destination to connect to the source database. |
| `username` | `string` | Required. The username that Database Migration Service will use to connect to the database. The v... |

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `OracleAsmConfig`

Configuration for Oracle Automatic Storage Management (ASM) connection.

| Property | Type | Description |
|----------|------|-------------|
| `asmService` | `string` | Required. ASM service name for the Oracle ASM connection. |
| `hostname` | `string` | Required. Hostname for the Oracle ASM connection. |
| `password` | `string` | Required. Input only. Password for the Oracle ASM connection. |
| `passwordSet` | `boolean` | Output only. Indicates whether a new password is included in the request. |
| `port` | `integer` | Required. Port for the Oracle ASM connection. |
| `ssl` | `SslConfig` | Optional. SSL configuration for the Oracle connection. |
| `username` | `string` | Required. Username for the Oracle ASM connection. |

### `OracleAsmLogFileAccess`

Configuration to use Oracle ASM to access the log files.

### `OracleConnectionProfile`

Specifies connection parameters required specifically for Oracle databases.

| Property | Type | Description |
|----------|------|-------------|
| `databaseService` | `string` | Required. Database service for the Oracle connection. |
| `forwardSshConnectivity` | `ForwardSshTunnelConnectivity` | Forward SSH tunnel connectivity. |
| `host` | `string` | Required. The IP or hostname of the source Oracle database. |
| `oracleAsmConfig` | `OracleAsmConfig` | Optional. Configuration for Oracle ASM connection. |
| `password` | `string` | Required. Input only. The password for the user that Database Migration Service will be using to ... |
| `passwordSet` | `boolean` | Output only. Indicates whether a new password is included in the request. |
| `port` | `integer` | Required. The network port of the source Oracle database. |
| `privateConnectivity` | `PrivateConnectivity` | Private connectivity. |
| `ssl` | `SslConfig` | SSL configuration for the connection to the source Oracle database. * Only `SERVER_ONLY` configur... |
| `staticServiceIpConnectivity` | `StaticServiceIpConnectivity` | Static Service IP connectivity. |
| `username` | `string` | Required. The username that Database Migration Service will use to connect to the database. The v... |

### `OracleSourceConfig`

Configuration for Oracle as a source in a migration.

| Property | Type | Description |
|----------|------|-------------|
| `binaryLogParser` | `BinaryLogParser` | Use Binary Log Parser. |
| `cdcStartPosition` | `string` | Optional. The schema change number (SCN) to start CDC data migration from. |
| `logMiner` | `LogMiner` | Use LogMiner. |
| `maxConcurrentCdcConnections` | `integer` | Optional. Maximum number of connections Database Migration Service will open to the source for CD... |
| `maxConcurrentFullDumpConnections` | `integer` | Optional. Maximum number of connections Database Migration Service will open to the source for fu... |
| `skipFullDump` | `boolean` | Optional. Whether to skip full dump or not. |

### `OracleToPostgresConfig`

Configuration for heterogeneous **Oracle to Cloud SQL for PostgreSQL** and **Oracle to AlloyDB for PostgreSQL** migrations.

| Property | Type | Description |
|----------|------|-------------|
| `oracleSourceConfig` | `OracleSourceConfig` | Optional. Configuration for Oracle source. |
| `postgresDestinationConfig` | `PostgresDestinationConfig` | Optional. Configuration for Postgres destination. |

### `PackageEntity`

Package's parent is a schema.

| Property | Type | Description |
|----------|------|-------------|
| `customFeatures` | `object` | Custom engine specific features. |
| `packageBody` | `string` | The SQL code which creates the package body. If the package specification has cursors or subprogr... |
| `packageSqlCode` | `string` | The SQL code which creates the package. |

### `PerformanceConfig`

Performance configuration definition.

| Property | Type | Description |
|----------|------|-------------|
| `dumpParallelLevel` | `string` | Initial dump parallelism level. |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `auditConfigs` | `array<AuditConfig>` | Specifies cloud audit logging configuration for this policy. |
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `Position`

Issue position.

| Property | Type | Description |
|----------|------|-------------|
| `column` | `integer` | Issue column number |
| `length` | `integer` | Issue length |
| `line` | `integer` | Issue line number |
| `offset` | `integer` | Issue offset |

### `PostgreSqlConnectionProfile`

Specifies connection parameters required specifically for PostgreSQL databases.

| Property | Type | Description |
|----------|------|-------------|
| `alloydbClusterId` | `string` | Optional. If the destination is an AlloyDB database, use this field to provide the AlloyDB cluste... |
| `cloudSqlId` | `string` | If the source is a Cloud SQL database, use this field to provide the Cloud SQL instance ID of the... |
| `database` | `string` | Optional. The name of the specific database within the host. |
| `forwardSshConnectivity` | `ForwardSshTunnelConnectivity` | Forward SSH tunnel connectivity. |
| `host` | `string` | Required. The IP or hostname of the source PostgreSQL database. |
| `networkArchitecture` | `string` | Output only. If the source is a Cloud SQL database, this field indicates the network architecture... |
| `password` | `string` | Required. Input only. The password for the user that Database Migration Service will be using to ... |
| `passwordSet` | `boolean` | Output only. Indicates If this connection profile password is stored. |
| `port` | `integer` | Required. The network port of the source PostgreSQL database. |
| `privateConnectivity` | `PrivateConnectivity` | Private connectivity. |
| `privateServiceConnectConnectivity` | `PrivateServiceConnectConnectivity` | Private service connect connectivity. |
| `ssl` | `SslConfig` | SSL configuration for the destination to connect to the source database. |
| `staticIpConnectivity` | `StaticIpConnectivity` | Static ip connectivity data (default, no additional details needed). |
| `username` | `string` | Required. The username that Database Migration Service will use to connect to the database. The v... |

### `PostgresDestinationConfig`

Configuration for Postgres as a destination in a migration.

| Property | Type | Description |
|----------|------|-------------|
| `maxConcurrentConnections` | `integer` | Optional. Maximum number of connections Database Migration Service will open to the destination f... |
| `transactionTimeout` | `string` | Optional. Timeout for data migration transactions. |

### `PostgresSourceConfig`

Configuration for Postgres as a source in a migration.

| Property | Type | Description |
|----------|------|-------------|
| `skipFullDump` | `boolean` | Optional. Whether to skip full dump or not. |

### `PostgresToSqlServerConfig`

Configuration for heterogeneous failback migrations from **PostgreSQL to SQL Server**.

| Property | Type | Description |
|----------|------|-------------|
| `postgresSourceConfig` | `PostgresSourceConfig` | Optional. Configuration for PostgreSQL source. |
| `sqlserverDestinationConfig` | `SqlServerDestinationConfig` | Optional. Configuration for SQL Server destination. |

### `PreconditionFailure`

Describes what preconditions have failed. For example, if an RPC failed because it required the Terms of Service to be acknowledged, it could list the terms of service violation in the PreconditionFailure message.

| Property | Type | Description |
|----------|------|-------------|
| `violations` | `array<PreconditionFailureViolation>` | Describes all precondition violations. |

### `PreconditionFailureViolation`

A message type used to describe a single precondition failure.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | A description of how the precondition failed. Developers can use this description to understand h... |
| `subject` | `string` | The subject, relative to the type, that failed. For example, "google.com/cloud" relative to the "... |
| `type` | `string` | The type of PreconditionFailure. We recommend using a service-specific enum type to define the su... |

### `PrimaryInstanceSettings`

Settings for the cluster's primary instance

| Property | Type | Description |
|----------|------|-------------|
| `databaseFlags` | `object` | Database flags to pass to AlloyDB when DMS is creating the AlloyDB cluster and instances. See the... |
| `id` | `string` | Required. The ID of the AlloyDB primary instance. The ID must satisfy the regex expression "[a-z0... |
| `instanceNetworkConfig` | `InstanceNetworkConfig` | Optional. Metadata related to instance level network configuration. |
| `labels` | `object` | Labels for the AlloyDB primary instance created by DMS. An object containing a list of 'key', 'va... |
| `machineConfig` | `MachineConfig` | Configuration for the machines that host the underlying database engine. |
| `outboundPublicIpAddresses` | `array<string>` | Output only. All outbound public IP addresses configured for the instance. |
| `privateIp` | `string` | Output only. The private IP address for the Instance. This is the connection endpoint for an end-... |

### `PrivateConnection`

The PrivateConnection resource is used to establish private connectivity with the customer's network.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The create time of the resource. |
| `displayName` | `string` | The private connection display name. |
| `error` | `Status` | Output only. The error details in case of state FAILED. |
| `labels` | `object` | The resource labels for private connections to use to annotate any related underlying resources s... |
| `name` | `string` | The name of the resource. |
| `pscInterfaceConfig` | `PscInterfaceConfig` | PSC Interface configuration. |
| `satisfiesPzi` | `boolean` | Output only. Reserved for future use. |
| `satisfiesPzs` | `boolean` | Output only. Reserved for future use. |
| `state` | `string` | Output only. The state of the private connection. |
| `updateTime` | `string` | Output only. The last update time of the resource. |
| `vpcPeeringConfig` | `VpcPeeringConfig` | VPC peering configuration. |

### `PrivateConnectivity`

Private Connectivity.

| Property | Type | Description |
|----------|------|-------------|
| `privateConnection` | `string` | Required. The resource name (URI) of the private connection. |

### `PrivateServiceConnectConnectivity`

[Private Service Connect connectivity](https://cloud.google.com/vpc/docs/private-service-connect#service-attachments)

| Property | Type | Description |
|----------|------|-------------|
| `serviceAttachment` | `string` | Required. A service attachment that exposes a database, and has the following format: projects/{p... |

### `PromoteMigrationJobRequest`

Request message for 'PromoteMigrationJob' request.

| Property | Type | Description |
|----------|------|-------------|
| `objectsFilter` | `MigrationJobObjectsConfig` | Optional. The object filter to apply to the migration job. |

### `PscInterfaceConfig`

The PSC Interface configuration is used to create PSC Interface between DMS's internal VPC and the consumer's PSC.

| Property | Type | Description |
|----------|------|-------------|
| `networkAttachment` | `string` | Required. Fully qualified name of the Network Attachment that DMS will connect to. Format: `proje... |

### `QuotaFailure`

Describes how a quota check failed. For example if a daily limit was exceeded for the calling project, a service could respond with a QuotaFailure detail containing the project id and the description of the quota limit that was exceeded. If the calling project hasn't enabled the service in the developer console, then a service could respond with the project id and set `service_disabled` to true. Also see RetryInfo and Help types for other details about handling a quota failure.

| Property | Type | Description |
|----------|------|-------------|
| `violations` | `array<QuotaFailureViolation>` | Describes all quota violations. |

### `QuotaFailureViolation`

A message type used to describe a single quota violation. For example, a daily quota or a custom quota that was exceeded.

| Property | Type | Description |
|----------|------|-------------|
| `apiService` | `string` | The API Service from which the `QuotaFailure.Violation` orginates. In some cases, Quota issues or... |
| `description` | `string` | A description of how the quota check failed. Clients can use this description to find more about ... |
| `futureQuotaValue` | `string` | The new quota value being rolled out at the time of the violation. At the completion of the rollo... |
| `quotaDimensions` | `object` | The dimensions of the violated quota. Every non-global quota is enforced on a set of dimensions. ... |
| `quotaId` | `string` | The id of the violated quota. Also know as "limit name", this is the unique identifier of a quota... |
| `quotaMetric` | `string` | The metric of the violated quota. A quota metric is a named counter to measure usage, such as API... |
| `quotaValue` | `string` | The enforced quota value at the time of the `QuotaFailure`. For example, if the enforced quota va... |
| `subject` | `string` | The subject on which the quota check failed. For example, "clientip:" or "project:". |

### `RequestInfo`

Contains metadata about the request that clients can attach when filing a bug or providing other forms of feedback.

| Property | Type | Description |
|----------|------|-------------|
| `requestId` | `string` | An opaque string that should only be interpreted by the service generating it. For example, it ca... |
| `servingData` | `string` | Any data that was used to serve this request. For example, an encrypted stack trace that can be s... |

### `ResourceInfo`

Describes the resource that is being accessed.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Describes what error is encountered when accessing this resource. For example, updating a cloud p... |
| `owner` | `string` | The owner of the resource (optional). For example, "user:" or "project:". |
| `resourceName` | `string` | The name of the resource being accessed. For example, a shared calendar name: "example.com_4fghdh... |
| `resourceType` | `string` | A name for the type of resource being accessed, e.g. "sql table", "cloud storage bucket", "file",... |

### `RestartMigrationJobRequest`

Request message for 'RestartMigrationJob' request.

| Property | Type | Description |
|----------|------|-------------|
| `objectsFilter` | `MigrationJobObjectsConfig` | Optional. The object filter to apply to the migration job. |
| `restartFailedObjects` | `boolean` | Optional. If true, only failed objects will be restarted. |
| `skipValidation` | `boolean` | Optional. Restart the migration job without running prior configuration verification. Defaults to... |

### `ResumeMigrationJobRequest`

Request message for 'ResumeMigrationJob' request.

| Property | Type | Description |
|----------|------|-------------|
| `skipValidation` | `boolean` | Optional. Resume the migration job without running prior configuration verification. Defaults to ... |

### `RetryInfo`

Describes when the clients can retry a failed request. Clients could ignore the recommendation here or retry when this information is missing from error responses. It's always recommended that clients should use exponential backoff when retrying. Clients should wait until `retry_delay` amount of time has passed since receiving the error response before retrying. If retrying requests also fail, clients should use an exponential backoff scheme to gradually increase the delay between retries based on `retry_delay`, until either a maximum number of retries have been reached or a maximum retry delay cap has been reached.

| Property | Type | Description |
|----------|------|-------------|
| `retryDelay` | `string` | Clients should wait at least this long between retrying the same request. |

### `ReverseSshConnectivity`

The details needed to configure a reverse SSH tunnel between the source and destination databases. These details will be used when calling the generateSshScript method (see https://cloud.google.com/database-migration/docs/reference/rest/v1/projects.locations.migrationJobs/generateSshScript) to produce the script that will help set up the reverse SSH tunnel, and to set up the VPC peering between the Cloud SQL private network and the VPC.

| Property | Type | Description |
|----------|------|-------------|
| `vm` | `string` | The name of the virtual machine (Compute Engine) used as the bastion server for the SSH tunnel. |
| `vmIp` | `string` | Required. The IP of the virtual machine (Compute Engine) used as the bastion server for the SSH t... |
| `vmPort` | `integer` | Required. The forwarding port of the virtual machine (Compute Engine) used as the bastion server ... |
| `vpc` | `string` | The name of the VPC to peer with the Cloud SQL private network. |

### `RollbackConversionWorkspaceRequest`

Request message for 'RollbackConversionWorkspace' request.

### `RoundToScale`

This allows the data to change scale, for example if the source is 2 digits after the decimal point, specify round to scale value = 2. If for example the value needs to be converted to an integer, use round to scale value = 0.

| Property | Type | Description |
|----------|------|-------------|
| `scale` | `integer` | Required. Scale value to be used |

### `RulesFile`

Details of a single rules file.

| Property | Type | Description |
|----------|------|-------------|
| `rulesContent` | `string` | Required. The text content of the rules that needs to be converted. |
| `rulesSourceFilename` | `string` | Required. The filename of the rules that needs to be converted. The filename is used mainly so th... |

### `SchemaEntity`

Schema typically has no parent entity, but can have a parent entity DatabaseInstance (for database engines which support it). For some database engines, the terms schema and user can be used interchangeably when they refer to a namespace or a collection of other database entities. Can store additional information which is schema specific.

| Property | Type | Description |
|----------|------|-------------|
| `customFeatures` | `object` | Custom engine specific features. |

### `SearchBackgroundJobsResponse`

Response message for 'SearchBackgroundJobs' request.

| Property | Type | Description |
|----------|------|-------------|
| `jobs` | `array<BackgroundJobLogEntry>` | The list of conversion workspace mapping rules. |

### `SeedConversionWorkspaceRequest`

Request message for 'SeedConversionWorkspace' request.

| Property | Type | Description |
|----------|------|-------------|
| `autoCommit` | `boolean` | Should the conversion workspace be committed automatically after the seed operation. |
| `destinationConnectionProfile` | `string` | Optional. Fully qualified (Uri) name of the destination connection profile. |
| `sourceConnectionProfile` | `string` | Optional. Fully qualified (Uri) name of the source connection profile. |

### `SeedJobDetails`

Details regarding a Seed background job.

| Property | Type | Description |
|----------|------|-------------|
| `connectionProfile` | `string` | Output only. The connection profile which was used for the seed job. |

### `SequenceEntity`

Sequence's parent is a schema.

| Property | Type | Description |
|----------|------|-------------|
| `cache` | `string` | Indicates number of entries to cache / precreate. |
| `customFeatures` | `object` | Custom engine specific features. |
| `cycle` | `boolean` | Indicates whether the sequence value should cycle through. |
| `increment` | `string` | Increment value for the sequence. |
| `maxValue` | `string` | Maximum number for the sequence represented as bytes to accommodate large. numbers |
| `minValue` | `string` | Minimum number for the sequence represented as bytes to accommodate large. numbers |
| `startValue` | `string` | Start number for the sequence represented as bytes to accommodate large. numbers |

### `SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |
| `updateMask` | `string` | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mas... |

### `SetTablePrimaryKey`

Options to configure rule type SetTablePrimaryKey. The rule is used to specify the columns and name to configure/alter the primary key of a table. The rule filter field can refer to one entity. The rule scope can be one of: Table.

| Property | Type | Description |
|----------|------|-------------|
| `primaryKey` | `string` | Optional. Name for the primary key |
| `primaryKeyColumns` | `array<string>` | Required. List of column names for the primary key |

### `SingleColumnChange`

Options to configure rule type SingleColumnChange. The rule is used to change the properties of a column. The rule filter field can refer to one entity. The rule scope can be one of: Column. When using this rule, if a field is not specified than the destination column's configuration will be the same as the one in the source column..

| Property | Type | Description |
|----------|------|-------------|
| `array` | `boolean` | Optional. Is the column of array type. |
| `arrayLength` | `integer` | Optional. The length of the array, only relevant if the column type is an array. |
| `autoGenerated` | `boolean` | Optional. Is the column auto-generated/identity. |
| `charset` | `string` | Optional. Charset override - instead of table level charset. |
| `collation` | `string` | Optional. Collation override - instead of table level collation. |
| `comment` | `string` | Optional. Comment associated with the column. |
| `customFeatures` | `object` | Optional. Custom engine specific features. |
| `dataType` | `string` | Optional. Column data type name. |
| `fractionalSecondsPrecision` | `integer` | Optional. Column fractional seconds precision - e.g. 2 as in timestamp (2) - when relevant. |
| `length` | `string` | Optional. Column length - e.g. 50 as in varchar (50) - when relevant. |
| `nullable` | `boolean` | Optional. Is the column nullable. |
| `precision` | `integer` | Optional. Column precision - e.g. 8 as in double (8,2) - when relevant. |
| `scale` | `integer` | Optional. Column scale - e.g. 2 as in double (8,2) - when relevant. |
| `setValues` | `array<string>` | Optional. Specifies the list of values allowed in the column. |
| `udt` | `boolean` | Optional. Is the column a UDT (User-defined Type). |

### `SingleEntityRename`

Options to configure rule type SingleEntityRename. The rule is used to rename an entity. The rule filter field can refer to only one entity. The rule scope can be one of: Database, Schema, Table, Column, Constraint, Index, View, Function, Stored Procedure, Materialized View, Sequence, UDT, Synonym

| Property | Type | Description |
|----------|------|-------------|
| `newName` | `string` | Required. The new name of the destination entity |

### `SinglePackageChange`

Options to configure rule type SinglePackageChange. The rule is used to alter the sql code for a package entities. The rule filter field can refer to one entity. The rule scope can be: Package

| Property | Type | Description |
|----------|------|-------------|
| `packageBody` | `string` | Optional. Sql code for package body |
| `packageDescription` | `string` | Optional. Sql code for package description |

### `SourceNumericFilter`

Filter for fixed point number data types such as NUMERIC/NUMBER

| Property | Type | Description |
|----------|------|-------------|
| `numericFilterOption` | `string` | Required. Enum to set the option defining the datatypes numeric filter has to be applied to |
| `sourceMaxPrecisionFilter` | `integer` | Optional. The filter will match columns with precision smaller than or equal to this number. |
| `sourceMaxScaleFilter` | `integer` | Optional. The filter will match columns with scale smaller than or equal to this number. |
| `sourceMinPrecisionFilter` | `integer` | Optional. The filter will match columns with precision greater than or equal to this number. |
| `sourceMinScaleFilter` | `integer` | Optional. The filter will match columns with scale greater than or equal to this number. |

### `SourceObjectConfig`

Config for a single migration job object.

| Property | Type | Description |
|----------|------|-------------|
| `objectIdentifier` | `SourceObjectIdentifier` | Optional. The object identifier. |

### `SourceObjectIdentifier`

An identifier for the Migration Job Object.

| Property | Type | Description |
|----------|------|-------------|
| `database` | `string` | Optional. The database name. This will be required only if the object uses a database name as par... |
| `schema` | `string` | Optional. The schema name. This will be required only if the object uses a schema name as part of... |
| `table` | `string` | Optional. The table name. This will be required only if the object is a level below database or s... |
| `type` | `string` | Required. The type of the migration job object. |

### `SourceObjectsConfig`

List of configurations for the source objects to be migrated.

| Property | Type | Description |
|----------|------|-------------|
| `objectConfigs` | `array<SourceObjectConfig>` | Optional. The list of the objects to be migrated. |
| `objectsSelectionType` | `string` | Optional. The objects selection type of the migration job. |

### `SourceSqlChange`

Options to configure rule type SourceSqlChange. The rule is used to alter the sql code for database entities. The rule filter field can refer to one entity. The rule scope can be: StoredProcedure, Function, Trigger, View

| Property | Type | Description |
|----------|------|-------------|
| `sqlCode` | `string` | Required. Sql code for source (stored procedure, function, trigger or view) |

### `SourceTextFilter`

Filter for text-based data types like varchar.

| Property | Type | Description |
|----------|------|-------------|
| `sourceMaxLengthFilter` | `string` | Optional. The filter will match columns with length smaller than or equal to this number. |
| `sourceMinLengthFilter` | `string` | Optional. The filter will match columns with length greater than or equal to this number. |

### `SqlAclEntry`

An entry for an Access Control list.

| Property | Type | Description |
|----------|------|-------------|
| `expireTime` | `string` | The time when this access control entry expires in [RFC 3339](https://tools.ietf.org/html/rfc3339... |
| `label` | `string` | A label to identify this entry. |
| `ttl` | `string` | Input only. The time-to-leave of this access control entry. |
| `value` | `string` | The allowlisted value for the access control list. |

### `SqlIpConfig`

IP Management configuration.

| Property | Type | Description |
|----------|------|-------------|
| `allocatedIpRange` | `string` | Optional. The name of the allocated IP address range for the private IP Cloud SQL instance. This ... |
| `authorizedNetworks` | `array<SqlAclEntry>` | The list of external networks that are allowed to connect to the instance using the IP. See https... |
| `enableIpv4` | `boolean` | Whether the instance should be assigned an IPv4 address or not. |
| `privateNetwork` | `string` | The resource link for the VPC network from which the Cloud SQL instance is accessible for private... |
| `requireSsl` | `boolean` | Whether SSL connections over IP should be enforced or not. |

### `SqlServerBackups`

Specifies the backup details in Cloud Storage for homogeneous migration to Cloud SQL for SQL Server.

| Property | Type | Description |
|----------|------|-------------|
| `gcsBucket` | `string` | Required. The Cloud Storage bucket that stores backups for all replicated databases. |
| `gcsPrefix` | `string` | Optional. Cloud Storage path inside the bucket that stores backups. |

### `SqlServerConnectionProfile`

Specifies connection parameters required specifically for SQL Server databases.

| Property | Type | Description |
|----------|------|-------------|
| `backups` | `SqlServerBackups` | The backup details in Cloud Storage for homogeneous migration to Cloud SQL for SQL Server. |
| `cloudSqlId` | `string` | If the source is a Cloud SQL database, use this field to provide the Cloud SQL instance ID of the... |
| `cloudSqlProjectId` | `string` | Optional. The project id of the Cloud SQL instance. If not provided, the project id of the connec... |
| `database` | `string` | Required. The name of the specific database within the host. |
| `dbmPort` | `integer` | Optional. The Database Mirroring (DBM) port of the source SQL Server instance. |
| `forwardSshConnectivity` | `ForwardSshTunnelConnectivity` | Forward SSH tunnel connectivity. |
| `host` | `string` | Required. The IP or hostname of the source SQL Server database. |
| `password` | `string` | Required. Input only. The password for the user that Database Migration Service will be using to ... |
| `passwordSet` | `boolean` | Output only. Indicates whether a new password is included in the request. |
| `port` | `integer` | Required. The network port of the source SQL Server database. |
| `privateConnectivity` | `PrivateConnectivity` | Private connectivity. |
| `privateServiceConnectConnectivity` | `PrivateServiceConnectConnectivity` | Private Service Connect connectivity. |
| `ssl` | `SslConfig` | SSL configuration for the destination to connect to the source database. |
| `staticIpConnectivity` | `StaticIpConnectivity` | Static IP connectivity data (default, no additional details needed). |
| `username` | `string` | Required. The username that Database Migration Service will use to connect to the database. The v... |

### `SqlServerDagConfig`

Configuration for distributed availability group (DAG) for the SQL Server homogeneous migration.

| Property | Type | Description |
|----------|------|-------------|
| `linkedServer` | `string` | Required. The name of the linked server that points to the source SQL Server instance. Only used ... |
| `sourceAg` | `string` | Required. The name of the source availability group. Only used by DAG migrations. |

### `SqlServerDatabaseBackup`

Specifies the backup details for a single database in Cloud Storage for homogeneous migration to Cloud SQL for SQL Server.

| Property | Type | Description |
|----------|------|-------------|
| `database` | `string` | Required. Name of a SQL Server database for which to define backup configuration. |
| `encryptionOptions` | `SqlServerEncryptionOptions` | Optional. Encryption settings for the database. Required if provided database backups are encrypt... |

### `SqlServerDestinationConfig`

Configuration for SQL Server as a destination in a migration.

| Property | Type | Description |
|----------|------|-------------|
| `maxConcurrentConnections` | `integer` | Optional. Maximum number of connections Database Migration Service will open to the destination f... |
| `transactionTimeout` | `string` | Optional. Timeout for data migration transactions. |

### `SqlServerEncryptionOptions`

Encryption settings for the SQL Server database.

| Property | Type | Description |
|----------|------|-------------|
| `certPath` | `string` | Required. Path to the Certificate (.cer) in Cloud Storage, in the form `gs://bucketName/fileName`... |
| `pvkPassword` | `string` | Required. Input only. Password that encrypts the private key. |
| `pvkPath` | `string` | Required. Path to the Certificate Private Key (.pvk) in Cloud Storage, in the form `gs://bucketNa... |

### `SqlServerHomogeneousMigrationJobConfig`

Configuration for homogeneous migration to Cloud SQL for SQL Server.

| Property | Type | Description |
|----------|------|-------------|
| `backupFilePattern` | `string` | Required. Pattern that describes the default backup naming strategy. The specified pattern should... |
| `dagConfig` | `SqlServerDagConfig` | Optional. Configuration for distributed availability group (DAG) for the SQL Server homogeneous m... |
| `databaseBackups` | `array<SqlServerDatabaseBackup>` | Required. Backup details per database in Cloud Storage. |
| `promoteWhenReady` | `boolean` | Optional. Promote databases when ready. |
| `useDiffBackup` | `boolean` | Optional. Enable differential backups. |

### `SqlServerSourceConfig`

Configuration for SQL Server as a source in a migration.

| Property | Type | Description |
|----------|------|-------------|
| `cdcStartPosition` | `string` | Optional. The log sequence number (LSN) to start CDC data migration from. |
| `maxConcurrentCdcConnections` | `integer` | Optional. Maximum number of connections Database Migration Service will open to the source for CD... |
| `maxConcurrentFullDumpConnections` | `integer` | Optional. Maximum number of connections Database Migration Service will open to the source for fu... |
| `skipFullDump` | `boolean` | Optional. Whether to skip full dump or not. |

### `SqlServerToPostgresConfig`

Configuration for heterogeneous **SQL Server to Cloud SQL for PostgreSQL** migrations.

| Property | Type | Description |
|----------|------|-------------|
| `postgresDestinationConfig` | `PostgresDestinationConfig` | Optional. Configuration for Postgres destination. |
| `sqlserverSourceConfig` | `SqlServerSourceConfig` | Optional. Configuration for SQL Server source. |

### `SshScript`

Response message for 'GenerateSshScript' request.

| Property | Type | Description |
|----------|------|-------------|
| `script` | `string` | The ssh configuration script. |

### `SslConfig`

SSL configuration information.

| Property | Type | Description |
|----------|------|-------------|
| `caCertificate` | `string` | Required. Input only. The x509 PEM-encoded certificate of the CA that signed the source database ... |
| `clientCertificate` | `string` | Input only. The x509 PEM-encoded certificate that will be used by the replica to authenticate aga... |
| `clientKey` | `string` | Input only. The unencrypted PKCS#1 or PKCS#8 PEM-encoded private key associated with the Client C... |
| `sslFlags` | `object` | Optional. SSL flags used for establishing SSL connection to the source database. Only source spec... |
| `type` | `string` | Optional. The ssl config type according to 'client_key', 'client_certificate' and 'ca_certificate'. |

### `StartMigrationJobRequest`

Request message for 'StartMigrationJob' request.

| Property | Type | Description |
|----------|------|-------------|
| `skipValidation` | `boolean` | Optional. Start the migration job without running prior configuration verification. Defaults to `... |

### `StaticIpConnectivity`

The source database will allow incoming connections from the public IP of the destination database. You can retrieve the public IP of the Cloud SQL instance from the Cloud SQL console or using Cloud SQL APIs. No additional configuration is required.

### `StaticServiceIpConnectivity`

Static IP address connectivity configured on service project.

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `StopMigrationJobRequest`

Request message for 'StopMigrationJob' request.

### `StoredProcedureEntity`

Stored procedure's parent is a schema.

| Property | Type | Description |
|----------|------|-------------|
| `customFeatures` | `object` | Custom engine specific features. |
| `sqlCode` | `string` | The SQL code which creates the stored procedure. |

### `SynonymEntity`

Synonym's parent is a schema.

| Property | Type | Description |
|----------|------|-------------|
| `customFeatures` | `object` | Custom engine specific features. |
| `sourceEntity` | `string` | The name of the entity for which the synonym is being created (the source). |
| `sourceType` | `string` | The type of the entity for which the synonym is being created (usually a table or a sequence). |

### `TableEntity`

Table's parent is a schema.

| Property | Type | Description |
|----------|------|-------------|
| `columns` | `array<ColumnEntity>` | Table columns. |
| `comment` | `string` | Comment associated with the table. |
| `constraints` | `array<ConstraintEntity>` | Table constraints. |
| `customFeatures` | `object` | Custom engine specific features. |
| `indices` | `array<IndexEntity>` | Table indices. |
| `triggers` | `array<TriggerEntity>` | Table triggers. |

### `TcpProxyScript`

Response message for 'GenerateTcpProxyScript' request.

| Property | Type | Description |
|----------|------|-------------|
| `script` | `string` | The TCP Proxy configuration script. |

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

### `TriggerEntity`

Trigger is not used as an independent entity, it is retrieved as part of a Table entity.

| Property | Type | Description |
|----------|------|-------------|
| `customFeatures` | `object` | Custom engine specific features. |
| `name` | `string` | The name of the trigger. |
| `sqlCode` | `string` | The SQL code which creates the trigger. |
| `triggerType` | `string` | Indicates when the trigger fires, for example BEFORE STATEMENT, AFTER EACH ROW. |
| `triggeringEvents` | `array<string>` | The DML, DDL, or database events that fire the trigger, for example INSERT, UPDATE. |

### `UDTEntity`

UDT's parent is a schema.

| Property | Type | Description |
|----------|------|-------------|
| `customFeatures` | `object` | Custom engine specific features. |
| `udtBody` | `string` | The SQL code which creates the udt body. |
| `udtSqlCode` | `string` | The SQL code which creates the udt. |

### `UserPassword`

The username/password for a database user. Used for specifying initial users at cluster creation time.

| Property | Type | Description |
|----------|------|-------------|
| `password` | `string` | The initial password for the user. |
| `passwordSet` | `boolean` | Output only. Indicates if the initial_user.password field has been set. |
| `user` | `string` | The database username. |

### `ValueListFilter`

A list of values to filter by in ConditionalColumnSetValue

| Property | Type | Description |
|----------|------|-------------|
| `ignoreCase` | `boolean` | Required. Whether to ignore case when filtering by values. Defaults to false |
| `valuePresentList` | `string` | Required. Indicates whether the filter matches rows with values that are present in the list or t... |
| `values` | `array<string>` | Required. The list to be used to filter by |

### `ValueTransformation`

Description of data transformation during migration as part of the ConditionalColumnSetValue.

| Property | Type | Description |
|----------|------|-------------|
| `applyHash` | `ApplyHash` | Optional. Applies a hash function on the data |
| `assignMaxValue` | `Empty` | Optional. Set to max_value - if integer or numeric, will use int.maxvalue, etc |
| `assignMinValue` | `Empty` | Optional. Set to min_value - if integer or numeric, will use int.minvalue, etc |
| `assignNull` | `Empty` | Optional. Set to null |
| `assignSpecificValue` | `AssignSpecificValue` | Optional. Set to a specific value (value is converted to fit the target data type) |
| `doubleComparison` | `DoubleComparisonFilter` | Optional. Filter on relation between source value and compare value of type double. |
| `intComparison` | `IntComparisonFilter` | Optional. Filter on relation between source value and compare value of type integer. |
| `isNull` | `Empty` | Optional. Value is null |
| `roundScale` | `RoundToScale` | Optional. Allows the data to change scale |
| `valueList` | `ValueListFilter` | Optional. Value is found in the specified list. |

### `VerifyMigrationJobRequest`

Request message for 'VerifyMigrationJob' request.

| Property | Type | Description |
|----------|------|-------------|
| `migrationJob` | `MigrationJob` | Optional. The changed migration job parameters to verify. It will not update the migration job. |
| `updateMask` | `string` | Optional. Field mask is used to specify the changed fields to be verified. It will not update the... |

### `ViewEntity`

View's parent is a schema.

| Property | Type | Description |
|----------|------|-------------|
| `constraints` | `array<ConstraintEntity>` | View constraints. |
| `customFeatures` | `object` | Custom engine specific features. |
| `sqlCode` | `string` | The SQL code which creates the view. |

### `VmCreationConfig`

VM creation configuration message

| Property | Type | Description |
|----------|------|-------------|
| `subnet` | `string` | The subnet name the vm needs to be created in. |
| `vmMachineType` | `string` | Required. VM instance machine type to create. |
| `vmZone` | `string` | The Google Cloud Platform zone to create the VM in. |

### `VmSelectionConfig`

VM selection configuration message

| Property | Type | Description |
|----------|------|-------------|
| `vmZone` | `string` | Required. The Google Cloud Platform zone the VM is located. |

### `VpcPeeringConfig`

The VPC peering configuration is used to create VPC peering with the consumer's VPC.

| Property | Type | Description |
|----------|------|-------------|
| `subnet` | `string` | Required. A free subnet for peering. (CIDR of /29) |
| `vpcName` | `string` | Required. Fully qualified name of the VPC that Database Migration Service will peer to. |

### `VpcPeeringConnectivity`

The details of the VPC where the source database is located in Google Cloud. We will use this information to set up the VPC peering connection between Cloud SQL and this VPC.

| Property | Type | Description |
|----------|------|-------------|
| `vpc` | `string` | The name of the VPC network to peer with the Cloud SQL private network. |

