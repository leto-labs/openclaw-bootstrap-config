# Cloud Bigtable Admin API - API Reference

**Version**: `v2` | **Methods**: 79 | **Schemas**: 142

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `bigtableadmin.operations.get` | GET | `v2/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `bigtableadmin.operations.projects.operations.list` | GET | `v2/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `bigtableadmin.projects.instances.getIamPolicy` | POST | `v2/{+resource}:getIamPolicy` | Gets the access control policy for an instance resource. Returns an empty policy if an instance e... |
| `bigtableadmin.projects.instances.list` | GET | `v2/{+parent}/instances` | Lists information about instances in a project. |
| `bigtableadmin.projects.instances.update` | PUT | `v2/{+name}` | Updates an instance within a project. This method updates only the display name and type for an I... |
| `bigtableadmin.projects.instances.partialUpdateInstance` | PATCH | `v2/{+name}` | Partially updates an instance within a project. This method can modify all fields of an Instance ... |
| `bigtableadmin.projects.instances.setIamPolicy` | POST | `v2/{+resource}:setIamPolicy` | Sets the access control policy on an instance resource. Replaces any existing policy. |
| `bigtableadmin.projects.instances.testIamPermissions` | POST | `v2/{+resource}:testIamPermissions` | Returns permissions that the caller has on the specified instance resource. |
| `bigtableadmin.projects.instances.get` | GET | `v2/{+name}` | Gets information about an instance. |
| `bigtableadmin.projects.instances.delete` | DELETE | `v2/{+name}` | Delete an instance from a project. |
| `bigtableadmin.projects.instances.create` | POST | `v2/{+parent}/instances` | Create an instance within a project. Note that exactly one of Cluster.serve_nodes and Cluster.clu... |
| `bigtableadmin.projects.instances.logicalViews.patch` | PATCH | `v2/{+name}` | Updates a logical view within an instance. |
| `bigtableadmin.projects.instances.logicalViews.list` | GET | `v2/{+parent}/logicalViews` | Lists information about logical views in an instance. |
| `bigtableadmin.projects.instances.logicalViews.create` | POST | `v2/{+parent}/logicalViews` | Creates a logical view within an instance. |
| `bigtableadmin.projects.instances.logicalViews.setIamPolicy` | POST | `v2/{+resource}:setIamPolicy` | Sets the access control policy on an instance resource. Replaces any existing policy. |
| `bigtableadmin.projects.instances.logicalViews.testIamPermissions` | POST | `v2/{+resource}:testIamPermissions` | Returns permissions that the caller has on the specified instance resource. |
| `bigtableadmin.projects.instances.logicalViews.get` | GET | `v2/{+name}` | Gets information about a logical view. |
| `bigtableadmin.projects.instances.logicalViews.delete` | DELETE | `v2/{+name}` | Deletes a logical view from an instance. |
| `bigtableadmin.projects.instances.logicalViews.getIamPolicy` | POST | `v2/{+resource}:getIamPolicy` | Gets the access control policy for an instance resource. Returns an empty policy if an instance e... |
| `bigtableadmin.projects.instances.tables.get` | GET | `v2/{+name}` | Gets metadata information about the specified table. |
| `bigtableadmin.projects.instances.tables.patch` | PATCH | `v2/{+name}` | Updates a specified table. |
| `bigtableadmin.projects.instances.tables.modifyColumnFamilies` | POST | `v2/{+name}:modifyColumnFamilies` | Performs a series of column family modifications on the specified table. Either all or none of th... |
| `bigtableadmin.projects.instances.tables.create` | POST | `v2/{+parent}/tables` | Creates a new table in the specified instance. The table can be created with a full set of initia... |
| `bigtableadmin.projects.instances.tables.testIamPermissions` | POST | `v2/{+resource}:testIamPermissions` | Returns permissions that the caller has on the specified Bigtable resource. |
| `bigtableadmin.projects.instances.tables.getIamPolicy` | POST | `v2/{+resource}:getIamPolicy` | Gets the access control policy for a Bigtable resource. Returns an empty policy if the resource e... |
| `bigtableadmin.projects.instances.tables.generateConsistencyToken` | POST | `v2/{+name}:generateConsistencyToken` | Generates a consistency token for a Table, which can be used in CheckConsistency to check whether... |
| `bigtableadmin.projects.instances.tables.undelete` | POST | `v2/{+name}:undelete` | Restores a specified table which was accidentally deleted. |
| `bigtableadmin.projects.instances.tables.checkConsistency` | POST | `v2/{+name}:checkConsistency` | Checks replication consistency based on a consistency token, that is, if replication has caught u... |
| `bigtableadmin.projects.instances.tables.restore` | POST | `v2/{+parent}/tables:restore` | Create a new table by restoring from a completed backup. The returned table long-running operatio... |
| `bigtableadmin.projects.instances.tables.delete` | DELETE | `v2/{+name}` | Permanently deletes a specified table and all of its data. |
| `bigtableadmin.projects.instances.tables.setIamPolicy` | POST | `v2/{+resource}:setIamPolicy` | Sets the access control policy on a Bigtable resource. Replaces any existing policy. |
| `bigtableadmin.projects.instances.tables.dropRowRange` | POST | `v2/{+name}:dropRowRange` | Permanently drop/delete a row range from a specified table. The request can specify whether to de... |
| `bigtableadmin.projects.instances.tables.list` | GET | `v2/{+parent}/tables` | Lists all tables served from a specified instance. |
| `bigtableadmin.projects.instances.tables.schemaBundles.getIamPolicy` | POST | `v2/{+resource}:getIamPolicy` | Gets the access control policy for a Bigtable resource. Returns an empty policy if the resource e... |
| `bigtableadmin.projects.instances.tables.schemaBundles.delete` | DELETE | `v2/{+name}` | Deletes a schema bundle in the specified table. |
| `bigtableadmin.projects.instances.tables.schemaBundles.list` | GET | `v2/{+parent}/schemaBundles` | Lists all schema bundles associated with the specified table. |
| `bigtableadmin.projects.instances.tables.schemaBundles.create` | POST | `v2/{+parent}/schemaBundles` | Creates a new schema bundle in the specified table. |
| `bigtableadmin.projects.instances.tables.schemaBundles.testIamPermissions` | POST | `v2/{+resource}:testIamPermissions` | Returns permissions that the caller has on the specified Bigtable resource. |
| `bigtableadmin.projects.instances.tables.schemaBundles.patch` | PATCH | `v2/{+name}` | Updates a schema bundle in the specified table. |
| `bigtableadmin.projects.instances.tables.schemaBundles.get` | GET | `v2/{+name}` | Gets metadata information about the specified schema bundle. |
| `bigtableadmin.projects.instances.tables.schemaBundles.setIamPolicy` | POST | `v2/{+resource}:setIamPolicy` | Sets the access control policy on a Bigtable resource. Replaces any existing policy. |
| `bigtableadmin.projects.instances.tables.authorizedViews.setIamPolicy` | POST | `v2/{+resource}:setIamPolicy` | Sets the access control policy on a Bigtable resource. Replaces any existing policy. |
| `bigtableadmin.projects.instances.tables.authorizedViews.create` | POST | `v2/{+parent}/authorizedViews` | Creates a new AuthorizedView in a table. |
| `bigtableadmin.projects.instances.tables.authorizedViews.patch` | PATCH | `v2/{+name}` | Updates an AuthorizedView in a table. |
| `bigtableadmin.projects.instances.tables.authorizedViews.list` | GET | `v2/{+parent}/authorizedViews` | Lists all AuthorizedViews from a specific table. |
| `bigtableadmin.projects.instances.tables.authorizedViews.get` | GET | `v2/{+name}` | Gets information from a specified AuthorizedView. |
| `bigtableadmin.projects.instances.tables.authorizedViews.delete` | DELETE | `v2/{+name}` | Permanently deletes a specified AuthorizedView. |
| `bigtableadmin.projects.instances.tables.authorizedViews.testIamPermissions` | POST | `v2/{+resource}:testIamPermissions` | Returns permissions that the caller has on the specified Bigtable resource. |
| `bigtableadmin.projects.instances.tables.authorizedViews.getIamPolicy` | POST | `v2/{+resource}:getIamPolicy` | Gets the access control policy for a Bigtable resource. Returns an empty policy if the resource e... |
| `bigtableadmin.projects.instances.clusters.create` | POST | `v2/{+parent}/clusters` | Creates a cluster within an instance. Note that exactly one of Cluster.serve_nodes and Cluster.cl... |
| `bigtableadmin.projects.instances.clusters.list` | GET | `v2/{+parent}/clusters` | Lists information about clusters in an instance. |
| `bigtableadmin.projects.instances.clusters.partialUpdateCluster` | PATCH | `v2/{+name}` | Partially updates a cluster within a project. This method is the preferred way to update a Cluste... |
| `bigtableadmin.projects.instances.clusters.delete` | DELETE | `v2/{+name}` | Deletes a cluster from an instance. |
| `bigtableadmin.projects.instances.clusters.update` | PUT | `v2/{+name}` | Updates a cluster within an instance. Note that UpdateCluster does not support updating cluster_c... |
| `bigtableadmin.projects.instances.clusters.get` | GET | `v2/{+name}` | Gets information about a cluster. |
| `bigtableadmin.projects.instances.clusters.hotTablets.list` | GET | `v2/{+parent}/hotTablets` | Lists hot tablets in a cluster, within the time range provided. Hot tablets are ordered based on ... |
| `bigtableadmin.projects.instances.clusters.backups.list` | GET | `v2/{+parent}/backups` | Lists Cloud Bigtable backups. Returns both completed and pending backups. |
| `bigtableadmin.projects.instances.clusters.backups.setIamPolicy` | POST | `v2/{+resource}:setIamPolicy` | Sets the access control policy on a Bigtable resource. Replaces any existing policy. |
| `bigtableadmin.projects.instances.clusters.backups.testIamPermissions` | POST | `v2/{+resource}:testIamPermissions` | Returns permissions that the caller has on the specified Bigtable resource. |
| `bigtableadmin.projects.instances.clusters.backups.patch` | PATCH | `v2/{+name}` | Updates a pending or completed Cloud Bigtable Backup. |
| `bigtableadmin.projects.instances.clusters.backups.delete` | DELETE | `v2/{+name}` | Deletes a pending or completed Cloud Bigtable backup. |
| `bigtableadmin.projects.instances.clusters.backups.create` | POST | `v2/{+parent}/backups` | Starts creating a new Cloud Bigtable Backup. The returned backup long-running operation can be us... |
| `bigtableadmin.projects.instances.clusters.backups.get` | GET | `v2/{+name}` | Gets metadata on a pending or completed Cloud Bigtable Backup. |
| `bigtableadmin.projects.instances.clusters.backups.copy` | POST | `v2/{+parent}/backups:copy` | Copy a Cloud Bigtable backup to a new backup in the destination cluster located in the destinatio... |
| `bigtableadmin.projects.instances.clusters.backups.getIamPolicy` | POST | `v2/{+resource}:getIamPolicy` | Gets the access control policy for a Bigtable resource. Returns an empty policy if the resource e... |
| `bigtableadmin.projects.instances.appProfiles.get` | GET | `v2/{+name}` | Gets information about an app profile. |
| `bigtableadmin.projects.instances.appProfiles.patch` | PATCH | `v2/{+name}` | Updates an app profile within an instance. |
| `bigtableadmin.projects.instances.appProfiles.create` | POST | `v2/{+parent}/appProfiles` | Creates an app profile within an instance. |
| `bigtableadmin.projects.instances.appProfiles.delete` | DELETE | `v2/{+name}` | Deletes an app profile from an instance. |
| `bigtableadmin.projects.instances.appProfiles.list` | GET | `v2/{+parent}/appProfiles` | Lists information about app profiles in an instance. |
| `bigtableadmin.projects.instances.materializedViews.patch` | PATCH | `v2/{+name}` | Updates a materialized view within an instance. |
| `bigtableadmin.projects.instances.materializedViews.testIamPermissions` | POST | `v2/{+resource}:testIamPermissions` | Returns permissions that the caller has on the specified instance resource. |
| `bigtableadmin.projects.instances.materializedViews.get` | GET | `v2/{+name}` | Gets information about a materialized view. |
| `bigtableadmin.projects.instances.materializedViews.setIamPolicy` | POST | `v2/{+resource}:setIamPolicy` | Sets the access control policy on an instance resource. Replaces any existing policy. |
| `bigtableadmin.projects.instances.materializedViews.create` | POST | `v2/{+parent}/materializedViews` | Creates a materialized view within an instance. |
| `bigtableadmin.projects.instances.materializedViews.delete` | DELETE | `v2/{+name}` | Deletes a materialized view from an instance. |
| `bigtableadmin.projects.instances.materializedViews.list` | GET | `v2/{+parent}/materializedViews` | Lists information about materialized views in an instance. |
| `bigtableadmin.projects.instances.materializedViews.getIamPolicy` | POST | `v2/{+resource}:getIamPolicy` | Gets the access control policy for an instance resource. Returns an empty policy if an instance e... |
| `bigtableadmin.projects.locations.list` | GET | `v2/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |

### `bigtableadmin.operations.get`

**GET** `v2/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await bigtableadmin.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.cluster`
- `https://www.googleapis.com/auth/bigtable.admin.instance`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.cluster`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigtableadmin.operations.projects.operations.list`

**GET** `v2/{+name}/operations`

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
const res = await bigtableadmin.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.cluster`
- `https://www.googleapis.com/auth/bigtable.admin.instance`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.cluster`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigtableadmin.projects.instances.getIamPolicy`

**POST** `v2/{+resource}:getIamPolicy`

Gets the access control policy for an instance resource. Returns an empty policy if an instance exists but does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await bigtableadmin.instances.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.cluster`
- `https://www.googleapis.com/auth/bigtable.admin.instance`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.cluster`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.list`

**GET** `v2/{+parent}/instances`

Lists information about instances in a project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The unique name of the project for which a list of instances is requested. Values are of the form `projects... |
| `pageToken` | `string` | query | No | DEPRECATED: This field is unused and ignored. |

**Response**: `ListInstancesResponse`

```typescript
const res = await bigtableadmin.instances.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.cluster`
- `https://www.googleapis.com/auth/bigtable.admin.instance`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.cluster`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigtableadmin.projects.instances.update`

**PUT** `v2/{+name}`

Updates an instance within a project. This method updates only the display name and type for an Instance. To update other Instance properties, such as labels, use PartialUpdateInstance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The unique name of the instance. Values are of the form `projects/{project}/instances/a-z+[a-z0-9]`. |

**Request body**: `Instance`

**Response**: `Instance`

```typescript
const res = await bigtableadmin.instances.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.cluster`
- `https://www.googleapis.com/auth/bigtable.admin.instance`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.cluster`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.partialUpdateInstance`

**PATCH** `v2/{+name}`

Partially updates an instance within a project. This method can modify all fields of an Instance and is the preferred way to update an Instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The unique name of the instance. Values are of the form `projects/{project}/instances/a-z+[a-z0-9]`. |
| `updateMask` | `string` | query | No | Required. The subset of Instance fields which should be replaced. Must be explicitly set. |

**Request body**: `Instance`

**Response**: `Operation`

```typescript
const res = await bigtableadmin.instances.partialUpdateInstance({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.cluster`
- `https://www.googleapis.com/auth/bigtable.admin.instance`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.cluster`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.setIamPolicy`

**POST** `v2/{+resource}:setIamPolicy`

Sets the access control policy on an instance resource. Replaces any existing policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await bigtableadmin.instances.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.cluster`
- `https://www.googleapis.com/auth/bigtable.admin.instance`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.cluster`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.testIamPermissions`

**POST** `v2/{+resource}:testIamPermissions`

Returns permissions that the caller has on the specified instance resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await bigtableadmin.instances.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.cluster`
- `https://www.googleapis.com/auth/bigtable.admin.instance`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.cluster`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.get`

**GET** `v2/{+name}`

Gets information about an instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The unique name of the requested instance. Values are of the form `projects/{project}/instances/{instance}`. |

**Response**: `Instance`

```typescript
const res = await bigtableadmin.instances.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.cluster`
- `https://www.googleapis.com/auth/bigtable.admin.instance`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.cluster`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigtableadmin.projects.instances.delete`

**DELETE** `v2/{+name}`

Delete an instance from a project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The unique name of the instance to be deleted. Values are of the form `projects/{project}/instances/{instan... |

**Response**: `Empty`

```typescript
const res = await bigtableadmin.instances.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.cluster`
- `https://www.googleapis.com/auth/bigtable.admin.instance`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.cluster`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.create`

**POST** `v2/{+parent}/instances`

Create an instance within a project. Note that exactly one of Cluster.serve_nodes and Cluster.cluster_config.cluster_autoscaling_config can be set. If serve_nodes is set to non-zero, then the cluster is manually scaled. If cluster_config.cluster_autoscaling_config is non-empty, then autoscaling is enabled.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The unique name of the project in which to create the new instance. Values are of the form `projects/{proje... |

**Request body**: `CreateInstanceRequest`

**Response**: `Operation`

```typescript
const res = await bigtableadmin.instances.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.cluster`
- `https://www.googleapis.com/auth/bigtable.admin.instance`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.cluster`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.logicalViews.patch`

**PATCH** `v2/{+name}`

Updates a logical view within an instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The unique name of the logical view. Format: `projects/{project}/instances/{instance}/logicalViews/{logic... |
| `updateMask` | `string` | query | No | Optional. The list of fields to update. |

**Request body**: `LogicalView`

**Response**: `Operation`

```typescript
const res = await bigtableadmin.logicalViews.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.cluster`
- `https://www.googleapis.com/auth/bigtable.admin.instance`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.cluster`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.logicalViews.list`

**GET** `v2/{+parent}/logicalViews`

Lists information about logical views in an instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The unique name of the instance for which the list of logical views is requested. Values are of the form `p... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of logical views to return. The service may return fewer than this value |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListLogicalViews` call. Provide this to retrieve the subsequent pag... |

**Response**: `ListLogicalViewsResponse`

```typescript
const res = await bigtableadmin.logicalViews.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.cluster`
- `https://www.googleapis.com/auth/bigtable.admin.instance`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.cluster`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.logicalViews.create`

**POST** `v2/{+parent}/logicalViews`

Creates a logical view within an instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent instance where this logical view will be created. Format: `projects/{project}/instances/{instanc... |
| `logicalViewId` | `string` | query | No | Required. The ID to use for the logical view, which will become the final component of the logical view's resource name. |

**Request body**: `LogicalView`

**Response**: `Operation`

```typescript
const res = await bigtableadmin.logicalViews.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.cluster`
- `https://www.googleapis.com/auth/bigtable.admin.instance`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.cluster`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.logicalViews.setIamPolicy`

**POST** `v2/{+resource}:setIamPolicy`

Sets the access control policy on an instance resource. Replaces any existing policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await bigtableadmin.logicalViews.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.cluster`
- `https://www.googleapis.com/auth/bigtable.admin.instance`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.cluster`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.logicalViews.testIamPermissions`

**POST** `v2/{+resource}:testIamPermissions`

Returns permissions that the caller has on the specified instance resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await bigtableadmin.logicalViews.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.cluster`
- `https://www.googleapis.com/auth/bigtable.admin.instance`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.cluster`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.logicalViews.get`

**GET** `v2/{+name}`

Gets information about a logical view.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The unique name of the requested logical view. Values are of the form `projects/{project}/instances/{instan... |

**Response**: `LogicalView`

```typescript
const res = await bigtableadmin.logicalViews.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.cluster`
- `https://www.googleapis.com/auth/bigtable.admin.instance`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.cluster`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.logicalViews.delete`

**DELETE** `v2/{+name}`

Deletes a logical view from an instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The unique name of the logical view to be deleted. Format: `projects/{project}/instances/{instance}/logical... |
| `etag` | `string` | query | No | Optional. The current etag of the logical view. If an etag is provided and does not match the current etag of the log... |

**Response**: `Empty`

```typescript
const res = await bigtableadmin.logicalViews.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.cluster`
- `https://www.googleapis.com/auth/bigtable.admin.instance`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.cluster`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.logicalViews.getIamPolicy`

**POST** `v2/{+resource}:getIamPolicy`

Gets the access control policy for an instance resource. Returns an empty policy if an instance exists but does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await bigtableadmin.logicalViews.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.cluster`
- `https://www.googleapis.com/auth/bigtable.admin.instance`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.cluster`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.tables.get`

**GET** `v2/{+name}`

Gets metadata information about the specified table.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The unique name of the requested table. Values are of the form `projects/{project}/instances/{instance}/tab... |
| `view` | `string` | query | No | The view to be applied to the returned table's fields. Defaults to `SCHEMA_VIEW` if unspecified. |

**Response**: `Table`

```typescript
const res = await bigtableadmin.tables.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigtableadmin.projects.instances.tables.patch`

**PATCH** `v2/{+name}`

Updates a specified table.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The unique name of the table. Values are of the form `projects/{project}/instances/{instance}/tables/_a-zA-Z0-9*`. Vi... |
| `ignoreWarnings` | `boolean` | query | No | Optional. If true, ignore safety checks when updating the table. |
| `updateMask` | `string` | query | No | Required. The list of fields to update. A mask specifying which fields (e.g. `change_stream_config`) in the `table` f... |

**Request body**: `Table`

**Response**: `Operation`

```typescript
const res = await bigtableadmin.tables.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.tables.modifyColumnFamilies`

**POST** `v2/{+name}:modifyColumnFamilies`

Performs a series of column family modifications on the specified table. Either all or none of the modifications will occur before this method returns, but data requests received prior to that point may see a table where only some modifications have taken effect.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The unique name of the table whose families should be modified. Values are of the form `projects/{project}/... |

**Request body**: `ModifyColumnFamiliesRequest`

**Response**: `Table`

```typescript
const res = await bigtableadmin.tables.modifyColumnFamilies({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.tables.create`

**POST** `v2/{+parent}/tables`

Creates a new table in the specified instance. The table can be created with a full set of initial column families, specified in the request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The unique name of the instance in which to create the table. Values are of the form `projects/{project}/in... |

**Request body**: `CreateTableRequest`

**Response**: `Table`

```typescript
const res = await bigtableadmin.tables.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.tables.testIamPermissions`

**POST** `v2/{+resource}:testIamPermissions`

Returns permissions that the caller has on the specified Bigtable resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await bigtableadmin.tables.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.tables.getIamPolicy`

**POST** `v2/{+resource}:getIamPolicy`

Gets the access control policy for a Bigtable resource. Returns an empty policy if the resource exists but does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await bigtableadmin.tables.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.tables.generateConsistencyToken`

**POST** `v2/{+name}:generateConsistencyToken`

Generates a consistency token for a Table, which can be used in CheckConsistency to check whether mutations to the table that finished before this call started have been replicated. The tokens will be available for 90 days.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The unique name of the Table for which to create a consistency token. Values are of the form `projects/{pro... |

**Request body**: `GenerateConsistencyTokenRequest`

**Response**: `GenerateConsistencyTokenResponse`

```typescript
const res = await bigtableadmin.tables.generateConsistencyToken({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.tables.undelete`

**POST** `v2/{+name}:undelete`

Restores a specified table which was accidentally deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The unique name of the table to be restored. Values are of the form `projects/{project}/instances/{instance... |

**Request body**: `UndeleteTableRequest`

**Response**: `Operation`

```typescript
const res = await bigtableadmin.tables.undelete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.tables.checkConsistency`

**POST** `v2/{+name}:checkConsistency`

Checks replication consistency based on a consistency token, that is, if replication has caught up based on the conditions specified in the token and the check request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The unique name of the Table for which to check replication consistency. Values are of the form `projects/{... |

**Request body**: `CheckConsistencyRequest`

**Response**: `CheckConsistencyResponse`

```typescript
const res = await bigtableadmin.tables.checkConsistency({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.tables.restore`

**POST** `v2/{+parent}/tables:restore`

Create a new table by restoring from a completed backup. The returned table long-running operation can be used to track the progress of the operation, and to cancel it. The metadata field type is RestoreTableMetadata. The response type is Table, if successful.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the instance in which to create the restored table. Values are of the form `projects//instances/`. |

**Request body**: `RestoreTableRequest`

**Response**: `Operation`

```typescript
const res = await bigtableadmin.tables.restore({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.tables.delete`

**DELETE** `v2/{+name}`

Permanently deletes a specified table and all of its data.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The unique name of the table to be deleted. Values are of the form `projects/{project}/instances/{instance}... |

**Response**: `Empty`

```typescript
const res = await bigtableadmin.tables.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.tables.setIamPolicy`

**POST** `v2/{+resource}:setIamPolicy`

Sets the access control policy on a Bigtable resource. Replaces any existing policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await bigtableadmin.tables.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.tables.dropRowRange`

**POST** `v2/{+name}:dropRowRange`

Permanently drop/delete a row range from a specified table. The request can specify whether to delete all rows in a table, or only those that match a particular prefix. Note that row key prefixes used here are treated as service data. For more information about how service data is handled, see the [Google Cloud Privacy Notice](https://cloud.google.com/terms/cloud-privacy-notice).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The unique name of the table on which to drop a range of rows. Values are of the form `projects/{project}/i... |

**Request body**: `DropRowRangeRequest`

**Response**: `Empty`

```typescript
const res = await bigtableadmin.tables.dropRowRange({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.tables.list`

**GET** `v2/{+parent}/tables`

Lists all tables served from a specified instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The unique name of the instance for which tables should be listed. Values are of the form `projects/{projec... |
| `pageSize` | `integer` | query | No | Maximum number of results per page. A page_size of zero lets the server choose the number of items to return. A page_... |
| `pageToken` | `string` | query | No | The value of `next_page_token` returned by a previous call. |
| `view` | `string` | query | No | The view to be applied to the returned tables' fields. Only NAME_ONLY view (default), REPLICATION_VIEW and ENCRYPTION... |

**Response**: `ListTablesResponse`

```typescript
const res = await bigtableadmin.tables.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigtableadmin.projects.instances.tables.schemaBundles.getIamPolicy`

**POST** `v2/{+resource}:getIamPolicy`

Gets the access control policy for a Bigtable resource. Returns an empty policy if the resource exists but does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await bigtableadmin.schemaBundles.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.tables.schemaBundles.delete`

**DELETE** `v2/{+name}`

Deletes a schema bundle in the specified table.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The unique name of the schema bundle to delete. Values are of the form `projects/{project}/instances/{insta... |
| `etag` | `string` | query | No | Optional. The etag of the schema bundle. If this is provided, it must match the server's etag. The server returns an ... |

**Response**: `Empty`

```typescript
const res = await bigtableadmin.schemaBundles.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.tables.schemaBundles.list`

**GET** `v2/{+parent}/schemaBundles`

Lists all schema bundles associated with the specified table.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of schema bundles. Values are of the form `projects/{project}/instan... |
| `pageSize` | `integer` | query | No | The maximum number of schema bundles to return. If the value is positive, the server may return at most this value. I... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListSchemaBundles` call. Provide this to retrieve the subsequent page. When p... |
| `view` | `string` | query | No | Optional. The resource_view to be applied to the returned SchemaBundles' fields. Defaults to NAME_ONLY. |

**Response**: `ListSchemaBundlesResponse`

```typescript
const res = await bigtableadmin.schemaBundles.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.tables.schemaBundles.create`

**POST** `v2/{+parent}/schemaBundles`

Creates a new schema bundle in the specified table.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this schema bundle will be created. Values are of the form `projects/{project}/in... |
| `schemaBundleId` | `string` | query | No | Required. The unique ID to use for the schema bundle, which will become the final component of the schema bundle's re... |

**Request body**: `SchemaBundle`

**Response**: `Operation`

```typescript
const res = await bigtableadmin.schemaBundles.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.tables.schemaBundles.testIamPermissions`

**POST** `v2/{+resource}:testIamPermissions`

Returns permissions that the caller has on the specified Bigtable resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await bigtableadmin.schemaBundles.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.tables.schemaBundles.patch`

**PATCH** `v2/{+name}`

Updates a schema bundle in the specified table.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The unique name identifying this schema bundle. Values are of the form `projects/{project}/instances/{ins... |
| `ignoreWarnings` | `boolean` | query | No | Optional. If set, ignore the safety checks when updating the Schema Bundle. The safety checks are: - The new Schema B... |
| `updateMask` | `string` | query | No | Optional. The list of fields to update. |

**Request body**: `SchemaBundle`

**Response**: `Operation`

```typescript
const res = await bigtableadmin.schemaBundles.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.tables.schemaBundles.get`

**GET** `v2/{+name}`

Gets metadata information about the specified schema bundle.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The unique name of the schema bundle to retrieve. Values are of the form `projects/{project}/instances/{ins... |

**Response**: `SchemaBundle`

```typescript
const res = await bigtableadmin.schemaBundles.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.tables.schemaBundles.setIamPolicy`

**POST** `v2/{+resource}:setIamPolicy`

Sets the access control policy on a Bigtable resource. Replaces any existing policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await bigtableadmin.schemaBundles.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.tables.authorizedViews.setIamPolicy`

**POST** `v2/{+resource}:setIamPolicy`

Sets the access control policy on a Bigtable resource. Replaces any existing policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await bigtableadmin.authorizedViews.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.tables.authorizedViews.create`

**POST** `v2/{+parent}/authorizedViews`

Creates a new AuthorizedView in a table.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. This is the name of the table the AuthorizedView belongs to. Values are of the form `projects/{project}/ins... |
| `authorizedViewId` | `string` | query | No | Required. The id of the AuthorizedView to create. This AuthorizedView must not already exist. The `authorized_view_id... |

**Request body**: `AuthorizedView`

**Response**: `Operation`

```typescript
const res = await bigtableadmin.authorizedViews.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.tables.authorizedViews.patch`

**PATCH** `v2/{+name}`

Updates an AuthorizedView in a table.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The name of this AuthorizedView. Values are of the form `projects/{project}/instances/{instance}/tables/{... |
| `ignoreWarnings` | `boolean` | query | No | Optional. If true, ignore the safety checks when updating the AuthorizedView. |
| `updateMask` | `string` | query | No | Optional. The list of fields to update. A mask specifying which fields in the AuthorizedView resource should be updat... |

**Request body**: `AuthorizedView`

**Response**: `Operation`

```typescript
const res = await bigtableadmin.authorizedViews.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.tables.authorizedViews.list`

**GET** `v2/{+parent}/authorizedViews`

Lists all AuthorizedViews from a specific table.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The unique name of the table for which AuthorizedViews should be listed. Values are of the form `projects/{... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of results per page. A page_size of zero lets the server choose the number of items to retur... |
| `pageToken` | `string` | query | No | Optional. The value of `next_page_token` returned by a previous call. |
| `view` | `string` | query | No | Optional. The resource_view to be applied to the returned AuthorizedViews' fields. Default to NAME_ONLY. |

**Response**: `ListAuthorizedViewsResponse`

```typescript
const res = await bigtableadmin.authorizedViews.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.tables.authorizedViews.get`

**GET** `v2/{+name}`

Gets information from a specified AuthorizedView.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The unique name of the requested AuthorizedView. Values are of the form `projects/{project}/instances/{inst... |
| `view` | `string` | query | No | Optional. The resource_view to be applied to the returned AuthorizedView's fields. Default to BASIC. |

**Response**: `AuthorizedView`

```typescript
const res = await bigtableadmin.authorizedViews.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.tables.authorizedViews.delete`

**DELETE** `v2/{+name}`

Permanently deletes a specified AuthorizedView.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The unique name of the AuthorizedView to be deleted. Values are of the form `projects/{project}/instances/{... |
| `etag` | `string` | query | No | Optional. The current etag of the AuthorizedView. If an etag is provided and does not match the current etag of the A... |

**Response**: `Empty`

```typescript
const res = await bigtableadmin.authorizedViews.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.tables.authorizedViews.testIamPermissions`

**POST** `v2/{+resource}:testIamPermissions`

Returns permissions that the caller has on the specified Bigtable resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await bigtableadmin.authorizedViews.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.tables.authorizedViews.getIamPolicy`

**POST** `v2/{+resource}:getIamPolicy`

Gets the access control policy for a Bigtable resource. Returns an empty policy if the resource exists but does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await bigtableadmin.authorizedViews.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.clusters.create`

**POST** `v2/{+parent}/clusters`

Creates a cluster within an instance. Note that exactly one of Cluster.serve_nodes and Cluster.cluster_config.cluster_autoscaling_config can be set. If serve_nodes is set to non-zero, then the cluster is manually scaled. If cluster_config.cluster_autoscaling_config is non-empty, then autoscaling is enabled.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The unique name of the instance in which to create the new cluster. Values are of the form `projects/{proje... |
| `clusterId` | `string` | query | No | Required. The ID to be used when referring to the new cluster within its instance, e.g., just `mycluster` rather than... |

**Request body**: `Cluster`

**Response**: `Operation`

```typescript
const res = await bigtableadmin.clusters.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.cluster`
- `https://www.googleapis.com/auth/bigtable.admin.instance`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.cluster`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.clusters.list`

**GET** `v2/{+parent}/clusters`

Lists information about clusters in an instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The unique name of the instance for which a list of clusters is requested. Values are of the form `projects... |
| `pageToken` | `string` | query | No | DEPRECATED: This field is unused and ignored. |

**Response**: `ListClustersResponse`

```typescript
const res = await bigtableadmin.clusters.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.cluster`
- `https://www.googleapis.com/auth/bigtable.admin.instance`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.cluster`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigtableadmin.projects.instances.clusters.partialUpdateCluster`

**PATCH** `v2/{+name}`

Partially updates a cluster within a project. This method is the preferred way to update a Cluster. To enable and update autoscaling, set cluster_config.cluster_autoscaling_config. When autoscaling is enabled, serve_nodes is treated as an OUTPUT_ONLY field, meaning that updates to it are ignored. Note that an update cannot simultaneously set serve_nodes to non-zero and cluster_config.cluster_autoscaling_config to non-empty, and also specify both in the update_mask. To disable autoscaling, clear cluster_config.cluster_autoscaling_config, and explicitly set a serve_node count via the update_mask.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The unique name of the cluster. Values are of the form `projects/{project}/instances/{instance}/clusters/a-z*`. |
| `updateMask` | `string` | query | No | Required. The subset of Cluster fields which should be replaced. |

**Request body**: `Cluster`

**Response**: `Operation`

```typescript
const res = await bigtableadmin.clusters.partialUpdateCluster({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.cluster`
- `https://www.googleapis.com/auth/bigtable.admin.instance`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.cluster`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.clusters.delete`

**DELETE** `v2/{+name}`

Deletes a cluster from an instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The unique name of the cluster to be deleted. Values are of the form `projects/{project}/instances/{instanc... |

**Response**: `Empty`

```typescript
const res = await bigtableadmin.clusters.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.cluster`
- `https://www.googleapis.com/auth/bigtable.admin.instance`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.cluster`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.clusters.update`

**PUT** `v2/{+name}`

Updates a cluster within an instance. Note that UpdateCluster does not support updating cluster_config.cluster_autoscaling_config. In order to update it, you must use PartialUpdateCluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The unique name of the cluster. Values are of the form `projects/{project}/instances/{instance}/clusters/a-z*`. |

**Request body**: `Cluster`

**Response**: `Operation`

```typescript
const res = await bigtableadmin.clusters.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.cluster`
- `https://www.googleapis.com/auth/bigtable.admin.instance`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.cluster`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.clusters.get`

**GET** `v2/{+name}`

Gets information about a cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The unique name of the requested cluster. Values are of the form `projects/{project}/instances/{instance}/c... |

**Response**: `Cluster`

```typescript
const res = await bigtableadmin.clusters.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.cluster`
- `https://www.googleapis.com/auth/bigtable.admin.instance`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.cluster`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigtableadmin.projects.instances.clusters.hotTablets.list`

**GET** `v2/{+parent}/hotTablets`

Lists hot tablets in a cluster, within the time range provided. Hot tablets are ordered based on CPU usage.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The cluster name to list hot tablets. Value is in the following form: `projects/{project}/instances/{instan... |
| `endTime` | `string` | query | No | The end time to list hot tablets. |
| `pageSize` | `integer` | query | No | Maximum number of results per page. A page_size that is empty or zero lets the server choose the number of items to r... |
| `pageToken` | `string` | query | No | The value of `next_page_token` returned by a previous call. |
| `startTime` | `string` | query | No | The start time to list hot tablets. The hot tablets in the response will have start times between the requested start... |

**Response**: `ListHotTabletsResponse`

```typescript
const res = await bigtableadmin.hotTablets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.cluster`
- `https://www.googleapis.com/auth/bigtable.admin.instance`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.cluster`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.clusters.backups.list`

**GET** `v2/{+parent}/backups`

Lists Cloud Bigtable backups. Returns both completed and pending backups.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The cluster to list backups from. Values are of the form `projects/{project}/instances/{instance}/clusters/... |
| `filter` | `string` | query | No | A filter expression that filters backups listed in the response. The expression must specify the field name, a compar... |
| `orderBy` | `string` | query | No | An expression for specifying the sort order of the results of the request. The string value should specify one or mor... |
| `pageSize` | `integer` | query | No | Number of backups to be returned in the response. If 0 or less, defaults to the server's maximum allowed page size. |
| `pageToken` | `string` | query | No | If non-empty, `page_token` should contain a next_page_token from a previous ListBackupsResponse to the same `parent` ... |

**Response**: `ListBackupsResponse`

```typescript
const res = await bigtableadmin.backups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.clusters.backups.setIamPolicy`

**POST** `v2/{+resource}:setIamPolicy`

Sets the access control policy on a Bigtable resource. Replaces any existing policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await bigtableadmin.backups.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.clusters.backups.testIamPermissions`

**POST** `v2/{+resource}:testIamPermissions`

Returns permissions that the caller has on the specified Bigtable resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await bigtableadmin.backups.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.clusters.backups.patch`

**PATCH** `v2/{+name}`

Updates a pending or completed Cloud Bigtable Backup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | A globally unique identifier for the backup which cannot be changed. Values are of the form `projects/{project}/insta... |
| `updateMask` | `string` | query | No | Required. A mask specifying which fields (e.g. `expire_time`) in the Backup resource should be updated. This mask is ... |

**Request body**: `Backup`

**Response**: `Backup`

```typescript
const res = await bigtableadmin.backups.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.clusters.backups.delete`

**DELETE** `v2/{+name}`

Deletes a pending or completed Cloud Bigtable backup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the backup to delete. Values are of the form `projects/{project}/instances/{instance}/clusters/{clu... |

**Response**: `Empty`

```typescript
const res = await bigtableadmin.backups.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.clusters.backups.create`

**POST** `v2/{+parent}/backups`

Starts creating a new Cloud Bigtable Backup. The returned backup long-running operation can be used to track creation of the backup. The metadata field type is CreateBackupMetadata. The response field type is Backup, if successful. Cancelling the returned operation will stop the creation and delete the backup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. This must be one of the clusters in the instance in which this table is located. The backup will be stored ... |
| `backupId` | `string` | query | No | Required. The id of the backup to be created. The `backup_id` along with the parent `parent` are combined as {parent}... |

**Request body**: `Backup`

**Response**: `Operation`

```typescript
const res = await bigtableadmin.backups.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.clusters.backups.get`

**GET** `v2/{+name}`

Gets metadata on a pending or completed Cloud Bigtable Backup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the backup. Values are of the form `projects/{project}/instances/{instance}/clusters/{cluster}/back... |

**Response**: `Backup`

```typescript
const res = await bigtableadmin.backups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.clusters.backups.copy`

**POST** `v2/{+parent}/backups:copy`

Copy a Cloud Bigtable backup to a new backup in the destination cluster located in the destination instance and project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the destination cluster that will contain the backup copy. The cluster must already exist. Valu... |

**Request body**: `CopyBackupRequest`

**Response**: `Operation`

```typescript
const res = await bigtableadmin.backups.copy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.clusters.backups.getIamPolicy`

**POST** `v2/{+resource}:getIamPolicy`

Gets the access control policy for a Bigtable resource. Returns an empty policy if the resource exists but does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await bigtableadmin.backups.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.table`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.appProfiles.get`

**GET** `v2/{+name}`

Gets information about an app profile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The unique name of the requested app profile. Values are of the form `projects/{project}/instances/{instanc... |

**Response**: `AppProfile`

```typescript
const res = await bigtableadmin.appProfiles.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.cluster`
- `https://www.googleapis.com/auth/bigtable.admin.instance`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.cluster`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigtableadmin.projects.instances.appProfiles.patch`

**PATCH** `v2/{+name}`

Updates an app profile within an instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The unique name of the app profile, up to 50 characters long. Values are of the form `projects/{project}/instances/{i... |
| `ignoreWarnings` | `boolean` | query | No | If true, ignore safety checks when updating the app profile. |
| `updateMask` | `string` | query | No | Required. The subset of app profile fields which should be replaced. If unset, all fields will be replaced. |

**Request body**: `AppProfile`

**Response**: `Operation`

```typescript
const res = await bigtableadmin.appProfiles.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.cluster`
- `https://www.googleapis.com/auth/bigtable.admin.instance`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.cluster`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.appProfiles.create`

**POST** `v2/{+parent}/appProfiles`

Creates an app profile within an instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The unique name of the instance in which to create the new app profile. Values are of the form `projects/{p... |
| `appProfileId` | `string` | query | No | Required. The ID to be used when referring to the new app profile within its instance, e.g., just `myprofile` rather ... |
| `ignoreWarnings` | `boolean` | query | No | If true, ignore safety checks when creating the app profile. |

**Request body**: `AppProfile`

**Response**: `AppProfile`

```typescript
const res = await bigtableadmin.appProfiles.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.cluster`
- `https://www.googleapis.com/auth/bigtable.admin.instance`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.cluster`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.appProfiles.delete`

**DELETE** `v2/{+name}`

Deletes an app profile from an instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The unique name of the app profile to be deleted. Values are of the form `projects/{project}/instances/{ins... |
| `ignoreWarnings` | `boolean` | query | No | Required. If true, ignore safety checks when deleting the app profile. |

**Response**: `Empty`

```typescript
const res = await bigtableadmin.appProfiles.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.cluster`
- `https://www.googleapis.com/auth/bigtable.admin.instance`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.cluster`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.appProfiles.list`

**GET** `v2/{+parent}/appProfiles`

Lists information about app profiles in an instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The unique name of the instance for which a list of app profiles is requested. Values are of the form `proj... |
| `pageSize` | `integer` | query | No | Maximum number of results per page. A page_size of zero lets the server choose the number of items to return. A page_... |
| `pageToken` | `string` | query | No | The value of `next_page_token` returned by a previous call. |

**Response**: `ListAppProfilesResponse`

```typescript
const res = await bigtableadmin.appProfiles.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.cluster`
- `https://www.googleapis.com/auth/bigtable.admin.instance`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.cluster`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.materializedViews.patch`

**PATCH** `v2/{+name}`

Updates a materialized view within an instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The unique name of the materialized view. Format: `projects/{project}/instances/{instance}/materializedVi... |
| `updateMask` | `string` | query | No | Optional. The list of fields to update. |

**Request body**: `MaterializedView`

**Response**: `Operation`

```typescript
const res = await bigtableadmin.materializedViews.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.cluster`
- `https://www.googleapis.com/auth/bigtable.admin.instance`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.cluster`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.materializedViews.testIamPermissions`

**POST** `v2/{+resource}:testIamPermissions`

Returns permissions that the caller has on the specified instance resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await bigtableadmin.materializedViews.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.cluster`
- `https://www.googleapis.com/auth/bigtable.admin.instance`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.cluster`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.materializedViews.get`

**GET** `v2/{+name}`

Gets information about a materialized view.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The unique name of the requested materialized view. Values are of the form `projects/{project}/instances/{i... |
| `view` | `string` | query | No | Optional. Describes which of the materialized view's fields should be populated in the response. Defaults to SCHEMA_V... |

**Response**: `MaterializedView`

```typescript
const res = await bigtableadmin.materializedViews.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.cluster`
- `https://www.googleapis.com/auth/bigtable.admin.instance`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.cluster`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.materializedViews.setIamPolicy`

**POST** `v2/{+resource}:setIamPolicy`

Sets the access control policy on an instance resource. Replaces any existing policy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await bigtableadmin.materializedViews.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.cluster`
- `https://www.googleapis.com/auth/bigtable.admin.instance`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.cluster`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.materializedViews.create`

**POST** `v2/{+parent}/materializedViews`

Creates a materialized view within an instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent instance where this materialized view will be created. Format: `projects/{project}/instances/{in... |
| `materializedViewId` | `string` | query | No | Required. The ID to use for the materialized view, which will become the final component of the materialized view's r... |

**Request body**: `MaterializedView`

**Response**: `Operation`

```typescript
const res = await bigtableadmin.materializedViews.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.cluster`
- `https://www.googleapis.com/auth/bigtable.admin.instance`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.cluster`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.materializedViews.delete`

**DELETE** `v2/{+name}`

Deletes a materialized view from an instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The unique name of the materialized view to be deleted. Format: `projects/{project}/instances/{instance}/ma... |
| `etag` | `string` | query | No | Optional. The current etag of the materialized view. If an etag is provided and does not match the current etag of th... |

**Response**: `Empty`

```typescript
const res = await bigtableadmin.materializedViews.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.cluster`
- `https://www.googleapis.com/auth/bigtable.admin.instance`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.cluster`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.materializedViews.list`

**GET** `v2/{+parent}/materializedViews`

Lists information about materialized views in an instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The unique name of the instance for which the list of materialized views is requested. Values are of the fo... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of materialized views to return. The service may return fewer than this value |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListMaterializedViews` call. Provide this to retrieve the subsequen... |
| `view` | `string` | query | No | Optional. Describes which of the materialized view's fields should be populated in the response. For now, only the de... |

**Response**: `ListMaterializedViewsResponse`

```typescript
const res = await bigtableadmin.materializedViews.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.cluster`
- `https://www.googleapis.com/auth/bigtable.admin.instance`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.cluster`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.instances.materializedViews.getIamPolicy`

**POST** `v2/{+resource}:getIamPolicy`

Gets the access control policy for an instance resource. Returns an empty policy if an instance exists but does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await bigtableadmin.materializedViews.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.cluster`
- `https://www.googleapis.com/auth/bigtable.admin.instance`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.cluster`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigtableadmin.projects.locations.list`

**GET** `v2/{+name}/locations`

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
const res = await bigtableadmin.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigtable.admin`
- `https://www.googleapis.com/auth/bigtable.admin.cluster`
- `https://www.googleapis.com/auth/bigtable.admin.instance`
- `https://www.googleapis.com/auth/cloud-bigtable.admin`
- `https://www.googleapis.com/auth/cloud-bigtable.admin.cluster`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

## Schemas

### `AppProfile`

A configuration object describing how Cloud Bigtable should treat traffic from a particular end user application.

| Property | Type | Description |
|----------|------|-------------|
| `dataBoostIsolationReadOnly` | `DataBoostIsolationReadOnly` | Specifies that this app profile is intended for read-only usage via the Data Boost feature. |
| `description` | `string` | Long form description of the use case for this AppProfile. |
| `etag` | `string` | Strongly validated etag for optimistic concurrency control. Preserve the value returned from `Get... |
| `multiClusterRoutingUseAny` | `MultiClusterRoutingUseAny` | Use a multi-cluster routing policy. |
| `name` | `string` | The unique name of the app profile, up to 50 characters long. Values are of the form `projects/{p... |
| `priority` | `string` | This field has been deprecated in favor of `standard_isolation.priority`. If you set this field, ... |
| `singleClusterRouting` | `SingleClusterRouting` | Use a single-cluster routing policy. |
| `standardIsolation` | `StandardIsolation` | The standard options used for isolating this app profile's traffic from other use cases. |

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

### `AuthorizedView`

An Authorized View of a Cloud Bigtable Table.

| Property | Type | Description |
|----------|------|-------------|
| `deletionProtection` | `boolean` | Set to true to make the AuthorizedView protected against deletion. The parent Table and containin... |
| `etag` | `string` | The etag for this AuthorizedView. If this is provided on update, it must match the server's etag.... |
| `name` | `string` | Identifier. The name of this AuthorizedView. Values are of the form `projects/{project}/instances... |
| `subsetView` | `GoogleBigtableAdminV2AuthorizedViewSubsetView` | An AuthorizedView permitting access to an explicit subset of a Table. |

### `AutomatedBackupPolicy`

Defines an automated backup policy for a table

| Property | Type | Description |
|----------|------|-------------|
| `frequency` | `string` | How frequently automated backups should occur. The only supported value at this time is 24 hours.... |
| `retentionPeriod` | `string` | Required. How long the automated backups should be retained. Values must be at least 3 days and a... |

### `AutoscalingLimits`

Limits for the number of nodes a Cluster can autoscale up/down to.

| Property | Type | Description |
|----------|------|-------------|
| `maxServeNodes` | `integer` | Required. Maximum number of nodes to scale up to. |
| `minServeNodes` | `integer` | Required. Minimum number of nodes to scale down to. |

### `AutoscalingTargets`

The Autoscaling targets for a Cluster. These determine the recommended nodes.

| Property | Type | Description |
|----------|------|-------------|
| `cpuUtilizationPercent` | `integer` | The cpu utilization that the Autoscaler should be trying to achieve. This number is on a scale fr... |
| `storageUtilizationGibPerNode` | `integer` | The storage utilization that the Autoscaler should be trying to achieve. This number is limited b... |

### `Backup`

A backup of a Cloud Bigtable table.

| Property | Type | Description |
|----------|------|-------------|
| `backupType` | `string` | Indicates the backup type of the backup. |
| `encryptionInfo` | `EncryptionInfo` | Output only. The encryption information for the backup. |
| `endTime` | `string` | Output only. `end_time` is the time that the backup was finished. The row data in the backup will... |
| `expireTime` | `string` | Required. The expiration time of the backup. When creating a backup or updating its `expire_time`... |
| `hotToStandardTime` | `string` | The time at which the hot backup will be converted to a standard backup. Once the `hot_to_standar... |
| `name` | `string` | A globally unique identifier for the backup which cannot be changed. Values are of the form `proj... |
| `sizeBytes` | `string` | Output only. Size of the backup in bytes. |
| `sourceBackup` | `string` | Output only. Name of the backup from which this backup was copied. If a backup is not created by ... |
| `sourceTable` | `string` | Required. Immutable. Name of the table from which this backup was created. This needs to be in th... |
| `startTime` | `string` | Output only. `start_time` is the time that the backup was started (i.e. approximately the time th... |
| `state` | `string` | Output only. The current state of the backup. |

### `BackupInfo`

Information about a backup.

| Property | Type | Description |
|----------|------|-------------|
| `backup` | `string` | Output only. Name of the backup. |
| `endTime` | `string` | Output only. This time that the backup was finished. Row data in the backup will be no newer than... |
| `sourceBackup` | `string` | Output only. Name of the backup from which this backup was copied. If a backup is not created by ... |
| `sourceTable` | `string` | Output only. Name of the table the backup was created from. |
| `startTime` | `string` | Output only. The time that the backup was started. Row data in the backup will be no older than t... |

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `ChangeStreamConfig`

Change stream configuration.

| Property | Type | Description |
|----------|------|-------------|
| `retentionPeriod` | `string` | How long the change stream should be retained. Change stream data older than the retention period... |

### `CheckConsistencyRequest`

Request message for google.bigtable.admin.v2.BigtableTableAdmin.CheckConsistency

| Property | Type | Description |
|----------|------|-------------|
| `consistencyToken` | `string` | Required. The token created using GenerateConsistencyToken for the Table. |
| `dataBoostReadLocalWrites` | `DataBoostReadLocalWrites` | Checks that reads using an app profile with `DataBoostIsolationReadOnly` can see all writes commi... |
| `standardReadRemoteWrites` | `StandardReadRemoteWrites` | Checks that reads using an app profile with `StandardIsolation` can see all writes committed befo... |

### `CheckConsistencyResponse`

Response message for google.bigtable.admin.v2.BigtableTableAdmin.CheckConsistency

| Property | Type | Description |
|----------|------|-------------|
| `consistent` | `boolean` | True only if the token is consistent. A token is consistent if replication has caught up with the... |

### `Cluster`

A resizable group of nodes in a particular cloud location, capable of serving all Tables in the parent Instance.

| Property | Type | Description |
|----------|------|-------------|
| `clusterConfig` | `ClusterConfig` | Configuration for this cluster. |
| `defaultStorageType` | `string` | Immutable. The type of storage used by this cluster to serve its parent instance's tables, unless... |
| `encryptionConfig` | `EncryptionConfig` | Immutable. The encryption configuration for CMEK-protected clusters. |
| `location` | `string` | Immutable. The location where this cluster's nodes and storage reside. For best performance, clie... |
| `name` | `string` | The unique name of the cluster. Values are of the form `projects/{project}/instances/{instance}/c... |
| `nodeScalingFactor` | `string` | Immutable. The node scaling factor of this cluster. |
| `serveNodes` | `integer` | The number of nodes in the cluster. If no value is set, Cloud Bigtable automatically allocates no... |
| `state` | `string` | Output only. The current state of the cluster. |

### `ClusterAutoscalingConfig`

Autoscaling config for a cluster.

| Property | Type | Description |
|----------|------|-------------|
| `autoscalingLimits` | `AutoscalingLimits` | Required. Autoscaling limits for this cluster. |
| `autoscalingTargets` | `AutoscalingTargets` | Required. Autoscaling targets for this cluster. |

### `ClusterConfig`

Configuration for a cluster.

| Property | Type | Description |
|----------|------|-------------|
| `clusterAutoscalingConfig` | `ClusterAutoscalingConfig` | Autoscaling configuration for this cluster. |

### `ClusterState`

The state of a table's data in a particular cluster.

| Property | Type | Description |
|----------|------|-------------|
| `encryptionInfo` | `array<EncryptionInfo>` | Output only. The encryption information for the table in this cluster. If the encryption key prot... |
| `replicationState` | `string` | Output only. The state of replication for the table in this cluster. |

### `ColumnFamily`

A set of columns within a table which share a common configuration.

| Property | Type | Description |
|----------|------|-------------|
| `gcRule` | `GcRule` | Garbage collection rule specified as a protobuf. Must serialize to at most 500 bytes. NOTE: Garba... |
| `stats` | `ColumnFamilyStats` | Output only. Only available with STATS_VIEW, this includes summary statistics about column family... |
| `valueType` | `Type` | The type of data stored in each of this family's cell values, including its full encoding. If omi... |

### `ColumnFamilyStats`

Approximate statistics related to a single column family within a table. This information may change rapidly, interpreting these values at a point in time may already preset out-of-date information. Everything below is approximate, unless otherwise specified.

| Property | Type | Description |
|----------|------|-------------|
| `averageCellsPerColumn` | `number` | How many cells are present per column qualifier in this column family, averaged over all rows con... |
| `averageColumnsPerRow` | `number` | How many column qualifiers are present in this column family, averaged over all rows in the table... |
| `logicalDataBytes` | `string` | How much space the data in the column family occupies. This is roughly how many bytes would be ne... |

### `CopyBackupMetadata`

Metadata type for the google.longrunning.Operation returned by CopyBackup.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name of the backup being created through the copy operation. Values are of the form `projects... |
| `progress` | `OperationProgress` | The progress of the CopyBackup operation. |
| `sourceBackupInfo` | `BackupInfo` | Information about the source backup that is being copied from. |

### `CopyBackupRequest`

The request for CopyBackup.

| Property | Type | Description |
|----------|------|-------------|
| `backupId` | `string` | Required. The id of the new backup. The `backup_id` along with `parent` are combined as {parent}/... |
| `expireTime` | `string` | Required. Required. The expiration time of the copied backup with microsecond granularity that mu... |
| `sourceBackup` | `string` | Required. The source backup to be copied from. The source backup needs to be in READY state for i... |

### `CreateAuthorizedViewMetadata`

The metadata for the Operation returned by CreateAuthorizedView.

| Property | Type | Description |
|----------|------|-------------|
| `finishTime` | `string` | The time at which the operation failed or was completed successfully. |
| `originalRequest` | `CreateAuthorizedViewRequest` | The request that prompted the initiation of this CreateAuthorizedView operation. |
| `requestTime` | `string` | The time at which the original request was received. |

### `CreateAuthorizedViewRequest`

The request for CreateAuthorizedView

| Property | Type | Description |
|----------|------|-------------|
| `authorizedView` | `AuthorizedView` | Required. The AuthorizedView to create. |
| `authorizedViewId` | `string` | Required. The id of the AuthorizedView to create. This AuthorizedView must not already exist. The... |
| `parent` | `string` | Required. This is the name of the table the AuthorizedView belongs to. Values are of the form `pr... |

### `CreateBackupMetadata`

Metadata type for the operation returned by CreateBackup.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | If set, the time at which this operation finished or was cancelled. DEPRECATED: Use finish_time i... |
| `finishTime` | `string` | The time at which the operation failed or was completed successfully. |
| `name` | `string` | The name of the backup being created. |
| `requestTime` | `string` | The time at which the original request was received. |
| `sourceTable` | `string` | The name of the table the backup is created from. |
| `startTime` | `string` | The time at which this operation started. DEPRECATED: Use request_time instead. |

### `CreateClusterMetadata`

The metadata for the Operation returned by CreateCluster.

| Property | Type | Description |
|----------|------|-------------|
| `finishTime` | `string` | The time at which the operation failed or was completed successfully. |
| `originalRequest` | `CreateClusterRequest` | The request that prompted the initiation of this CreateCluster operation. |
| `requestTime` | `string` | The time at which the original request was received. |
| `tables` | `object` | Keys: the full `name` of each table that existed in the instance when CreateCluster was first cal... |

### `CreateClusterRequest`

Request message for BigtableInstanceAdmin.CreateCluster.

| Property | Type | Description |
|----------|------|-------------|
| `cluster` | `Cluster` | Required. The cluster to be created. Fields marked `OutputOnly` must be left blank. |
| `clusterId` | `string` | Required. The ID to be used when referring to the new cluster within its instance, e.g., just `my... |
| `parent` | `string` | Required. The unique name of the instance in which to create the new cluster. Values are of the f... |

### `CreateInstanceMetadata`

The metadata for the Operation returned by CreateInstance.

| Property | Type | Description |
|----------|------|-------------|
| `finishTime` | `string` | The time at which the operation failed or was completed successfully. |
| `originalRequest` | `CreateInstanceRequest` | The request that prompted the initiation of this CreateInstance operation. |
| `requestTime` | `string` | The time at which the original request was received. |

### `CreateInstanceRequest`

Request message for BigtableInstanceAdmin.CreateInstance.

| Property | Type | Description |
|----------|------|-------------|
| `clusters` | `object` | Required. The clusters to be created within the instance, mapped by desired cluster ID, e.g., jus... |
| `instance` | `Instance` | Required. The instance to create. Fields marked `OutputOnly` must be left blank. |
| `instanceId` | `string` | Required. The ID to be used when referring to the new instance within its project, e.g., just `my... |
| `parent` | `string` | Required. The unique name of the project in which to create the new instance. Values are of the f... |

### `CreateLogicalViewMetadata`

The metadata for the Operation returned by CreateLogicalView.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | DEPRECATED: Use finish_time instead. |
| `finishTime` | `string` | The time at which the operation failed or was completed successfully. |
| `originalRequest` | `CreateLogicalViewRequest` | The request that prompted the initiation of this CreateLogicalView operation. |
| `requestTime` | `string` | The time at which the original request was received. |
| `startTime` | `string` | DEPRECATED: Use request_time instead. |

### `CreateLogicalViewRequest`

Request message for BigtableInstanceAdmin.CreateLogicalView.

| Property | Type | Description |
|----------|------|-------------|
| `logicalView` | `LogicalView` | Required. The logical view to create. |
| `logicalViewId` | `string` | Required. The ID to use for the logical view, which will become the final component of the logica... |
| `parent` | `string` | Required. The parent instance where this logical view will be created. Format: `projects/{project... |

### `CreateMaterializedViewMetadata`

The metadata for the Operation returned by CreateMaterializedView.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | If set, the time at which this operation finished or was canceled. DEPRECATED: Use finish_time in... |
| `finishTime` | `string` | The time at which the operation failed or was completed successfully. |
| `originalRequest` | `CreateMaterializedViewRequest` | The request that prompted the initiation of this CreateMaterializedView operation. |
| `requestTime` | `string` | The time at which the original request was received. |
| `startTime` | `string` | The time at which this operation started. DEPRECATED: Use request_time instead. |

### `CreateMaterializedViewRequest`

Request message for BigtableInstanceAdmin.CreateMaterializedView.

| Property | Type | Description |
|----------|------|-------------|
| `materializedView` | `MaterializedView` | Required. The materialized view to create. |
| `materializedViewId` | `string` | Required. The ID to use for the materialized view, which will become the final component of the m... |
| `parent` | `string` | Required. The parent instance where this materialized view will be created. Format: `projects/{pr... |

### `CreateSchemaBundleMetadata`

The metadata for the Operation returned by CreateSchemaBundle.

| Property | Type | Description |
|----------|------|-------------|
| `finishTime` | `string` | The time at which the operation failed or was completed successfully. |
| `name` | `string` | The unique name identifying this schema bundle. Values are of the form `projects/{project}/instan... |
| `requestTime` | `string` | The time at which the original request was received. |

### `CreateTableRequest`

Request message for google.bigtable.admin.v2.BigtableTableAdmin.CreateTable

| Property | Type | Description |
|----------|------|-------------|
| `initialSplits` | `array<Split>` | The optional list of row keys that will be used to initially split the table into several tablets... |
| `table` | `Table` | Required. The Table to create. |
| `tableId` | `string` | Required. The name by which the new table should be referred to within the parent instance, e.g.,... |

### `DataBoostIsolationReadOnly`

Data Boost is a serverless compute capability that lets you run high-throughput read jobs and queries on your Bigtable data, without impacting the performance of the clusters that handle your application traffic. Data Boost supports read-only use cases with single-cluster routing.

| Property | Type | Description |
|----------|------|-------------|
| `computeBillingOwner` | `string` | The Compute Billing Owner for this Data Boost App Profile. |

### `DataBoostReadLocalWrites`

Checks that all writes before the consistency token was generated in the same cluster are readable by Databoost.

### `DropRowRangeRequest`

Request message for google.bigtable.admin.v2.BigtableTableAdmin.DropRowRange

| Property | Type | Description |
|----------|------|-------------|
| `deleteAllDataFromTable` | `boolean` | Delete all rows in the table. Setting this to false is a no-op. |
| `rowKeyPrefix` | `string` | Delete all rows that start with this row key prefix. Prefix cannot be zero length. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `EncryptionConfig`

Cloud Key Management Service (Cloud KMS) settings for a CMEK-protected cluster.

| Property | Type | Description |
|----------|------|-------------|
| `kmsKeyName` | `string` | Describes the Cloud KMS encryption key that will be used to protect the destination Bigtable clus... |

### `EncryptionInfo`

Encryption information for a given resource. If this resource is protected with customer managed encryption, the in-use Cloud Key Management Service (Cloud KMS) key version is specified along with its status.

| Property | Type | Description |
|----------|------|-------------|
| `encryptionStatus` | `Status` | Output only. The status of encrypt/decrypt calls on underlying data for this resource. Regardless... |
| `encryptionType` | `string` | Output only. The type of encryption used to protect this resource. |
| `kmsKeyVersion` | `string` | Output only. The version of the Cloud KMS key specified in the parent cluster that is in use for ... |

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `GcRule`

Rule for determining which cells to delete during garbage collection.

| Property | Type | Description |
|----------|------|-------------|
| `intersection` | `Intersection` | Delete cells that would be deleted by every nested rule. |
| `maxAge` | `string` | Delete cells in a column older than the given age. Values must be at least one millisecond, and w... |
| `maxNumVersions` | `integer` | Delete all cells in a column except the most recent N. |
| `union` | `Union` | Delete cells that would be deleted by any nested rule. |

### `GenerateConsistencyTokenRequest`

Request message for google.bigtable.admin.v2.BigtableTableAdmin.GenerateConsistencyToken

### `GenerateConsistencyTokenResponse`

Response message for google.bigtable.admin.v2.BigtableTableAdmin.GenerateConsistencyToken

| Property | Type | Description |
|----------|------|-------------|
| `consistencyToken` | `string` | The generated consistency token. |

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

### `GoogleBigtableAdminV2AuthorizedViewFamilySubsets`

Subsets of a column family that are included in this AuthorizedView.

| Property | Type | Description |
|----------|------|-------------|
| `qualifierPrefixes` | `array<string>` | Prefixes for qualifiers to be included in the AuthorizedView. Every qualifier starting with one o... |
| `qualifiers` | `array<string>` | Individual exact column qualifiers to be included in the AuthorizedView. |

### `GoogleBigtableAdminV2AuthorizedViewSubsetView`

Defines a simple AuthorizedView that is a subset of the underlying Table.

| Property | Type | Description |
|----------|------|-------------|
| `familySubsets` | `object` | Map from column family name to the columns in this family to be included in the AuthorizedView. |
| `rowPrefixes` | `array<string>` | Row prefixes to be included in the AuthorizedView. To provide access to all rows, include the emp... |

### `GoogleBigtableAdminV2MaterializedViewClusterState`

The state of a materialized view's data in a particular cluster.

| Property | Type | Description |
|----------|------|-------------|
| `replicationState` | `string` | Output only. The state of the materialized view in this cluster. |

### `GoogleBigtableAdminV2TypeAggregate`

A value that combines incremental updates into a summarized value. Data is never directly written or read using type `Aggregate`. Writes provide either the `input_type` or `state_type`, and reads always return the `state_type` .

| Property | Type | Description |
|----------|------|-------------|
| `hllppUniqueCount` | `GoogleBigtableAdminV2TypeAggregateHyperLogLogPlusPlusUniqueCount` | HyperLogLogPlusPlusUniqueCount aggregator. |
| `inputType` | `Type` | Type of the inputs that are accumulated by this `Aggregate`. Use `AddInput` mutations to accumula... |
| `max` | `GoogleBigtableAdminV2TypeAggregateMax` | Max aggregator. |
| `min` | `GoogleBigtableAdminV2TypeAggregateMin` | Min aggregator. |
| `stateType` | `Type` | Output only. Type that holds the internal accumulator state for the `Aggregate`. This is a functi... |
| `sum` | `GoogleBigtableAdminV2TypeAggregateSum` | Sum aggregator. |

### `GoogleBigtableAdminV2TypeAggregateHyperLogLogPlusPlusUniqueCount`

Computes an approximate unique count over the input values. When using raw data as input, be careful to use a consistent encoding. Otherwise the same value encoded differently could count more than once, or two distinct values could count as identical. Input: Any, or omit for Raw State: TBD Special state conversions: `Int64` (the unique count estimate)

### `GoogleBigtableAdminV2TypeAggregateMax`

Computes the max of the input values. Allowed input: `Int64` State: same as input

### `GoogleBigtableAdminV2TypeAggregateMin`

Computes the min of the input values. Allowed input: `Int64` State: same as input

### `GoogleBigtableAdminV2TypeAggregateSum`

Computes the sum of the input values. Allowed input: `Int64` State: same as input

### `GoogleBigtableAdminV2TypeArray`

An ordered list of elements of a given type. Values of type `Array` are stored in `Value.array_value`.

| Property | Type | Description |
|----------|------|-------------|
| `elementType` | `Type` | The type of the elements in the array. This must not be `Array`. |

### `GoogleBigtableAdminV2TypeBool`

bool Values of type `Bool` are stored in `Value.bool_value`.

### `GoogleBigtableAdminV2TypeBytes`

Bytes Values of type `Bytes` are stored in `Value.bytes_value`.

| Property | Type | Description |
|----------|------|-------------|
| `encoding` | `GoogleBigtableAdminV2TypeBytesEncoding` | The encoding to use when converting to or from lower level types. |

### `GoogleBigtableAdminV2TypeBytesEncoding`

Rules used to convert to or from lower level types.

| Property | Type | Description |
|----------|------|-------------|
| `raw` | `GoogleBigtableAdminV2TypeBytesEncodingRaw` | Use `Raw` encoding. |

### `GoogleBigtableAdminV2TypeBytesEncodingRaw`

Leaves the value as-is. Sorted mode: all values are supported. Distinct mode: all values are supported.

| Property | Type | Description |
|----------|------|-------------|
| `escapeNulls` | `boolean` | If set, allows NULL values to be encoded as the empty string "". The actual empty string, or any ... |

### `GoogleBigtableAdminV2TypeDate`

Date Values of type `Date` are stored in `Value.date_value`.

### `GoogleBigtableAdminV2TypeEnum`

A protobuf enum type. Values of type `Enum` are stored in `Value.int_value`.

| Property | Type | Description |
|----------|------|-------------|
| `enumName` | `string` | The fully qualified name of the protobuf enum message, including package. In the format of "foo.b... |
| `schemaBundleId` | `string` | The ID of the schema bundle that this enum is defined in. |

### `GoogleBigtableAdminV2TypeFloat32`

Float32 Values of type `Float32` are stored in `Value.float_value`.

### `GoogleBigtableAdminV2TypeFloat64`

Float64 Values of type `Float64` are stored in `Value.float_value`.

### `GoogleBigtableAdminV2TypeGeography`

A geography type, representing a point or region on Earth. The value is stored in `Value.bytes_value` as Well-Known Binary (WKB) bytes.

### `GoogleBigtableAdminV2TypeInt64`

Int64 Values of type `Int64` are stored in `Value.int_value`.

| Property | Type | Description |
|----------|------|-------------|
| `encoding` | `GoogleBigtableAdminV2TypeInt64Encoding` | The encoding to use when converting to or from lower level types. |

### `GoogleBigtableAdminV2TypeInt64Encoding`

Rules used to convert to or from lower level types.

| Property | Type | Description |
|----------|------|-------------|
| `bigEndianBytes` | `GoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes` | Use `BigEndianBytes` encoding. |
| `orderedCodeBytes` | `GoogleBigtableAdminV2TypeInt64EncodingOrderedCodeBytes` | Use `OrderedCodeBytes` encoding. |

### `GoogleBigtableAdminV2TypeInt64EncodingBigEndianBytes`

Encodes the value as an 8-byte big-endian two's complement value. Sorted mode: non-negative values are supported. Distinct mode: all values are supported. Compatible with: - BigQuery `BINARY` encoding - HBase `Bytes.toBytes` - Java `ByteBuffer.putLong()` with `ByteOrder.BIG_ENDIAN`

| Property | Type | Description |
|----------|------|-------------|
| `bytesType` | `GoogleBigtableAdminV2TypeBytes` | Deprecated: ignored if set. |

### `GoogleBigtableAdminV2TypeInt64EncodingOrderedCodeBytes`

Encodes the value in a variable length binary format of up to 10 bytes. Values that are closer to zero use fewer bytes. Sorted mode: all values are supported. Distinct mode: all values are supported.

### `GoogleBigtableAdminV2TypeMap`

A mapping of keys to values of a given type. Values of type `Map` are stored in a `Value.array_value` where each entry is another `Value.array_value` with two elements (the key and the value, in that order). Normally encoded Map values won't have repeated keys, however, clients are expected to handle the case in which they do. If the same key appears multiple times, the _last_ value takes precedence.

| Property | Type | Description |
|----------|------|-------------|
| `keyType` | `Type` | The type of a map key. Only `Bytes`, `String`, and `Int64` are allowed as key types. |
| `valueType` | `Type` | The type of the values in a map. |

### `GoogleBigtableAdminV2TypeProto`

A protobuf message type. Values of type `Proto` are stored in `Value.bytes_value`.

| Property | Type | Description |
|----------|------|-------------|
| `messageName` | `string` | The fully qualified name of the protobuf message, including package. In the format of "foo.bar.Me... |
| `schemaBundleId` | `string` | The ID of the schema bundle that this proto is defined in. |

### `GoogleBigtableAdminV2TypeString`

String Values of type `String` are stored in `Value.string_value`.

| Property | Type | Description |
|----------|------|-------------|
| `encoding` | `GoogleBigtableAdminV2TypeStringEncoding` | The encoding to use when converting to or from lower level types. |

### `GoogleBigtableAdminV2TypeStringEncoding`

Rules used to convert to or from lower level types.

| Property | Type | Description |
|----------|------|-------------|
| `utf8Bytes` | `GoogleBigtableAdminV2TypeStringEncodingUtf8Bytes` | Use `Utf8Bytes` encoding. |
| `utf8Raw` | `GoogleBigtableAdminV2TypeStringEncodingUtf8Raw` | Deprecated: if set, converts to an empty `utf8_bytes`. |

### `GoogleBigtableAdminV2TypeStringEncodingUtf8Bytes`

UTF-8 encoding. Sorted mode: - All values are supported. - Code point order is preserved. Distinct mode: all values are supported. Compatible with: - BigQuery `TEXT` encoding - HBase `Bytes.toBytes` - Java `String#getBytes(StandardCharsets.UTF_8)`

| Property | Type | Description |
|----------|------|-------------|
| `nullEscapeChar` | `string` | Single-character escape sequence used to support NULL values. If set, allows NULL values to be en... |

### `GoogleBigtableAdminV2TypeStringEncodingUtf8Raw`

Deprecated: prefer the equivalent `Utf8Bytes`.

### `GoogleBigtableAdminV2TypeStruct`

A structured data value, consisting of fields which map to dynamically typed values. Values of type `Struct` are stored in `Value.array_value` where entries are in the same order and number as `field_types`.

| Property | Type | Description |
|----------|------|-------------|
| `encoding` | `GoogleBigtableAdminV2TypeStructEncoding` | The encoding to use when converting to or from lower level types. |
| `fields` | `array<GoogleBigtableAdminV2TypeStructField>` | The names and types of the fields in this struct. |

### `GoogleBigtableAdminV2TypeStructEncoding`

Rules used to convert to or from lower level types.

| Property | Type | Description |
|----------|------|-------------|
| `delimitedBytes` | `GoogleBigtableAdminV2TypeStructEncodingDelimitedBytes` | Use `DelimitedBytes` encoding. |
| `orderedCodeBytes` | `GoogleBigtableAdminV2TypeStructEncodingOrderedCodeBytes` | User `OrderedCodeBytes` encoding. |
| `singleton` | `GoogleBigtableAdminV2TypeStructEncodingSingleton` | Use `Singleton` encoding. |

### `GoogleBigtableAdminV2TypeStructEncodingDelimitedBytes`

Fields are encoded independently and concatenated with a configurable `delimiter` in between. A struct with no fields defined is encoded as a single `delimiter`. Sorted mode: - Fields are encoded in sorted mode. - Encoded field values must not contain any bytes <= `delimiter[0]` - Element-wise order is preserved: `A < B` if `A[0] < B[0]`, or if `A[0] == B[0] && A[1] < B[1]`, etc. Strict prefixes sort first. - This encoding does not support `DESC` field ordering. Distinct mode: - Fields are encoded in distinct mode. - Encoded field values must not contain `delimiter[0]`.

| Property | Type | Description |
|----------|------|-------------|
| `delimiter` | `string` | Byte sequence used to delimit concatenated fields. The delimiter must contain at least 1 characte... |

### `GoogleBigtableAdminV2TypeStructEncodingOrderedCodeBytes`

Fields are encoded independently, then escaped and delimited by appling the following rules in order: - While the last remaining field is `ASC` or `UNSPECIFIED`, and encodes to the empty string "", remove it. - In each remaining field, replace all null bytes `0x00` with the fixed byte pair `{0x00, 0xFF}`. - If any remaining field encodes to the empty string "", replace it with the fixed byte pair `{0x00, 0x00}`. - Append the fixed byte pair `{0x00, 0x01}` to each remaining field, except for the last remaining field if it is `ASC`. - Bitwise negate all `DESC` fields. - Concatenate the results, or emit the fixed byte pair `{0x00, 0x00}` if there are no remaining fields to concatenate. Examples: ``` - STRUCT() -> "\00\00" - STRUCT("") -> "\00\00" - STRUCT("", "") -> "\00\00" - STRUCT("", "B") -> "\00\00" + "\00\01" + "B" - STRUCT("A", "") -> "A" - STRUCT("", "B", "") -> "\00\00" + "\00\01" + "B" - STRUCT("A", "", "C") -> "A" + "\00\01" + "\00\00" + "\00\01" + "C" ``` Examples for struct with `DESC` fields: ``` - STRUCT("" DESC) -> "\xFF\xFF" + "\xFF\xFE" - STRUCT("" DESC, "") -> "\xFF\xFF" + "\xFF\xFE" - STRUCT("" DESC, "", "") -> "\xFF\xFF" + "\xFF\xFE" - STRUCT("" DESC, "A") -> "\xFF\xFF" + "\xFF\xFE" + "A" - STRUCT("A", "" DESC, "") -> "A" + "\00\01" + "\xFF\xFF" + "\xFF\xFE" - STRUCT("", "A" DESC) -> "\x00\x00" + "\x00\x01" + "\xBE" + "\xFF\xFE" ``` Since null bytes are always escaped, this encoding can cause size blowup for encodings like `Int64.BigEndianBytes` that are likely to produce many such bytes. Sorted mode: - Fields are encoded in sorted mode. - All values supported by the field encodings are allowed. - Fields with unset or `UNSPECIFIED` order are treated as `ASC`. - Element-wise order is preserved: `A < B` if `A[0] < B[0]`, or if `A[0] == B[0] && A[1] < B[1]`, etc. Strict prefixes sort first. Distinct mode: - Fields are encoded in distinct mode. - All values supported by the field encodings are allowed.

### `GoogleBigtableAdminV2TypeStructEncodingSingleton`

Uses the encoding of `fields[0].type` as-is. Only valid if `fields.size == 1`. This encoding does not support `DESC` field ordering.

### `GoogleBigtableAdminV2TypeStructField`

A struct field and its type.

| Property | Type | Description |
|----------|------|-------------|
| `fieldName` | `string` | The field name (optional). Fields without a `field_name` are considered anonymous and cannot be r... |
| `type` | `Type` | The type of values in this field. |

### `GoogleBigtableAdminV2TypeTimestamp`

Timestamp Values of type `Timestamp` are stored in `Value.timestamp_value`.

| Property | Type | Description |
|----------|------|-------------|
| `encoding` | `GoogleBigtableAdminV2TypeTimestampEncoding` | The encoding to use when converting to or from lower level types. |

### `GoogleBigtableAdminV2TypeTimestampEncoding`

Rules used to convert to or from lower level types.

| Property | Type | Description |
|----------|------|-------------|
| `unixMicrosInt64` | `GoogleBigtableAdminV2TypeInt64Encoding` | Encodes the number of microseconds since the Unix epoch using the given `Int64` encoding. Values ... |

### `HotTablet`

A tablet is a defined by a start and end key and is explained in https://cloud.google.com/bigtable/docs/overview#architecture and https://cloud.google.com/bigtable/docs/performance#optimization. A Hot tablet is a tablet that exhibits high average cpu usage during the time interval from start time to end time.

| Property | Type | Description |
|----------|------|-------------|
| `endKey` | `string` | Tablet End Key (inclusive). |
| `endTime` | `string` | Output only. The end time of the hot tablet. |
| `name` | `string` | The unique name of the hot tablet. Values are of the form `projects/{project}/instances/{instance... |
| `nodeCpuUsagePercent` | `number` | Output only. The average CPU usage spent by a node on this tablet over the start_time to end_time... |
| `startKey` | `string` | Tablet Start Key (inclusive). |
| `startTime` | `string` | Output only. The start time of the hot tablet. |
| `tableName` | `string` | Name of the table that contains the tablet. Values are of the form `projects/{project}/instances/... |

### `Instance`

A collection of Bigtable Tables and the resources that serve them. All tables in an instance are served from all Clusters in the instance.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. A commit timestamp representing when this Instance was created. For instances create... |
| `displayName` | `string` | Required. The descriptive name for this instance as it appears in UIs. Can be changed at any time... |
| `labels` | `object` | Labels are a flexible and lightweight mechanism for organizing cloud resources into groups that r... |
| `name` | `string` | The unique name of the instance. Values are of the form `projects/{project}/instances/a-z+[a-z0-9]`. |
| `satisfiesPzi` | `boolean` | Output only. Reserved for future use. |
| `satisfiesPzs` | `boolean` | Output only. Reserved for future use. |
| `state` | `string` | Output only. The current state of the instance. |
| `tags` | `object` | Optional. Input only. Immutable. Tag keys/values directly bound to this resource. For example: - ... |
| `type` | `string` | The type of the instance. Defaults to `PRODUCTION`. |

### `Intersection`

A GcRule which deletes cells matching all of the given rules.

| Property | Type | Description |
|----------|------|-------------|
| `rules` | `array<GcRule>` | Only delete cells which would be deleted by every element of `rules`. |

### `ListAppProfilesResponse`

Response message for BigtableInstanceAdmin.ListAppProfiles.

| Property | Type | Description |
|----------|------|-------------|
| `appProfiles` | `array<AppProfile>` | The list of requested app profiles. |
| `failedLocations` | `array<string>` | Locations from which AppProfile information could not be retrieved, due to an outage or some othe... |
| `nextPageToken` | `string` | Set if not all app profiles could be returned in a single response. Pass this value to `page_toke... |

### `ListAuthorizedViewsResponse`

Response message for google.bigtable.admin.v2.BigtableTableAdmin.ListAuthorizedViews

| Property | Type | Description |
|----------|------|-------------|
| `authorizedViews` | `array<AuthorizedView>` | The AuthorizedViews present in the requested table. |
| `nextPageToken` | `string` | Set if not all tables could be returned in a single response. Pass this value to `page_token` in ... |

### `ListBackupsResponse`

The response for ListBackups.

| Property | Type | Description |
|----------|------|-------------|
| `backups` | `array<Backup>` | The list of matching backups. |
| `nextPageToken` | `string` | `next_page_token` can be sent in a subsequent ListBackups call to fetch more of the matching back... |

### `ListClustersResponse`

Response message for BigtableInstanceAdmin.ListClusters.

| Property | Type | Description |
|----------|------|-------------|
| `clusters` | `array<Cluster>` | The list of requested clusters. |
| `failedLocations` | `array<string>` | Locations from which Cluster information could not be retrieved, due to an outage or some other t... |
| `nextPageToken` | `string` | DEPRECATED: This field is unused and ignored. |

### `ListHotTabletsResponse`

Response message for BigtableInstanceAdmin.ListHotTablets.

| Property | Type | Description |
|----------|------|-------------|
| `hotTablets` | `array<HotTablet>` | List of hot tablets in the tables of the requested cluster that fall within the requested time ra... |
| `nextPageToken` | `string` | Set if not all hot tablets could be returned in a single response. Pass this value to `page_token... |

### `ListInstancesResponse`

Response message for BigtableInstanceAdmin.ListInstances.

| Property | Type | Description |
|----------|------|-------------|
| `failedLocations` | `array<string>` | Locations from which Instance information could not be retrieved, due to an outage or some other ... |
| `instances` | `array<Instance>` | The list of requested instances. |
| `nextPageToken` | `string` | DEPRECATED: This field is unused and ignored. |

### `ListLocationsResponse`

The response message for Locations.ListLocations.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<Location>` | A list of locations that matches the specified filter in the request. |
| `nextPageToken` | `string` | The standard List next-page token. |

### `ListLogicalViewsResponse`

Response message for BigtableInstanceAdmin.ListLogicalViews.

| Property | Type | Description |
|----------|------|-------------|
| `logicalViews` | `array<LogicalView>` | The list of requested logical views. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `ListMaterializedViewsResponse`

Response message for BigtableInstanceAdmin.ListMaterializedViews.

| Property | Type | Description |
|----------|------|-------------|
| `materializedViews` | `array<MaterializedView>` | The list of requested materialized views. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `ListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<Operation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `ListSchemaBundlesResponse`

The response for ListSchemaBundles.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `schemaBundles` | `array<SchemaBundle>` | The schema bundles from the specified table. |

### `ListTablesResponse`

Response message for google.bigtable.admin.v2.BigtableTableAdmin.ListTables

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Set if not all tables could be returned in a single response. Pass this value to `page_token` in ... |
| `tables` | `array<Table>` | The tables present in the requested instance. |

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `LogicalView`

A SQL logical view object that can be referenced in SQL queries.

| Property | Type | Description |
|----------|------|-------------|
| `deletionProtection` | `boolean` | Optional. Set to true to make the LogicalView protected against deletion. |
| `etag` | `string` | Optional. The etag for this logical view. This may be sent on update requests to ensure that the ... |
| `name` | `string` | Identifier. The unique name of the logical view. Format: `projects/{project}/instances/{instance}... |
| `query` | `string` | Required. The logical view's select query. |

### `MaterializedView`

A materialized view object that can be referenced in SQL queries.

| Property | Type | Description |
|----------|------|-------------|
| `clusterStates` | `object` | Output only. Map from cluster ID to per-cluster materialized view state. If it could not be deter... |
| `deletionProtection` | `boolean` | Set to true to make the MaterializedView protected against deletion. Views: `SCHEMA_VIEW`, `REPLI... |
| `etag` | `string` | Optional. The etag for this materialized view. This may be sent on update requests to ensure that... |
| `name` | `string` | Identifier. The unique name of the materialized view. Format: `projects/{project}/instances/{inst... |
| `query` | `string` | Required. Immutable. The materialized view's select query. Views: `SCHEMA_VIEW`, `FULL`. |

### `Modification`

A create, update, or delete of a particular column family.

| Property | Type | Description |
|----------|------|-------------|
| `create` | `ColumnFamily` | Create a new column family with the specified schema, or fail if one already exists with the give... |
| `drop` | `boolean` | Drop (delete) the column family with the given ID, or fail if no such family exists. |
| `id` | `string` | The ID of the column family to be modified. |
| `update` | `ColumnFamily` | Update an existing column family to the specified schema, or fail if no column family exists with... |
| `updateMask` | `string` | Optional. A mask specifying which fields (e.g. `gc_rule`) in the `update` mod should be updated, ... |

### `ModifyColumnFamiliesRequest`

Request message for google.bigtable.admin.v2.BigtableTableAdmin.ModifyColumnFamilies

| Property | Type | Description |
|----------|------|-------------|
| `ignoreWarnings` | `boolean` | Optional. If true, ignore safety checks when modifying the column families. |
| `modifications` | `array<Modification>` | Required. Modifications to be atomically applied to the specified table's families. Entries are a... |

### `MultiClusterRoutingUseAny`

Read/write requests are routed to the nearest cluster in the instance, and will fail over to the nearest cluster that is available in the event of transient errors or delays. Clusters in a region are considered equidistant. Choosing this option sacrifices read-your-writes consistency to improve availability.

| Property | Type | Description |
|----------|------|-------------|
| `clusterIds` | `array<string>` | The set of clusters to route to. The order is ignored; clusters will be tried in order of distanc... |
| `rowAffinity` | `RowAffinity` | Row affinity sticky routing based on the row key of the request. Requests that span multiple rows... |

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

Encapsulates progress related information for a Cloud Bigtable long running operation.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | If set, the time at which this operation failed or was completed successfully. |
| `progressPercent` | `integer` | Percent completion of the operation. Values are between 0 and 100 inclusive. |
| `startTime` | `string` | Time the request was received. |

### `OptimizeRestoredTableMetadata`

Metadata type for the long-running operation used to track the progress of optimizations performed on a newly restored table. This long-running operation is automatically created by the system after the successful completion of a table restore, and cannot be cancelled.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Name of the restored table being optimized. |
| `progress` | `OperationProgress` | The progress of the post-restore optimizations. |

### `PartialUpdateClusterMetadata`

The metadata for the Operation returned by PartialUpdateCluster.

| Property | Type | Description |
|----------|------|-------------|
| `finishTime` | `string` | The time at which the operation failed or was completed successfully. |
| `originalRequest` | `PartialUpdateClusterRequest` | The original request for PartialUpdateCluster. |
| `requestTime` | `string` | The time at which the original request was received. |

### `PartialUpdateClusterRequest`

Request message for BigtableInstanceAdmin.PartialUpdateCluster.

| Property | Type | Description |
|----------|------|-------------|
| `cluster` | `Cluster` | Required. The Cluster which contains the partial updates to be applied, subject to the update_mask. |
| `updateMask` | `string` | Required. The subset of Cluster fields which should be replaced. |

### `PartialUpdateInstanceRequest`

Request message for BigtableInstanceAdmin.PartialUpdateInstance.

| Property | Type | Description |
|----------|------|-------------|
| `instance` | `Instance` | Required. The Instance which will (partially) replace the current value. |
| `updateMask` | `string` | Required. The subset of Instance fields which should be replaced. Must be explicitly set. |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `auditConfigs` | `array<AuditConfig>` | Specifies cloud audit logging configuration for this policy. |
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `ProtoSchema`

Represents a protobuf schema.

| Property | Type | Description |
|----------|------|-------------|
| `protoDescriptors` | `string` | Required. Contains a protobuf-serialized [google.protobuf.FileDescriptorSet](https://github.com/p... |

### `RestoreInfo`

Information about a table restore.

| Property | Type | Description |
|----------|------|-------------|
| `backupInfo` | `BackupInfo` | Information about the backup used to restore the table. The backup may no longer exist. |
| `sourceType` | `string` | The type of the restore source. |

### `RestoreTableMetadata`

Metadata type for the long-running operation returned by RestoreTable.

| Property | Type | Description |
|----------|------|-------------|
| `backupInfo` | `BackupInfo` |  |
| `name` | `string` | Name of the table being created and restored to. |
| `optimizeTableOperationName` | `string` | If exists, the name of the long-running operation that will be used to track the post-restore opt... |
| `progress` | `OperationProgress` | The progress of the RestoreTable operation. |
| `sourceType` | `string` | The type of the restore source. |

### `RestoreTableRequest`

The request for RestoreTable.

| Property | Type | Description |
|----------|------|-------------|
| `backup` | `string` | Name of the backup from which to restore. Values are of the form `projects//instances//clusters//... |
| `tableId` | `string` | Required. The id of the table to create and restore to. This table must not already exist. The `t... |

### `RowAffinity`

If enabled, Bigtable will route the request based on the row key of the request, rather than randomly. Instead, each row key will be assigned to a cluster, and will stick to that cluster. If clusters are added or removed, then this may affect which row keys stick to which clusters. To avoid this, users can use a cluster group to specify which clusters are to be used. In this case, new clusters that are not a part of the cluster group will not be routed to, and routing will be unaffected by the new cluster. Moreover, clusters specified in the cluster group cannot be deleted unless removed from the cluster group.

### `SchemaBundle`

A named collection of related schemas.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Optional. The etag for this schema bundle. This may be sent on update and delete requests to ensu... |
| `name` | `string` | Identifier. The unique name identifying this schema bundle. Values are of the form `projects/{pro... |
| `protoSchema` | `ProtoSchema` | Schema for Protobufs. |

### `SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |
| `updateMask` | `string` | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mas... |

### `SingleClusterRouting`

Unconditionally routes all read/write requests to a specific cluster. This option preserves read-your-writes consistency but does not improve availability.

| Property | Type | Description |
|----------|------|-------------|
| `allowTransactionalWrites` | `boolean` | Whether or not `CheckAndMutateRow` and `ReadModifyWriteRow` requests are allowed by this app prof... |
| `clusterId` | `string` | The cluster to which read/write requests should be routed. |

### `Split`

An initial split point for a newly created table.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | Row key to use as an initial tablet boundary. |

### `StandardIsolation`

Standard options for isolating this app profile's traffic from other use cases.

| Property | Type | Description |
|----------|------|-------------|
| `priority` | `string` | The priority of requests sent using this app profile. |

### `StandardReadRemoteWrites`

Checks that all writes before the consistency token was generated are replicated in every cluster and readable.

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `Table`

A collection of user data indexed by row, column, and timestamp. Each table is served using the resources of its parent cluster.

| Property | Type | Description |
|----------|------|-------------|
| `automatedBackupPolicy` | `AutomatedBackupPolicy` | If specified, automated backups are enabled for this table. Otherwise, automated backups are disa... |
| `changeStreamConfig` | `ChangeStreamConfig` | If specified, enable the change stream on this table. Otherwise, the change stream is disabled an... |
| `clusterStates` | `object` | Output only. Map from cluster ID to per-cluster table state. If it could not be determined whethe... |
| `columnFamilies` | `object` | The column families configured for this table, mapped by column family ID. Views: `SCHEMA_VIEW`, ... |
| `deletionProtection` | `boolean` | Set to true to make the table protected against data loss. i.e. deleting the following resources ... |
| `granularity` | `string` | Immutable. The granularity (i.e. `MILLIS`) at which timestamps are stored in this table. Timestam... |
| `name` | `string` | The unique name of the table. Values are of the form `projects/{project}/instances/{instance}/tab... |
| `restoreInfo` | `RestoreInfo` | Output only. If this table was restored from another data source (e.g. a backup), this field will... |
| `rowKeySchema` | `GoogleBigtableAdminV2TypeStruct` | The row key schema for this table. The schema is used to decode the raw row key bytes into a stru... |
| `stats` | `TableStats` | Output only. Only available with STATS_VIEW, this includes summary statistics about the entire ta... |
| `tieredStorageConfig` | `TieredStorageConfig` | Rules to specify what data is stored in each storage tier. Different tiers store data differently... |

### `TableProgress`

Progress info for copying a table's data to the new cluster.

| Property | Type | Description |
|----------|------|-------------|
| `estimatedCopiedBytes` | `string` | Estimate of the number of bytes copied so far for this table. This will eventually reach 'estimat... |
| `estimatedSizeBytes` | `string` | Estimate of the size of the table to be copied. |
| `state` | `string` |  |

### `TableStats`

Approximate statistics related to a table. These statistics are calculated infrequently, while simultaneously, data in the table can change rapidly. Thus the values reported here (e.g. row count) are very likely out-of date, even the instant they are received in this API. Thus, only treat these values as approximate. IMPORTANT: Everything below is approximate, unless otherwise specified.

| Property | Type | Description |
|----------|------|-------------|
| `averageCellsPerColumn` | `number` | How many cells are present per column (column family, column qualifier) combinations, averaged ov... |
| `averageColumnsPerRow` | `number` | How many (column family, column qualifier) combinations are present per row in the table, average... |
| `logicalDataBytes` | `string` | This is roughly how many bytes would be needed to read the entire table (e.g. by streaming all co... |
| `rowCount` | `string` | How many rows are in the table. |

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

### `TieredStorageConfig`

Config for tiered storage. A valid config must have a valid TieredStorageRule. Otherwise the whole TieredStorageConfig must be unset. By default all data is stored in the SSD tier (only SSD instances can configure tiered storage).

| Property | Type | Description |
|----------|------|-------------|
| `infrequentAccess` | `TieredStorageRule` | Rule to specify what data is stored in the infrequent access(IA) tier. The IA tier allows storing... |

### `TieredStorageRule`

Rule to specify what data is stored in a storage tier.

| Property | Type | Description |
|----------|------|-------------|
| `includeIfOlderThan` | `string` | Include cells older than the given age. For the infrequent access tier, this value must be at lea... |

### `Type`

`Type` represents the type of data that is written to, read from, or stored in Bigtable. It is heavily based on the GoogleSQL standard to help maintain familiarity and consistency across products and features. For compatibility with Bigtable's existing untyped APIs, each `Type` includes an `Encoding` which describes how to convert to or from the underlying data. Each encoding can operate in one of two modes: - Sorted: In this mode, Bigtable guarantees that `Encode(X) <= Encode(Y)` if and only if `X <= Y`. This is useful anywhere sort order is important, for example when encoding keys. - Distinct: In this mode, Bigtable guarantees that if `X != Y` then `Encode(X) != Encode(Y)`. However, the converse is not guaranteed. For example, both `{'foo': '1', 'bar': '2'}` and `{'bar': '2', 'foo': '1'}` are valid encodings of the same JSON value. The API clearly documents which mode is used wherever an encoding can be configured. Each encoding also documents which values are supported in which modes. For example, when encoding INT64 as a numeric STRING, negative numbers cannot be encoded in sorted mode. This is because `INT64(1) > INT64(-1)`, but `STRING("-00001") > STRING("00001")`.

| Property | Type | Description |
|----------|------|-------------|
| `aggregateType` | `GoogleBigtableAdminV2TypeAggregate` | Aggregate |
| `arrayType` | `GoogleBigtableAdminV2TypeArray` | Array |
| `boolType` | `GoogleBigtableAdminV2TypeBool` | Bool |
| `bytesType` | `GoogleBigtableAdminV2TypeBytes` | Bytes |
| `dateType` | `GoogleBigtableAdminV2TypeDate` | Date |
| `enumType` | `GoogleBigtableAdminV2TypeEnum` | Enum |
| `float32Type` | `GoogleBigtableAdminV2TypeFloat32` | Float32 |
| `float64Type` | `GoogleBigtableAdminV2TypeFloat64` | Float64 |
| `geographyType` | `GoogleBigtableAdminV2TypeGeography` | Geography |
| `int64Type` | `GoogleBigtableAdminV2TypeInt64` | Int64 |
| `mapType` | `GoogleBigtableAdminV2TypeMap` | Map |
| `protoType` | `GoogleBigtableAdminV2TypeProto` | Proto |
| `stringType` | `GoogleBigtableAdminV2TypeString` | String |
| `structType` | `GoogleBigtableAdminV2TypeStruct` | Struct |
| `timestampType` | `GoogleBigtableAdminV2TypeTimestamp` | Timestamp |

### `UndeleteTableMetadata`

Metadata type for the operation returned by google.bigtable.admin.v2.BigtableTableAdmin.UndeleteTable.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | If set, the time at which this operation finished or was cancelled. DEPRECATED: Use finish_time i... |
| `finishTime` | `string` | The time at which the operation failed or was completed successfully. |
| `name` | `string` | The name of the table being restored. |
| `requestTime` | `string` | The time at which the original request was received. |
| `startTime` | `string` | The time at which this operation started. DEPRECATED: Use request_time instead. |

### `UndeleteTableRequest`

Request message for google.bigtable.admin.v2.BigtableTableAdmin.UndeleteTable

### `Union`

A GcRule which deletes cells matching any of the given rules.

| Property | Type | Description |
|----------|------|-------------|
| `rules` | `array<GcRule>` | Delete cells which would be deleted by any element of `rules`. |

### `UpdateAppProfileMetadata`

The metadata for the Operation returned by UpdateAppProfile.

### `UpdateAuthorizedViewMetadata`

Metadata for the google.longrunning.Operation returned by UpdateAuthorizedView.

| Property | Type | Description |
|----------|------|-------------|
| `finishTime` | `string` | The time at which the operation failed or was completed successfully. |
| `originalRequest` | `UpdateAuthorizedViewRequest` | The request that prompted the initiation of this UpdateAuthorizedView operation. |
| `requestTime` | `string` | The time at which the original request was received. |

### `UpdateAuthorizedViewRequest`

The request for UpdateAuthorizedView.

| Property | Type | Description |
|----------|------|-------------|
| `authorizedView` | `AuthorizedView` | Required. The AuthorizedView to update. The `name` in `authorized_view` is used to identify the A... |
| `ignoreWarnings` | `boolean` | Optional. If true, ignore the safety checks when updating the AuthorizedView. |
| `updateMask` | `string` | Optional. The list of fields to update. A mask specifying which fields in the AuthorizedView reso... |

### `UpdateClusterMetadata`

The metadata for the Operation returned by UpdateCluster.

| Property | Type | Description |
|----------|------|-------------|
| `finishTime` | `string` | The time at which the operation failed or was completed successfully. |
| `originalRequest` | `Cluster` | The request that prompted the initiation of this UpdateCluster operation. |
| `requestTime` | `string` | The time at which the original request was received. |

### `UpdateInstanceMetadata`

The metadata for the Operation returned by UpdateInstance.

| Property | Type | Description |
|----------|------|-------------|
| `finishTime` | `string` | The time at which the operation failed or was completed successfully. |
| `originalRequest` | `PartialUpdateInstanceRequest` | The request that prompted the initiation of this UpdateInstance operation. |
| `requestTime` | `string` | The time at which the original request was received. |

### `UpdateLogicalViewMetadata`

The metadata for the Operation returned by UpdateLogicalView.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | DEPRECATED: Use finish_time instead. |
| `finishTime` | `string` | The time at which the operation failed or was completed successfully. |
| `originalRequest` | `UpdateLogicalViewRequest` | The request that prompted the initiation of this UpdateLogicalView operation. |
| `requestTime` | `string` | The time at which the original request was received. |
| `startTime` | `string` | DEPRECATED: Use request_time instead. |

### `UpdateLogicalViewRequest`

Request message for BigtableInstanceAdmin.UpdateLogicalView.

| Property | Type | Description |
|----------|------|-------------|
| `logicalView` | `LogicalView` | Required. The logical view to update. The logical view's `name` field is used to identify the vie... |
| `updateMask` | `string` | Optional. The list of fields to update. |

### `UpdateSchemaBundleMetadata`

The metadata for the Operation returned by UpdateSchemaBundle.

| Property | Type | Description |
|----------|------|-------------|
| `finishTime` | `string` | The time at which the operation failed or was completed successfully. |
| `name` | `string` | The unique name identifying this schema bundle. Values are of the form `projects/{project}/instan... |
| `requestTime` | `string` | The time at which the original request was received. |

### `UpdateTableMetadata`

Metadata type for the operation returned by UpdateTable.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | If set, the time at which this operation finished or was canceled. DEPRECATED: Use finish_time in... |
| `finishTime` | `string` | The time at which the operation failed or was completed successfully. |
| `name` | `string` | The name of the table being updated. |
| `requestTime` | `string` | The time at which the original request was received. |
| `startTime` | `string` | The time at which this operation started. DEPRECATED: Use request_time instead. |

