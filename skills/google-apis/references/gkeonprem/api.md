# GKE On-Prem API - API Reference

**Version**: `v1` | **Methods**: 79 | **Schemas**: 159

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `gkeonprem.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. |
| `gkeonprem.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `gkeonprem.projects.locations.bareMetalClusters.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `gkeonprem.projects.locations.bareMetalClusters.unenroll` | DELETE | `v1/{+name}:unenroll` | Unenrolls an existing bare metal user cluster and its node pools from the Anthos On-Prem API with... |
| `gkeonprem.projects.locations.bareMetalClusters.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single bare metal Cluster. |
| `gkeonprem.projects.locations.bareMetalClusters.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `gkeonprem.projects.locations.bareMetalClusters.delete` | DELETE | `v1/{+name}` | Deletes a single bare metal Cluster. |
| `gkeonprem.projects.locations.bareMetalClusters.get` | GET | `v1/{+name}` | Gets details of a single bare metal Cluster. |
| `gkeonprem.projects.locations.bareMetalClusters.enroll` | POST | `v1/{+parent}/bareMetalClusters:enroll` | Enrolls an existing bare metal user cluster and its node pools to the Anthos On-Prem API within a... |
| `gkeonprem.projects.locations.bareMetalClusters.queryVersionConfig` | POST | `v1/{+parent}/bareMetalClusters:queryVersionConfig` | Queries the bare metal user cluster version config. |
| `gkeonprem.projects.locations.bareMetalClusters.list` | GET | `v1/{+parent}/bareMetalClusters` | Lists bare metal clusters in a given project and location. |
| `gkeonprem.projects.locations.bareMetalClusters.create` | POST | `v1/{+parent}/bareMetalClusters` | Creates a new bare metal cluster in a given project and location. |
| `gkeonprem.projects.locations.bareMetalClusters.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `gkeonprem.projects.locations.bareMetalClusters.bareMetalNodePools.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `gkeonprem.projects.locations.bareMetalClusters.bareMetalNodePools.enroll` | POST | `v1/{+parent}/bareMetalNodePools:enroll` | Enrolls an existing bare metal node pool to the Anthos On-Prem API within a given project and loc... |
| `gkeonprem.projects.locations.bareMetalClusters.bareMetalNodePools.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `gkeonprem.projects.locations.bareMetalClusters.bareMetalNodePools.unenroll` | DELETE | `v1/{+name}:unenroll` | Unenrolls a bare metal node pool from Anthos On-Prem API. |
| `gkeonprem.projects.locations.bareMetalClusters.bareMetalNodePools.get` | GET | `v1/{+name}` | Gets details of a single bare metal node pool. |
| `gkeonprem.projects.locations.bareMetalClusters.bareMetalNodePools.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `gkeonprem.projects.locations.bareMetalClusters.bareMetalNodePools.delete` | DELETE | `v1/{+name}` | Deletes a single bare metal node pool. |
| `gkeonprem.projects.locations.bareMetalClusters.bareMetalNodePools.list` | GET | `v1/{+parent}/bareMetalNodePools` | Lists bare metal node pools in a given project, location and bare metal cluster. |
| `gkeonprem.projects.locations.bareMetalClusters.bareMetalNodePools.create` | POST | `v1/{+parent}/bareMetalNodePools` | Creates a new bare metal node pool in a given project, location and Bare Metal cluster. |
| `gkeonprem.projects.locations.bareMetalClusters.bareMetalNodePools.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single bare metal node pool. |
| `gkeonprem.projects.locations.bareMetalClusters.bareMetalNodePools.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `gkeonprem.projects.locations.bareMetalClusters.bareMetalNodePools.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `gkeonprem.projects.locations.bareMetalClusters.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `gkeonprem.projects.locations.bareMetalClusters.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `gkeonprem.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `gkeonprem.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `gkeonprem.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `gkeonprem.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `gkeonprem.projects.locations.vmwareClusters.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `gkeonprem.projects.locations.vmwareClusters.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `gkeonprem.projects.locations.vmwareClusters.list` | GET | `v1/{+parent}/vmwareClusters` | Lists VMware Clusters in a given project and location. |
| `gkeonprem.projects.locations.vmwareClusters.create` | POST | `v1/{+parent}/vmwareClusters` | Creates a new VMware user cluster in a given project and location. |
| `gkeonprem.projects.locations.vmwareClusters.unenroll` | DELETE | `v1/{+name}:unenroll` | Unenrolls an existing VMware user cluster and its node pools from the Anthos On-Prem API within a... |
| `gkeonprem.projects.locations.vmwareClusters.delete` | DELETE | `v1/{+name}` | Deletes a single VMware Cluster. |
| `gkeonprem.projects.locations.vmwareClusters.enroll` | POST | `v1/{+parent}/vmwareClusters:enroll` | Enrolls an existing VMware user cluster and its node pools to the Anthos On-Prem API within a giv... |
| `gkeonprem.projects.locations.vmwareClusters.queryVersionConfig` | POST | `v1/{+parent}/vmwareClusters:queryVersionConfig` | Queries the VMware user cluster version config. |
| `gkeonprem.projects.locations.vmwareClusters.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single VMware cluster. |
| `gkeonprem.projects.locations.vmwareClusters.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `gkeonprem.projects.locations.vmwareClusters.get` | GET | `v1/{+name}` | Gets details of a single VMware Cluster. |
| `gkeonprem.projects.locations.vmwareClusters.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `gkeonprem.projects.locations.vmwareClusters.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `gkeonprem.projects.locations.vmwareClusters.vmwareNodePools.delete` | DELETE | `v1/{+name}` | Deletes a single VMware node pool. |
| `gkeonprem.projects.locations.vmwareClusters.vmwareNodePools.list` | GET | `v1/{+parent}/vmwareNodePools` | Lists VMware node pools in a given project, location and VMWare cluster. |
| `gkeonprem.projects.locations.vmwareClusters.vmwareNodePools.create` | POST | `v1/{+parent}/vmwareNodePools` | Creates a new VMware node pool in a given project, location and VMWare cluster. |
| `gkeonprem.projects.locations.vmwareClusters.vmwareNodePools.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `gkeonprem.projects.locations.vmwareClusters.vmwareNodePools.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `gkeonprem.projects.locations.vmwareClusters.vmwareNodePools.unenroll` | DELETE | `v1/{+name}:unenroll` | Unenrolls a VMware node pool to Anthos On-Prem API |
| `gkeonprem.projects.locations.vmwareClusters.vmwareNodePools.enroll` | POST | `v1/{+parent}/vmwareNodePools:enroll` | Enrolls a VMware node pool to Anthos On-Prem API |
| `gkeonprem.projects.locations.vmwareClusters.vmwareNodePools.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `gkeonprem.projects.locations.vmwareClusters.vmwareNodePools.get` | GET | `v1/{+name}` | Gets details of a single VMware node pool. |
| `gkeonprem.projects.locations.vmwareClusters.vmwareNodePools.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single VMware node pool. |
| `gkeonprem.projects.locations.vmwareClusters.vmwareNodePools.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `gkeonprem.projects.locations.vmwareClusters.vmwareNodePools.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `gkeonprem.projects.locations.bareMetalAdminClusters.list` | GET | `v1/{+parent}/bareMetalAdminClusters` | Lists bare metal admin clusters in a given project and location. |
| `gkeonprem.projects.locations.bareMetalAdminClusters.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `gkeonprem.projects.locations.bareMetalAdminClusters.queryVersionConfig` | POST | `v1/{+parent}/bareMetalAdminClusters:queryVersionConfig` | Queries the bare metal admin cluster version config. |
| `gkeonprem.projects.locations.bareMetalAdminClusters.enroll` | POST | `v1/{+parent}/bareMetalAdminClusters:enroll` | Enrolls an existing bare metal admin cluster to the Anthos On-Prem API within a given project and... |
| `gkeonprem.projects.locations.bareMetalAdminClusters.unenroll` | DELETE | `v1/{+name}:unenroll` | Unenrolls an existing bare metal admin cluster from the Anthos On-Prem API within a given project... |
| `gkeonprem.projects.locations.bareMetalAdminClusters.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `gkeonprem.projects.locations.bareMetalAdminClusters.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single bare metal admin cluster. |
| `gkeonprem.projects.locations.bareMetalAdminClusters.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `gkeonprem.projects.locations.bareMetalAdminClusters.create` | POST | `v1/{+parent}/bareMetalAdminClusters` | Creates a new bare metal admin cluster in a given project and location. The API needs to be combi... |
| `gkeonprem.projects.locations.bareMetalAdminClusters.get` | GET | `v1/{+name}` | Gets details of a single bare metal admin cluster. |
| `gkeonprem.projects.locations.bareMetalAdminClusters.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `gkeonprem.projects.locations.bareMetalAdminClusters.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `gkeonprem.projects.locations.vmwareAdminClusters.create` | POST | `v1/{+parent}/vmwareAdminClusters` | Creates a new VMware admin cluster in a given project and location. The API needs to be combined ... |
| `gkeonprem.projects.locations.vmwareAdminClusters.get` | GET | `v1/{+name}` | Gets details of a single VMware admin cluster. |
| `gkeonprem.projects.locations.vmwareAdminClusters.enroll` | POST | `v1/{+parent}/vmwareAdminClusters:enroll` | Enrolls an existing VMware admin cluster to the Anthos On-Prem API within a given project and loc... |
| `gkeonprem.projects.locations.vmwareAdminClusters.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single VMware admin cluster. |
| `gkeonprem.projects.locations.vmwareAdminClusters.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `gkeonprem.projects.locations.vmwareAdminClusters.unenroll` | DELETE | `v1/{+name}:unenroll` | Unenrolls an existing VMware admin cluster from the Anthos On-Prem API within a given project and... |
| `gkeonprem.projects.locations.vmwareAdminClusters.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `gkeonprem.projects.locations.vmwareAdminClusters.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `gkeonprem.projects.locations.vmwareAdminClusters.list` | GET | `v1/{+parent}/vmwareAdminClusters` | Lists VMware admin clusters in a given project and location. |
| `gkeonprem.projects.locations.vmwareAdminClusters.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `gkeonprem.projects.locations.vmwareAdminClusters.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |

### `gkeonprem.projects.locations.list`

**GET** `v1/{+name}/locations`

Lists information about the supported locations for this service.

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
const res = await gkeonprem.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await gkeonprem.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.bareMetalClusters.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await gkeonprem.bareMetalClusters.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.bareMetalClusters.unenroll`

**DELETE** `v1/{+name}:unenroll`

Unenrolls an existing bare metal user cluster and its node pools from the Anthos On-Prem API within a given project and location. Unenrollment removes the Cloud reference to the cluster without modifying the underlying OnPrem Resources. Clusters and node pools will continue to run; however, they will no longer be accessible through the Anthos On-Prem API or its clients.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the bare metal user cluster to be unenrolled. Format: "projects/{project}/locations/{location}/bare... |
| `allowMissing` | `boolean` | query | No | If set to true, and the bare metal cluster is not found, the request will succeed but no action will be taken on the ... |
| `etag` | `string` | query | No | The current etag of the bare metal Cluster. If an etag is provided and does not match the current etag of the cluster... |
| `force` | `boolean` | query | No | This is required if the cluster has any associated node pools. When set, any child node pools will also be unenrolled. |
| `validateOnly` | `boolean` | query | No | Validate the request without actually doing any updates. |

**Response**: `Operation`

```typescript
const res = await gkeonprem.bareMetalClusters.unenroll({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.bareMetalClusters.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single bare metal Cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The bare metal user cluster resource name. |
| `allowMissing` | `boolean` | query | No | If set to true, and the bare metal cluster is not found, the request will create a new bare metal cluster with the pr... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the BareMetalCluster resource by the update. ... |
| `validateOnly` | `boolean` | query | No | Validate the request without actually doing any updates. |

**Request body**: `BareMetalCluster`

**Response**: `Operation`

```typescript
const res = await gkeonprem.bareMetalClusters.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.bareMetalClusters.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await gkeonprem.bareMetalClusters.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.bareMetalClusters.delete`

**DELETE** `v1/{+name}`

Deletes a single bare metal Cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the bare metal user cluster to be deleted. Format: "projects/{project}/locations/{location}/bareMet... |
| `allowMissing` | `boolean` | query | No | If set to true, and the bare metal cluster is not found, the request will succeed but no action will be taken on the ... |
| `etag` | `string` | query | No | The current etag of the bare metal Cluster. If an etag is provided and does not match the current etag of the cluster... |
| `force` | `boolean` | query | No | If set to true, any node pools from the cluster will also be deleted. |
| `ignoreErrors` | `boolean` | query | No | If set to true, the deletion of a bare metal user cluster resource will succeed even if errors occur during deletion.... |
| `validateOnly` | `boolean` | query | No | Validate the request without actually doing any updates. |

**Response**: `Operation`

```typescript
const res = await gkeonprem.bareMetalClusters.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.bareMetalClusters.get`

**GET** `v1/{+name}`

Gets details of a single bare metal Cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the bare metal user cluster to get. Format: "projects/{project}/locations/{location}/bareMetalClust... |
| `allowMissing` | `boolean` | query | No | Optional. If true, return BareMetal Cluster including the one that only exists in RMS. |
| `view` | `string` | query | No | View for bare metal user cluster. When `BASIC` is specified, only the cluster resource name and admin cluster members... |

**Response**: `BareMetalCluster`

```typescript
const res = await gkeonprem.bareMetalClusters.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.bareMetalClusters.enroll`

**POST** `v1/{+parent}/bareMetalClusters:enroll`

Enrolls an existing bare metal user cluster and its node pools to the Anthos On-Prem API within a given project and location. Through enrollment, an existing cluster will become Anthos On-Prem API managed. The corresponding GCP resources will be created and all future modifications to the cluster and/or its node pools will be expected to be performed through the API.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent of the project and location where the cluster is enrolled in. Format: "projects/{project}/locati... |

**Request body**: `EnrollBareMetalClusterRequest`

**Response**: `Operation`

```typescript
const res = await gkeonprem.bareMetalClusters.enroll({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.bareMetalClusters.queryVersionConfig`

**POST** `v1/{+parent}/bareMetalClusters:queryVersionConfig`

Queries the bare metal user cluster version config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent of the project and location to query for version config. Format: "projects/{project}/locations/{... |
| `createConfig.adminClusterMembership` | `string` | query | No | The admin cluster membership. This is the full resource name of the admin cluster's fleet membership. Format: "projec... |
| `createConfig.adminClusterName` | `string` | query | No | The admin cluster resource name. This is the full resource name of the admin cluster resource. Format: "projects/{pro... |
| `upgradeConfig.clusterName` | `string` | query | No | The user cluster resource name. This is the full resource name of the user cluster resource. Format: "projects/{proje... |

**Response**: `QueryBareMetalVersionConfigResponse`

```typescript
const res = await gkeonprem.bareMetalClusters.queryVersionConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.bareMetalClusters.list`

**GET** `v1/{+parent}/bareMetalClusters`

Lists bare metal clusters in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent of the project and location where the clusters are listed in. Format: "projects/{project}/locati... |
| `allowMissing` | `boolean` | query | No | Optional. If true, return list of BareMetal Clusters including the ones that only exists in RMS. |
| `filter` | `string` | query | No | A resource filtering expression following https://google.aip.dev/160. When non-empty, only resource's whose attribute... |
| `pageSize` | `integer` | query | No | Requested page size. Server may return fewer items than requested. If unspecified, at most 50 clusters will be return... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. |
| `view` | `string` | query | No | View for bare metal Clusters. When `BASIC` is specified, only the cluster resource name and admin cluster membership ... |

**Response**: `ListBareMetalClustersResponse`

```typescript
const res = await gkeonprem.bareMetalClusters.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.bareMetalClusters.create`

**POST** `v1/{+parent}/bareMetalClusters`

Creates a new bare metal cluster in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent of the project and location where the cluster is created in. Format: "projects/{project}/locatio... |
| `allowPreflightFailure` | `boolean` | query | No | Optional. If set to true, CLM will force CCFE to persist the cluster resource in RMS when the creation fails during s... |
| `bareMetalClusterId` | `string` | query | No | Required. User provided identifier that is used as part of the resource name; must conform to RFC-1034 and additional... |
| `validateOnly` | `boolean` | query | No | Validate the request without actually doing any updates. |

**Request body**: `BareMetalCluster`

**Response**: `Operation`

```typescript
const res = await gkeonprem.bareMetalClusters.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.bareMetalClusters.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await gkeonprem.bareMetalClusters.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.bareMetalClusters.bareMetalNodePools.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await gkeonprem.bareMetalNodePools.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.bareMetalClusters.bareMetalNodePools.enroll`

**POST** `v1/{+parent}/bareMetalNodePools:enroll`

Enrolls an existing bare metal node pool to the Anthos On-Prem API within a given project and location. Through enrollment, an existing node pool will become Anthos On-Prem API managed. The corresponding GCP resources will be created.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this node pool will be created. projects/{project}/locations/{location}/bareMetal... |

**Request body**: `EnrollBareMetalNodePoolRequest`

**Response**: `Operation`

```typescript
const res = await gkeonprem.bareMetalNodePools.enroll({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.bareMetalClusters.bareMetalNodePools.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await gkeonprem.bareMetalNodePools.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.bareMetalClusters.bareMetalNodePools.unenroll`

**DELETE** `v1/{+name}:unenroll`

Unenrolls a bare metal node pool from Anthos On-Prem API.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the node pool to unenroll. Format: projects/{project}/locations/{location}/bareMetalClusters/{c... |
| `allowMissing` | `boolean` | query | No | If set to true, and the bare metal node pool is not found, the request will succeed but no action will be taken on th... |
| `etag` | `string` | query | No | The current etag of the bare metal node pool. If an etag is provided and does not match the current etag of node pool... |
| `validateOnly` | `boolean` | query | No | If set, only validate the request, but do not actually unenroll the node pool. |

**Response**: `Operation`

```typescript
const res = await gkeonprem.bareMetalNodePools.unenroll({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.bareMetalClusters.bareMetalNodePools.get`

**GET** `v1/{+name}`

Gets details of a single bare metal node pool.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the node pool to retrieve. projects/{project}/locations/{location}/bareMetalClusters/{cluster}/... |
| `view` | `string` | query | No | View for bare metal node pool. When `BASIC` is specified, only the node pool resource name is returned. The default/u... |

**Response**: `BareMetalNodePool`

```typescript
const res = await gkeonprem.bareMetalNodePools.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.bareMetalClusters.bareMetalNodePools.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await gkeonprem.bareMetalNodePools.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.bareMetalClusters.bareMetalNodePools.delete`

**DELETE** `v1/{+name}`

Deletes a single bare metal node pool.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the node pool to delete. Format: projects/{project}/locations/{location}/bareMetalClusters/{clu... |
| `allowMissing` | `boolean` | query | No | If set to true, and the bare metal node pool is not found, the request will succeed but no action will be taken on th... |
| `etag` | `string` | query | No | The current etag of the BareMetalNodePool. If an etag is provided and does not match the current etag of the node poo... |
| `ignoreErrors` | `boolean` | query | No | If set to true, the deletion of a bare metal node pool resource will succeed even if errors occur during deletion. Th... |
| `validateOnly` | `boolean` | query | No | If set, only validate the request, but do not actually delete the node pool. |

**Response**: `Operation`

```typescript
const res = await gkeonprem.bareMetalNodePools.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.bareMetalClusters.bareMetalNodePools.list`

**GET** `v1/{+parent}/bareMetalNodePools`

Lists bare metal node pools in a given project, location and bare metal cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of node pools. Format: projects/{project}/locations/{location}/bareM... |
| `pageSize` | `integer` | query | No | The maximum number of node pools to return. The service may return fewer than this value. If unspecified, at most 50 ... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListBareMetalNodePools` call. Provide this to retrieve the subsequent page. W... |
| `view` | `string` | query | No | View for bare metal node pools. When `BASIC` is specified, only the node pool resource name is returned. The default/... |

**Response**: `ListBareMetalNodePoolsResponse`

```typescript
const res = await gkeonprem.bareMetalNodePools.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.bareMetalClusters.bareMetalNodePools.create`

**POST** `v1/{+parent}/bareMetalNodePools`

Creates a new bare metal node pool in a given project, location and Bare Metal cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this node pool will be created. projects/{project}/locations/{location}/bareMetal... |
| `bareMetalNodePoolId` | `string` | query | No | The ID to use for the node pool, which will become the final component of the node pool's resource name. This value m... |
| `validateOnly` | `boolean` | query | No | If set, only validate the request, but do not actually create the node pool. |

**Request body**: `BareMetalNodePool`

**Response**: `Operation`

```typescript
const res = await gkeonprem.bareMetalNodePools.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.bareMetalClusters.bareMetalNodePools.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single bare metal node pool.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The bare metal node pool resource name. |
| `allowMissing` | `boolean` | query | No | If set to true, and the bare metal node pool is not found, the request will create a new bare metal node pool with th... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the BareMetalNodePool resource by the update.... |
| `validateOnly` | `boolean` | query | No | Validate the request without actually doing any updates. |

**Request body**: `BareMetalNodePool`

**Response**: `Operation`

```typescript
const res = await gkeonprem.bareMetalNodePools.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.bareMetalClusters.bareMetalNodePools.operations.list`

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
const res = await gkeonprem.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.bareMetalClusters.bareMetalNodePools.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await gkeonprem.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.bareMetalClusters.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await gkeonprem.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.bareMetalClusters.operations.list`

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
const res = await gkeonprem.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await gkeonprem.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await gkeonprem.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.operations.list`

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
const res = await gkeonprem.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await gkeonprem.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.vmwareClusters.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await gkeonprem.vmwareClusters.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.vmwareClusters.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await gkeonprem.vmwareClusters.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.vmwareClusters.list`

**GET** `v1/{+parent}/vmwareClusters`

Lists VMware Clusters in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent of the project and location where the clusters are listed in. Format: "projects/{project}/locati... |
| `allowMissing` | `boolean` | query | No | Optional. If true, return list of Vmware Clusters including the ones that only exists in RMS. |
| `filter` | `string` | query | No | A resource filtering expression following https://google.aip.dev/160. When non-empty, only resource's whose attribute... |
| `pageSize` | `integer` | query | No | Requested page size. Server may return fewer items than requested. If unspecified, at most 50 clusters will be return... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. |
| `view` | `string` | query | No | View for VMware clusters. When `BASIC` is specified, only the cluster resource name and admin cluster membership are ... |

**Response**: `ListVmwareClustersResponse`

```typescript
const res = await gkeonprem.vmwareClusters.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.vmwareClusters.create`

**POST** `v1/{+parent}/vmwareClusters`

Creates a new VMware user cluster in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent of the project and location where this cluster is created in. Format: "projects/{project}/locati... |
| `allowPreflightFailure` | `boolean` | query | No | Optional. If set to true, CLM will force CCFE to persist the cluster resource in RMS when the creation fails during s... |
| `skipValidations` | `string` | query | No | Optional. List of validations to skip during cluster creation. |
| `validateOnly` | `boolean` | query | No | Validate the request without actually doing any updates. |
| `vmwareClusterId` | `string` | query | No | User provided identifier that is used as part of the resource name; This value must be up to 40 characters and follow... |

**Request body**: `VmwareCluster`

**Response**: `Operation`

```typescript
const res = await gkeonprem.vmwareClusters.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.vmwareClusters.unenroll`

**DELETE** `v1/{+name}:unenroll`

Unenrolls an existing VMware user cluster and its node pools from the Anthos On-Prem API within a given project and location. Unenrollment removes the Cloud reference to the cluster without modifying the underlying OnPrem Resources. Clusters and node pools will continue to run; however, they will no longer be accessible through the Anthos On-Prem API or UI.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the VMware user cluster to be unenrolled. Format: "projects/{project}/locations/{location}/vmwareCl... |
| `allowMissing` | `boolean` | query | No | If set to true, and the VMware cluster is not found, the request will succeed but no action will be taken on the serv... |
| `etag` | `string` | query | No | The current etag of the VMware Cluster. If an etag is provided and does not match the current etag of the cluster, de... |
| `force` | `boolean` | query | No | This is required if the cluster has any associated node pools. When set, any child node pools will also be unenrolled. |
| `validateOnly` | `boolean` | query | No | Validate the request without actually doing any updates. |

**Response**: `Operation`

```typescript
const res = await gkeonprem.vmwareClusters.unenroll({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.vmwareClusters.delete`

**DELETE** `v1/{+name}`

Deletes a single VMware Cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the VMware user cluster to be deleted. Format: "projects/{project}/locations/{location}/vmwareClust... |
| `allowMissing` | `boolean` | query | No | If set to true, and the VMware cluster is not found, the request will succeed but no action will be taken on the serv... |
| `etag` | `string` | query | No | The current etag of the VMware cluster. If an etag is provided and does not match the current etag of the cluster, de... |
| `force` | `boolean` | query | No | If set to true, any node pools from the cluster will also be deleted. |
| `ignoreErrors` | `boolean` | query | No | If set to true, the deletion of a VMware user cluster resource will succeed even if errors occur during deletion. Thi... |
| `validateOnly` | `boolean` | query | No | Validate the request without actually doing any updates. |

**Response**: `Operation`

```typescript
const res = await gkeonprem.vmwareClusters.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.vmwareClusters.enroll`

**POST** `v1/{+parent}/vmwareClusters:enroll`

Enrolls an existing VMware user cluster and its node pools to the Anthos On-Prem API within a given project and location. Through enrollment, an existing cluster will become Anthos On-Prem API managed. The corresponding GCP resources will be created and all future modifications to the cluster and/or its node pools will be expected to be performed through the API.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent of the project and location where the cluster is Enrolled in. Format: "projects/{project}/locati... |

**Request body**: `EnrollVmwareClusterRequest`

**Response**: `Operation`

```typescript
const res = await gkeonprem.vmwareClusters.enroll({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.vmwareClusters.queryVersionConfig`

**POST** `v1/{+parent}/vmwareClusters:queryVersionConfig`

Queries the VMware user cluster version config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent of the project and location to query for version config. Format: "projects/{project}/locations/{... |
| `createConfig.adminClusterMembership` | `string` | query | No | The admin cluster membership. This is the full resource name of the admin cluster's fleet membership. Format: "projec... |
| `createConfig.adminClusterName` | `string` | query | No | The admin cluster resource name. This is the full resource name of the admin cluster resource. Format: "projects/{pro... |
| `upgradeConfig.clusterName` | `string` | query | No | The user cluster resource name. This is the full resource name of the user cluster resource. Format: "projects/{proje... |

**Response**: `QueryVmwareVersionConfigResponse`

```typescript
const res = await gkeonprem.vmwareClusters.queryVersionConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.vmwareClusters.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single VMware cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The VMware user cluster resource name. |
| `skipValidations` | `string` | query | No |  |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the VMwareCluster resource by the update. The... |
| `validateOnly` | `boolean` | query | No | Validate the request without actually doing any updates. |

**Request body**: `VmwareCluster`

**Response**: `Operation`

```typescript
const res = await gkeonprem.vmwareClusters.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.vmwareClusters.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await gkeonprem.vmwareClusters.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.vmwareClusters.get`

**GET** `v1/{+name}`

Gets details of a single VMware Cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the VMware user cluster to be returned. Format: "projects/{project}/locations/{location}/vmwareClus... |
| `allowMissing` | `boolean` | query | No | Optional. If true, return Vmware Cluster including the one that only exists in RMS. |
| `view` | `string` | query | No | View for VMware user cluster. When `BASIC` is specified, only the cluster resource name and admin cluster membership ... |

**Response**: `VmwareCluster`

```typescript
const res = await gkeonprem.vmwareClusters.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.vmwareClusters.operations.list`

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
const res = await gkeonprem.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.vmwareClusters.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await gkeonprem.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.vmwareClusters.vmwareNodePools.delete`

**DELETE** `v1/{+name}`

Deletes a single VMware node pool.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the node pool to delete. Format: projects/{project}/locations/{location}/vmwareClusters/{cluste... |
| `allowMissing` | `boolean` | query | No | If set to true, and the VMware node pool is not found, the request will succeed but no action will be taken on the se... |
| `etag` | `string` | query | No | The current etag of the VmwareNodePool. If an etag is provided and does not match the current etag of the node pool, ... |
| `ignoreErrors` | `boolean` | query | No | If set to true, the deletion of a VMware node pool resource will succeed even if errors occur during deletion. This p... |
| `validateOnly` | `boolean` | query | No | If set, only validate the request, but do not actually delete the node pool. |

**Response**: `Operation`

```typescript
const res = await gkeonprem.vmwareNodePools.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.vmwareClusters.vmwareNodePools.list`

**GET** `v1/{+parent}/vmwareNodePools`

Lists VMware node pools in a given project, location and VMWare cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of node pools. Format: projects/{project}/locations/{location}/vmwar... |
| `pageSize` | `integer` | query | No | The maximum number of node pools to return. The service may return fewer than this value. If unspecified, at most 50 ... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListVmwareNodePools` call. Provide this to retrieve the subsequent page. When... |
| `view` | `string` | query | No | View for VMware node pools. When `BASIC` is specified, only the node pool resource name is returned. The default/unse... |

**Response**: `ListVmwareNodePoolsResponse`

```typescript
const res = await gkeonprem.vmwareNodePools.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.vmwareClusters.vmwareNodePools.create`

**POST** `v1/{+parent}/vmwareNodePools`

Creates a new VMware node pool in a given project, location and VMWare cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this node pool will be created. projects/{project}/locations/{location}/vmwareClu... |
| `validateOnly` | `boolean` | query | No | If set, only validate the request, but do not actually create the node pool. |
| `vmwareNodePoolId` | `string` | query | No | The ID to use for the node pool, which will become the final component of the node pool's resource name. This value m... |

**Request body**: `VmwareNodePool`

**Response**: `Operation`

```typescript
const res = await gkeonprem.vmwareNodePools.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.vmwareClusters.vmwareNodePools.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await gkeonprem.vmwareNodePools.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.vmwareClusters.vmwareNodePools.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await gkeonprem.vmwareNodePools.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.vmwareClusters.vmwareNodePools.unenroll`

**DELETE** `v1/{+name}:unenroll`

Unenrolls a VMware node pool to Anthos On-Prem API

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the node pool to unenroll. Format: projects/{project}/locations/{location}/vmwareClusters/{clus... |
| `allowMissing` | `boolean` | query | No | If set to true, and the VMware node pool is not found, the request will succeed but no action will be taken on the se... |
| `etag` | `string` | query | No | The current etag of the VMware node pool. If an etag is provided and does not match the current etag of node pool, de... |
| `validateOnly` | `boolean` | query | No | If set, only validate the request, but do not actually unenroll the node pool. |

**Response**: `Operation`

```typescript
const res = await gkeonprem.vmwareNodePools.unenroll({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.vmwareClusters.vmwareNodePools.enroll`

**POST** `v1/{+parent}/vmwareNodePools:enroll`

Enrolls a VMware node pool to Anthos On-Prem API

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where the node pool is enrolled in. |

**Request body**: `EnrollVmwareNodePoolRequest`

**Response**: `Operation`

```typescript
const res = await gkeonprem.vmwareNodePools.enroll({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.vmwareClusters.vmwareNodePools.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await gkeonprem.vmwareNodePools.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.vmwareClusters.vmwareNodePools.get`

**GET** `v1/{+name}`

Gets details of a single VMware node pool.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the node pool to retrieve. projects/{project}/locations/{location}/vmwareClusters/{cluster}/vmw... |
| `view` | `string` | query | No | View for VMware node pool. When `BASIC` is specified, only the node pool resource name is returned. The default/unset... |

**Response**: `VmwareNodePool`

```typescript
const res = await gkeonprem.vmwareNodePools.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.vmwareClusters.vmwareNodePools.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single VMware node pool.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The resource name of this node pool. |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the VMwareNodePool resource by the update. Th... |
| `validateOnly` | `boolean` | query | No | Validate the request without actually doing any updates. |

**Request body**: `VmwareNodePool`

**Response**: `Operation`

```typescript
const res = await gkeonprem.vmwareNodePools.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.vmwareClusters.vmwareNodePools.operations.list`

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
const res = await gkeonprem.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.vmwareClusters.vmwareNodePools.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await gkeonprem.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.bareMetalAdminClusters.list`

**GET** `v1/{+parent}/bareMetalAdminClusters`

Lists bare metal admin clusters in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent of the project and location where the clusters are listed in. Format: "projects/{project}/locati... |
| `allowMissing` | `boolean` | query | No | Optional. If true, return list of BareMetal Admin Clusters including the ones that only exists in RMS. |
| `pageSize` | `integer` | query | No | Requested page size. Server may return fewer items than requested. If unspecified, at most 50 clusters will be return... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. |
| `view` | `string` | query | No | View for bare metal admin clusters. When `BASIC` is specified, only the admin cluster resource name and membership ar... |

**Response**: `ListBareMetalAdminClustersResponse`

```typescript
const res = await gkeonprem.bareMetalAdminClusters.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.bareMetalAdminClusters.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await gkeonprem.bareMetalAdminClusters.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.bareMetalAdminClusters.queryVersionConfig`

**POST** `v1/{+parent}/bareMetalAdminClusters:queryVersionConfig`

Queries the bare metal admin cluster version config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent of the project and location to query for version config. Format: "projects/{project}/locations/{... |
| `upgradeConfig.clusterName` | `string` | query | No | The admin cluster resource name. This is the full resource name of the admin cluster resource. Format: "projects/{pro... |

**Response**: `QueryBareMetalAdminVersionConfigResponse`

```typescript
const res = await gkeonprem.bareMetalAdminClusters.queryVersionConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.bareMetalAdminClusters.enroll`

**POST** `v1/{+parent}/bareMetalAdminClusters:enroll`

Enrolls an existing bare metal admin cluster to the Anthos On-Prem API within a given project and location. Through enrollment, an existing admin cluster will become Anthos On-Prem API managed. The corresponding GCP resources will be created and all future modifications to the cluster will be expected to be performed through the API.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent of the project and location where the cluster is enrolled in. Format: "projects/{project}/locati... |

**Request body**: `EnrollBareMetalAdminClusterRequest`

**Response**: `Operation`

```typescript
const res = await gkeonprem.bareMetalAdminClusters.enroll({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.bareMetalAdminClusters.unenroll`

**DELETE** `v1/{+name}:unenroll`

Unenrolls an existing bare metal admin cluster from the Anthos On-Prem API within a given project and location. Unenrollment removes the Cloud reference to the cluster without modifying the underlying OnPrem Resources. Clusters will continue to run; however, they will no longer be accessible through the Anthos On-Prem API or its clients.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the bare metal admin cluster to be unenrolled. Format: "projects/{project}/locations/{location}/bar... |
| `allowMissing` | `boolean` | query | No | If set to true, and the bare metal admin cluster is not found, the request will succeed but no action will be taken o... |
| `etag` | `string` | query | No | The current etag of the bare metal admin cluster. If an etag is provided and does not match the current etag of the c... |
| `ignoreErrors` | `boolean` | query | No | If set to true, the unenrollment of a bare metal admin cluster resource will succeed even if errors occur during unen... |
| `validateOnly` | `boolean` | query | No | Validate the request without actually doing any updates. |

**Response**: `Operation`

```typescript
const res = await gkeonprem.bareMetalAdminClusters.unenroll({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.bareMetalAdminClusters.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await gkeonprem.bareMetalAdminClusters.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.bareMetalAdminClusters.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single bare metal admin cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The bare metal admin cluster resource name. |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the BareMetalAdminCluster resource by the upd... |
| `validateOnly` | `boolean` | query | No | Validate the request without actually doing any updates. |

**Request body**: `BareMetalAdminCluster`

**Response**: `Operation`

```typescript
const res = await gkeonprem.bareMetalAdminClusters.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.bareMetalAdminClusters.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await gkeonprem.bareMetalAdminClusters.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.bareMetalAdminClusters.create`

**POST** `v1/{+parent}/bareMetalAdminClusters`

Creates a new bare metal admin cluster in a given project and location. The API needs to be combined with creating a bootstrap cluster to work. See: https://cloud.google.com/anthos/clusters/docs/bare-metal/latest/installing/creating-clusters/create-admin-cluster-api#prepare_bootstrap_environment

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent of the project and location where the cluster is created in. Format: "projects/{project}/locatio... |
| `allowPreflightFailure` | `boolean` | query | No | Optional. If set to true, CLM will force CCFE to persist the cluster resource in RMS when the creation fails during s... |
| `bareMetalAdminClusterId` | `string` | query | No | Required. User provided identifier that is used as part of the resource name; must conform to RFC-1034 and additional... |
| `validateOnly` | `boolean` | query | No | Validate the request without actually doing any updates. |

**Request body**: `BareMetalAdminCluster`

**Response**: `Operation`

```typescript
const res = await gkeonprem.bareMetalAdminClusters.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.bareMetalAdminClusters.get`

**GET** `v1/{+name}`

Gets details of a single bare metal admin cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the bare metal admin cluster to get. Format: "projects/{project}/locations/{location}/bareMetalAdmi... |
| `allowMissing` | `boolean` | query | No | Optional. If true, return BareMetal Admin Cluster including the one that only exists in RMS. |
| `view` | `string` | query | No | View for bare metal admin cluster. When `BASIC` is specified, only the cluster resource name and membership are retur... |

**Response**: `BareMetalAdminCluster`

```typescript
const res = await gkeonprem.bareMetalAdminClusters.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.bareMetalAdminClusters.operations.list`

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
const res = await gkeonprem.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.bareMetalAdminClusters.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await gkeonprem.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.vmwareAdminClusters.create`

**POST** `v1/{+parent}/vmwareAdminClusters`

Creates a new VMware admin cluster in a given project and location. The API needs to be combined with creating a bootstrap cluster to work.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent of the project and location where the cluster is created in. Format: "projects/{project}/locatio... |
| `allowPreflightFailure` | `boolean` | query | No | Optional. If set to true, CLM will force CCFE to persist the cluster resource in RMS when the creation fails during s... |
| `skipValidations` | `string` | query | No | Optional. If set, skip the specified validations. |
| `validateOnly` | `boolean` | query | No | Validate the request without actually doing any updates. |
| `vmwareAdminClusterId` | `string` | query | No | Required. User provided identifier that is used as part of the resource name; must conform to RFC-1034 and additional... |

**Request body**: `VmwareAdminCluster`

**Response**: `Operation`

```typescript
const res = await gkeonprem.vmwareAdminClusters.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.vmwareAdminClusters.get`

**GET** `v1/{+name}`

Gets details of a single VMware admin cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the VMware admin cluster to be returned. Format: "projects/{project}/locations/{location}/vmwareAdm... |
| `allowMissing` | `boolean` | query | No | Optional. If true, return Vmware Admin Cluster including the one that only exists in RMS. |
| `view` | `string` | query | No | View for VMware admin cluster. When `BASIC` is specified, only the cluster resource name and membership are returned.... |

**Response**: `VmwareAdminCluster`

```typescript
const res = await gkeonprem.vmwareAdminClusters.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.vmwareAdminClusters.enroll`

**POST** `v1/{+parent}/vmwareAdminClusters:enroll`

Enrolls an existing VMware admin cluster to the Anthos On-Prem API within a given project and location. Through enrollment, an existing admin cluster will become Anthos On-Prem API managed. The corresponding GCP resources will be created and all future modifications to the cluster will be expected to be performed through the API.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent of the project and location where the cluster is enrolled in. Format: "projects/{project}/locati... |

**Request body**: `EnrollVmwareAdminClusterRequest`

**Response**: `Operation`

```typescript
const res = await gkeonprem.vmwareAdminClusters.enroll({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.vmwareAdminClusters.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single VMware admin cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The VMware admin cluster resource name. |
| `skipValidations` | `string` | query | No | Optional. If set, the server-side preflight checks will be skipped. |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the VMwareAdminCluster resource by the update... |
| `validateOnly` | `boolean` | query | No | Validate the request without actually doing any updates. |

**Request body**: `VmwareAdminCluster`

**Response**: `Operation`

```typescript
const res = await gkeonprem.vmwareAdminClusters.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.vmwareAdminClusters.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await gkeonprem.vmwareAdminClusters.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.vmwareAdminClusters.unenroll`

**DELETE** `v1/{+name}:unenroll`

Unenrolls an existing VMware admin cluster from the Anthos On-Prem API within a given project and location. Unenrollment removes the Cloud reference to the cluster without modifying the underlying OnPrem Resources. Clusters will continue to run; however, they will no longer be accessible through the Anthos On-Prem API or its clients.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the VMware admin cluster to be unenrolled. Format: "projects/{project}/locations/{location}/vmwareA... |
| `allowMissing` | `boolean` | query | No | If set to true, and the VMware admin cluster is not found, the request will succeed but no action will be taken on th... |
| `etag` | `string` | query | No | The current etag of the VMware admin cluster. If an etag is provided and does not match the current etag of the clust... |
| `ignoreErrors` | `boolean` | query | No | Optional. If set to true, the unenrollment of a vmware admin cluster resource will succeed even if errors occur durin... |
| `validateOnly` | `boolean` | query | No | Validate the request without actually doing any updates. |

**Response**: `Operation`

```typescript
const res = await gkeonprem.vmwareAdminClusters.unenroll({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.vmwareAdminClusters.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await gkeonprem.vmwareAdminClusters.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.vmwareAdminClusters.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await gkeonprem.vmwareAdminClusters.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.vmwareAdminClusters.list`

**GET** `v1/{+parent}/vmwareAdminClusters`

Lists VMware admin clusters in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent of the project and location where the clusters are listed in. Format: "projects/{project}/locati... |
| `allowMissing` | `boolean` | query | No | Optional. If true, return list of Vmware Admin Clusters including the ones that only exists in RMS. |
| `pageSize` | `integer` | query | No | Requested page size. Server may return fewer items than requested. If unspecified, at most 50 clusters will be return... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. |
| `view` | `string` | query | No | View for VMware admin clusters. When `BASIC` is specified, only the admin cluster resource name and membership are re... |

**Response**: `ListVmwareAdminClustersResponse`

```typescript
const res = await gkeonprem.vmwareAdminClusters.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.vmwareAdminClusters.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await gkeonprem.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `gkeonprem.projects.locations.vmwareAdminClusters.operations.list`

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
const res = await gkeonprem.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `Authorization`

Authorization defines the On-Prem cluster authorization configuration to bootstrap onto the admin cluster.

| Property | Type | Description |
|----------|------|-------------|
| `adminUsers` | `array<ClusterUser>` | For VMware and bare metal user clusters, users will be granted the cluster-admin role on the clus... |

### `BareMetalAdminApiServerArgument`

BareMetalAdminApiServerArgument represents an arg name->value pair. Only a subset of customized flags are supported. Please refer to the API server documentation below to know the exact format: https://kubernetes.io/docs/reference/command-line-tools-reference/kube-apiserver/

| Property | Type | Description |
|----------|------|-------------|
| `argument` | `string` | Required. The argument name as it appears on the API Server command line please make sure to remo... |
| `value` | `string` | Required. The value of the arg as it will be passed to the API Server command line. |

### `BareMetalAdminBgpLbConfig`

BareMetalAdminBgpLbConfig represents configuration parameters for a Border Gateway Protocol (BGP) load balancer.

| Property | Type | Description |
|----------|------|-------------|
| `addressPools` | `array<BareMetalAdminLoadBalancerAddressPool>` | Required. AddressPools is a list of non-overlapping IP pools used by load balancer typed services... |
| `asn` | `string` | Required. BGP autonomous system number (ASN) of the cluster. This field can be updated after clus... |
| `bgpPeerConfigs` | `array<BareMetalAdminBgpPeerConfig>` | Required. The list of BGP peers that the cluster will connect to. At least one peer must be confi... |
| `loadBalancerNodePoolConfig` | `BareMetalAdminLoadBalancerNodePoolConfig` | Specifies the node pool running data plane load balancing. L2 connectivity is required among node... |

### `BareMetalAdminBgpPeerConfig`

BareMetalAdminBgpPeerConfig represents configuration parameters for a Border Gateway Protocol (BGP) peer.

| Property | Type | Description |
|----------|------|-------------|
| `asn` | `string` | Required. BGP autonomous system number (ASN) for the network that contains the external peer device. |
| `controlPlaneNodes` | `array<string>` | The IP address of the control plane node that connects to the external peer. If you don't specify... |
| `ipAddress` | `string` | Required. The IP address of the external peer device. |

### `BareMetalAdminCluster`

Resource that represents a bare metal admin cluster.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Annotations on the bare metal admin cluster. This field has the same restrictions as Kubernetes a... |
| `bareMetalVersion` | `string` | The Anthos clusters on bare metal version for the bare metal admin cluster. |
| `binaryAuthorization` | `BinaryAuthorization` | Binary Authorization related configurations. |
| `clusterOperations` | `BareMetalAdminClusterOperationsConfig` | Cluster operations configuration. |
| `controlPlane` | `BareMetalAdminControlPlaneConfig` | Control plane configuration. |
| `createTime` | `string` | Output only. The time at which this bare metal admin cluster was created. |
| `deleteTime` | `string` | Output only. The time at which this bare metal admin cluster was deleted. If the resource is not ... |
| `description` | `string` | A human readable description of this bare metal admin cluster. |
| `endpoint` | `string` | Output only. The IP address name of bare metal admin cluster's API server. |
| `etag` | `string` | This checksum is computed by the server based on the value of other fields, and may be sent on up... |
| `fleet` | `Fleet` | Output only. Fleet configuration for the cluster. |
| `loadBalancer` | `BareMetalAdminLoadBalancerConfig` | Load balancer configuration. |
| `localName` | `string` | Output only. The object name of the bare metal cluster custom resource. This field is used to sup... |
| `maintenanceConfig` | `BareMetalAdminMaintenanceConfig` | Maintenance configuration. |
| `maintenanceStatus` | `BareMetalAdminMaintenanceStatus` | Output only. MaintenanceStatus representing state of maintenance. |
| `name` | `string` | Immutable. The bare metal admin cluster resource name. |
| `networkConfig` | `BareMetalAdminNetworkConfig` | Network configuration. |
| `nodeAccessConfig` | `BareMetalAdminNodeAccessConfig` | Node access related configurations. |
| `nodeConfig` | `BareMetalAdminWorkloadNodeConfig` | Workload node configuration. |
| `osEnvironmentConfig` | `BareMetalAdminOsEnvironmentConfig` | OS environment related configurations. |
| `proxy` | `BareMetalAdminProxyConfig` | Proxy configuration. |
| `reconciling` | `boolean` | Output only. If set, there are currently changes in flight to the bare metal Admin Cluster. |
| `securityConfig` | `BareMetalAdminSecurityConfig` | Security related configuration. |
| `state` | `string` | Output only. The current state of the bare metal admin cluster. |
| `status` | `ResourceStatus` | Output only. ResourceStatus representing detailed cluster status. |
| `storage` | `BareMetalAdminStorageConfig` | Storage configuration. |
| `uid` | `string` | Output only. The unique identifier of the bare metal admin cluster. |
| `updateTime` | `string` | Output only. The time at which this bare metal admin cluster was last updated. |
| `validationCheck` | `ValidationCheck` | Output only. ValidationCheck representing the result of the preflight check. |

### `BareMetalAdminClusterOperationsConfig`

BareMetalAdminClusterOperationsConfig specifies the admin cluster's observability infrastructure.

| Property | Type | Description |
|----------|------|-------------|
| `enableApplicationLogs` | `boolean` | Whether collection of application logs/metrics should be enabled (in addition to system logs/metr... |

### `BareMetalAdminControlPlaneConfig`

BareMetalAdminControlPlaneConfig specifies the control plane configuration.

| Property | Type | Description |
|----------|------|-------------|
| `apiServerArgs` | `array<BareMetalAdminApiServerArgument>` | Customizes the default API server args. Only a subset of customized flags are supported. Please r... |
| `controlPlaneNodePoolConfig` | `BareMetalAdminControlPlaneNodePoolConfig` | Required. Configures the node pool running the control plane. If specified the corresponding Node... |

### `BareMetalAdminControlPlaneNodePoolConfig`

BareMetalAdminControlPlaneNodePoolConfig specifies the control plane node pool configuration. We have a control plane specific node pool config so that we can flexible about supporting control plane specific fields in the future.

| Property | Type | Description |
|----------|------|-------------|
| `nodePoolConfig` | `BareMetalNodePoolConfig` | Required. The generic configuration for a node pool running the control plane. |

### `BareMetalAdminDrainedMachine`

BareMetalAdminDrainedMachine represents the machines that are drained.

| Property | Type | Description |
|----------|------|-------------|
| `nodeIp` | `string` | Drained machine IP address. |

### `BareMetalAdminDrainingMachine`

BareMetalAdminDrainingMachine represents the machines that are currently draining.

| Property | Type | Description |
|----------|------|-------------|
| `nodeIp` | `string` | Draining machine IP address. |
| `podCount` | `integer` | The count of pods yet to drain. |

### `BareMetalAdminIslandModeCidrConfig`

BareMetalAdminIslandModeCidrConfig specifies the cluster CIDR configuration while running in island mode.

| Property | Type | Description |
|----------|------|-------------|
| `podAddressCidrBlocks` | `array<string>` | Required. All pods in the cluster are assigned an RFC1918 IPv4 address from these ranges. This fi... |
| `serviceAddressCidrBlocks` | `array<string>` | Required. All services in the cluster are assigned an RFC1918 IPv4 address from these ranges. Thi... |

### `BareMetalAdminLoadBalancerAddressPool`

Represents an IP pool used by the load balancer.

| Property | Type | Description |
|----------|------|-------------|
| `addresses` | `array<string>` | Required. The addresses that are part of this pool. Each address must be either in the CIDR form ... |
| `avoidBuggyIps` | `boolean` | If true, avoid using IPs ending in .0 or .255. This avoids buggy consumer devices mistakenly drop... |
| `manualAssign` | `boolean` | If true, prevent IP addresses from being automatically assigned. |
| `pool` | `string` | Required. The name of the address pool. |

### `BareMetalAdminLoadBalancerConfig`

BareMetalAdminLoadBalancerConfig specifies the load balancer configuration.

| Property | Type | Description |
|----------|------|-------------|
| `bgpLbConfig` | `BareMetalAdminBgpLbConfig` | Configuration for BGP typed load balancers. |
| `manualLbConfig` | `BareMetalAdminManualLbConfig` | Manually configured load balancers. |
| `portConfig` | `BareMetalAdminPortConfig` | Configures the ports that the load balancer will listen on. |
| `vipConfig` | `BareMetalAdminVipConfig` | The VIPs used by the load balancer. |

### `BareMetalAdminLoadBalancerNodePoolConfig`

Specifies the load balancer's node pool configuration.

| Property | Type | Description |
|----------|------|-------------|
| `nodePoolConfig` | `BareMetalNodePoolConfig` | The generic configuration for a node pool running a load balancer. |

### `BareMetalAdminMachineDrainStatus`

BareMetalAdminMachineDrainStatus represents the status of bare metal node machines that are undergoing drain operations.

| Property | Type | Description |
|----------|------|-------------|
| `drainedMachines` | `array<BareMetalAdminDrainedMachine>` | The list of drained machines. |
| `drainingMachines` | `array<BareMetalAdminDrainingMachine>` | The list of draning machines. |

### `BareMetalAdminMaintenanceConfig`

BareMetalAdminMaintenanceConfig specifies configurations to put bare metal Admin cluster CRs nodes in and out of maintenance.

| Property | Type | Description |
|----------|------|-------------|
| `maintenanceAddressCidrBlocks` | `array<string>` | Required. All IPv4 address from these ranges will be placed into maintenance mode. Nodes in maint... |

### `BareMetalAdminMaintenanceStatus`

BareMetalAdminMaintenanceStatus represents the maintenance status for bare metal Admin cluster CR's nodes.

| Property | Type | Description |
|----------|------|-------------|
| `machineDrainStatus` | `BareMetalAdminMachineDrainStatus` | Represents the status of draining and drained machine nodes. This is used to show the progress of... |

### `BareMetalAdminManualLbConfig`

BareMetalAdminManualLbConfig represents configuration parameters for a manual load balancer.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether manual load balancing is enabled. |

### `BareMetalAdminMultipleNetworkInterfacesConfig`

Specifies the multiple networking interfaces cluster configuration.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether to enable multiple network interfaces for your pods. When set network_config.advanced_net... |

### `BareMetalAdminNetworkConfig`

BareMetalAdminNetworkConfig specifies the cluster network configuration.

| Property | Type | Description |
|----------|------|-------------|
| `advancedNetworking` | `boolean` | Enables the use of advanced Anthos networking features, such as Bundled Load Balancing with BGP o... |
| `islandModeCidr` | `BareMetalAdminIslandModeCidrConfig` | Configuration for Island mode CIDR. |
| `multipleNetworkInterfacesConfig` | `BareMetalAdminMultipleNetworkInterfacesConfig` | Configuration for multiple network interfaces. |

### `BareMetalAdminNodeAccessConfig`

Specifies the node access related settings for the bare metal admin cluster.

| Property | Type | Description |
|----------|------|-------------|
| `loginUser` | `string` | Required. LoginUser is the user name used to access node machines. It defaults to "root" if not set. |

### `BareMetalAdminOsEnvironmentConfig`

Specifies operating system operation settings for cluster provisioning.

| Property | Type | Description |
|----------|------|-------------|
| `packageRepoExcluded` | `boolean` | Whether the package repo should be added when initializing bare metal machines. |

### `BareMetalAdminPortConfig`

BareMetalAdminPortConfig is the specification of load balancer ports.

| Property | Type | Description |
|----------|------|-------------|
| `controlPlaneLoadBalancerPort` | `integer` | The port that control plane hosted load balancers will listen on. |

### `BareMetalAdminProxyConfig`

BareMetalAdminProxyConfig specifies the cluster proxy configuration.

| Property | Type | Description |
|----------|------|-------------|
| `noProxy` | `array<string>` | A list of IPs, hostnames, and domains that should skip the proxy. Examples: ["127.0.0.1", "exampl... |
| `uri` | `string` | Required. Specifies the address of your proxy server. Examples: `http://domain` WARNING: Do not p... |

### `BareMetalAdminSecurityConfig`

Specifies the security related settings for the bare metal admin cluster.

| Property | Type | Description |
|----------|------|-------------|
| `authorization` | `Authorization` | Configures user access to the admin cluster. |

### `BareMetalAdminStorageConfig`

BareMetalAdminStorageConfig specifies the cluster storage configuration.

| Property | Type | Description |
|----------|------|-------------|
| `lvpNodeMountsConfig` | `BareMetalLvpConfig` | Required. Specifies the config for local PersistentVolumes backed by mounted node disks. These di... |
| `lvpShareConfig` | `BareMetalLvpShareConfig` | Required. Specifies the config for local PersistentVolumes backed by subdirectories in a shared f... |

### `BareMetalAdminVipConfig`

BareMetalAdminVipConfig for bare metal load balancer configurations.

| Property | Type | Description |
|----------|------|-------------|
| `controlPlaneVip` | `string` | The VIP which you previously set aside for the Kubernetes API of this bare metal admin cluster. |

### `BareMetalAdminWorkloadNodeConfig`

BareMetalAdminWorkloadNodeConfig specifies the workload node configurations.

| Property | Type | Description |
|----------|------|-------------|
| `maxPodsPerNode` | `string` | The maximum number of pods a node can run. The size of the CIDR range assigned to the node will b... |

### `BareMetalApiServerArgument`

Represents an arg name->value pair. Only a subset of customized flags are supported. For the exact format, refer to the [API server documentation](https://kubernetes.io/docs/reference/command-line-tools-reference/kube-apiserver/).

| Property | Type | Description |
|----------|------|-------------|
| `argument` | `string` | Required. The argument name as it appears on the API Server command line, make sure to remove the... |
| `value` | `string` | Required. The value of the arg as it will be passed to the API Server command line. |

### `BareMetalBgpLbConfig`

BareMetalBgpLbConfig represents configuration parameters for a Border Gateway Protocol (BGP) load balancer.

| Property | Type | Description |
|----------|------|-------------|
| `addressPools` | `array<BareMetalLoadBalancerAddressPool>` | Required. AddressPools is a list of non-overlapping IP pools used by load balancer typed services... |
| `asn` | `string` | Required. BGP autonomous system number (ASN) of the cluster. This field can be updated after clus... |
| `bgpPeerConfigs` | `array<BareMetalBgpPeerConfig>` | Required. The list of BGP peers that the cluster will connect to. At least one peer must be confi... |
| `loadBalancerNodePoolConfig` | `BareMetalLoadBalancerNodePoolConfig` | Specifies the node pool running data plane load balancing. L2 connectivity is required among node... |

### `BareMetalBgpPeerConfig`

BareMetalBgpPeerConfig represents configuration parameters for a Border Gateway Protocol (BGP) peer.

| Property | Type | Description |
|----------|------|-------------|
| `asn` | `string` | Required. BGP autonomous system number (ASN) for the network that contains the external peer device. |
| `controlPlaneNodes` | `array<string>` | The IP address of the control plane node that connects to the external peer. If you don't specify... |
| `ipAddress` | `string` | Required. The IP address of the external peer device. |

### `BareMetalCluster`

Resource that represents a bare metal user cluster.

| Property | Type | Description |
|----------|------|-------------|
| `adminClusterMembership` | `string` | Required. The admin cluster this bare metal user cluster belongs to. This is the full resource na... |
| `adminClusterName` | `string` | Output only. The resource name of the bare metal admin cluster managing this user cluster. |
| `annotations` | `object` | Annotations on the bare metal user cluster. This field has the same restrictions as Kubernetes an... |
| `bareMetalVersion` | `string` | Required. The Anthos clusters on bare metal version for your user cluster. |
| `binaryAuthorization` | `BinaryAuthorization` | Binary Authorization related configurations. |
| `clusterOperations` | `BareMetalClusterOperationsConfig` | Cluster operations configuration. |
| `controlPlane` | `BareMetalControlPlaneConfig` | Required. Control plane configuration. |
| `createTime` | `string` | Output only. The time when the bare metal user cluster was created. |
| `deleteTime` | `string` | Output only. The time when the bare metal user cluster was deleted. If the resource is not delete... |
| `description` | `string` | A human readable description of this bare metal user cluster. |
| `endpoint` | `string` | Output only. The IP address of the bare metal user cluster's API server. |
| `etag` | `string` | Output only. This checksum is computed by the server based on the value of other fields, and may ... |
| `fleet` | `Fleet` | Output only. Fleet configuration for the cluster. |
| `loadBalancer` | `BareMetalLoadBalancerConfig` | Required. Load balancer configuration. |
| `localName` | `string` | Output only. The object name of the bare metal user cluster custom resource on the associated adm... |
| `localNamespace` | `string` | Output only. The namespace of the cluster. |
| `maintenanceConfig` | `BareMetalMaintenanceConfig` | Maintenance configuration. |
| `maintenanceStatus` | `BareMetalMaintenanceStatus` | Output only. Status of on-going maintenance tasks. |
| `name` | `string` | Immutable. The bare metal user cluster resource name. |
| `networkConfig` | `BareMetalNetworkConfig` | Required. Network configuration. |
| `nodeAccessConfig` | `BareMetalNodeAccessConfig` | Node access related configurations. |
| `nodeConfig` | `BareMetalWorkloadNodeConfig` | Workload node configuration. |
| `osEnvironmentConfig` | `BareMetalOsEnvironmentConfig` | OS environment related configurations. |
| `proxy` | `BareMetalProxyConfig` | Proxy configuration. |
| `reconciling` | `boolean` | Output only. If set, there are currently changes in flight to the bare metal user cluster. |
| `securityConfig` | `BareMetalSecurityConfig` | Security related setting configuration. |
| `state` | `string` | Output only. The current state of the bare metal user cluster. |
| `status` | `ResourceStatus` | Output only. Detailed cluster status. |
| `storage` | `BareMetalStorageConfig` | Required. Storage configuration. |
| `uid` | `string` | Output only. The unique identifier of the bare metal user cluster. |
| `updateTime` | `string` | Output only. The time when the bare metal user cluster was last updated. |
| `upgradePolicy` | `BareMetalClusterUpgradePolicy` | The cluster upgrade policy. |
| `validationCheck` | `ValidationCheck` | Output only. The result of the preflight check. |

### `BareMetalClusterOperationsConfig`

Specifies the bare metal user cluster's observability infrastructure.

| Property | Type | Description |
|----------|------|-------------|
| `enableApplicationLogs` | `boolean` | Whether collection of application logs/metrics should be enabled (in addition to system logs/metr... |

### `BareMetalClusterUpgradePolicy`

BareMetalClusterUpgradePolicy defines the cluster upgrade policy.

| Property | Type | Description |
|----------|------|-------------|
| `pause` | `boolean` | Output only. Pause is used to show the upgrade pause status. It's view only for now. |
| `policy` | `string` | Specifies which upgrade policy to use. |

### `BareMetalControlPlaneConfig`

Specifies the control plane configuration.

| Property | Type | Description |
|----------|------|-------------|
| `apiServerArgs` | `array<BareMetalApiServerArgument>` | Customizes the default API server args. Only a subset of customized flags are supported. For the ... |
| `controlPlaneNodePoolConfig` | `BareMetalControlPlaneNodePoolConfig` | Required. Configures the node pool running the control plane. |

### `BareMetalControlPlaneNodePoolConfig`

Specifies the control plane node pool configuration.

| Property | Type | Description |
|----------|------|-------------|
| `nodePoolConfig` | `BareMetalNodePoolConfig` | Required. The generic configuration for a node pool running the control plane. |

### `BareMetalDrainedMachine`

Represents a machine that is currently drained.

| Property | Type | Description |
|----------|------|-------------|
| `nodeIp` | `string` | Drained machine IP address. |

### `BareMetalDrainingMachine`

Represents a machine that is currently draining.

| Property | Type | Description |
|----------|------|-------------|
| `nodeIp` | `string` | Draining machine IP address. |
| `podCount` | `integer` | The count of pods yet to drain. |

### `BareMetalIslandModeCidrConfig`

Specifies the cluster CIDR configuration while running in island mode.

| Property | Type | Description |
|----------|------|-------------|
| `podAddressCidrBlocks` | `array<string>` | Required. All pods in the cluster are assigned an RFC1918 IPv4 address from these ranges. This fi... |
| `serviceAddressCidrBlocks` | `array<string>` | Required. All services in the cluster are assigned an RFC1918 IPv4 address from these ranges. Thi... |

### `BareMetalKubeletConfig`

KubeletConfig defines the modifiable kubelet configurations for bare metal machines. Note: this list includes fields supported in GKE (see https://cloud.google.com/kubernetes-engine/docs/how-to/node-system-config#kubelet-options).

| Property | Type | Description |
|----------|------|-------------|
| `registryBurst` | `integer` | The maximum size of bursty pulls, temporarily allows pulls to burst to this number, while still n... |
| `registryPullQps` | `integer` | The limit of registry pulls per second. Setting this value to 0 means no limit. Updating this fie... |
| `serializeImagePullsDisabled` | `boolean` | Prevents the Kubelet from pulling multiple images at a time. We recommend *not* changing the defa... |

### `BareMetalLoadBalancerAddressPool`

Represents an IP pool used by the load balancer.

| Property | Type | Description |
|----------|------|-------------|
| `addresses` | `array<string>` | Required. The addresses that are part of this pool. Each address must be either in the CIDR form ... |
| `avoidBuggyIps` | `boolean` | If true, avoid using IPs ending in .0 or .255. This avoids buggy consumer devices mistakenly drop... |
| `manualAssign` | `boolean` | If true, prevent IP addresses from being automatically assigned. |
| `pool` | `string` | Required. The name of the address pool. |

### `BareMetalLoadBalancerConfig`

Specifies the load balancer configuration.

| Property | Type | Description |
|----------|------|-------------|
| `bgpLbConfig` | `BareMetalBgpLbConfig` | Configuration for BGP typed load balancers. When set network_config.advanced_networking is automa... |
| `manualLbConfig` | `BareMetalManualLbConfig` | Manually configured load balancers. |
| `metalLbConfig` | `BareMetalMetalLbConfig` | Configuration for MetalLB load balancers. |
| `portConfig` | `BareMetalPortConfig` | Configures the ports that the load balancer will listen on. |
| `vipConfig` | `BareMetalVipConfig` | The VIPs used by the load balancer. |

### `BareMetalLoadBalancerNodePoolConfig`

Specifies the load balancer's node pool configuration.

| Property | Type | Description |
|----------|------|-------------|
| `nodePoolConfig` | `BareMetalNodePoolConfig` | The generic configuration for a node pool running a load balancer. |

### `BareMetalLvpConfig`

Specifies the configs for local persistent volumes (PVs).

| Property | Type | Description |
|----------|------|-------------|
| `path` | `string` | Required. The host machine path. |
| `storageClass` | `string` | Required. The StorageClass name that PVs will be created with. |

### `BareMetalLvpShareConfig`

Specifies the configs for local persistent volumes under a shared file system.

| Property | Type | Description |
|----------|------|-------------|
| `lvpConfig` | `BareMetalLvpConfig` | Required. Defines the machine path and storage class for the LVP Share. |
| `sharedPathPvCount` | `integer` | The number of subdirectories to create under path. |

### `BareMetalMachineDrainStatus`

Represents the status of node machines that are undergoing drain operations.

| Property | Type | Description |
|----------|------|-------------|
| `drainedMachines` | `array<BareMetalDrainedMachine>` | The list of drained machines. |
| `drainingMachines` | `array<BareMetalDrainingMachine>` | The list of draning machines. |

### `BareMetalMaintenanceConfig`

Specifies configurations to put bare metal nodes in and out of maintenance.

| Property | Type | Description |
|----------|------|-------------|
| `maintenanceAddressCidrBlocks` | `array<string>` | Required. All IPv4 address from these ranges will be placed into maintenance mode. Nodes in maint... |

### `BareMetalMaintenanceStatus`

Represents the maintenance status of the bare metal user cluster.

| Property | Type | Description |
|----------|------|-------------|
| `machineDrainStatus` | `BareMetalMachineDrainStatus` | The maintenance status of node machines. |

### `BareMetalManualLbConfig`

Represents configuration parameters for a manual load balancer.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether manual load balancing is enabled. |

### `BareMetalMetalLbConfig`

Represents configuration parameters for a MetalLB load balancer.

| Property | Type | Description |
|----------|------|-------------|
| `addressPools` | `array<BareMetalLoadBalancerAddressPool>` | Required. AddressPools is a list of non-overlapping IP pools used by load balancer typed services... |
| `loadBalancerNodePoolConfig` | `BareMetalLoadBalancerNodePoolConfig` | Specifies the node pool running the load balancer. L2 connectivity is required among nodes in thi... |

### `BareMetalMultipleNetworkInterfacesConfig`

Specifies the multiple networking interfaces cluster configuration.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether to enable multiple network interfaces for your pods. When set network_config.advanced_net... |

### `BareMetalNetworkConfig`

Specifies the cluster network configuration.

| Property | Type | Description |
|----------|------|-------------|
| `advancedNetworking` | `boolean` | Enables the use of advanced Anthos networking features, such as Bundled Load Balancing with BGP o... |
| `islandModeCidr` | `BareMetalIslandModeCidrConfig` | Configuration for island mode CIDR. In an island-mode network, nodes have unique IP addresses, bu... |
| `multipleNetworkInterfacesConfig` | `BareMetalMultipleNetworkInterfacesConfig` | Configuration for multiple network interfaces. |
| `srIovConfig` | `BareMetalSrIovConfig` | Configuration for SR-IOV. |

### `BareMetalNodeAccessConfig`

Specifies the node access related settings for the bare metal user cluster.

| Property | Type | Description |
|----------|------|-------------|
| `loginUser` | `string` | LoginUser is the user name used to access node machines. It defaults to "root" if not set. |

### `BareMetalNodeConfig`

BareMetalNodeConfig lists machine addresses to access Nodes.

| Property | Type | Description |
|----------|------|-------------|
| `labels` | `object` | The labels assigned to this node. An object containing a list of key/value pairs. The labels here... |
| `nodeIp` | `string` | The default IPv4 address for SSH access and Kubernetes node. Example: 192.168.0.1 |

### `BareMetalNodePool`

Resource that represents a bare metal node pool.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Annotations on the bare metal node pool. This field has the same restrictions as Kubernetes annot... |
| `createTime` | `string` | Output only. The time at which this bare metal node pool was created. |
| `deleteTime` | `string` | Output only. The time at which this bare metal node pool was deleted. If the resource is not dele... |
| `displayName` | `string` | The display name for the bare metal node pool. |
| `etag` | `string` | This checksum is computed by the server based on the value of other fields, and may be sent on up... |
| `name` | `string` | Immutable. The bare metal node pool resource name. |
| `nodePoolConfig` | `BareMetalNodePoolConfig` | Required. Node pool configuration. |
| `reconciling` | `boolean` | Output only. If set, there are currently changes in flight to the bare metal node pool. |
| `state` | `string` | Output only. The current state of the bare metal node pool. |
| `status` | `ResourceStatus` | Output only. ResourceStatus representing the detailed node pool status. |
| `uid` | `string` | Output only. The unique identifier of the bare metal node pool. |
| `updateTime` | `string` | Output only. The time at which this bare metal node pool was last updated. |
| `upgradePolicy` | `BareMetalNodePoolUpgradePolicy` | The worker node pool upgrade policy. |

### `BareMetalNodePoolConfig`

BareMetalNodePoolConfig describes the configuration of all nodes within a given bare metal node pool.

| Property | Type | Description |
|----------|------|-------------|
| `kubeletConfig` | `BareMetalKubeletConfig` | The modifiable kubelet configurations for the bare metal machines. |
| `labels` | `object` | The labels assigned to nodes of this node pool. An object containing a list of key/value pairs. E... |
| `nodeConfigs` | `array<BareMetalNodeConfig>` | Required. The list of machine addresses in the bare metal node pool. |
| `operatingSystem` | `string` | Specifies the nodes operating system (default: LINUX). |
| `taints` | `array<NodeTaint>` | The initial taints assigned to nodes of this node pool. |

### `BareMetalNodePoolUpgradePolicy`

BareMetalNodePoolUpgradePolicy defines the node pool upgrade policy.

| Property | Type | Description |
|----------|------|-------------|
| `parallelUpgradeConfig` | `BareMetalParallelUpgradeConfig` | The parallel upgrade settings for worker node pools. |

### `BareMetalOsEnvironmentConfig`

Specifies operating system settings for cluster provisioning.

| Property | Type | Description |
|----------|------|-------------|
| `packageRepoExcluded` | `boolean` | Whether the package repo should not be included when initializing bare metal machines. |

### `BareMetalParallelUpgradeConfig`

BareMetalParallelUpgradeConfig defines the parallel upgrade settings for worker node pools.

| Property | Type | Description |
|----------|------|-------------|
| `concurrentNodes` | `integer` | The maximum number of nodes that can be upgraded at once. |
| `minimumAvailableNodes` | `integer` | The minimum number of nodes that should be healthy and available during an upgrade. If set to the... |

### `BareMetalPortConfig`

Specifies load balancer ports for the bare metal user cluster.

| Property | Type | Description |
|----------|------|-------------|
| `controlPlaneLoadBalancerPort` | `integer` | The port that control plane hosted load balancers will listen on. |

### `BareMetalProxyConfig`

Specifies the cluster proxy configuration.

| Property | Type | Description |
|----------|------|-------------|
| `noProxy` | `array<string>` | A list of IPs, hostnames, and domains that should skip the proxy. Examples: ["127.0.0.1", "exampl... |
| `uri` | `string` | Required. Specifies the address of your proxy server. Examples: `http://domain` Do not provide cr... |

### `BareMetalSecurityConfig`

Specifies the security related settings for the bare metal user cluster.

| Property | Type | Description |
|----------|------|-------------|
| `authorization` | `Authorization` | Configures user access to the user cluster. |

### `BareMetalSrIovConfig`

Specifies the SR-IOV networking operator config.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether to install the SR-IOV operator. |

### `BareMetalStorageConfig`

BareMetalStorageConfig specifies the cluster storage configuration.

| Property | Type | Description |
|----------|------|-------------|
| `lvpNodeMountsConfig` | `BareMetalLvpConfig` | Required. Specifies the config for local PersistentVolumes backed by mounted node disks. These di... |
| `lvpShareConfig` | `BareMetalLvpShareConfig` | Required. Specifies the config for local PersistentVolumes backed by subdirectories in a shared f... |

### `BareMetalVersionInfo`

Contains information about a specific Anthos on bare metal version.

| Property | Type | Description |
|----------|------|-------------|
| `dependencies` | `array<UpgradeDependency>` | The list of upgrade dependencies for this version. |
| `hasDependencies` | `boolean` | If set, the cluster dependencies (e.g. the admin cluster, other user clusters managed by the same... |
| `version` | `string` | Version number e.g. 1.13.1. |

### `BareMetalVipConfig`

Specifies the VIP config for the bare metal load balancer.

| Property | Type | Description |
|----------|------|-------------|
| `controlPlaneVip` | `string` | The VIP which you previously set aside for the Kubernetes API of this bare metal user cluster. |
| `ingressVip` | `string` | The VIP which you previously set aside for ingress traffic into this bare metal user cluster. |

### `BareMetalWorkloadNodeConfig`

Specifies the workload node configurations.

| Property | Type | Description |
|----------|------|-------------|
| `containerRuntime` | `string` | Specifies which container runtime will be used. |
| `maxPodsPerNode` | `string` | The maximum number of pods a node can run. The size of the CIDR range assigned to the node will b... |

### `BinaryAuthorization`

Configuration for Binary Authorization.

| Property | Type | Description |
|----------|------|-------------|
| `evaluationMode` | `string` | Mode of operation for binauthz policy evaluation. If unspecified, defaults to DISABLED. |

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `ClusterUser`

ClusterUser configures user principals for an RBAC policy.

| Property | Type | Description |
|----------|------|-------------|
| `username` | `string` | Required. The name of the user, e.g. `my-gcp-id@gmail.com`. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `EnrollBareMetalAdminClusterRequest`

Message for enrolling an existing bare metal admin cluster to the GKE on-prem API.

| Property | Type | Description |
|----------|------|-------------|
| `bareMetalAdminClusterId` | `string` | User provided OnePlatform identifier that is used as part of the resource name. This must be uniq... |
| `membership` | `string` | Required. This is the full resource name of this admin cluster's fleet membership. |

### `EnrollBareMetalClusterRequest`

Message for enrolling an existing bare metal cluster to the Anthos On-Prem API.

| Property | Type | Description |
|----------|------|-------------|
| `adminClusterMembership` | `string` | Required. The admin cluster this bare metal user cluster belongs to. This is the full resource na... |
| `bareMetalClusterId` | `string` | User provided OnePlatform identifier that is used as part of the resource name. This must be uniq... |
| `localName` | `string` | Optional. The object name of the bare metal cluster custom resource on the associated admin clust... |
| `localNamespace` | `string` | Optional. The namespace of the cluster. |

### `EnrollBareMetalNodePoolRequest`

Message for enrolling an existing bare metal node pool to the GKE on-prem API.

| Property | Type | Description |
|----------|------|-------------|
| `bareMetalNodePoolId` | `string` | User provided OnePlatform identifier that is used as part of the resource name. (https://tools.ie... |
| `validateOnly` | `boolean` | If set, only validate the request, but do not actually enroll the node pool. |

### `EnrollVmwareAdminClusterRequest`

Message for enrolling an existing VMware admin cluster to the GKE on-prem API.

| Property | Type | Description |
|----------|------|-------------|
| `membership` | `string` | Required. This is the full resource name of this admin cluster's fleet membership. |
| `vmwareAdminClusterId` | `string` | User provided OnePlatform identifier that is used as part of the resource name. This must be uniq... |

### `EnrollVmwareClusterRequest`

Message for enrolling an existing VMware cluster to the Anthos On-Prem API.

| Property | Type | Description |
|----------|------|-------------|
| `adminClusterMembership` | `string` | Required. The admin cluster this VMware user cluster belongs to. This is the full resource name o... |
| `localName` | `string` | Optional. The object name of the VMware OnPremUserCluster custom resource on the associated admin... |
| `validateOnly` | `boolean` | Validate the request without actually doing any updates. |
| `vmwareClusterId` | `string` | User provided OnePlatform identifier that is used as part of the resource name. This must be uniq... |

### `EnrollVmwareNodePoolRequest`

Message for enrolling a VMware node pool.

| Property | Type | Description |
|----------|------|-------------|
| `vmwareNodePoolId` | `string` | The target node pool id to be enrolled. |

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `Fleet`

Fleet related configuration. Fleets are a Google Cloud concept for logically organizing clusters, letting you use and manage multi-cluster capabilities and apply consistent policies across your systems. See [Anthos Fleets](`https://cloud.google.com/anthos/multicluster-management/fleets`) for more details on Anthos multi-cluster capabilities using Fleets. ##

| Property | Type | Description |
|----------|------|-------------|
| `membership` | `string` | Output only. The name of the managed fleet Membership resource associated to this cluster. Member... |

### `ListBareMetalAdminClustersResponse`

Response message for listing bare metal admin clusters.

| Property | Type | Description |
|----------|------|-------------|
| `bareMetalAdminClusters` | `array<BareMetalAdminCluster>` | The list of bare metal admin cluster. |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. If the token is not empty this me... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListBareMetalClustersResponse`

Response message for listing bare metal Clusters.

| Property | Type | Description |
|----------|------|-------------|
| `bareMetalClusters` | `array<BareMetalCluster>` | The list of bare metal Clusters. |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. If the token is not empty this me... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListBareMetalNodePoolsResponse`

Response message for listing bare metal node pools.

| Property | Type | Description |
|----------|------|-------------|
| `bareMetalNodePools` | `array<BareMetalNodePool>` | The node pools from the specified parent resource. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
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

### `ListVmwareAdminClustersResponse`

Response message for listing VMware admin clusters.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token identifying a page of results the server should return. If the token is not empty this me... |
| `unreachable` | `array<string>` | Locations that could not be reached. |
| `vmwareAdminClusters` | `array<VmwareAdminCluster>` | The list of VMware admin cluster. |

### `ListVmwareClustersResponse`

Response message for listing VMware Clusters.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token identifying a page of results the server should return. If the token is not empty this me... |
| `unreachable` | `array<string>` | Locations that could not be reached. |
| `vmwareClusters` | `array<VmwareCluster>` | The list of VMware Cluster. |

### `ListVmwareNodePoolsResponse`

Response message for listing VMware node pools.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `unreachable` | `array<string>` | Locations that could not be reached. |
| `vmwareNodePools` | `array<VmwareNodePool>` | The node pools from the specified parent resource. |

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `Metric`

Progress metric is (string, int|float|string) pair.

| Property | Type | Description |
|----------|------|-------------|
| `doubleValue` | `number` | For metrics with floating point value. |
| `intValue` | `string` | For metrics with integer value. |
| `metric` | `string` | Required. The metric name. |
| `stringValue` | `string` | For metrics with custom values (ratios, visual progress, etc.). |

### `NodeTaint`

NodeTaint applied to every Kubernetes node in a node pool. Kubernetes taints can be used together with tolerations to control how workloads are scheduled to your nodes. Node taints are permanent.

| Property | Type | Description |
|----------|------|-------------|
| `effect` | `string` | The taint effect. |
| `key` | `string` | Key associated with the effect. |
| `value` | `string` | Value associated with the effect. |

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
| `controlPlaneDisconnected` | `boolean` | Output only. Denotes if the local managing cluster's control plane is currently disconnected. Thi... |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `progress` | `OperationProgress` | Output only. Detailed progress information for the operation. |
| `requestedCancellation` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. Operations ... |
| `statusMessage` | `string` | Output only. Human-readable status of the operation, if any. |
| `target` | `string` | Output only. Server-defined resource path for the target of the operation. |
| `type` | `string` | Output only. Type of operation being executed. |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `OperationProgress`

Information about operation progress.

| Property | Type | Description |
|----------|------|-------------|
| `stages` | `array<OperationStage>` | The stages of the operation. |

### `OperationStage`

Information about a particular stage of an operation.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | Time the stage ended. |
| `metrics` | `array<Metric>` | Progress metric bundle. |
| `stage` | `string` | The high-level stage of the operation. |
| `startTime` | `string` | Time the stage started. |
| `state` | `string` | Output only. State of the stage. |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `QueryBareMetalAdminVersionConfigResponse`

Response message for querying bare metal admin cluster version config.

| Property | Type | Description |
|----------|------|-------------|
| `versions` | `array<BareMetalVersionInfo>` | List of available versions to install or to upgrade to. |

### `QueryBareMetalVersionConfigResponse`

Response message for querying bare metal admin cluster version config.

| Property | Type | Description |
|----------|------|-------------|
| `versions` | `array<BareMetalVersionInfo>` | List of available versions to install or to upgrade to. |

### `QueryVmwareVersionConfigResponse`

Response message for querying VMware user cluster version config.

| Property | Type | Description |
|----------|------|-------------|
| `versions` | `array<VmwareVersionInfo>` | List of available versions to install or to upgrade to. |

### `ResourceCondition`

ResourceCondition provides a standard mechanism for higher-level status reporting from controller.

| Property | Type | Description |
|----------|------|-------------|
| `lastTransitionTime` | `string` | Last time the condition transit from one status to another. |
| `message` | `string` | Human-readable message indicating details about last transition. |
| `reason` | `string` | Machine-readable message indicating details about last transition. |
| `state` | `string` | state of the condition. |
| `type` | `string` | Type of the condition. (e.g., ClusterRunning, NodePoolRunning or ServerSidePreflightReady) |

### `ResourceStatus`

ResourceStatus describes why a cluster or node pool has a certain status. (e.g., ERROR or DEGRADED).

| Property | Type | Description |
|----------|------|-------------|
| `conditions` | `array<ResourceCondition>` | ResourceCondition provide a standard mechanism for higher-level status reporting from controller. |
| `errorMessage` | `string` | Human-friendly representation of the error message from controller. The error message can be temp... |
| `version` | `string` | Reflect current version of the resource. |
| `versions` | `Versions` | Shows the mapping of a given version to the number of machines under this version. |

### `SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

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

### `UpgradeDependency`

UpgradeDependency represents a dependency when upgrading a resource.

| Property | Type | Description |
|----------|------|-------------|
| `currentVersion` | `string` | Current version of the dependency e.g. 1.15.0. |
| `membership` | `string` | Membership names are formatted as `projects//locations//memberships/`. |
| `resourceName` | `string` | Resource name of the dependency. |
| `targetVersion` | `string` | Target version of the dependency e.g. 1.16.1. This is the version the dependency needs to be upgr... |

### `ValidationCheck`

ValidationCheck represents the result of preflight check.

| Property | Type | Description |
|----------|------|-------------|
| `option` | `string` | Options used for the validation check |
| `scenario` | `string` | Output only. The scenario when the preflight checks were run. |
| `status` | `ValidationCheckStatus` | Output only. The detailed validation check status. |

### `ValidationCheckResult`

ValidationCheckResult defines the details about the validation check.

| Property | Type | Description |
|----------|------|-------------|
| `category` | `string` | The category of the validation. |
| `description` | `string` | The description of the validation check. |
| `details` | `string` | Detailed failure information, which might be unformatted. |
| `reason` | `string` | A human-readable message of the check failure. |
| `state` | `string` | The validation check state. |

### `ValidationCheckStatus`

ValidationCheckStatus defines the detailed validation check status.

| Property | Type | Description |
|----------|------|-------------|
| `result` | `array<ValidationCheckResult>` | Individual checks which failed as part of the Preflight check execution. |

### `Version`

Version describes the number of nodes at a given version under a resource.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `string` | Number of machines under the above version. |
| `version` | `string` | Resource version. |

### `Versions`

Versions describes the mapping of a given version to the number of machines under this version.

| Property | Type | Description |
|----------|------|-------------|
| `versions` | `array<Version>` | Shows the mapping of a given version to the number of machines under this version. |

### `VmwareAAGConfig`

Specifies anti affinity group config for the VMware user cluster.

| Property | Type | Description |
|----------|------|-------------|
| `aagConfigDisabled` | `boolean` | Spread nodes across at least three physical hosts (requires at least three hosts). Enabled by def... |

### `VmwareAddressPool`

Represents an IP pool used by the load balancer.

| Property | Type | Description |
|----------|------|-------------|
| `addresses` | `array<string>` | Required. The addresses that are part of this pool. Each address must be either in the CIDR form ... |
| `avoidBuggyIps` | `boolean` | If true, avoid using IPs ending in .0 or .255. This avoids buggy consumer devices mistakenly drop... |
| `manualAssign` | `boolean` | If true, prevent IP addresses from being automatically assigned. |
| `pool` | `string` | Required. The name of the address pool. |

### `VmwareAdminAddonNodeConfig`

VmwareAdminAddonNodeConfig contains add-on node configurations for VMware admin cluster.

| Property | Type | Description |
|----------|------|-------------|
| `autoResizeConfig` | `VmwareAutoResizeConfig` | VmwareAutoResizeConfig config specifies auto resize config. |

### `VmwareAdminAuthorizationConfig`

VmwareAdminAuthorizationConfig represents configuration for admin cluster authorization.

| Property | Type | Description |
|----------|------|-------------|
| `viewerUsers` | `array<ClusterUser>` | For VMware admin clusters, users will be granted the cluster-viewer role on the cluster. |

### `VmwareAdminCluster`

Resource that represents a VMware admin cluster.

| Property | Type | Description |
|----------|------|-------------|
| `addonNode` | `VmwareAdminAddonNodeConfig` | The VMware admin cluster addon node configuration. |
| `annotations` | `object` | Annotations on the VMware admin cluster. This field has the same restrictions as Kubernetes annot... |
| `antiAffinityGroups` | `VmwareAAGConfig` | The VMware admin cluster anti affinity group configuration. |
| `authorization` | `VmwareAdminAuthorizationConfig` | The VMware admin cluster authorization configuration. |
| `autoRepairConfig` | `VmwareAutoRepairConfig` | The VMware admin cluster auto repair configuration. |
| `bootstrapClusterMembership` | `string` | The bootstrap cluster this VMware admin cluster belongs to. |
| `controlPlaneNode` | `VmwareAdminControlPlaneNodeConfig` | The VMware admin cluster control plane node configuration. |
| `createTime` | `string` | Output only. The time at which VMware admin cluster was created. |
| `description` | `string` | A human readable description of this VMware admin cluster. |
| `enableAdvancedCluster` | `boolean` | Enable advanced cluster. |
| `endpoint` | `string` | Output only. The DNS name of VMware admin cluster's API server. |
| `etag` | `string` | This checksum is computed by the server based on the value of other fields, and may be sent on up... |
| `fleet` | `Fleet` | Output only. Fleet configuration for the cluster. |
| `imageType` | `string` | The OS image type for the VMware admin cluster. |
| `loadBalancer` | `VmwareAdminLoadBalancerConfig` | The VMware admin cluster load balancer configuration. |
| `localName` | `string` | Output only. The object name of the VMware OnPremAdminCluster custom resource. This field is used... |
| `name` | `string` | Immutable. The VMware admin cluster resource name. |
| `networkConfig` | `VmwareAdminNetworkConfig` | The VMware admin cluster network configuration. |
| `onPremVersion` | `string` | The Anthos clusters on the VMware version for the admin cluster. |
| `platformConfig` | `VmwarePlatformConfig` | The VMware platform configuration. |
| `preparedSecrets` | `VmwareAdminPreparedSecretsConfig` | Output only. The VMware admin cluster prepared secrets configuration. It should always be enabled... |
| `privateRegistryConfig` | `VmwareAdminPrivateRegistryConfig` | Configuration for registry. |
| `proxy` | `VmwareAdminProxy` | Configuration for proxy. |
| `reconciling` | `boolean` | Output only. If set, there are currently changes in flight to the VMware admin cluster. |
| `state` | `string` | Output only. The current state of VMware admin cluster. |
| `status` | `ResourceStatus` | Output only. ResourceStatus representing detailed cluster state. |
| `uid` | `string` | Output only. The unique identifier of the VMware admin cluster. |
| `updateTime` | `string` | Output only. The time at which VMware admin cluster was last updated. |
| `validationCheck` | `ValidationCheck` | Output only. ValidationCheck represents the result of the preflight check job. |
| `vcenter` | `VmwareAdminVCenterConfig` | The VMware admin cluster VCenter configuration. |

### `VmwareAdminControlPlaneNodeConfig`

VmwareAdminControlPlaneNodeConfig contains control plane node configuration for VMware admin cluster.

| Property | Type | Description |
|----------|------|-------------|
| `cpus` | `string` | The number of vCPUs for the control-plane node of the admin cluster. |
| `memory` | `string` | The number of mebibytes of memory for the control-plane node of the admin cluster. |
| `replicas` | `string` | The number of control plane nodes for this VMware admin cluster. (default: 1 replica). |

### `VmwareAdminF5BigIpConfig`

VmwareAdminF5BigIpConfig represents configuration parameters for an F5 BIG-IP load balancer.

| Property | Type | Description |
|----------|------|-------------|
| `address` | `string` | The load balancer's IP address. |
| `partition` | `string` | The preexisting partition to be used by the load balancer. This partition is usually created for ... |
| `snatPool` | `string` | The pool name. Only necessary, if using SNAT. |

### `VmwareAdminHAControlPlaneConfig`

Specifies HA admin control plane config.

| Property | Type | Description |
|----------|------|-------------|
| `controlPlaneIpBlock` | `VmwareIpBlock` | Static IP addresses for the admin control plane nodes. |

### `VmwareAdminLoadBalancerConfig`

VmwareAdminLoadBalancerConfig contains load balancer configuration for VMware admin cluster.

| Property | Type | Description |
|----------|------|-------------|
| `f5Config` | `VmwareAdminF5BigIpConfig` | Configuration for F5 Big IP typed load balancers. |
| `manualLbConfig` | `VmwareAdminManualLbConfig` | Manually configured load balancers. |
| `metalLbConfig` | `VmwareAdminMetalLbConfig` | MetalLB load balancers. |
| `seesawConfig` | `VmwareAdminSeesawConfig` | Output only. Configuration for Seesaw typed load balancers. |
| `vipConfig` | `VmwareAdminVipConfig` | The VIPs used by the load balancer. |

### `VmwareAdminManualLbConfig`

| Property | Type | Description |
|----------|------|-------------|
| `addonsNodePort` | `integer` | NodePort for add-ons server in the admin cluster. |
| `controlPlaneNodePort` | `integer` | NodePort for control plane service. The Kubernetes API server in the admin cluster is implemented... |
| `ingressHttpNodePort` | `integer` | NodePort for ingress service's http. The ingress service in the admin cluster is implemented as a... |
| `ingressHttpsNodePort` | `integer` | NodePort for ingress service's https. The ingress service in the admin cluster is implemented as ... |
| `konnectivityServerNodePort` | `integer` | NodePort for konnectivity server service running as a sidecar in each kube-apiserver pod (ex. 305... |

### `VmwareAdminMetalLbConfig`

VmwareAdminMetalLbConfig represents configuration parameters for a MetalLB load balancer. For admin clusters, currently no configurations is needed.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether MetalLB is enabled. |

### `VmwareAdminNetworkConfig`

VmwareAdminNetworkConfig contains network configuration for VMware admin cluster.

| Property | Type | Description |
|----------|------|-------------|
| `dhcpIpConfig` | `VmwareDhcpIpConfig` | Configuration settings for a DHCP IP configuration. |
| `haControlPlaneConfig` | `VmwareAdminHAControlPlaneConfig` | Configuration for HA admin cluster control plane. |
| `hostConfig` | `VmwareHostConfig` | Represents common network settings irrespective of the host's IP address. |
| `podAddressCidrBlocks` | `array<string>` | Required. All pods in the cluster are assigned an RFC1918 IPv4 address from these ranges. Only a ... |
| `serviceAddressCidrBlocks` | `array<string>` | Required. All services in the cluster are assigned an RFC1918 IPv4 address from these ranges. Onl... |
| `staticIpConfig` | `VmwareStaticIpConfig` | Configuration settings for a static IP configuration. |
| `vcenterNetwork` | `string` | vcenter_network specifies vCenter network name. |

### `VmwareAdminPreparedSecretsConfig`

VmwareAdminPreparedSecretsConfig represents configuration for admin cluster prepared secrets.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether prepared secrets is enabled. |

### `VmwareAdminPrivateRegistryConfig`

VmwareAdminPrivateRegistryConfig represents configuration for admin cluster registry.

| Property | Type | Description |
|----------|------|-------------|
| `address` | `string` | The registry address. |
| `caCert` | `string` | When the container runtime pulls an image from private registry, the registry must prove its iden... |

### `VmwareAdminProxy`

VmwareAdminProxy represents configuration for admin cluster proxy.

| Property | Type | Description |
|----------|------|-------------|
| `noProxy` | `string` | A comma-separated list of IP addresses, IP address ranges, host names, and domain names that shou... |
| `url` | `string` | The HTTP address of proxy server. |

### `VmwareAdminSeesawConfig`

VmwareSeesawConfig represents configuration parameters for an already existing Seesaw load balancer. IMPORTANT: Please note that the Anthos On-Prem API will not generate or update Seesaw configurations it can only bind a pre-existing configuration to a new user cluster. IMPORTANT: When attempting to create a user cluster with a pre-existing Seesaw load balancer you will need to follow some preparation steps before calling the 'CreateVmwareCluster' API method. First you will need to create the user cluster's namespace via kubectl. The namespace will need to use the following naming convention : -gke-onprem-mgmt or -gke-onprem-mgmt depending on whether you used the 'VmwareCluster.local_name' to disambiguate collisions; for more context see the documentation of 'VmwareCluster.local_name'. Once the namespace is created you will need to create a secret resource via kubectl. This secret will contain copies of your Seesaw credentials. The Secret must be called 'user-cluster-creds' and contain Seesaw's SSH and Cert credentials. The credentials must be keyed with the following names: 'seesaw-ssh-private-key', 'seesaw-ssh-public-key', 'seesaw-ssh-ca-key', 'seesaw-ssh-ca-cert'.

| Property | Type | Description |
|----------|------|-------------|
| `enableHa` | `boolean` | Enable two load balancer VMs to achieve a highly-available Seesaw load balancer. |
| `group` | `string` | In general the following format should be used for the Seesaw group name: seesaw-for-[cluster_name]. |
| `ipBlocks` | `array<VmwareIpBlock>` | The IP Blocks to be used by the Seesaw load balancer |
| `masterIp` | `string` | MasterIP is the IP announced by the master of Seesaw group. |
| `stackdriverName` | `string` | Name to be used by Stackdriver. |
| `vms` | `array<string>` | Names of the VMs created for this Seesaw group. |

### `VmwareAdminVCenterConfig`

VmwareAdminVCenterConfig contains VCenter configuration for VMware admin cluster.

| Property | Type | Description |
|----------|------|-------------|
| `address` | `string` | The vCenter IP address. |
| `caCertData` | `string` | Contains the vCenter CA certificate public key for SSL verification. |
| `cluster` | `string` | The name of the vCenter cluster for the admin cluster. |
| `dataDisk` | `string` | The name of the virtual machine disk (VMDK) for the admin cluster. |
| `datacenter` | `string` | The name of the vCenter datacenter for the admin cluster. |
| `datastore` | `string` | The name of the vCenter datastore for the admin cluster. |
| `folder` | `string` | The name of the vCenter folder for the admin cluster. |
| `resourcePool` | `string` | The name of the vCenter resource pool for the admin cluster. |
| `storagePolicyName` | `string` | The name of the vCenter storage policy for the user cluster. |

### `VmwareAdminVipConfig`

VmwareAdminVipConfig for VMware load balancer configurations.

| Property | Type | Description |
|----------|------|-------------|
| `addonsVip` | `string` | The VIP to configure the load balancer for add-ons. |
| `controlPlaneVip` | `string` | The VIP which you previously set aside for the Kubernetes API of the admin cluster. |

### `VmwareAutoRepairConfig`

Specifies config to enable/disable auto repair. The cluster-health-controller is deployed only if Enabled is true.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether auto repair is enabled. |

### `VmwareAutoResizeConfig`

Represents auto resizing configurations for the VMware user cluster.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether to enable controle plane node auto resizing. |

### `VmwareBundleConfig`

VmwareBundleConfig represents configuration for the bundle.

| Property | Type | Description |
|----------|------|-------------|
| `status` | `ResourceStatus` | Output only. Resource status for the bundle. |
| `version` | `string` | The version of the bundle. |

### `VmwareCluster`

Resource that represents a VMware user cluster. ##

| Property | Type | Description |
|----------|------|-------------|
| `adminClusterMembership` | `string` | Required. The admin cluster this VMware user cluster belongs to. This is the full resource name o... |
| `adminClusterName` | `string` | Output only. The resource name of the VMware admin cluster hosting this user cluster. |
| `annotations` | `object` | Annotations on the VMware user cluster. This field has the same restrictions as Kubernetes annota... |
| `antiAffinityGroups` | `VmwareAAGConfig` | AAGConfig specifies whether to spread VMware user cluster nodes across at least three physical ho... |
| `authorization` | `Authorization` | RBAC policy that will be applied and managed by the Anthos On-Prem API. |
| `autoRepairConfig` | `VmwareAutoRepairConfig` | Configuration for auto repairing. |
| `binaryAuthorization` | `BinaryAuthorization` | Binary Authorization related configurations. |
| `controlPlaneNode` | `VmwareControlPlaneNodeConfig` | VMware user cluster control plane nodes must have either 1 or 3 replicas. |
| `createTime` | `string` | Output only. The time at which VMware user cluster was created. |
| `dataplaneV2` | `VmwareDataplaneV2Config` | VmwareDataplaneV2Config specifies configuration for Dataplane V2. |
| `deleteTime` | `string` | Output only. The time at which VMware user cluster was deleted. |
| `description` | `string` | A human readable description of this VMware user cluster. |
| `disableBundledIngress` | `boolean` | Disable bundled ingress. |
| `enableAdvancedCluster` | `boolean` | Enable advanced cluster. |
| `enableControlPlaneV2` | `boolean` | Enable control plane V2. Default to false. |
| `endpoint` | `string` | Output only. The DNS name of VMware user cluster's API server. |
| `etag` | `string` | This checksum is computed by the server based on the value of other fields, and may be sent on up... |
| `fleet` | `Fleet` | Output only. Fleet configuration for the cluster. |
| `loadBalancer` | `VmwareLoadBalancerConfig` | Load balancer configuration. |
| `localName` | `string` | Output only. The object name of the VMware OnPremUserCluster custom resource on the associated ad... |
| `name` | `string` | Immutable. The VMware user cluster resource name. |
| `networkConfig` | `VmwareNetworkConfig` | The VMware user cluster network configuration. |
| `onPremVersion` | `string` | Required. The Anthos clusters on the VMware version for your user cluster. |
| `reconciling` | `boolean` | Output only. If set, there are currently changes in flight to the VMware user cluster. |
| `state` | `string` | Output only. The current state of VMware user cluster. |
| `status` | `ResourceStatus` | Output only. ResourceStatus representing detailed cluster state. |
| `storage` | `VmwareStorageConfig` | Storage configuration. |
| `uid` | `string` | Output only. The unique identifier of the VMware user cluster. |
| `updateTime` | `string` | Output only. The time at which VMware user cluster was last updated. |
| `upgradePolicy` | `VmwareClusterUpgradePolicy` | Specifies upgrade policy for the cluster. |
| `validationCheck` | `ValidationCheck` | Output only. ValidationCheck represents the result of the preflight check job. |
| `vcenter` | `VmwareVCenterConfig` | VmwareVCenterConfig specifies vCenter config for the user cluster. If unspecified, it is inherite... |
| `vmTrackingEnabled` | `boolean` | Enable VM tracking. |

### `VmwareClusterUpgradePolicy`

VmwareClusterUpgradePolicy defines the cluster upgrade policy.

| Property | Type | Description |
|----------|------|-------------|
| `controlPlaneOnly` | `boolean` | Controls whether the upgrade applies to the control plane only. |

### `VmwareControlPlaneNodeConfig`

Specifies control plane node config for the VMware user cluster.

| Property | Type | Description |
|----------|------|-------------|
| `autoResizeConfig` | `VmwareAutoResizeConfig` | AutoResizeConfig provides auto resizing configurations. |
| `cpus` | `string` | The number of CPUs for each admin cluster node that serve as control planes for this VMware user ... |
| `memory` | `string` | The megabytes of memory for each admin cluster node that serves as a control plane for this VMwar... |
| `replicas` | `string` | The number of control plane nodes for this VMware user cluster. (default: 1 replica). |
| `vsphereConfig` | `VmwareControlPlaneVsphereConfig` | Vsphere-specific config. |

### `VmwareControlPlaneV2Config`

Specifies control plane V2 config.

| Property | Type | Description |
|----------|------|-------------|
| `controlPlaneIpBlock` | `VmwareIpBlock` | Static IP addresses for the control plane nodes. |

### `VmwareControlPlaneVsphereConfig`

Specifies control plane node config.

| Property | Type | Description |
|----------|------|-------------|
| `datastore` | `string` | The Vsphere datastore used by the control plane Node. |
| `storagePolicyName` | `string` | The Vsphere storage policy used by the control plane Node. |

### `VmwareDataplaneV2Config`

Contains configurations for Dataplane V2, which is optimized dataplane for Kubernetes networking. For more information, see: https://cloud.google.com/kubernetes-engine/docs/concepts/dataplane-v2

| Property | Type | Description |
|----------|------|-------------|
| `advancedNetworking` | `boolean` | Enable advanced networking which requires dataplane_v2_enabled to be set true. |
| `dataplaneV2Enabled` | `boolean` | Enables Dataplane V2. |
| `forwardMode` | `string` | Configure ForwardMode for Dataplane v2. |
| `windowsDataplaneV2Enabled` | `boolean` | Enable Dataplane V2 for clusters with Windows nodes. |

### `VmwareDhcpIpConfig`

Represents the network configuration required for the VMware user clusters with DHCP IP configurations.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | enabled is a flag to mark if DHCP IP allocation is used for VMware user clusters. |

### `VmwareF5BigIpConfig`

Represents configuration parameters for an F5 BIG-IP load balancer.

| Property | Type | Description |
|----------|------|-------------|
| `address` | `string` | The load balancer's IP address. |
| `partition` | `string` | The preexisting partition to be used by the load balancer. This partition is usually created for ... |
| `snatPool` | `string` | The pool name. Only necessary, if using SNAT. |

### `VmwareHostConfig`

Represents the common parameters for all the hosts irrespective of their IP address.

| Property | Type | Description |
|----------|------|-------------|
| `dnsSearchDomains` | `array<string>` | DNS search domains. |
| `dnsServers` | `array<string>` | DNS servers. |
| `ntpServers` | `array<string>` | NTP servers. |

### `VmwareHostIp`

Represents VMware user cluster node's network configuration.

| Property | Type | Description |
|----------|------|-------------|
| `hostname` | `string` | Hostname of the machine. VM's name will be used if this field is empty. |
| `ip` | `string` | IP could be an IP address (like 1.2.3.4) or a CIDR (like 1.2.3.0/24). |

### `VmwareIpBlock`

Represents a collection of IP addresses to assign to nodes.

| Property | Type | Description |
|----------|------|-------------|
| `gateway` | `string` | The network gateway used by the VMware user cluster. |
| `ips` | `array<VmwareHostIp>` | The node's network configurations used by the VMware user cluster. |
| `netmask` | `string` | The netmask used by the VMware user cluster. |

### `VmwareLoadBalancerConfig`

Specifies the locad balancer config for the VMware user cluster.

| Property | Type | Description |
|----------|------|-------------|
| `f5Config` | `VmwareF5BigIpConfig` | Configuration for F5 Big IP typed load balancers. |
| `manualLbConfig` | `VmwareManualLbConfig` | Manually configured load balancers. |
| `metalLbConfig` | `VmwareMetalLbConfig` | Configuration for MetalLB typed load balancers. |
| `seesawConfig` | `VmwareSeesawConfig` | Output only. Configuration for Seesaw typed load balancers. |
| `vipConfig` | `VmwareVipConfig` | The VIPs used by the load balancer. |

### `VmwareManualLbConfig`

Represents configuration parameters for an already existing manual load balancer. Given the nature of manual load balancers it is expected that said load balancer will be fully managed by users. IMPORTANT: Please note that the Anthos On-Prem API will not generate or update ManualLB configurations it can only bind a pre-existing configuration to a new VMware user cluster.

| Property | Type | Description |
|----------|------|-------------|
| `controlPlaneNodePort` | `integer` | NodePort for control plane service. The Kubernetes API server in the admin cluster is implemented... |
| `ingressHttpNodePort` | `integer` | NodePort for ingress service's http. The ingress service in the admin cluster is implemented as a... |
| `ingressHttpsNodePort` | `integer` | NodePort for ingress service's https. The ingress service in the admin cluster is implemented as ... |
| `konnectivityServerNodePort` | `integer` | NodePort for konnectivity server service running as a sidecar in each kube-apiserver pod (ex. 305... |

### `VmwareMetalLbConfig`

Represents configuration parameters for the MetalLB load balancer.

| Property | Type | Description |
|----------|------|-------------|
| `addressPools` | `array<VmwareAddressPool>` | Required. AddressPools is a list of non-overlapping IP pools used by load balancer typed services... |

### `VmwareNetworkConfig`

Specifies network config for the VMware user cluster.

| Property | Type | Description |
|----------|------|-------------|
| `controlPlaneV2Config` | `VmwareControlPlaneV2Config` | Configuration for control plane V2 mode. |
| `dhcpIpConfig` | `VmwareDhcpIpConfig` | Configuration settings for a DHCP IP configuration. |
| `hostConfig` | `VmwareHostConfig` | Represents common network settings irrespective of the host's IP address. |
| `podAddressCidrBlocks` | `array<string>` | Required. All pods in the cluster are assigned an RFC1918 IPv4 address from these ranges. Only a ... |
| `serviceAddressCidrBlocks` | `array<string>` | Required. All services in the cluster are assigned an RFC1918 IPv4 address from these ranges. Onl... |
| `staticIpConfig` | `VmwareStaticIpConfig` | Configuration settings for a static IP configuration. |
| `vcenterNetwork` | `string` | vcenter_network specifies vCenter network name. Inherited from the admin cluster. |

### `VmwareNodeConfig`

Parameters that describe the configuration of all nodes within a given node pool.

| Property | Type | Description |
|----------|------|-------------|
| `bootDiskSizeGb` | `string` | VMware disk size to be used during creation. |
| `cpus` | `string` | The number of CPUs for each node in the node pool. |
| `enableLoadBalancer` | `boolean` | Allow node pool traffic to be load balanced. Only works for clusters with MetalLB load balancers. |
| `image` | `string` | The OS image name in vCenter, only valid when using Windows. |
| `imageType` | `string` | Required. The OS image to be used for each node in a node pool. Currently `cos`, `cos_cgv2`, `ubu... |
| `labels` | `object` | The map of Kubernetes labels (key/value pairs) to be applied to each node. These will added in ad... |
| `memoryMb` | `string` | The megabytes of memory for each node in the node pool. |
| `replicas` | `string` | The number of nodes in the node pool. |
| `taints` | `array<NodeTaint>` | The initial taints assigned to nodes of this node pool. |
| `vsphereConfig` | `VmwareVsphereConfig` | Specifies the vSphere config for node pool. |

### `VmwareNodePool`

Resource VmwareNodePool represents a VMware node pool. ##

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Annotations on the node pool. This field has the same restrictions as Kubernetes annotations. The... |
| `config` | `VmwareNodeConfig` | Required. The node configuration of the node pool. |
| `createTime` | `string` | Output only. The time at which this node pool was created. |
| `deleteTime` | `string` | Output only. The time at which this node pool was deleted. If the resource is not deleted, this m... |
| `displayName` | `string` | The display name for the node pool. |
| `etag` | `string` | This checksum is computed by the server based on the value of other fields, and may be sent on up... |
| `name` | `string` | Immutable. The resource name of this node pool. |
| `nodePoolAutoscaling` | `VmwareNodePoolAutoscalingConfig` | Node pool autoscaling config for the node pool. |
| `onPremVersion` | `string` | Anthos version for the node pool. Defaults to the user cluster version. |
| `reconciling` | `boolean` | Output only. If set, there are currently changes in flight to the node pool. |
| `state` | `string` | Output only. The current state of the node pool. |
| `status` | `ResourceStatus` | Output only. ResourceStatus representing the detailed VMware node pool state. |
| `uid` | `string` | Output only. The unique identifier of the node pool. |
| `updateTime` | `string` | Output only. The time at which this node pool was last updated. |

### `VmwareNodePoolAutoscalingConfig`

NodePoolAutoscaling config for the NodePool to allow for the kubernetes to scale NodePool.

| Property | Type | Description |
|----------|------|-------------|
| `maxReplicas` | `integer` | Maximum number of replicas in the NodePool. |
| `minReplicas` | `integer` | Minimum number of replicas in the NodePool. |

### `VmwarePlatformConfig`

VmwarePlatformConfig represents configuration for the VMware platform.

| Property | Type | Description |
|----------|------|-------------|
| `bundles` | `array<VmwareBundleConfig>` | Output only. The list of bundles installed in the admin cluster. |
| `platformVersion` | `string` | Output only. The platform version e.g. 1.13.2. |
| `requiredPlatformVersion` | `string` | Input only. The required platform version e.g. 1.13.1. If the current platform version is lower t... |
| `status` | `ResourceStatus` | Output only. Resource status for the platform. |

### `VmwareSeesawConfig`

VmwareSeesawConfig represents configuration parameters for an already existing Seesaw load balancer. IMPORTANT: Please note that the Anthos On-Prem API will not generate or update Seesaw configurations it can only bind a pre-existing configuration to a new user cluster. IMPORTANT: When attempting to create a user cluster with a pre-existing Seesaw load balancer you will need to follow some preparation steps before calling the 'CreateVmwareCluster' API method. First you will need to create the user cluster's namespace via kubectl. The namespace will need to use the following naming convention : -gke-onprem-mgmt or -gke-onprem-mgmt depending on whether you used the 'VmwareCluster.local_name' to disambiguate collisions; for more context see the documentation of 'VmwareCluster.local_name'. Once the namespace is created you will need to create a secret resource via kubectl. This secret will contain copies of your Seesaw credentials. The Secret must be called 'user-cluster-creds' and contain Seesaw's SSH and Cert credentials. The credentials must be keyed with the following names: 'seesaw-ssh-private-key', 'seesaw-ssh-public-key', 'seesaw-ssh-ca-key', 'seesaw-ssh-ca-cert'.

| Property | Type | Description |
|----------|------|-------------|
| `enableHa` | `boolean` | Enable two load balancer VMs to achieve a highly-available Seesaw load balancer. |
| `group` | `string` | Required. In general the following format should be used for the Seesaw group name: seesaw-for-[c... |
| `ipBlocks` | `array<VmwareIpBlock>` | Required. The IP Blocks to be used by the Seesaw load balancer |
| `masterIp` | `string` | Required. MasterIP is the IP announced by the master of Seesaw group. |
| `stackdriverName` | `string` | Name to be used by Stackdriver. |
| `vms` | `array<string>` | Names of the VMs created for this Seesaw group. |

### `VmwareStaticIpConfig`

Represents the network configuration required for the VMware user clusters with Static IP configurations.

| Property | Type | Description |
|----------|------|-------------|
| `ipBlocks` | `array<VmwareIpBlock>` | Represents the configuration values for static IP allocation to nodes. |

### `VmwareStorageConfig`

Specifies vSphere CSI components deployment config in the VMware user cluster.

| Property | Type | Description |
|----------|------|-------------|
| `vsphereCsiDisabled` | `boolean` | Whether or not to deploy vSphere CSI components in the VMware user cluster. Enabled by default. |

### `VmwareVCenterConfig`

Represents configuration for the VMware VCenter for the user cluster.

| Property | Type | Description |
|----------|------|-------------|
| `address` | `string` | Output only. The vCenter IP address. |
| `caCertData` | `string` | Contains the vCenter CA certificate public key for SSL verification. |
| `cluster` | `string` | The name of the vCenter cluster for the user cluster. |
| `datacenter` | `string` | The name of the vCenter datacenter for the user cluster. |
| `datastore` | `string` | The name of the vCenter datastore for the user cluster. |
| `folder` | `string` | The name of the vCenter folder for the user cluster. |
| `resourcePool` | `string` | The name of the vCenter resource pool for the user cluster. |
| `storagePolicyName` | `string` | The name of the vCenter storage policy for the user cluster. |

### `VmwareVersionInfo`

Contains information about a specific Anthos on VMware version.

| Property | Type | Description |
|----------|------|-------------|
| `dependencies` | `array<UpgradeDependency>` | The list of upgrade dependencies for this version. |
| `hasDependencies` | `boolean` | If set, the cluster dependencies (e.g. the admin cluster, other user clusters managed by the same... |
| `isInstalled` | `boolean` | If set, the version is installed in the admin cluster. Otherwise, the version bundle must be down... |
| `version` | `string` | Version number e.g. 1.13.1-gke.1000. |

### `VmwareVipConfig`

Specifies the VIP config for the VMware user cluster load balancer.

| Property | Type | Description |
|----------|------|-------------|
| `controlPlaneVip` | `string` | The VIP which you previously set aside for the Kubernetes API of this cluster. |
| `ingressVip` | `string` | The VIP which you previously set aside for ingress traffic into this cluster. |

### `VmwareVsphereConfig`

VmwareVsphereConfig represents configuration for the VMware VCenter for node pool.

| Property | Type | Description |
|----------|------|-------------|
| `datastore` | `string` | The name of the vCenter datastore. Inherited from the user cluster. |
| `hostGroups` | `array<string>` | Vsphere host groups to apply to all VMs in the node pool |
| `tags` | `array<VmwareVsphereTag>` | Tags to apply to VMs. |

### `VmwareVsphereTag`

VmwareVsphereTag describes a vSphere tag to be placed on VMs in the node pool. For more information, see https://docs.vmware.com/en/VMware-vSphere/7.0/com.vmware.vsphere.vcenterhost.doc/GUID-E8E854DD-AA97-4E0C-8419-CE84F93C4058.html

| Property | Type | Description |
|----------|------|-------------|
| `category` | `string` | The Vsphere tag category. |
| `tag` | `string` | The Vsphere tag name. |

