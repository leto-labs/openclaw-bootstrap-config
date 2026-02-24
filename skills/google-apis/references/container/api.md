# Kubernetes Engine API - API Reference

**Version**: `v1` | **Methods**: 69 | **Schemas**: 223

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `container.projects.aggregated.usableSubnetworks.list` | GET | `v1/{+parent}/aggregated/usableSubnetworks` | Lists subnetworks that are usable for creating clusters in a project. |
| `container.projects.zones.getServerconfig` | GET | `v1/projects/{projectId}/zones/{zone}/serverconfig` | Returns configuration info about the Google Kubernetes Engine service. |
| `container.projects.zones.operations.get` | GET | `v1/projects/{projectId}/zones/{zone}/operations/{operationId}` | Gets the specified operation. |
| `container.projects.zones.operations.list` | GET | `v1/projects/{projectId}/zones/{zone}/operations` | Lists all operations in a project in a specific zone or all zones. |
| `container.projects.zones.operations.cancel` | POST | `v1/projects/{projectId}/zones/{zone}/operations/{operationId}:cancel` | Cancels the specified operation. |
| `container.projects.zones.clusters.addons` | POST | `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/addons` | Sets the addons for a specific cluster. |
| `container.projects.zones.clusters.master` | POST | `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/master` | Updates the master for a specific cluster. |
| `container.projects.zones.clusters.create` | POST | `v1/projects/{projectId}/zones/{zone}/clusters` | Creates a cluster, consisting of the specified number and type of Google Compute Engine instances... |
| `container.projects.zones.clusters.resourceLabels` | POST | `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/resourceLabels` | Sets labels on a cluster. |
| `container.projects.zones.clusters.delete` | DELETE | `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}` | Deletes the cluster, including the Kubernetes endpoint and all worker nodes. Firewalls and routes... |
| `container.projects.zones.clusters.get` | GET | `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}` | Gets the details of a specific cluster. |
| `container.projects.zones.clusters.locations` | POST | `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/locations` | Sets the locations for a specific cluster. Deprecated. Use [projects.locations.clusters.update](h... |
| `container.projects.zones.clusters.list` | GET | `v1/projects/{projectId}/zones/{zone}/clusters` | Lists all clusters owned by a project in either the specified zone or all zones. |
| `container.projects.zones.clusters.setMasterAuth` | POST | `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}:setMasterAuth` | Sets master auth materials. Currently supports changing the admin password or a specific cluster,... |
| `container.projects.zones.clusters.update` | PUT | `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}` | Updates the settings of a specific cluster. |
| `container.projects.zones.clusters.legacyAbac` | POST | `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/legacyAbac` | Enables or disables the ABAC authorization mechanism on a cluster. |
| `container.projects.zones.clusters.setMaintenancePolicy` | POST | `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}:setMaintenancePolicy` | Sets the maintenance policy for a cluster. |
| `container.projects.zones.clusters.startIpRotation` | POST | `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}:startIpRotation` | Starts master IP rotation. |
| `container.projects.zones.clusters.logging` | POST | `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/logging` | Sets the logging service for a specific cluster. |
| `container.projects.zones.clusters.fetchClusterUpgradeInfo` | GET | `v1/{+name}:fetchClusterUpgradeInfo` | Fetch upgrade information of a specific cluster. |
| `container.projects.zones.clusters.monitoring` | POST | `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/monitoring` | Sets the monitoring service for a specific cluster. |
| `container.projects.zones.clusters.completeIpRotation` | POST | `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}:completeIpRotation` | Completes master IP rotation. |
| `container.projects.zones.clusters.setNetworkPolicy` | POST | `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}:setNetworkPolicy` | Enables or disables Network Policy for a cluster. |
| `container.projects.zones.clusters.nodePools.autoscaling` | POST | `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools/{nodePoolId}/autoscaling` | Sets the autoscaling settings for the specified node pool. |
| `container.projects.zones.clusters.nodePools.get` | GET | `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools/{nodePoolId}` | Retrieves the requested node pool. |
| `container.projects.zones.clusters.nodePools.fetchNodePoolUpgradeInfo` | GET | `v1/{+name}:fetchNodePoolUpgradeInfo` | Fetch upgrade information of a specific nodepool. |
| `container.projects.zones.clusters.nodePools.delete` | DELETE | `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools/{nodePoolId}` | Deletes a node pool from a cluster. |
| `container.projects.zones.clusters.nodePools.setManagement` | POST | `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools/{nodePoolId}/setManagement` | Sets the NodeManagement options for a node pool. |
| `container.projects.zones.clusters.nodePools.create` | POST | `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools` | Creates a node pool for a cluster. |
| `container.projects.zones.clusters.nodePools.list` | GET | `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools` | Lists the node pools for a cluster. |
| `container.projects.zones.clusters.nodePools.rollback` | POST | `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools/{nodePoolId}:rollback` | Rolls back a previously Aborted or Failed NodePool upgrade. This makes no changes if the last upg... |
| `container.projects.zones.clusters.nodePools.update` | POST | `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools/{nodePoolId}/update` | Updates the version and/or image type for the specified node pool. |
| `container.projects.zones.clusters.nodePools.setSize` | POST | `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools/{nodePoolId}/setSize` | Sets the size for a specific node pool. The new size will be used for all replicas, including fut... |
| `container.projects.locations.getServerConfig` | GET | `v1/{+name}/serverConfig` | Returns configuration info about the Google Kubernetes Engine service. |
| `container.projects.locations.clusters.getJwks` | GET | `v1/{+parent}/jwks` | Gets the public component of the cluster signing keys in JSON Web Key format. |
| `container.projects.locations.clusters.setMaintenancePolicy` | POST | `v1/{+name}:setMaintenancePolicy` | Sets the maintenance policy for a cluster. |
| `container.projects.locations.clusters.list` | GET | `v1/{+parent}/clusters` | Lists all clusters owned by a project in either the specified zone or all zones. |
| `container.projects.locations.clusters.updateMaster` | POST | `v1/{+name}:updateMaster` | Updates the master for a specific cluster. |
| `container.projects.locations.clusters.setResourceLabels` | POST | `v1/{+name}:setResourceLabels` | Sets labels on a cluster. |
| `container.projects.locations.clusters.setNetworkPolicy` | POST | `v1/{+name}:setNetworkPolicy` | Enables or disables Network Policy for a cluster. |
| `container.projects.locations.clusters.fetchClusterUpgradeInfo` | GET | `v1/{+name}:fetchClusterUpgradeInfo` | Fetch upgrade information of a specific cluster. |
| `container.projects.locations.clusters.checkAutopilotCompatibility` | GET | `v1/{+name}:checkAutopilotCompatibility` | Checks the cluster compatibility with Autopilot mode, and returns a list of compatibility issues. |
| `container.projects.locations.clusters.setMasterAuth` | POST | `v1/{+name}:setMasterAuth` | Sets master auth materials. Currently supports changing the admin password or a specific cluster,... |
| `container.projects.locations.clusters.completeIpRotation` | POST | `v1/{+name}:completeIpRotation` | Completes master IP rotation. |
| `container.projects.locations.clusters.create` | POST | `v1/{+parent}/clusters` | Creates a cluster, consisting of the specified number and type of Google Compute Engine instances... |
| `container.projects.locations.clusters.setAddons` | POST | `v1/{+name}:setAddons` | Sets the addons for a specific cluster. |
| `container.projects.locations.clusters.setLegacyAbac` | POST | `v1/{+name}:setLegacyAbac` | Enables or disables the ABAC authorization mechanism on a cluster. |
| `container.projects.locations.clusters.get` | GET | `v1/{+name}` | Gets the details of a specific cluster. |
| `container.projects.locations.clusters.setLogging` | POST | `v1/{+name}:setLogging` | Sets the logging service for a specific cluster. |
| `container.projects.locations.clusters.setMonitoring` | POST | `v1/{+name}:setMonitoring` | Sets the monitoring service for a specific cluster. |
| `container.projects.locations.clusters.update` | PUT | `v1/{+name}` | Updates the settings of a specific cluster. |
| `container.projects.locations.clusters.setLocations` | POST | `v1/{+name}:setLocations` | Sets the locations for a specific cluster. Deprecated. Use [projects.locations.clusters.update](h... |
| `container.projects.locations.clusters.delete` | DELETE | `v1/{+name}` | Deletes the cluster, including the Kubernetes endpoint and all worker nodes. Firewalls and routes... |
| `container.projects.locations.clusters.startIpRotation` | POST | `v1/{+name}:startIpRotation` | Starts master IP rotation. |
| `container.projects.locations.clusters.nodePools.list` | GET | `v1/{+parent}/nodePools` | Lists the node pools for a cluster. |
| `container.projects.locations.clusters.nodePools.setSize` | POST | `v1/{+name}:setSize` | Sets the size for a specific node pool. The new size will be used for all replicas, including fut... |
| `container.projects.locations.clusters.nodePools.fetchNodePoolUpgradeInfo` | GET | `v1/{+name}:fetchNodePoolUpgradeInfo` | Fetch upgrade information of a specific nodepool. |
| `container.projects.locations.clusters.nodePools.get` | GET | `v1/{+name}` | Retrieves the requested node pool. |
| `container.projects.locations.clusters.nodePools.completeUpgrade` | POST | `v1/{+name}:completeUpgrade` | CompleteNodePoolUpgrade will signal an on-going node pool upgrade to complete. |
| `container.projects.locations.clusters.nodePools.setManagement` | POST | `v1/{+name}:setManagement` | Sets the NodeManagement options for a node pool. |
| `container.projects.locations.clusters.nodePools.delete` | DELETE | `v1/{+name}` | Deletes a node pool from a cluster. |
| `container.projects.locations.clusters.nodePools.setAutoscaling` | POST | `v1/{+name}:setAutoscaling` | Sets the autoscaling settings for the specified node pool. |
| `container.projects.locations.clusters.nodePools.rollback` | POST | `v1/{+name}:rollback` | Rolls back a previously Aborted or Failed NodePool upgrade. This makes no changes if the last upg... |
| `container.projects.locations.clusters.nodePools.update` | PUT | `v1/{+name}` | Updates the version and/or image type for the specified node pool. |
| `container.projects.locations.clusters.nodePools.create` | POST | `v1/{+parent}/nodePools` | Creates a node pool for a cluster. |
| `container.projects.locations.clusters.well-known.getOpenid-configuration` | GET | `v1/{+parent}/.well-known/openid-configuration` | Gets the OIDC discovery document for the cluster. See the [OpenID Connect Discovery 1.0 specifica... |
| `container.projects.locations.operations.list` | GET | `v1/{+parent}/operations` | Lists all operations in a project in a specific zone or all zones. |
| `container.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the specified operation. |
| `container.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Cancels the specified operation. |

### `container.projects.aggregated.usableSubnetworks.list`

**GET** `v1/{+parent}/aggregated/usableSubnetworks`

Lists subnetworks that are usable for creating clusters in a project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The parent project where subnetworks are usable. Specified in the format `projects/*`. |
| `filter` | `string` | query | No | Filtering currently only supports equality on the networkProjectId and must be in the form: "networkProjectId=[PROJEC... |
| `pageSize` | `integer` | query | No | The max number of results per page that should be returned. If the number of available results is larger than `page_s... |
| `pageToken` | `string` | query | No | Specifies a page token to use. Set this to the nextPageToken returned by previous list requests to get the next page ... |

**Response**: `ListUsableSubnetworksResponse`

```typescript
const res = await container.usableSubnetworks.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.zones.getServerconfig`

**GET** `v1/projects/{projectId}/zones/{zone}/serverconfig`

Returns configuration info about the Google Kubernetes Engine service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/do... |
| `zone` | `string` | path | Yes | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) to re... |
| `name` | `string` | query | No | The name (project and location) of the server config to get, specified in the format `projects/*/locations/*`. |

**Response**: `ServerConfig`

```typescript
const res = await container.zones.getServerconfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.zones.operations.get`

**GET** `v1/projects/{projectId}/zones/{zone}/operations/{operationId}`

Gets the specified operation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/do... |
| `zone` | `string` | path | Yes | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in wh... |
| `operationId` | `string` | path | Yes | Deprecated. The server-assigned `name` of the operation. This field has been deprecated and replaced by the name field. |
| `name` | `string` | query | No | The name (project, location, operation id) of the operation to get. Specified in the format `projects/*/locations/*/o... |

**Response**: `Operation`

```typescript
const res = await container.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.zones.operations.list`

**GET** `v1/projects/{projectId}/zones/{zone}/operations`

Lists all operations in a project in a specific zone or all zones.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/do... |
| `zone` | `string` | path | Yes | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) to re... |
| `parent` | `string` | query | No | The parent (project and location) where the operations will be listed. Specified in the format `projects/*/locations/... |

**Response**: `ListOperationsResponse`

```typescript
const res = await container.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.zones.operations.cancel`

**POST** `v1/projects/{projectId}/zones/{zone}/operations/{operationId}:cancel`

Cancels the specified operation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/do... |
| `zone` | `string` | path | Yes | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in wh... |
| `operationId` | `string` | path | Yes | Deprecated. The server-assigned `name` of the operation. This field has been deprecated and replaced by the name field. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await container.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.zones.clusters.addons`

**POST** `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/addons`

Sets the addons for a specific cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/do... |
| `zone` | `string` | path | Yes | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in wh... |
| `clusterId` | `string` | path | Yes | Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field. |

**Request body**: `SetAddonsConfigRequest`

**Response**: `Operation`

```typescript
const res = await container.clusters.addons({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.zones.clusters.master`

**POST** `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/master`

Updates the master for a specific cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/do... |
| `zone` | `string` | path | Yes | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in wh... |
| `clusterId` | `string` | path | Yes | Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field. |

**Request body**: `UpdateMasterRequest`

**Response**: `Operation`

```typescript
const res = await container.clusters.master({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.zones.clusters.create`

**POST** `v1/projects/{projectId}/zones/{zone}/clusters`

Creates a cluster, consisting of the specified number and type of Google Compute Engine instances. By default, the cluster is created in the project's [default network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks). One firewall is added for the cluster. After cluster creation, the kubelet creates routes for each node to allow the containers on that node to communicate with all other instances in the cluster. Finally, an entry is added to the project's global metadata indicating which CIDR range the cluster is using.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/do... |
| `zone` | `string` | path | Yes | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in wh... |

**Request body**: `CreateClusterRequest`

**Response**: `Operation`

```typescript
const res = await container.clusters.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.zones.clusters.resourceLabels`

**POST** `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/resourceLabels`

Sets labels on a cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/do... |
| `zone` | `string` | path | Yes | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in wh... |
| `clusterId` | `string` | path | Yes | Deprecated. The name of the cluster. This field has been deprecated and replaced by the name field. |

**Request body**: `SetLabelsRequest`

**Response**: `Operation`

```typescript
const res = await container.clusters.resourceLabels({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.zones.clusters.delete`

**DELETE** `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}`

Deletes the cluster, including the Kubernetes endpoint and all worker nodes. Firewalls and routes that were configured during cluster creation are also deleted. Other Google Compute Engine resources that might be in use by the cluster, such as load balancer resources, are not deleted if they weren't present when the cluster was initially created.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/do... |
| `zone` | `string` | path | Yes | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in wh... |
| `clusterId` | `string` | path | Yes | Deprecated. The name of the cluster to delete. This field has been deprecated and replaced by the name field. |
| `name` | `string` | query | No | The name (project, location, cluster) of the cluster to delete. Specified in the format `projects/*/locations/*/clust... |

**Response**: `Operation`

```typescript
const res = await container.clusters.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.zones.clusters.get`

**GET** `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}`

Gets the details of a specific cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/do... |
| `zone` | `string` | path | Yes | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in wh... |
| `clusterId` | `string` | path | Yes | Deprecated. The name of the cluster to retrieve. This field has been deprecated and replaced by the name field. |
| `name` | `string` | query | No | The name (project, location, cluster) of the cluster to retrieve. Specified in the format `projects/*/locations/*/clu... |

**Response**: `Cluster`

```typescript
const res = await container.clusters.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.zones.clusters.locations`

**POST** `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/locations`

Sets the locations for a specific cluster. Deprecated. Use [projects.locations.clusters.update](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters/update) instead.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/do... |
| `zone` | `string` | path | Yes | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in wh... |
| `clusterId` | `string` | path | Yes | Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field. |

**Request body**: `SetLocationsRequest`

**Response**: `Operation`

```typescript
const res = await container.clusters.locations({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.zones.clusters.list`

**GET** `v1/projects/{projectId}/zones/{zone}/clusters`

Lists all clusters owned by a project in either the specified zone or all zones.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/do... |
| `zone` | `string` | path | Yes | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in wh... |
| `parent` | `string` | query | No | The parent (project and location) where the clusters will be listed. Specified in the format `projects/*/locations/*`... |

**Response**: `ListClustersResponse`

```typescript
const res = await container.clusters.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.zones.clusters.setMasterAuth`

**POST** `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}:setMasterAuth`

Sets master auth materials. Currently supports changing the admin password or a specific cluster, either via password generation or explicitly setting the password.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/do... |
| `zone` | `string` | path | Yes | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in wh... |
| `clusterId` | `string` | path | Yes | Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field. |

**Request body**: `SetMasterAuthRequest`

**Response**: `Operation`

```typescript
const res = await container.clusters.setMasterAuth({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.zones.clusters.update`

**PUT** `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}`

Updates the settings of a specific cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/do... |
| `zone` | `string` | path | Yes | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in wh... |
| `clusterId` | `string` | path | Yes | Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field. |

**Request body**: `UpdateClusterRequest`

**Response**: `Operation`

```typescript
const res = await container.clusters.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.zones.clusters.legacyAbac`

**POST** `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/legacyAbac`

Enables or disables the ABAC authorization mechanism on a cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/do... |
| `zone` | `string` | path | Yes | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in wh... |
| `clusterId` | `string` | path | Yes | Deprecated. The name of the cluster to update. This field has been deprecated and replaced by the name field. |

**Request body**: `SetLegacyAbacRequest`

**Response**: `Operation`

```typescript
const res = await container.clusters.legacyAbac({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.zones.clusters.setMaintenancePolicy`

**POST** `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}:setMaintenancePolicy`

Sets the maintenance policy for a cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/docs... |
| `zone` | `string` | path | Yes | Required. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in whic... |
| `clusterId` | `string` | path | Yes | Required. The name of the cluster to update. |

**Request body**: `SetMaintenancePolicyRequest`

**Response**: `Operation`

```typescript
const res = await container.clusters.setMaintenancePolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.zones.clusters.startIpRotation`

**POST** `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}:startIpRotation`

Starts master IP rotation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/do... |
| `zone` | `string` | path | Yes | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in wh... |
| `clusterId` | `string` | path | Yes | Deprecated. The name of the cluster. This field has been deprecated and replaced by the name field. |

**Request body**: `StartIPRotationRequest`

**Response**: `Operation`

```typescript
const res = await container.clusters.startIpRotation({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.zones.clusters.logging`

**POST** `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/logging`

Sets the logging service for a specific cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/do... |
| `zone` | `string` | path | Yes | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in wh... |
| `clusterId` | `string` | path | Yes | Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field. |

**Request body**: `SetLoggingServiceRequest`

**Response**: `Operation`

```typescript
const res = await container.clusters.logging({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.zones.clusters.fetchClusterUpgradeInfo`

**GET** `v1/{+name}:fetchClusterUpgradeInfo`

Fetch upgrade information of a specific cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name (project, location, cluster) of the cluster to get. Specified in the format `projects/*/locations/... |
| `version` | `string` | query | No | API request version that initiates this operation. |

**Response**: `ClusterUpgradeInfo`

```typescript
const res = await container.clusters.fetchClusterUpgradeInfo({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.zones.clusters.monitoring`

**POST** `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/monitoring`

Sets the monitoring service for a specific cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/do... |
| `zone` | `string` | path | Yes | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in wh... |
| `clusterId` | `string` | path | Yes | Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field. |

**Request body**: `SetMonitoringServiceRequest`

**Response**: `Operation`

```typescript
const res = await container.clusters.monitoring({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.zones.clusters.completeIpRotation`

**POST** `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}:completeIpRotation`

Completes master IP rotation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/do... |
| `zone` | `string` | path | Yes | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in wh... |
| `clusterId` | `string` | path | Yes | Deprecated. The name of the cluster. This field has been deprecated and replaced by the name field. |

**Request body**: `CompleteIPRotationRequest`

**Response**: `Operation`

```typescript
const res = await container.clusters.completeIpRotation({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.zones.clusters.setNetworkPolicy`

**POST** `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}:setNetworkPolicy`

Enables or disables Network Policy for a cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/do... |
| `zone` | `string` | path | Yes | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in wh... |
| `clusterId` | `string` | path | Yes | Deprecated. The name of the cluster. This field has been deprecated and replaced by the name field. |

**Request body**: `SetNetworkPolicyRequest`

**Response**: `Operation`

```typescript
const res = await container.clusters.setNetworkPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.zones.clusters.nodePools.autoscaling`

**POST** `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools/{nodePoolId}/autoscaling`

Sets the autoscaling settings for the specified node pool.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/do... |
| `zone` | `string` | path | Yes | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in wh... |
| `clusterId` | `string` | path | Yes | Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field. |
| `nodePoolId` | `string` | path | Yes | Deprecated. The name of the node pool to upgrade. This field has been deprecated and replaced by the name field. |

**Request body**: `SetNodePoolAutoscalingRequest`

**Response**: `Operation`

```typescript
const res = await container.nodePools.autoscaling({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.zones.clusters.nodePools.get`

**GET** `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools/{nodePoolId}`

Retrieves the requested node pool.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/do... |
| `zone` | `string` | path | Yes | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in wh... |
| `clusterId` | `string` | path | Yes | Deprecated. The name of the cluster. This field has been deprecated and replaced by the name field. |
| `nodePoolId` | `string` | path | Yes | Deprecated. The name of the node pool. This field has been deprecated and replaced by the name field. |
| `name` | `string` | query | No | The name (project, location, cluster, node pool id) of the node pool to get. Specified in the format `projects/*/loca... |

**Response**: `NodePool`

```typescript
const res = await container.nodePools.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.zones.clusters.nodePools.fetchNodePoolUpgradeInfo`

**GET** `v1/{+name}:fetchNodePoolUpgradeInfo`

Fetch upgrade information of a specific nodepool.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name (project, location, cluster, nodepool) of the nodepool to get. Specified in the format `projects/*... |
| `version` | `string` | query | No | API request version that initiates this operation. |

**Response**: `NodePoolUpgradeInfo`

```typescript
const res = await container.nodePools.fetchNodePoolUpgradeInfo({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.zones.clusters.nodePools.delete`

**DELETE** `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools/{nodePoolId}`

Deletes a node pool from a cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/do... |
| `zone` | `string` | path | Yes | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in wh... |
| `clusterId` | `string` | path | Yes | Deprecated. The name of the cluster. This field has been deprecated and replaced by the name field. |
| `nodePoolId` | `string` | path | Yes | Deprecated. The name of the node pool to delete. This field has been deprecated and replaced by the name field. |
| `name` | `string` | query | No | The name (project, location, cluster, node pool id) of the node pool to delete. Specified in the format `projects/*/l... |

**Response**: `Operation`

```typescript
const res = await container.nodePools.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.zones.clusters.nodePools.setManagement`

**POST** `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools/{nodePoolId}/setManagement`

Sets the NodeManagement options for a node pool.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/do... |
| `zone` | `string` | path | Yes | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in wh... |
| `clusterId` | `string` | path | Yes | Deprecated. The name of the cluster to update. This field has been deprecated and replaced by the name field. |
| `nodePoolId` | `string` | path | Yes | Deprecated. The name of the node pool to update. This field has been deprecated and replaced by the name field. |

**Request body**: `SetNodePoolManagementRequest`

**Response**: `Operation`

```typescript
const res = await container.nodePools.setManagement({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.zones.clusters.nodePools.create`

**POST** `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools`

Creates a node pool for a cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/do... |
| `zone` | `string` | path | Yes | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in wh... |
| `clusterId` | `string` | path | Yes | Deprecated. The name of the cluster. This field has been deprecated and replaced by the parent field. |

**Request body**: `CreateNodePoolRequest`

**Response**: `Operation`

```typescript
const res = await container.nodePools.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.zones.clusters.nodePools.list`

**GET** `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools`

Lists the node pools for a cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/do... |
| `zone` | `string` | path | Yes | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in wh... |
| `clusterId` | `string` | path | Yes | Deprecated. The name of the cluster. This field has been deprecated and replaced by the parent field. |
| `parent` | `string` | query | No | The parent (project, location, cluster name) where the node pools will be listed. Specified in the format `projects/*... |

**Response**: `ListNodePoolsResponse`

```typescript
const res = await container.nodePools.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.zones.clusters.nodePools.rollback`

**POST** `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools/{nodePoolId}:rollback`

Rolls back a previously Aborted or Failed NodePool upgrade. This makes no changes if the last upgrade successfully completed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/do... |
| `zone` | `string` | path | Yes | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in wh... |
| `clusterId` | `string` | path | Yes | Deprecated. The name of the cluster to rollback. This field has been deprecated and replaced by the name field. |
| `nodePoolId` | `string` | path | Yes | Deprecated. The name of the node pool to rollback. This field has been deprecated and replaced by the name field. |

**Request body**: `RollbackNodePoolUpgradeRequest`

**Response**: `Operation`

```typescript
const res = await container.nodePools.rollback({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.zones.clusters.nodePools.update`

**POST** `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools/{nodePoolId}/update`

Updates the version and/or image type for the specified node pool.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/do... |
| `zone` | `string` | path | Yes | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in wh... |
| `clusterId` | `string` | path | Yes | Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by the name field. |
| `nodePoolId` | `string` | path | Yes | Deprecated. The name of the node pool to upgrade. This field has been deprecated and replaced by the name field. |

**Request body**: `UpdateNodePoolRequest`

**Response**: `Operation`

```typescript
const res = await container.nodePools.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.zones.clusters.nodePools.setSize`

**POST** `v1/projects/{projectId}/zones/{zone}/clusters/{clusterId}/nodePools/{nodePoolId}/setSize`

Sets the size for a specific node pool. The new size will be used for all replicas, including future replicas created by modifying NodePool.locations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/do... |
| `zone` | `string` | path | Yes | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in wh... |
| `clusterId` | `string` | path | Yes | Deprecated. The name of the cluster to update. This field has been deprecated and replaced by the name field. |
| `nodePoolId` | `string` | path | Yes | Deprecated. The name of the node pool to update. This field has been deprecated and replaced by the name field. |

**Request body**: `SetNodePoolSizeRequest`

**Response**: `Operation`

```typescript
const res = await container.nodePools.setSize({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.locations.getServerConfig`

**GET** `v1/{+name}/serverConfig`

Returns configuration info about the Google Kubernetes Engine service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name (project and location) of the server config to get, specified in the format `projects/*/locations/*`. |
| `projectId` | `string` | query | No | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/do... |
| `zone` | `string` | query | No | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) to re... |

**Response**: `ServerConfig`

```typescript
const res = await container.locations.getServerConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.locations.clusters.getJwks`

**GET** `v1/{+parent}/jwks`

Gets the public component of the cluster signing keys in JSON Web Key format.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The cluster (project, location, cluster name) to get keys for. Specified in the format `projects/*/locations/*/cluste... |

**Response**: `GetJSONWebKeysResponse`

```typescript
const res = await container.clusters.getJwks({
  // parameters
});
```

---

### `container.projects.locations.clusters.setMaintenancePolicy`

**POST** `v1/{+name}:setMaintenancePolicy`

Sets the maintenance policy for a cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name (project, location, cluster name) of the cluster to set maintenance policy. Specified in the format `project... |

**Request body**: `SetMaintenancePolicyRequest`

**Response**: `Operation`

```typescript
const res = await container.clusters.setMaintenancePolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.locations.clusters.list`

**GET** `v1/{+parent}/clusters`

Lists all clusters owned by a project in either the specified zone or all zones.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The parent (project and location) where the clusters will be listed. Specified in the format `projects/*/locations/*`... |
| `projectId` | `string` | query | No | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/do... |
| `zone` | `string` | query | No | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in wh... |

**Response**: `ListClustersResponse`

```typescript
const res = await container.clusters.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.locations.clusters.updateMaster`

**POST** `v1/{+name}:updateMaster`

Updates the master for a specific cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name (project, location, cluster) of the cluster to update. Specified in the format `projects/*/locations/*/clust... |

**Request body**: `UpdateMasterRequest`

**Response**: `Operation`

```typescript
const res = await container.clusters.updateMaster({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.locations.clusters.setResourceLabels`

**POST** `v1/{+name}:setResourceLabels`

Sets labels on a cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name (project, location, cluster name) of the cluster to set labels. Specified in the format `projects/*/location... |

**Request body**: `SetLabelsRequest`

**Response**: `Operation`

```typescript
const res = await container.clusters.setResourceLabels({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.locations.clusters.setNetworkPolicy`

**POST** `v1/{+name}:setNetworkPolicy`

Enables or disables Network Policy for a cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name (project, location, cluster name) of the cluster to set networking policy. Specified in the format `projects... |

**Request body**: `SetNetworkPolicyRequest`

**Response**: `Operation`

```typescript
const res = await container.clusters.setNetworkPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.locations.clusters.fetchClusterUpgradeInfo`

**GET** `v1/{+name}:fetchClusterUpgradeInfo`

Fetch upgrade information of a specific cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name (project, location, cluster) of the cluster to get. Specified in the format `projects/*/locations/... |
| `version` | `string` | query | No | API request version that initiates this operation. |

**Response**: `ClusterUpgradeInfo`

```typescript
const res = await container.clusters.fetchClusterUpgradeInfo({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.locations.clusters.checkAutopilotCompatibility`

**GET** `v1/{+name}:checkAutopilotCompatibility`

Checks the cluster compatibility with Autopilot mode, and returns a list of compatibility issues.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name (project, location, cluster) of the cluster to retrieve. Specified in the format `projects/*/locations/*/clu... |

**Response**: `CheckAutopilotCompatibilityResponse`

```typescript
const res = await container.clusters.checkAutopilotCompatibility({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.locations.clusters.setMasterAuth`

**POST** `v1/{+name}:setMasterAuth`

Sets master auth materials. Currently supports changing the admin password or a specific cluster, either via password generation or explicitly setting the password.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name (project, location, cluster) of the cluster to set auth. Specified in the format `projects/*/locations/*/clu... |

**Request body**: `SetMasterAuthRequest`

**Response**: `Operation`

```typescript
const res = await container.clusters.setMasterAuth({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.locations.clusters.completeIpRotation`

**POST** `v1/{+name}:completeIpRotation`

Completes master IP rotation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name (project, location, cluster name) of the cluster to complete IP rotation. Specified in the format `projects/... |

**Request body**: `CompleteIPRotationRequest`

**Response**: `Operation`

```typescript
const res = await container.clusters.completeIpRotation({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.locations.clusters.create`

**POST** `v1/{+parent}/clusters`

Creates a cluster, consisting of the specified number and type of Google Compute Engine instances. By default, the cluster is created in the project's [default network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks). One firewall is added for the cluster. After cluster creation, the kubelet creates routes for each node to allow the containers on that node to communicate with all other instances in the cluster. Finally, an entry is added to the project's global metadata indicating which CIDR range the cluster is using.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The parent (project and location) where the cluster will be created. Specified in the format `projects/*/locations/*`. |

**Request body**: `CreateClusterRequest`

**Response**: `Operation`

```typescript
const res = await container.clusters.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.locations.clusters.setAddons`

**POST** `v1/{+name}:setAddons`

Sets the addons for a specific cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name (project, location, cluster) of the cluster to set addons. Specified in the format `projects/*/locations/*/c... |

**Request body**: `SetAddonsConfigRequest`

**Response**: `Operation`

```typescript
const res = await container.clusters.setAddons({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.locations.clusters.setLegacyAbac`

**POST** `v1/{+name}:setLegacyAbac`

Enables or disables the ABAC authorization mechanism on a cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name (project, location, cluster name) of the cluster to set legacy abac. Specified in the format `projects/*/loc... |

**Request body**: `SetLegacyAbacRequest`

**Response**: `Operation`

```typescript
const res = await container.clusters.setLegacyAbac({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.locations.clusters.get`

**GET** `v1/{+name}`

Gets the details of a specific cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name (project, location, cluster) of the cluster to retrieve. Specified in the format `projects/*/locations/*/clu... |
| `clusterId` | `string` | query | No | Deprecated. The name of the cluster to retrieve. This field has been deprecated and replaced by the name field. |
| `projectId` | `string` | query | No | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/do... |
| `zone` | `string` | query | No | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in wh... |

**Response**: `Cluster`

```typescript
const res = await container.clusters.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.locations.clusters.setLogging`

**POST** `v1/{+name}:setLogging`

Sets the logging service for a specific cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name (project, location, cluster) of the cluster to set logging. Specified in the format `projects/*/locations/*/... |

**Request body**: `SetLoggingServiceRequest`

**Response**: `Operation`

```typescript
const res = await container.clusters.setLogging({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.locations.clusters.setMonitoring`

**POST** `v1/{+name}:setMonitoring`

Sets the monitoring service for a specific cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name (project, location, cluster) of the cluster to set monitoring. Specified in the format `projects/*/locations... |

**Request body**: `SetMonitoringServiceRequest`

**Response**: `Operation`

```typescript
const res = await container.clusters.setMonitoring({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.locations.clusters.update`

**PUT** `v1/{+name}`

Updates the settings of a specific cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name (project, location, cluster) of the cluster to update. Specified in the format `projects/*/locations/*/clust... |

**Request body**: `UpdateClusterRequest`

**Response**: `Operation`

```typescript
const res = await container.clusters.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.locations.clusters.setLocations`

**POST** `v1/{+name}:setLocations`

Sets the locations for a specific cluster. Deprecated. Use [projects.locations.clusters.update](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters/update) instead.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name (project, location, cluster) of the cluster to set locations. Specified in the format `projects/*/locations/... |

**Request body**: `SetLocationsRequest`

**Response**: `Operation`

```typescript
const res = await container.clusters.setLocations({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.locations.clusters.delete`

**DELETE** `v1/{+name}`

Deletes the cluster, including the Kubernetes endpoint and all worker nodes. Firewalls and routes that were configured during cluster creation are also deleted. Other Google Compute Engine resources that might be in use by the cluster, such as load balancer resources, are not deleted if they weren't present when the cluster was initially created.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name (project, location, cluster) of the cluster to delete. Specified in the format `projects/*/locations/*/clust... |
| `clusterId` | `string` | query | No | Deprecated. The name of the cluster to delete. This field has been deprecated and replaced by the name field. |
| `projectId` | `string` | query | No | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/do... |
| `zone` | `string` | query | No | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in wh... |

**Response**: `Operation`

```typescript
const res = await container.clusters.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.locations.clusters.startIpRotation`

**POST** `v1/{+name}:startIpRotation`

Starts master IP rotation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name (project, location, cluster name) of the cluster to start IP rotation. Specified in the format `projects/*/l... |

**Request body**: `StartIPRotationRequest`

**Response**: `Operation`

```typescript
const res = await container.clusters.startIpRotation({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.locations.clusters.nodePools.list`

**GET** `v1/{+parent}/nodePools`

Lists the node pools for a cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The parent (project, location, cluster name) where the node pools will be listed. Specified in the format `projects/*... |
| `clusterId` | `string` | query | No | Deprecated. The name of the cluster. This field has been deprecated and replaced by the parent field. |
| `projectId` | `string` | query | No | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/do... |
| `zone` | `string` | query | No | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in wh... |

**Response**: `ListNodePoolsResponse`

```typescript
const res = await container.nodePools.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.locations.clusters.nodePools.setSize`

**POST** `v1/{+name}:setSize`

Sets the size for a specific node pool. The new size will be used for all replicas, including future replicas created by modifying NodePool.locations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name (project, location, cluster, node pool id) of the node pool to set size. Specified in the format `projects/*... |

**Request body**: `SetNodePoolSizeRequest`

**Response**: `Operation`

```typescript
const res = await container.nodePools.setSize({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.locations.clusters.nodePools.fetchNodePoolUpgradeInfo`

**GET** `v1/{+name}:fetchNodePoolUpgradeInfo`

Fetch upgrade information of a specific nodepool.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name (project, location, cluster, nodepool) of the nodepool to get. Specified in the format `projects/*... |
| `version` | `string` | query | No | API request version that initiates this operation. |

**Response**: `NodePoolUpgradeInfo`

```typescript
const res = await container.nodePools.fetchNodePoolUpgradeInfo({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.locations.clusters.nodePools.get`

**GET** `v1/{+name}`

Retrieves the requested node pool.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name (project, location, cluster, node pool id) of the node pool to get. Specified in the format `projects/*/loca... |
| `clusterId` | `string` | query | No | Deprecated. The name of the cluster. This field has been deprecated and replaced by the name field. |
| `nodePoolId` | `string` | query | No | Deprecated. The name of the node pool. This field has been deprecated and replaced by the name field. |
| `projectId` | `string` | query | No | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/do... |
| `zone` | `string` | query | No | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in wh... |

**Response**: `NodePool`

```typescript
const res = await container.nodePools.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.locations.clusters.nodePools.completeUpgrade`

**POST** `v1/{+name}:completeUpgrade`

CompleteNodePoolUpgrade will signal an on-going node pool upgrade to complete.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name (project, location, cluster, node pool id) of the node pool to complete upgrade. Specified in the format `pr... |

**Request body**: `CompleteNodePoolUpgradeRequest`

**Response**: `Empty`

```typescript
const res = await container.nodePools.completeUpgrade({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.locations.clusters.nodePools.setManagement`

**POST** `v1/{+name}:setManagement`

Sets the NodeManagement options for a node pool.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name (project, location, cluster, node pool id) of the node pool to set management properties. Specified in the f... |

**Request body**: `SetNodePoolManagementRequest`

**Response**: `Operation`

```typescript
const res = await container.nodePools.setManagement({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.locations.clusters.nodePools.delete`

**DELETE** `v1/{+name}`

Deletes a node pool from a cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name (project, location, cluster, node pool id) of the node pool to delete. Specified in the format `projects/*/l... |
| `clusterId` | `string` | query | No | Deprecated. The name of the cluster. This field has been deprecated and replaced by the name field. |
| `nodePoolId` | `string` | query | No | Deprecated. The name of the node pool to delete. This field has been deprecated and replaced by the name field. |
| `projectId` | `string` | query | No | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/do... |
| `zone` | `string` | query | No | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in wh... |

**Response**: `Operation`

```typescript
const res = await container.nodePools.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.locations.clusters.nodePools.setAutoscaling`

**POST** `v1/{+name}:setAutoscaling`

Sets the autoscaling settings for the specified node pool.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name (project, location, cluster, node pool) of the node pool to set autoscaler settings. Specified in the format... |

**Request body**: `SetNodePoolAutoscalingRequest`

**Response**: `Operation`

```typescript
const res = await container.nodePools.setAutoscaling({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.locations.clusters.nodePools.rollback`

**POST** `v1/{+name}:rollback`

Rolls back a previously Aborted or Failed NodePool upgrade. This makes no changes if the last upgrade successfully completed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name (project, location, cluster, node pool id) of the node poll to rollback upgrade. Specified in the format `pr... |

**Request body**: `RollbackNodePoolUpgradeRequest`

**Response**: `Operation`

```typescript
const res = await container.nodePools.rollback({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.locations.clusters.nodePools.update`

**PUT** `v1/{+name}`

Updates the version and/or image type for the specified node pool.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name (project, location, cluster, node pool) of the node pool to update. Specified in the format `projects/*/loca... |

**Request body**: `UpdateNodePoolRequest`

**Response**: `Operation`

```typescript
const res = await container.nodePools.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.locations.clusters.nodePools.create`

**POST** `v1/{+parent}/nodePools`

Creates a node pool for a cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The parent (project, location, cluster name) where the node pool will be created. Specified in the format `projects/*... |

**Request body**: `CreateNodePoolRequest`

**Response**: `Operation`

```typescript
const res = await container.nodePools.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.locations.clusters.well-known.getOpenid-configuration`

**GET** `v1/{+parent}/.well-known/openid-configuration`

Gets the OIDC discovery document for the cluster. See the [OpenID Connect Discovery 1.0 specification](https://openid.net/specs/openid-connect-discovery-1_0.html) for details.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The cluster (project, location, cluster name) to get the discovery document for. Specified in the format `projects/*/... |

**Response**: `GetOpenIDConfigResponse`

```typescript
const res = await container.well-known.getOpenid-configuration({
  // parameters
});
```

---

### `container.projects.locations.operations.list`

**GET** `v1/{+parent}/operations`

Lists all operations in a project in a specific zone or all zones.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The parent (project and location) where the operations will be listed. Specified in the format `projects/*/locations/... |
| `projectId` | `string` | query | No | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/do... |
| `zone` | `string` | query | No | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) to re... |

**Response**: `ListOperationsResponse`

```typescript
const res = await container.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the specified operation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name (project, location, operation id) of the operation to get. Specified in the format `projects/*/locations/*/o... |
| `operationId` | `string` | query | No | Deprecated. The server-assigned `name` of the operation. This field has been deprecated and replaced by the name field. |
| `projectId` | `string` | query | No | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com/resource-manager/do... |
| `zone` | `string` | query | No | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zones#available) in wh... |

**Response**: `Operation`

```typescript
const res = await container.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `container.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Cancels the specified operation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name (project, location, operation id) of the operation to cancel. Specified in the format `projects/*/locations/... |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await container.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AcceleratorConfig`

AcceleratorConfig represents a Hardware Accelerator request.

| Property | Type | Description |
|----------|------|-------------|
| `acceleratorCount` | `string` | The number of the accelerator cards exposed to an instance. |
| `acceleratorType` | `string` | The accelerator type resource name. List of supported accelerators [here](https://cloud.google.co... |
| `gpuDriverInstallationConfig` | `GPUDriverInstallationConfig` | The configuration for auto installation of GPU driver. |
| `gpuPartitionSize` | `string` | Size of partitions to create on the GPU. Valid values are described in the NVIDIA [mig user guide... |
| `gpuSharingConfig` | `GPUSharingConfig` | The configuration for GPU sharing options. |

### `AdditionalIPRangesConfig`

AdditionalIPRangesConfig is the configuration for individual additional subnetwork attached to the cluster

| Property | Type | Description |
|----------|------|-------------|
| `podIpv4RangeNames` | `array<string>` | List of secondary ranges names within this subnetwork that can be used for pod IPs. Example1: gke... |
| `subnetwork` | `string` | Name of the subnetwork. This can be the full path of the subnetwork or just the name. Example1: m... |

### `AdditionalNodeNetworkConfig`

AdditionalNodeNetworkConfig is the configuration for additional node networks within the NodeNetworkConfig message

| Property | Type | Description |
|----------|------|-------------|
| `network` | `string` | Name of the VPC where the additional interface belongs |
| `subnetwork` | `string` | Name of the subnetwork where the additional interface belongs |

### `AdditionalPodNetworkConfig`

AdditionalPodNetworkConfig is the configuration for additional pod networks within the NodeNetworkConfig message

| Property | Type | Description |
|----------|------|-------------|
| `maxPodsPerNode` | `MaxPodsConstraint` | The maximum number of pods per node which use this pod network. |
| `networkAttachment` | `string` | The name of the network attachment for pods to communicate to; cannot be specified along with sub... |
| `secondaryPodRange` | `string` | The name of the secondary range on the subnet which provides IP address for this pod range. |
| `subnetwork` | `string` | Name of the subnetwork where the additional pod network belongs. |

### `AdditionalPodRangesConfig`

AdditionalPodRangesConfig is the configuration for additional pod secondary ranges supporting the ClusterUpdate message.

| Property | Type | Description |
|----------|------|-------------|
| `podRangeInfo` | `array<RangeInfo>` | Output only. Information for additional pod range. |
| `podRangeNames` | `array<string>` | Name for pod secondary ipv4 range which has the actual range defined ahead. |

### `AddonsConfig`

Configuration for the addons that can be automatically spun up in the cluster, enabling additional functionality.

| Property | Type | Description |
|----------|------|-------------|
| `cloudRunConfig` | `CloudRunConfig` | Configuration for the Cloud Run addon, which allows the user to use a managed Knative service. |
| `configConnectorConfig` | `ConfigConnectorConfig` | Configuration for the ConfigConnector add-on, a Kubernetes extension to manage hosted Google Clou... |
| `dnsCacheConfig` | `DnsCacheConfig` | Configuration for NodeLocalDNS, a dns cache running on cluster nodes |
| `gcePersistentDiskCsiDriverConfig` | `GcePersistentDiskCsiDriverConfig` | Configuration for the Compute Engine Persistent Disk CSI driver. |
| `gcpFilestoreCsiDriverConfig` | `GcpFilestoreCsiDriverConfig` | Configuration for the Filestore CSI driver. |
| `gcsFuseCsiDriverConfig` | `GcsFuseCsiDriverConfig` | Configuration for the Cloud Storage Fuse CSI driver. |
| `gkeBackupAgentConfig` | `GkeBackupAgentConfig` | Configuration for the Backup for GKE agent addon. |
| `highScaleCheckpointingConfig` | `HighScaleCheckpointingConfig` | Configuration for the High Scale Checkpointing add-on. |
| `horizontalPodAutoscaling` | `HorizontalPodAutoscaling` | Configuration for the horizontal pod autoscaling feature, which increases or decreases the number... |
| `httpLoadBalancing` | `HttpLoadBalancing` | Configuration for the HTTP (L7) load balancing controller addon, which makes it easy to set up HT... |
| `kubernetesDashboard` | `KubernetesDashboard` | Configuration for the Kubernetes Dashboard. This addon is deprecated, and will be disabled in 1.1... |
| `lustreCsiDriverConfig` | `LustreCsiDriverConfig` | Configuration for the Lustre CSI driver. |
| `networkPolicyConfig` | `NetworkPolicyConfig` | Configuration for NetworkPolicy. This only tracks whether the addon is enabled or not on the Mast... |
| `parallelstoreCsiDriverConfig` | `ParallelstoreCsiDriverConfig` | Configuration for the Cloud Storage Parallelstore CSI driver. |
| `rayOperatorConfig` | `RayOperatorConfig` | Optional. Configuration for Ray Operator addon. |
| `statefulHaConfig` | `StatefulHAConfig` | Optional. Configuration for the StatefulHA add-on. |

### `AdvancedDatapathObservabilityConfig`

AdvancedDatapathObservabilityConfig specifies configuration of observability features of advanced datapath.

| Property | Type | Description |
|----------|------|-------------|
| `enableMetrics` | `boolean` | Expose flow metrics on nodes |
| `enableRelay` | `boolean` | Enable Relay component |
| `relayMode` | `string` | Method used to make Relay available |

### `AdvancedMachineFeatures`

Specifies options for controlling advanced machine features.

| Property | Type | Description |
|----------|------|-------------|
| `enableNestedVirtualization` | `boolean` | Whether or not to enable nested virtualization (defaults to false). |
| `performanceMonitoringUnit` | `string` | Type of Performance Monitoring Unit (PMU) requested on node pool instances. If unset, PMU will no... |
| `threadsPerCore` | `string` | The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to... |

### `AnonymousAuthenticationConfig`

AnonymousAuthenticationConfig defines the settings needed to limit endpoints that allow anonymous authentication.

| Property | Type | Description |
|----------|------|-------------|
| `mode` | `string` | Defines the mode of limiting anonymous access in the cluster. |

### `AuthenticatorGroupsConfig`

Configuration for returning group information from authenticators.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether this cluster should return group membership lookups during authentication using a group o... |
| `securityGroup` | `string` | The name of the security group-of-groups to be used. Only relevant if enabled = true. |

### `AutoIpamConfig`

AutoIpamConfig contains all information related to Auto IPAM

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | The flag that enables Auto IPAM on this cluster |

### `AutoMonitoringConfig`

AutoMonitoringConfig defines the configuration for GKE Workload Auto-Monitoring.

| Property | Type | Description |
|----------|------|-------------|
| `scope` | `string` | Scope for GKE Workload Auto-Monitoring. |

### `AutoUpgradeOptions`

AutoUpgradeOptions defines the set of options for the user to control how the Auto Upgrades will proceed.

| Property | Type | Description |
|----------|------|-------------|
| `autoUpgradeStartTime` | `string` | Output only. This field is set when upgrades are about to commence with the approximate start tim... |
| `description` | `string` | Output only. This field is set when upgrades are about to commence with the description of the up... |

### `Autopilot`

Autopilot is the configuration for Autopilot settings on the cluster.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Enable Autopilot |
| `privilegedAdmissionConfig` | `PrivilegedAdmissionConfig` | PrivilegedAdmissionConfig is the configuration related to privileged admission control. |
| `workloadPolicyConfig` | `WorkloadPolicyConfig` | WorkloadPolicyConfig is the configuration related to GCW workload policy |

### `AutopilotCompatibilityIssue`

AutopilotCompatibilityIssue contains information about a specific compatibility issue with Autopilot mode.

| Property | Type | Description |
|----------|------|-------------|
| `constraintType` | `string` | The constraint type of the issue. |
| `description` | `string` | The description of the issue. |
| `documentationUrl` | `string` | A URL to a public documentation, which addresses resolving this issue. |
| `incompatibilityType` | `string` | The incompatibility type of this issue. |
| `lastObservation` | `string` | The last time when this issue was observed. |
| `subjects` | `array<string>` | The name of the resources which are subject to this issue. |

### `AutopilotConfig`

AutopilotConfig contains configuration of autopilot feature for this nodepool.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Denotes that nodes belonging to this node pool are Autopilot nodes. |

### `AutoprovisioningNodePoolDefaults`

AutoprovisioningNodePoolDefaults contains defaults for a node pool created by NAP.

| Property | Type | Description |
|----------|------|-------------|
| `bootDiskKmsKey` | `string` | The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the no... |
| `diskSizeGb` | `integer` | Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB. ... |
| `diskType` | `string` | Type of the disk attached to each node (e.g. 'pd-standard', 'pd-ssd' or 'pd-balanced') If unspeci... |
| `imageType` | `string` | The image type to use for NAP created node. Please see https://cloud.google.com/kubernetes-engine... |
| `insecureKubeletReadonlyPortEnabled` | `boolean` | DEPRECATED. Use NodePoolAutoConfig.NodeKubeletConfig instead. |
| `management` | `NodeManagement` | Specifies the node management options for NAP created node-pools. |
| `minCpuPlatform` | `string` | Deprecated. Minimum CPU platform to be used for NAP created node pools. The instance may be sched... |
| `oauthScopes` | `array<string>` | Scopes that are used by NAP when creating node pools. |
| `serviceAccount` | `string` | The Google Cloud Platform Service Account to be used by the node VMs. |
| `shieldedInstanceConfig` | `ShieldedInstanceConfig` | Shielded Instance options. |
| `upgradeSettings` | `UpgradeSettings` | Specifies the upgrade settings for NAP created node pools |

### `AutoscaledRolloutPolicy`

Autoscaled rollout policy utilizes the cluster autoscaler during blue-green upgrade to scale both the blue and green pools.

| Property | Type | Description |
|----------|------|-------------|
| `waitForDrainDuration` | `string` | Optional. Time to wait after cordoning the blue pool before draining the nodes. Defaults to 3 day... |

### `BestEffortProvisioning`

Best effort provisioning.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | When this is enabled, cluster/node pool creations will ignore non-fatal errors like stockout to b... |
| `minProvisionNodes` | `integer` | Minimum number of nodes to be provisioned to be considered as succeeded, and the rest of nodes wi... |

### `BigQueryDestination`

Parameters for using BigQuery as the destination of resource usage export.

| Property | Type | Description |
|----------|------|-------------|
| `datasetId` | `string` | The ID of a BigQuery Dataset. |

### `BinaryAuthorization`

Configuration for Binary Authorization.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | This field is deprecated. Leave this unset and instead configure BinaryAuthorization using evalua... |
| `evaluationMode` | `string` | Mode of operation for binauthz policy evaluation. If unspecified, defaults to DISABLED. |

### `BlueGreenInfo`

Information relevant to blue-green upgrade.

| Property | Type | Description |
|----------|------|-------------|
| `blueInstanceGroupUrls` | `array<string>` | The resource URLs of the [managed instance groups] (/compute/docs/instance-groups/creating-groups... |
| `bluePoolDeletionStartTime` | `string` | Time to start deleting blue pool to complete blue-green upgrade, in [RFC3339](https://www.ietf.or... |
| `greenInstanceGroupUrls` | `array<string>` | The resource URLs of the [managed instance groups] (/compute/docs/instance-groups/creating-groups... |
| `greenPoolVersion` | `string` | Version of green pool. |
| `phase` | `string` | Current blue-green upgrade phase. |

### `BlueGreenSettings`

Settings for blue-green upgrade.

| Property | Type | Description |
|----------|------|-------------|
| `autoscaledRolloutPolicy` | `AutoscaledRolloutPolicy` | Autoscaled policy for cluster autoscaler enabled blue-green upgrade. |
| `nodePoolSoakDuration` | `string` | Time needed after draining entire blue pool. After this period, blue pool will be cleaned up. |
| `standardRolloutPolicy` | `StandardRolloutPolicy` | Standard policy for the blue-green upgrade. |

### `BootDisk`

BootDisk specifies the boot disk configuration for nodepools.

| Property | Type | Description |
|----------|------|-------------|
| `diskType` | `string` | Disk type of the boot disk. (i.e. Hyperdisk-Balanced, PD-Balanced, etc.) |
| `provisionedIops` | `string` | For Hyperdisk-Balanced only, the provisioned IOPS config value. |
| `provisionedThroughput` | `string` | For Hyperdisk-Balanced only, the provisioned throughput config value. |
| `sizeGb` | `string` | Disk size in GB. Replaces NodeConfig.disk_size_gb |

### `CancelOperationRequest`

CancelOperationRequest cancels a single operation.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name (project, location, operation id) of the operation to cancel. Specified in the format `p... |
| `operationId` | `string` | Deprecated. The server-assigned `name` of the operation. This field has been deprecated and repla... |
| `projectId` | `string` | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com... |
| `zone` | `string` | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zo... |

### `CertificateAuthorityDomainConfig`

CertificateAuthorityDomainConfig configures one or more fully qualified domain names (FQDN) to a specific certificate.

| Property | Type | Description |
|----------|------|-------------|
| `fqdns` | `array<string>` | List of fully qualified domain names (FQDN). Specifying port is supported. Wildcards are NOT supp... |
| `gcpSecretManagerCertificateConfig` | `GCPSecretManagerCertificateConfig` | Secret Manager certificate configuration. |

### `CertificateConfig`

CertificateConfig configures certificate for the registry.

| Property | Type | Description |
|----------|------|-------------|
| `gcpSecretManagerSecretUri` | `string` | The URI configures a secret from [Secret Manager](https://cloud.google.com/secret-manager) in the... |

### `CertificateConfigPair`

CertificateConfigPair configures pairs of certificates, which is used for client certificate and key pairs under a registry.

| Property | Type | Description |
|----------|------|-------------|
| `cert` | `CertificateConfig` | Cert configures the client certificate. |
| `key` | `CertificateConfig` | Key configures the client private key. Optional. |

### `CheckAutopilotCompatibilityResponse`

CheckAutopilotCompatibilityResponse has a list of compatibility issues.

| Property | Type | Description |
|----------|------|-------------|
| `issues` | `array<AutopilotCompatibilityIssue>` | The list of issues for the given operation. |
| `summary` | `string` | The summary of the autopilot compatibility response. |

### `CidrBlock`

CidrBlock contains an optional name and one CIDR block.

| Property | Type | Description |
|----------|------|-------------|
| `cidrBlock` | `string` | cidr_block must be specified in CIDR notation. |
| `displayName` | `string` | display_name is an optional field for users to identify CIDR blocks. |

### `ClientCertificateConfig`

Configuration for client certificates on the cluster.

| Property | Type | Description |
|----------|------|-------------|
| `issueClientCertificate` | `boolean` | Issue a client certificate. |

### `CloudRunConfig`

Configuration options for the Cloud Run feature.

| Property | Type | Description |
|----------|------|-------------|
| `disabled` | `boolean` | Whether Cloud Run addon is enabled for this cluster. |
| `loadBalancerType` | `string` | Which load balancer type is installed for Cloud Run. |

### `Cluster`

A Google Kubernetes Engine cluster.

| Property | Type | Description |
|----------|------|-------------|
| `addonsConfig` | `AddonsConfig` | Configurations for the various addons available to run in the cluster. |
| `alphaClusterFeatureGates` | `array<string>` | The list of user specified Kubernetes feature gates. Each string represents the activation status... |
| `anonymousAuthenticationConfig` | `AnonymousAuthenticationConfig` | Configuration for limiting anonymous access to all endpoints except the health checks. |
| `authenticatorGroupsConfig` | `AuthenticatorGroupsConfig` | Configuration controlling RBAC group membership information. |
| `autopilot` | `Autopilot` | Autopilot configuration for the cluster. |
| `autoscaling` | `ClusterAutoscaling` | Cluster-level autoscaling configuration. |
| `binaryAuthorization` | `BinaryAuthorization` | Configuration for Binary Authorization. |
| `clusterIpv4Cidr` | `string` | The IP address range of the container pods in this cluster, in [CIDR](http://en.wikipedia.org/wik... |
| `compliancePostureConfig` | `CompliancePostureConfig` | Enable/Disable Compliance Posture features for the cluster. |
| `conditions` | `array<StatusCondition>` | Which conditions caused the current cluster state. |
| `confidentialNodes` | `ConfidentialNodes` | Configuration of Confidential Nodes. All the nodes in the cluster will be Confidential VM once en... |
| `controlPlaneEndpointsConfig` | `ControlPlaneEndpointsConfig` | Configuration for all cluster's control plane endpoints. |
| `costManagementConfig` | `CostManagementConfig` | Configuration for the fine-grained cost management feature. |
| `createTime` | `string` | Output only. The time the cluster was created, in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt)... |
| `currentMasterVersion` | `string` | Output only. The current software version of the master endpoint. |
| `currentNodeCount` | `integer` | Output only. The number of nodes currently in the cluster. Deprecated. Call Kubernetes API direct... |
| `currentNodeVersion` | `string` | Output only. Deprecated, use [NodePools.version](https://cloud.google.com/kubernetes-engine/docs/... |
| `databaseEncryption` | `DatabaseEncryption` | Configuration of etcd encryption. |
| `defaultMaxPodsConstraint` | `MaxPodsConstraint` | The default constraint on the maximum number of pods that can be run simultaneously on a node in ... |
| `description` | `string` | An optional description of this cluster. |
| `enableK8sBetaApis` | `K8sBetaAPIConfig` | Beta APIs Config |
| `enableKubernetesAlpha` | `boolean` | Kubernetes alpha features are enabled on this cluster. This includes alpha API groups (e.g. v1alp... |
| `enableTpu` | `boolean` | Enable the ability to use Cloud TPUs in this cluster. This field is deprecated due to the depreca... |
| `endpoint` | `string` | Output only. The IP address of this cluster's master endpoint. The endpoint can be accessed from ... |
| `enterpriseConfig` | `EnterpriseConfig` | GKE Enterprise Configuration. Deprecated: GKE Enterprise features are now available without an En... |
| `etag` | `string` | This checksum is computed by the server based on the value of cluster fields, and may be sent on ... |
| `expireTime` | `string` | Output only. The time the cluster will be automatically deleted in [RFC3339](https://www.ietf.org... |
| `fleet` | `Fleet` | Fleet information for the cluster. |
| `gkeAutoUpgradeConfig` | `GkeAutoUpgradeConfig` | Configuration for GKE auto upgrades. |
| `id` | `string` | Output only. Unique id for the cluster. |
| `identityServiceConfig` | `IdentityServiceConfig` | Configuration for Identity Service component. |
| `initialClusterVersion` | `string` | The initial Kubernetes version for this cluster. Valid versions are those found in validMasterVer... |
| `initialNodeCount` | `integer` | The number of nodes to create in this cluster. You must ensure that your Compute Engine [resource... |
| `instanceGroupUrls` | `array<string>` | Output only. Deprecated. Use node_pools.instance_group_urls. |
| `ipAllocationPolicy` | `IPAllocationPolicy` | Configuration for cluster IP allocation. |
| `labelFingerprint` | `string` | The fingerprint of the set of labels for this cluster. |
| `legacyAbac` | `LegacyAbac` | Configuration for the legacy ABAC authorization mode. |
| `location` | `string` | Output only. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/r... |
| `locations` | `array<string>` | The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) ... |
| `loggingConfig` | `LoggingConfig` | Logging configuration for the cluster. |
| `loggingService` | `string` | The logging service the cluster should use to write logs. Currently available options: * `logging... |
| `maintenancePolicy` | `MaintenancePolicy` | Configure the maintenance policy for this cluster. |
| `managedOpentelemetryConfig` | `ManagedOpenTelemetryConfig` | Configuration for Managed OpenTelemetry pipeline. |
| `masterAuth` | `MasterAuth` | The authentication information for accessing the master endpoint. If unspecified, the defaults ar... |
| `masterAuthorizedNetworksConfig` | `MasterAuthorizedNetworksConfig` | The configuration options for master authorized networks feature. Deprecated: Use ControlPlaneEnd... |
| `meshCertificates` | `MeshCertificates` | Configuration for issuance of mTLS keys and certificates to Kubernetes pods. |
| `monitoringConfig` | `MonitoringConfig` | Monitoring configuration for the cluster. |
| `monitoringService` | `string` | The monitoring service the cluster should use to write metrics. Currently available options: * `m... |
| `name` | `string` | The name of this cluster. The name must be unique within this project and location (e.g. zone or ... |
| `network` | `string` | The name of the Google Compute Engine [network](https://cloud.google.com/compute/docs/networks-an... |
| `networkConfig` | `NetworkConfig` | Configuration for cluster networking. |
| `networkPolicy` | `NetworkPolicy` | Configuration options for the NetworkPolicy feature. |
| `nodeConfig` | `NodeConfig` | Parameters used in creating the cluster's nodes. For requests, this field should only be used in ... |
| `nodeIpv4CidrSize` | `integer` | Output only. The size of the address space on each node for hosting containers. This is provision... |
| `nodePoolAutoConfig` | `NodePoolAutoConfig` | Node pool configs that apply to all auto-provisioned node pools in autopilot clusters and node au... |
| `nodePoolDefaults` | `NodePoolDefaults` | Default NodePool settings for the entire cluster. These settings are overridden if specified on t... |
| `nodePools` | `array<NodePool>` | The node pools associated with this cluster. This field should not be set if "node_config" or "in... |
| `notificationConfig` | `NotificationConfig` | Notification configuration of the cluster. |
| `parentProductConfig` | `ParentProductConfig` | The configuration of the parent product of the cluster. This field is used by Google internal pro... |
| `podAutoscaling` | `PodAutoscaling` | The config for pod autoscaling. |
| `privateClusterConfig` | `PrivateClusterConfig` | Configuration for private cluster. |
| `rbacBindingConfig` | `RBACBindingConfig` | RBACBindingConfig allows user to restrict ClusterRoleBindings an RoleBindings that can be created. |
| `releaseChannel` | `ReleaseChannel` | Release channel configuration. If left unspecified on cluster creation and a version is specified... |
| `resourceLabels` | `object` | The resource labels for the cluster to use to annotate any related Google Compute Engine resources. |
| `resourceUsageExportConfig` | `ResourceUsageExportConfig` | Configuration for exporting resource usages. Resource usage export is disabled when this config i... |
| `satisfiesPzi` | `boolean` | Output only. Reserved for future use. |
| `satisfiesPzs` | `boolean` | Output only. Reserved for future use. |
| `secretManagerConfig` | `SecretManagerConfig` | Secret CSI driver configuration. |
| `securityPostureConfig` | `SecurityPostureConfig` | Enable/Disable Security Posture API features for the cluster. |
| `selfLink` | `string` | Output only. Server-defined URL for the resource. |
| `servicesIpv4Cidr` | `string` | Output only. The IP address range of the Kubernetes services in this cluster, in [CIDR](http://en... |
| `shieldedNodes` | `ShieldedNodes` | Shielded Nodes configuration. |
| `status` | `string` | Output only. The current status of this cluster. |
| `statusMessage` | `string` | Output only. Deprecated. Use conditions instead. Additional information about the current status ... |
| `subnetwork` | `string` | The name of the Google Compute Engine [subnetwork](https://cloud.google.com/compute/docs/subnetwo... |
| `tpuIpv4CidrBlock` | `string` | Output only. The IP address range of the Cloud TPUs in this cluster, in [CIDR](http://en.wikipedi... |
| `userManagedKeysConfig` | `UserManagedKeysConfig` | The Custom keys configuration for the cluster. |
| `verticalPodAutoscaling` | `VerticalPodAutoscaling` | Cluster-level Vertical Pod Autoscaling configuration. |
| `workloadIdentityConfig` | `WorkloadIdentityConfig` | Configuration for the use of Kubernetes Service Accounts in IAM policies. |
| `zone` | `string` | Output only. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/z... |

### `ClusterAutoscaling`

ClusterAutoscaling contains global, per-cluster information required by Cluster Autoscaler to automatically adjust the size of the cluster and create/delete node pools based on the current needs.

| Property | Type | Description |
|----------|------|-------------|
| `autoprovisioningLocations` | `array<string>` | The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) ... |
| `autoprovisioningNodePoolDefaults` | `AutoprovisioningNodePoolDefaults` | AutoprovisioningNodePoolDefaults contains defaults for a node pool created by NAP. |
| `autoscalingProfile` | `string` | Defines autoscaling behaviour. |
| `defaultComputeClassConfig` | `DefaultComputeClassConfig` | Default compute class is a configuration for default compute class. |
| `enableNodeAutoprovisioning` | `boolean` | Enables automatic node pool creation and deletion. |
| `resourceLimits` | `array<ResourceLimit>` | Contains global constraints regarding minimum and maximum amount of resources in the cluster. |

### `ClusterNetworkPerformanceConfig`

Configuration of network bandwidth tiers

| Property | Type | Description |
|----------|------|-------------|
| `totalEgressBandwidthTier` | `string` | Specifies the total network bandwidth tier for NodePools in the cluster. |

### `ClusterUpdate`

ClusterUpdate describes an update to the cluster. Exactly one update can be applied to a cluster with each request, so at most one field can be provided.

| Property | Type | Description |
|----------|------|-------------|
| `additionalPodRangesConfig` | `AdditionalPodRangesConfig` | The additional pod ranges to be added to the cluster. These pod ranges can be used by node pools ... |
| `desiredAdditionalIpRangesConfig` | `DesiredAdditionalIPRangesConfig` | The desired config for additional subnetworks attached to the cluster. |
| `desiredAddonsConfig` | `AddonsConfig` | Configurations for the various addons available to run in the cluster. |
| `desiredAnonymousAuthenticationConfig` | `AnonymousAuthenticationConfig` | Configuration for limiting anonymous access to all endpoints except the health checks. |
| `desiredAuthenticatorGroupsConfig` | `AuthenticatorGroupsConfig` | The desired authenticator groups config for the cluster. |
| `desiredAutoIpamConfig` | `AutoIpamConfig` | AutoIpamConfig contains all information related to Auto IPAM |
| `desiredAutopilotWorkloadPolicyConfig` | `WorkloadPolicyConfig` | WorkloadPolicyConfig is the configuration related to GCW workload policy |
| `desiredBinaryAuthorization` | `BinaryAuthorization` | The desired configuration options for the Binary Authorization feature. |
| `desiredClusterAutoscaling` | `ClusterAutoscaling` | Cluster-level autoscaling configuration. |
| `desiredCompliancePostureConfig` | `CompliancePostureConfig` | Enable/Disable Compliance Posture features for the cluster. |
| `desiredContainerdConfig` | `ContainerdConfig` | The desired containerd config for the cluster. |
| `desiredControlPlaneEndpointsConfig` | `ControlPlaneEndpointsConfig` | Control plane endpoints configuration. |
| `desiredCostManagementConfig` | `CostManagementConfig` | The desired configuration for the fine-grained cost management feature. |
| `desiredDatabaseEncryption` | `DatabaseEncryption` | Configuration of etcd encryption. |
| `desiredDatapathProvider` | `string` | The desired datapath provider for the cluster. |
| `desiredDefaultEnablePrivateNodes` | `boolean` | Override the default setting of whether future created nodes have private IP addresses only, name... |
| `desiredDefaultSnatStatus` | `DefaultSnatStatus` | The desired status of whether to disable default sNAT for this cluster. |
| `desiredDisableL4LbFirewallReconciliation` | `boolean` | Enable/Disable L4 LB VPC firewall reconciliation for the cluster. |
| `desiredDnsConfig` | `DNSConfig` | DNSConfig contains clusterDNS config for this cluster. |
| `desiredEnableCiliumClusterwideNetworkPolicy` | `boolean` | Enable/Disable Cilium Clusterwide Network Policy for the cluster. |
| `desiredEnableFqdnNetworkPolicy` | `boolean` | Enable/Disable FQDN Network Policy for the cluster. |
| `desiredEnableMultiNetworking` | `boolean` | Enable/Disable Multi-Networking for the cluster |
| `desiredEnablePrivateEndpoint` | `boolean` | Enable/Disable private endpoint for the cluster's master. Deprecated: Use desired_control_plane_e... |
| `desiredEnterpriseConfig` | `DesiredEnterpriseConfig` | The desired enterprise configuration for the cluster. Deprecated: GKE Enterprise features are now... |
| `desiredFleet` | `Fleet` | The desired fleet configuration for the cluster. |
| `desiredGatewayApiConfig` | `GatewayAPIConfig` | The desired config of Gateway API on this cluster. |
| `desiredGcfsConfig` | `GcfsConfig` | The desired GCFS config for the cluster |
| `desiredIdentityServiceConfig` | `IdentityServiceConfig` | The desired Identity Service component configuration. |
| `desiredImageType` | `string` | The desired image type for the node pool. NOTE: Set the "desired_node_pool" field as well. |
| `desiredInTransitEncryptionConfig` | `string` | Specify the details of in-transit encryption. |
| `desiredIntraNodeVisibilityConfig` | `IntraNodeVisibilityConfig` | The desired config of Intra-node visibility. |
| `desiredK8sBetaApis` | `K8sBetaAPIConfig` | Desired Beta APIs to be enabled for cluster. |
| `desiredL4ilbSubsettingConfig` | `ILBSubsettingConfig` | The desired L4 Internal Load Balancer Subsetting configuration. |
| `desiredLocations` | `array<string>` | The desired list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#ava... |
| `desiredLoggingConfig` | `LoggingConfig` | The desired logging configuration. |
| `desiredLoggingService` | `string` | The logging service the cluster should use to write logs. Currently available options: * `logging... |
| `desiredManagedOpentelemetryConfig` | `ManagedOpenTelemetryConfig` | The desired managed open telemetry configuration. |
| `desiredMasterAuthorizedNetworksConfig` | `MasterAuthorizedNetworksConfig` | The desired configuration options for master authorized networks feature. Deprecated: Use desired... |
| `desiredMasterVersion` | `string` | The Kubernetes version to change the master to. Users may specify either explicit versions offere... |
| `desiredMeshCertificates` | `MeshCertificates` | Configuration for issuance of mTLS keys and certificates to Kubernetes pods. |
| `desiredMonitoringConfig` | `MonitoringConfig` | The desired monitoring configuration. |
| `desiredMonitoringService` | `string` | The monitoring service the cluster should use to write metrics. Currently available options: * `m... |
| `desiredNetworkPerformanceConfig` | `ClusterNetworkPerformanceConfig` | The desired network performance config. |
| `desiredNetworkTierConfig` | `NetworkTierConfig` | The desired network tier configuration for the cluster. |
| `desiredNodeKubeletConfig` | `NodeKubeletConfig` | The desired node kubelet config for the cluster. |
| `desiredNodePoolAutoConfigKubeletConfig` | `NodeKubeletConfig` | The desired node kubelet config for all auto-provisioned node pools in autopilot clusters and nod... |
| `desiredNodePoolAutoConfigLinuxNodeConfig` | `LinuxNodeConfig` | The desired Linux node config for all auto-provisioned node pools in autopilot clusters and node ... |
| `desiredNodePoolAutoConfigNetworkTags` | `NetworkTags` | The desired network tags that apply to all auto-provisioned node pools in autopilot clusters and ... |
| `desiredNodePoolAutoConfigResourceManagerTags` | `ResourceManagerTags` | The desired resource manager tags that apply to all auto-provisioned node pools in autopilot clus... |
| `desiredNodePoolAutoscaling` | `NodePoolAutoscaling` | Autoscaler configuration for the node pool specified in desired_node_pool_id. If there is only on... |
| `desiredNodePoolId` | `string` | The node pool to be upgraded. This field is mandatory if "desired_node_version", "desired_image_f... |
| `desiredNodePoolLoggingConfig` | `NodePoolLoggingConfig` | The desired node pool logging configuration defaults for the cluster. |
| `desiredNodeVersion` | `string` | The Kubernetes version to change the nodes to (typically an upgrade). Users may specify either ex... |
| `desiredNotificationConfig` | `NotificationConfig` | The desired notification configuration. |
| `desiredParentProductConfig` | `ParentProductConfig` | The desired parent product config for the cluster. |
| `desiredPodAutoscaling` | `PodAutoscaling` | The desired config for pod autoscaling. |
| `desiredPrivateClusterConfig` | `PrivateClusterConfig` | The desired private cluster configuration. master_global_access_config is the only field that can... |
| `desiredPrivateIpv6GoogleAccess` | `string` | The desired state of IPv6 connectivity to Google Services. |
| `desiredPrivilegedAdmissionConfig` | `PrivilegedAdmissionConfig` | The desired privileged admission config for the cluster. |
| `desiredRbacBindingConfig` | `RBACBindingConfig` | RBACBindingConfig allows user to restrict ClusterRoleBindings an RoleBindings that can be created. |
| `desiredReleaseChannel` | `ReleaseChannel` | The desired release channel configuration. |
| `desiredResourceUsageExportConfig` | `ResourceUsageExportConfig` | The desired configuration for exporting resource usage. |
| `desiredSecretManagerConfig` | `SecretManagerConfig` | Enable/Disable Secret Manager Config. |
| `desiredSecurityPostureConfig` | `SecurityPostureConfig` | Enable/Disable Security Posture API features for the cluster. |
| `desiredServiceExternalIpsConfig` | `ServiceExternalIPsConfig` | ServiceExternalIPsConfig specifies the config for the use of Services with ExternalIPs field. |
| `desiredShieldedNodes` | `ShieldedNodes` | Configuration for Shielded Nodes. |
| `desiredStackType` | `string` | The desired stack type of the cluster. If a stack type is provided and does not match the current... |
| `desiredUserManagedKeysConfig` | `UserManagedKeysConfig` | The desired user managed keys config for the cluster. |
| `desiredVerticalPodAutoscaling` | `VerticalPodAutoscaling` | Cluster-level Vertical Pod Autoscaling configuration. |
| `desiredWorkloadIdentityConfig` | `WorkloadIdentityConfig` | Configuration for Workload Identity. |
| `enableK8sBetaApis` | `K8sBetaAPIConfig` | Kubernetes open source beta apis enabled on the cluster. Only beta apis |
| `etag` | `string` | The current etag of the cluster. If an etag is provided and does not match the current etag of th... |
| `gkeAutoUpgradeConfig` | `GkeAutoUpgradeConfig` | Configuration for GKE auto upgrade. |
| `removedAdditionalPodRangesConfig` | `AdditionalPodRangesConfig` | The additional pod ranges that are to be removed from the cluster. The pod ranges specified here ... |
| `userManagedKeysConfig` | `UserManagedKeysConfig` | The Custom keys configuration for the cluster. This field is deprecated. Use ClusterUpdate.desire... |

### `ClusterUpgradeInfo`

ClusterUpgradeInfo contains the upgrade information of a cluster.

| Property | Type | Description |
|----------|------|-------------|
| `autoUpgradeStatus` | `array<string>` | The auto upgrade status. |
| `endOfExtendedSupportTimestamp` | `string` | The cluster's current minor version's end of extended support timestamp. |
| `endOfStandardSupportTimestamp` | `string` | The cluster's current minor version's end of standard support timestamp. |
| `minorTargetVersion` | `string` | minor_target_version indicates the target version for minor upgrade. |
| `patchTargetVersion` | `string` | patch_target_version indicates the target version for patch upgrade. |
| `pausedReason` | `array<string>` | The auto upgrade paused reason. |
| `upgradeDetails` | `array<UpgradeDetails>` | The list of past auto upgrades. |

### `CompleteIPRotationRequest`

CompleteIPRotationRequest moves the cluster master back into single-IP mode.

| Property | Type | Description |
|----------|------|-------------|
| `clusterId` | `string` | Deprecated. The name of the cluster. This field has been deprecated and replaced by the name field. |
| `name` | `string` | The name (project, location, cluster name) of the cluster to complete IP rotation. Specified in t... |
| `projectId` | `string` | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com... |
| `zone` | `string` | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zo... |

### `CompleteNodePoolUpgradeRequest`

CompleteNodePoolUpgradeRequest sets the name of target node pool to complete upgrade.

### `CompliancePostureConfig`

CompliancePostureConfig defines the settings needed to enable/disable features for the Compliance Posture.

| Property | Type | Description |
|----------|------|-------------|
| `complianceStandards` | `array<ComplianceStandard>` | List of enabled compliance standards. |
| `mode` | `string` | Defines the enablement mode for Compliance Posture. |

### `ComplianceStandard`

Defines the details of a compliance standard.

| Property | Type | Description |
|----------|------|-------------|
| `standard` | `string` | Name of the compliance standard. |

### `ConfidentialNodes`

ConfidentialNodes is configuration for the confidential nodes feature, which makes nodes run on confidential VMs.

| Property | Type | Description |
|----------|------|-------------|
| `confidentialInstanceType` | `string` | Defines the type of technology used by the confidential node. |
| `enabled` | `boolean` | Whether Confidential Nodes feature is enabled. |

### `ConfigConnectorConfig`

Configuration options for the Config Connector add-on.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether Cloud Connector is enabled for this cluster. |

### `ConsumptionMeteringConfig`

Parameters for controlling consumption metering.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether to enable consumption metering for this cluster. If enabled, a second BigQuery table will... |

### `ContainerdConfig`

ContainerdConfig contains configuration to customize containerd.

| Property | Type | Description |
|----------|------|-------------|
| `privateRegistryAccessConfig` | `PrivateRegistryAccessConfig` | PrivateRegistryAccessConfig is used to configure access configuration for private container regis... |
| `registryHosts` | `array<RegistryHostConfig>` | RegistryHostConfig configures containerd registry host configuration. Each registry_hosts represe... |
| `writableCgroups` | `WritableCgroups` | Optional. WritableCgroups defines writable cgroups configuration for the node pool. |

### `ControlPlaneEndpointsConfig`

Configuration for all of the cluster's control plane endpoints.

| Property | Type | Description |
|----------|------|-------------|
| `dnsEndpointConfig` | `DNSEndpointConfig` | DNS endpoint configuration. |
| `ipEndpointsConfig` | `IPEndpointsConfig` | IP endpoints configuration. |

### `CostManagementConfig`

Configuration for fine-grained cost management feature.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether the feature is enabled or not. |

### `CreateClusterRequest`

CreateClusterRequest creates a cluster.

| Property | Type | Description |
|----------|------|-------------|
| `cluster` | `Cluster` | Required. A [cluster resource](https://cloud.google.com/container-engine/reference/rest/v1/projec... |
| `parent` | `string` | The parent (project and location) where the cluster will be created. Specified in the format `pro... |
| `projectId` | `string` | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com... |
| `zone` | `string` | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zo... |

### `CreateNodePoolRequest`

CreateNodePoolRequest creates a node pool for a cluster.

| Property | Type | Description |
|----------|------|-------------|
| `clusterId` | `string` | Deprecated. The name of the cluster. This field has been deprecated and replaced by the parent fi... |
| `nodePool` | `NodePool` | Required. The node pool to create. |
| `parent` | `string` | The parent (project, location, cluster name) where the node pool will be created. Specified in th... |
| `projectId` | `string` | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com... |
| `zone` | `string` | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zo... |

### `DNSConfig`

DNSConfig contains the desired set of options for configuring clusterDNS.

| Property | Type | Description |
|----------|------|-------------|
| `additiveVpcScopeDnsDomain` | `string` | Optional. The domain used in Additive VPC scope. |
| `clusterDns` | `string` | cluster_dns indicates which in-cluster DNS provider should be used. |
| `clusterDnsDomain` | `string` | cluster_dns_domain is the suffix used for all cluster service records. |
| `clusterDnsScope` | `string` | cluster_dns_scope indicates the scope of access to cluster DNS records. |

### `DNSEndpointConfig`

Describes the configuration of a DNS endpoint.

| Property | Type | Description |
|----------|------|-------------|
| `allowExternalTraffic` | `boolean` | Controls whether user traffic is allowed over this endpoint. Note that Google-managed services ma... |
| `enableK8sCertsViaDns` | `boolean` | Controls whether the k8s certs auth is allowed via DNS. |
| `enableK8sTokensViaDns` | `boolean` | Controls whether the k8s token auth is allowed via DNS. |
| `endpoint` | `string` | Output only. The cluster's DNS endpoint configuration. A DNS format address. This is accessible f... |

### `DailyMaintenanceWindow`

Time window specified for daily maintenance operations.

| Property | Type | Description |
|----------|------|-------------|
| `duration` | `string` | Output only. Duration of the time window, automatically chosen to be smallest possible in the giv... |
| `startTime` | `string` | Time within the maintenance window to start the maintenance operations. Time format should be in ... |

### `DatabaseEncryption`

Configuration of etcd encryption.

| Property | Type | Description |
|----------|------|-------------|
| `currentState` | `string` | Output only. The current state of etcd encryption. |
| `decryptionKeys` | `array<string>` | Output only. Keys in use by the cluster for decrypting existing objects, in addition to the key i... |
| `keyName` | `string` | Name of CloudKMS key to use for the encryption of secrets in etcd. Ex. projects/my-project/locati... |
| `lastOperationErrors` | `array<OperationError>` | Output only. Records errors seen during DatabaseEncryption update operations. |
| `state` | `string` | The desired state of etcd encryption. |

### `DefaultComputeClassConfig`

DefaultComputeClassConfig defines default compute class configuration.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Enables default compute class. |

### `DefaultSnatStatus`

DefaultSnatStatus contains the desired state of whether default sNAT should be disabled on the cluster.

| Property | Type | Description |
|----------|------|-------------|
| `disabled` | `boolean` | Disables cluster default sNAT rules. |

### `DesiredAdditionalIPRangesConfig`

DesiredAdditionalIPRangesConfig is a wrapper used for cluster update operation and contains multiple AdditionalIPRangesConfigs.

| Property | Type | Description |
|----------|------|-------------|
| `additionalIpRangesConfigs` | `array<AdditionalIPRangesConfig>` | List of additional IP ranges configs where each AdditionalIPRangesConfig corresponds to one subne... |

### `DesiredEnterpriseConfig`

DesiredEnterpriseConfig is a wrapper used for updating enterprise_config. Deprecated: GKE Enterprise features are now available without an Enterprise tier.

| Property | Type | Description |
|----------|------|-------------|
| `desiredTier` | `string` | desired_tier specifies the desired tier of the cluster. |

### `DisruptionEvent`

DisruptionEvent is a notification sent to customers about the disruption event of a resource.

| Property | Type | Description |
|----------|------|-------------|
| `disruptionType` | `string` | The type of the disruption event. |
| `pdbBlockedNode` | `string` | The node whose drain is blocked by PDB. This field is set for both POD_PDB_VIOLATION and POD_NOT_... |
| `pdbBlockedPod` | `array<PdbBlockedPod>` | The pods whose evictions are blocked by PDB. This field is set for both POD_PDB_VIOLATION and POD... |
| `pdbViolationTimeout` | `string` | The timeout in seconds for which the node drain is blocked by PDB. After this timeout, pods are f... |

### `DnsCacheConfig`

Configuration for NodeLocal DNSCache

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether NodeLocal DNSCache is enabled for this cluster. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `EnterpriseConfig`

EnterpriseConfig is the cluster enterprise configuration. Deprecated: GKE Enterprise features are now available without an Enterprise tier.

| Property | Type | Description |
|----------|------|-------------|
| `clusterTier` | `string` | Output only. cluster_tier indicates the effective tier of the cluster. |
| `desiredTier` | `string` | desired_tier specifies the desired tier of the cluster. |

### `EphemeralStorageLocalSsdConfig`

EphemeralStorageLocalSsdConfig contains configuration for the node ephemeral storage using Local SSDs.

| Property | Type | Description |
|----------|------|-------------|
| `dataCacheCount` | `integer` | Number of local SSDs to use for GKE Data Cache. |
| `localSsdCount` | `integer` | Number of local SSDs to use to back ephemeral storage. Uses NVMe interfaces. A zero (or unset) va... |

### `EvictionGracePeriod`

Eviction grace periods are grace periods for each eviction signal.

| Property | Type | Description |
|----------|------|-------------|
| `imagefsAvailable` | `string` | Optional. Grace period for eviction due to imagefs available signal. Sample format: "10s". Must b... |
| `imagefsInodesFree` | `string` | Optional. Grace period for eviction due to imagefs inodes free signal. Sample format: "10s". Must... |
| `memoryAvailable` | `string` | Optional. Grace period for eviction due to memory available signal. Sample format: "10s". Must be... |
| `nodefsAvailable` | `string` | Optional. Grace period for eviction due to nodefs available signal. Sample format: "10s". Must be... |
| `nodefsInodesFree` | `string` | Optional. Grace period for eviction due to nodefs inodes free signal. Sample format: "10s". Must ... |
| `pidAvailable` | `string` | Optional. Grace period for eviction due to pid available signal. Sample format: "10s". Must be >=... |

### `EvictionMinimumReclaim`

Eviction minimum reclaims are the resource amounts of minimum reclaims for each eviction signal.

| Property | Type | Description |
|----------|------|-------------|
| `imagefsAvailable` | `string` | Optional. Minimum reclaim for eviction due to imagefs available signal. Only take percentage valu... |
| `imagefsInodesFree` | `string` | Optional. Minimum reclaim for eviction due to imagefs inodes free signal. Only take percentage va... |
| `memoryAvailable` | `string` | Optional. Minimum reclaim for eviction due to memory available signal. Only take percentage value... |
| `nodefsAvailable` | `string` | Optional. Minimum reclaim for eviction due to nodefs available signal. Only take percentage value... |
| `nodefsInodesFree` | `string` | Optional. Minimum reclaim for eviction due to nodefs inodes free signal. Only take percentage val... |
| `pidAvailable` | `string` | Optional. Minimum reclaim for eviction due to pid available signal. Only take percentage value fo... |

### `EvictionSignals`

Eviction signals are the current state of a particular resource at a specific point in time. The kubelet uses eviction signals to make eviction decisions by comparing the signals to eviction thresholds, which are the minimum amount of the resource that should be available on the node.

| Property | Type | Description |
|----------|------|-------------|
| `imagefsAvailable` | `string` | Optional. Amount of storage available on filesystem that container runtime uses for storing image... |
| `imagefsInodesFree` | `string` | Optional. Amount of inodes available on filesystem that container runtime uses for storing images... |
| `memoryAvailable` | `string` | Optional. Memory available (i.e. capacity - workingSet), in bytes. Defines the amount of "memory.... |
| `nodefsAvailable` | `string` | Optional. Amount of storage available on filesystem that kubelet uses for volumes, daemon logs, e... |
| `nodefsInodesFree` | `string` | Optional. Amount of inodes available on filesystem that kubelet uses for volumes, daemon logs, et... |
| `pidAvailable` | `string` | Optional. Amount of PID available for pod allocation. Defines the amount of "pid.available" signa... |

### `FastSocket`

Configuration of Fast Socket feature.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether Fast Socket features are enabled in the node pool. |

### `Filter`

Allows filtering to one or more specific event types. If event types are present, those and only those event types will be transmitted to the cluster. Other types will be skipped. If no filter is specified, or no event types are present, all event types will be sent

| Property | Type | Description |
|----------|------|-------------|
| `eventType` | `array<string>` | Event types to allowlist. |

### `Fleet`

Fleet is the fleet configuration for the cluster.

| Property | Type | Description |
|----------|------|-------------|
| `membership` | `string` | Output only. The full resource name of the registered fleet membership of the cluster, in the for... |
| `membershipType` | `string` | The type of the cluster's fleet membership. |
| `preRegistered` | `boolean` | Output only. Whether the cluster has been registered through the fleet API. |
| `project` | `string` | The Fleet host project(project ID or project number) where this cluster will be registered to. Th... |

### `GCPSecretManagerCertificateConfig`

GCPSecretManagerCertificateConfig configures a secret from [Secret Manager](https://cloud.google.com/secret-manager).

| Property | Type | Description |
|----------|------|-------------|
| `secretUri` | `string` | Secret URI, in the form "projects/$PROJECT_ID/secrets/$SECRET_NAME/versions/$VERSION". Version ca... |

### `GPUDriverInstallationConfig`

GPUDriverInstallationConfig specifies the version of GPU driver to be auto installed.

| Property | Type | Description |
|----------|------|-------------|
| `gpuDriverVersion` | `string` | Mode for how the GPU driver is installed. |

### `GPUSharingConfig`

GPUSharingConfig represents the GPU sharing configuration for Hardware Accelerators.

| Property | Type | Description |
|----------|------|-------------|
| `gpuSharingStrategy` | `string` | The type of GPU sharing strategy to enable on the GPU node. |
| `maxSharedClientsPerGpu` | `string` | The max number of containers that can share a physical GPU. |

### `GatewayAPIConfig`

GatewayAPIConfig contains the desired config of Gateway API on this cluster.

| Property | Type | Description |
|----------|------|-------------|
| `channel` | `string` | The Gateway API release channel to use for Gateway API. |

### `GcePersistentDiskCsiDriverConfig`

Configuration for the Compute Engine PD CSI driver.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether the Compute Engine PD CSI driver is enabled for this cluster. |

### `GcfsConfig`

GcfsConfig contains configurations of Google Container File System (image streaming).

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether to use GCFS. |

### `GcpFilestoreCsiDriverConfig`

Configuration for the Filestore CSI driver.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether the Filestore CSI driver is enabled for this cluster. |

### `GcsFuseCsiDriverConfig`

Configuration for the Cloud Storage Fuse CSI driver.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether the Cloud Storage Fuse CSI driver is enabled for this cluster. |

### `GetJSONWebKeysResponse`

GetJSONWebKeysResponse is a valid JSON Web Key Set as specified in rfc 7517

| Property | Type | Description |
|----------|------|-------------|
| `cacheHeader` | `HttpCacheControlResponseHeader` | For HTTP requests, this field is automatically extracted into the Cache-Control HTTP header. |
| `keys` | `array<Jwk>` | The public component of the keys used by the cluster to sign token requests. |

### `GetOpenIDConfigResponse`

GetOpenIDConfigResponse is an OIDC discovery document for the cluster. See the OpenID Connect Discovery 1.0 specification for details.

| Property | Type | Description |
|----------|------|-------------|
| `cacheHeader` | `HttpCacheControlResponseHeader` | For HTTP requests, this field is automatically extracted into the Cache-Control HTTP header. |
| `claims_supported` | `array<string>` | Supported claims. |
| `grant_types` | `array<string>` | Supported grant types. |
| `id_token_signing_alg_values_supported` | `array<string>` | supported ID Token signing Algorithms. |
| `issuer` | `string` | OIDC Issuer. |
| `jwks_uri` | `string` | JSON Web Key uri. |
| `response_types_supported` | `array<string>` | Supported response types. |
| `subject_types_supported` | `array<string>` | Supported subject types. |

### `GkeAutoUpgradeConfig`

GkeAutoUpgradeConfig is the configuration for GKE auto upgrades.

| Property | Type | Description |
|----------|------|-------------|
| `patchMode` | `string` | PatchMode specifies how auto upgrade patch builds should be selected. |

### `GkeBackupAgentConfig`

Configuration for the Backup for GKE Agent.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether the Backup for GKE agent is enabled for this cluster. |

### `HighScaleCheckpointingConfig`

Configuration for the High Scale Checkpointing.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether the High Scale Checkpointing is enabled for this cluster. |

### `HorizontalPodAutoscaling`

Configuration options for the horizontal pod autoscaling feature, which increases or decreases the number of replica pods a replication controller has based on the resource usage of the existing pods.

| Property | Type | Description |
|----------|------|-------------|
| `disabled` | `boolean` | Whether the Horizontal Pod Autoscaling feature is enabled in the cluster. When enabled, it ensure... |

### `HostConfig`

HostConfig configures the registry host under a given Server.

| Property | Type | Description |
|----------|------|-------------|
| `ca` | `array<CertificateConfig>` | CA configures the registry host certificate. |
| `capabilities` | `array<string>` | Capabilities represent the capabilities of the registry host, specifying what operations a host i... |
| `client` | `array<CertificateConfigPair>` | Client configures the registry host client certificate and key. |
| `dialTimeout` | `string` | Specifies the maximum duration allowed for a connection attempt to complete. A shorter timeout he... |
| `header` | `array<RegistryHeader>` | Header configures the registry host headers. |
| `host` | `string` | Host configures the registry host/mirror. It supports fully qualified domain names (FQDN) and IP ... |
| `overridePath` | `boolean` | OverridePath is used to indicate the host's API root endpoint is defined in the URL path rather t... |

### `HttpCacheControlResponseHeader`

RFC-2616: cache control support

| Property | Type | Description |
|----------|------|-------------|
| `age` | `string` | 14.6 response cache age, in seconds since the response is generated |
| `directive` | `string` | 14.9 request and response directives |
| `expires` | `string` | 14.21 response cache expires, in RFC 1123 date format |

### `HttpLoadBalancing`

Configuration options for the HTTP (L7) load balancing controller addon, which makes it easy to set up HTTP load balancers for services in a cluster.

| Property | Type | Description |
|----------|------|-------------|
| `disabled` | `boolean` | Whether the HTTP Load Balancing controller is enabled in the cluster. When enabled, it runs a sma... |

### `HugepagesConfig`

Hugepages amount in both 2m and 1g size

| Property | Type | Description |
|----------|------|-------------|
| `hugepageSize1g` | `integer` | Optional. Amount of 1G hugepages |
| `hugepageSize2m` | `integer` | Optional. Amount of 2M hugepages |

### `ILBSubsettingConfig`

ILBSubsettingConfig contains the desired config of L4 Internal LoadBalancer subsetting on this cluster.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Enables l4 ILB subsetting for this cluster. |

### `IPAllocationPolicy`

Configuration for controlling how IPs are allocated in the cluster.

| Property | Type | Description |
|----------|------|-------------|
| `additionalIpRangesConfigs` | `array<AdditionalIPRangesConfig>` | Output only. The additional IP ranges that are added to the cluster. These IP ranges can be used ... |
| `additionalPodRangesConfig` | `AdditionalPodRangesConfig` | Output only. The additional pod ranges that are added to the cluster. These pod ranges can be use... |
| `autoIpamConfig` | `AutoIpamConfig` | Optional. AutoIpamConfig contains all information related to Auto IPAM |
| `clusterIpv4Cidr` | `string` | This field is deprecated, use cluster_ipv4_cidr_block. |
| `clusterIpv4CidrBlock` | `string` | The IP address range for the cluster pod IPs. If this field is set, then `cluster.cluster_ipv4_ci... |
| `clusterSecondaryRangeName` | `string` | The name of the secondary range to be used for the cluster CIDR block. The secondary range will b... |
| `createSubnetwork` | `boolean` | Whether a new subnetwork will be created automatically for the cluster. This field is only applic... |
| `defaultPodIpv4RangeUtilization` | `number` | Output only. The utilization of the cluster default IPv4 range for the pod. The ratio is Usage/[T... |
| `ipv6AccessType` | `string` | The ipv6 access type (internal or external) when create_subnetwork is true |
| `networkTierConfig` | `NetworkTierConfig` | Cluster-level network tier configuration is used to determine the default network tier for extern... |
| `nodeIpv4Cidr` | `string` | This field is deprecated, use node_ipv4_cidr_block. |
| `nodeIpv4CidrBlock` | `string` | The IP address range of the instance IPs in this cluster. This is applicable only if `create_subn... |
| `podCidrOverprovisionConfig` | `PodCIDROverprovisionConfig` | [PRIVATE FIELD] Pod CIDR size overprovisioning config for the cluster. Pod CIDR size per node dep... |
| `servicesIpv4Cidr` | `string` | This field is deprecated, use services_ipv4_cidr_block. |
| `servicesIpv4CidrBlock` | `string` | The IP address range of the services IPs in this cluster. If blank, a range will be automatically... |
| `servicesIpv6CidrBlock` | `string` | Output only. The services IPv6 CIDR block for the cluster. |
| `servicesSecondaryRangeName` | `string` | The name of the secondary range to be used as for the services CIDR block. The secondary range wi... |
| `stackType` | `string` | The IP stack type of the cluster |
| `subnetIpv6CidrBlock` | `string` | Output only. The subnet's IPv6 CIDR block used by nodes and pods. |
| `subnetworkName` | `string` | A custom subnetwork name to be used if `create_subnetwork` is true. If this field is empty, then ... |
| `tpuIpv4CidrBlock` | `string` | The IP address range of the Cloud TPUs in this cluster. If unspecified, a range will be automatic... |
| `useIpAliases` | `boolean` | Whether alias IPs will be used for pod IPs in the cluster. This is used in conjunction with use_r... |
| `useRoutes` | `boolean` | Whether routes will be used for pod IPs in the cluster. This is used in conjunction with use_ip_a... |

### `IPEndpointsConfig`

IP endpoints configuration.

| Property | Type | Description |
|----------|------|-------------|
| `authorizedNetworksConfig` | `MasterAuthorizedNetworksConfig` | Configuration of authorized networks. If enabled, restricts access to the control plane based on ... |
| `enablePublicEndpoint` | `boolean` | Controls whether the control plane allows access through a public IP. It is invalid to specify bo... |
| `enabled` | `boolean` | Controls whether to allow direct IP access. |
| `globalAccess` | `boolean` | Controls whether the control plane's private endpoint is accessible from sources in other regions... |
| `privateEndpoint` | `string` | Output only. The internal IP address of this cluster's control plane. Only populated if enabled. |
| `privateEndpointSubnetwork` | `string` | Subnet to provision the master's private endpoint during cluster creation. Specified in projects/... |
| `publicEndpoint` | `string` | Output only. The external IP address of this cluster's control plane. Only populated if enabled. |

### `IdentityServiceConfig`

IdentityServiceConfig is configuration for Identity Service which allows customers to use external identity providers with the K8S API

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether to enable the Identity Service component |

### `IntraNodeVisibilityConfig`

IntraNodeVisibilityConfig contains the desired config of the intra-node visibility on this cluster.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Enables intra node visibility for this cluster. |

### `Jwk`

Jwk is a JSON Web Key as specified in RFC 7517

| Property | Type | Description |
|----------|------|-------------|
| `alg` | `string` | Algorithm. |
| `crv` | `string` | Used for ECDSA keys. |
| `e` | `string` | Used for RSA keys. |
| `kid` | `string` | Key ID. |
| `kty` | `string` | Key Type. |
| `n` | `string` | Used for RSA keys. |
| `use` | `string` | Permitted uses for the public keys. |
| `x` | `string` | Used for ECDSA keys. |
| `y` | `string` | Used for ECDSA keys. |

### `K8sBetaAPIConfig`

K8sBetaAPIConfig , configuration for beta APIs

| Property | Type | Description |
|----------|------|-------------|
| `enabledApis` | `array<string>` | Enabled k8s beta APIs. |

### `KubernetesDashboard`

Configuration for the Kubernetes Dashboard.

| Property | Type | Description |
|----------|------|-------------|
| `disabled` | `boolean` | Whether the Kubernetes Dashboard is enabled for this cluster. |

### `LegacyAbac`

Configuration for the legacy Attribute Based Access Control authorization mode.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether the ABAC authorizer is enabled for this cluster. When enabled, identities in the system, ... |

### `LinuxNodeConfig`

Parameters that can be configured on Linux nodes.

| Property | Type | Description |
|----------|------|-------------|
| `cgroupMode` | `string` | cgroup_mode specifies the cgroup mode to be used on the node. |
| `hugepages` | `HugepagesConfig` | Optional. Amounts for 2M and 1G hugepages |
| `nodeKernelModuleLoading` | `NodeKernelModuleLoading` | Optional. Configuration for kernel module loading on nodes. When enabled, the node pool will be p... |
| `sysctls` | `object` | The Linux kernel parameters to be applied to the nodes and all pods running on the nodes. The fol... |
| `transparentHugepageDefrag` | `string` | Optional. Defines the transparent hugepage defrag configuration on the node. VM hugepage allocati... |
| `transparentHugepageEnabled` | `string` | Optional. Transparent hugepage support for anonymous memory can be entirely disabled (mostly for ... |

### `ListClustersResponse`

ListClustersResponse is the result of ListClustersRequest.

| Property | Type | Description |
|----------|------|-------------|
| `clusters` | `array<Cluster>` | A list of clusters in the project in the specified zone, or across all ones. |
| `missingZones` | `array<string>` | If any zones are listed here, the list of clusters returned may be missing those zones. |

### `ListNodePoolsResponse`

ListNodePoolsResponse is the result of ListNodePoolsRequest.

| Property | Type | Description |
|----------|------|-------------|
| `nodePools` | `array<NodePool>` | A list of node pools for a cluster. |

### `ListOperationsResponse`

ListOperationsResponse is the result of ListOperationsRequest.

| Property | Type | Description |
|----------|------|-------------|
| `missingZones` | `array<string>` | If any zones are listed here, the list of operations returned may be missing the operations from ... |
| `operations` | `array<Operation>` | A list of operations in the project in the specified zone. |

### `ListUsableSubnetworksResponse`

ListUsableSubnetworksResponse is the response of ListUsableSubnetworksRequest.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | This token allows you to get the next page of results for list requests. If the number of results... |
| `subnetworks` | `array<UsableSubnetwork>` | A list of usable subnetworks in the specified network project. |

### `LocalNvmeSsdBlockConfig`

LocalNvmeSsdBlockConfig contains configuration for using raw-block local NVMe SSDs

| Property | Type | Description |
|----------|------|-------------|
| `localSsdCount` | `integer` | Number of local NVMe SSDs to use. The limit for this value is dependent upon the maximum number o... |

### `LoggingComponentConfig`

LoggingComponentConfig is cluster logging component configuration.

| Property | Type | Description |
|----------|------|-------------|
| `enableComponents` | `array<string>` | Select components to collect logs. An empty set would disable all logging. |

### `LoggingConfig`

LoggingConfig is cluster logging configuration.

| Property | Type | Description |
|----------|------|-------------|
| `componentConfig` | `LoggingComponentConfig` | Logging components configuration |

### `LoggingVariantConfig`

LoggingVariantConfig specifies the behaviour of the logging component.

| Property | Type | Description |
|----------|------|-------------|
| `variant` | `string` | Logging variant deployed on nodes. |

### `LustreCsiDriverConfig`

Configuration for the Lustre CSI driver.

| Property | Type | Description |
|----------|------|-------------|
| `enableLegacyLustrePort` | `boolean` | If set to true, the Lustre CSI driver will install Lustre kernel modules using port 6988. This se... |
| `enabled` | `boolean` | Whether the Lustre CSI driver is enabled for this cluster. |

### `MaintenanceExclusionOptions`

Represents the Maintenance exclusion option.

| Property | Type | Description |
|----------|------|-------------|
| `endTimeBehavior` | `string` | EndTimeBehavior specifies the behavior of the exclusion end time. |
| `scope` | `string` | Scope specifies the upgrade scope which upgrades are blocked by the exclusion. |

### `MaintenancePolicy`

MaintenancePolicy defines the maintenance policy to be used for the cluster.

| Property | Type | Description |
|----------|------|-------------|
| `resourceVersion` | `string` | A hash identifying the version of this policy, so that updates to fields of the policy won't acci... |
| `window` | `MaintenanceWindow` | Specifies the maintenance window in which maintenance may be performed. |

### `MaintenanceWindow`

MaintenanceWindow defines the maintenance window to be used for the cluster.

| Property | Type | Description |
|----------|------|-------------|
| `dailyMaintenanceWindow` | `DailyMaintenanceWindow` | DailyMaintenanceWindow specifies a daily maintenance operation window. |
| `maintenanceExclusions` | `object` | Exceptions to maintenance window. Non-emergency maintenance should not occur in these windows. |
| `recurringWindow` | `RecurringTimeWindow` | RecurringWindow specifies some number of recurring time periods for maintenance to occur. The tim... |

### `ManagedOpenTelemetryConfig`

ManagedOpenTelemetryConfig is the configuration for the GKE Managed OpenTelemetry pipeline.

| Property | Type | Description |
|----------|------|-------------|
| `scope` | `string` | Scope of the Managed OpenTelemetry pipeline. |

### `ManagedPrometheusConfig`

ManagedPrometheusConfig defines the configuration for Google Cloud Managed Service for Prometheus.

| Property | Type | Description |
|----------|------|-------------|
| `autoMonitoringConfig` | `AutoMonitoringConfig` | GKE Workload Auto-Monitoring Configuration. |
| `enabled` | `boolean` | Enable Managed Collection. |

### `MasterAuth`

The authentication information for accessing the master endpoint. Authentication can be done using HTTP basic auth or using client certificates.

| Property | Type | Description |
|----------|------|-------------|
| `clientCertificate` | `string` | Output only. Base64-encoded public certificate used by clients to authenticate to the cluster end... |
| `clientCertificateConfig` | `ClientCertificateConfig` | Configuration for client certificate authentication on the cluster. For clusters before v1.12, if... |
| `clientKey` | `string` | Output only. Base64-encoded private key used by clients to authenticate to the cluster endpoint. |
| `clusterCaCertificate` | `string` | Output only. Base64-encoded public certificate that is the root of trust for the cluster. |
| `password` | `string` | The password to use for HTTP basic authentication to the master endpoint. Because the master endp... |
| `username` | `string` | The username to use for HTTP basic authentication to the master endpoint. For clusters v1.6.0 and... |

### `MasterAuthorizedNetworksConfig`

Configuration options for the master authorized networks feature. Enabled master authorized networks will disallow all external traffic to access Kubernetes master through HTTPS except traffic from the given CIDR blocks, Google Compute Engine Public IPs and Google Prod IPs.

| Property | Type | Description |
|----------|------|-------------|
| `cidrBlocks` | `array<CidrBlock>` | cidr_blocks define up to 50 external networks that could access Kubernetes master through HTTPS. |
| `enabled` | `boolean` | Whether or not master authorized networks is enabled. |
| `gcpPublicCidrsAccessEnabled` | `boolean` | Whether master is accessible via Google Compute Engine Public IP addresses. |
| `privateEndpointEnforcementEnabled` | `boolean` | Whether master authorized networks is enforced on private endpoint or not. |

### `MaxPodsConstraint`

Constraints applied to pods.

| Property | Type | Description |
|----------|------|-------------|
| `maxPodsPerNode` | `string` | Constraint enforced on the max num of pods per node. |

### `MemoryManager`

The option enables the Kubernetes NUMA-aware Memory Manager feature. Detailed description about the feature can be found [here](https://kubernetes.io/docs/tasks/administer-cluster/memory-manager/).

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `string` | Controls the memory management policy on the Node. See https://kubernetes.io/docs/tasks/administe... |

### `MeshCertificates`

Configuration for issuance of mTLS keys and certificates to Kubernetes pods.

| Property | Type | Description |
|----------|------|-------------|
| `enableCertificates` | `boolean` | enable_certificates controls issuance of workload mTLS certificates. If set, the GKE Workload Ide... |

### `Metric`

Progress metric is (string, int|float|string) pair.

| Property | Type | Description |
|----------|------|-------------|
| `doubleValue` | `number` | For metrics with floating point value. |
| `intValue` | `string` | For metrics with integer value. |
| `name` | `string` | Required. Metric name, e.g., "nodes total", "percent done". |
| `stringValue` | `string` | For metrics with custom values (ratios, visual progress, etc.). |

### `MonitoringComponentConfig`

MonitoringComponentConfig is cluster monitoring component configuration.

| Property | Type | Description |
|----------|------|-------------|
| `enableComponents` | `array<string>` | Select components to collect metrics. An empty set would disable all monitoring. |

### `MonitoringConfig`

MonitoringConfig is cluster monitoring configuration.

| Property | Type | Description |
|----------|------|-------------|
| `advancedDatapathObservabilityConfig` | `AdvancedDatapathObservabilityConfig` | Configuration of Advanced Datapath Observability features. |
| `componentConfig` | `MonitoringComponentConfig` | Monitoring components configuration |
| `managedPrometheusConfig` | `ManagedPrometheusConfig` | Enable Google Cloud Managed Service for Prometheus in the cluster. |

### `NetworkConfig`

NetworkConfig reports the relative names of network & subnetwork.

| Property | Type | Description |
|----------|------|-------------|
| `datapathProvider` | `string` | The desired datapath provider for this cluster. By default, uses the IPTables-based kube-proxy im... |
| `defaultEnablePrivateNodes` | `boolean` | Controls whether by default nodes have private IP addresses only. It is invalid to specify both P... |
| `defaultSnatStatus` | `DefaultSnatStatus` | Whether the cluster disables default in-node sNAT rules. In-node sNAT rules will be disabled when... |
| `disableL4LbFirewallReconciliation` | `boolean` | Disable L4 load balancer VPC firewalls to enable firewall policies. |
| `dnsConfig` | `DNSConfig` | DNSConfig contains clusterDNS config for this cluster. |
| `enableCiliumClusterwideNetworkPolicy` | `boolean` | Whether CiliumClusterwideNetworkPolicy is enabled on this cluster. |
| `enableFqdnNetworkPolicy` | `boolean` | Whether FQDN Network Policy is enabled on this cluster. |
| `enableIntraNodeVisibility` | `boolean` | Whether Intra-node visibility is enabled for this cluster. This makes same node pod to pod traffi... |
| `enableL4ilbSubsetting` | `boolean` | Whether L4ILB Subsetting is enabled for this cluster. |
| `enableMultiNetworking` | `boolean` | Whether multi-networking is enabled for this cluster. |
| `gatewayApiConfig` | `GatewayAPIConfig` | GatewayAPIConfig contains the desired config of Gateway API on this cluster. |
| `inTransitEncryptionConfig` | `string` | Specify the details of in-transit encryption. Now named inter-node transparent encryption. |
| `network` | `string` | Output only. The relative name of the Google Compute Engine [network](https://cloud.google.com/co... |
| `networkPerformanceConfig` | `ClusterNetworkPerformanceConfig` | Network bandwidth tier configuration. |
| `privateIpv6GoogleAccess` | `string` | The desired state of IPv6 connectivity to Google Services. By default, no private IPv6 access to ... |
| `serviceExternalIpsConfig` | `ServiceExternalIPsConfig` | ServiceExternalIPsConfig specifies if services with externalIPs field are blocked or not. |
| `subnetwork` | `string` | Output only. The relative name of the Google Compute Engine [subnetwork](https://cloud.google.com... |

### `NetworkPerformanceConfig`

Configuration of all network bandwidth tiers

| Property | Type | Description |
|----------|------|-------------|
| `totalEgressBandwidthTier` | `string` | Specifies the total network bandwidth tier for the NodePool. |

### `NetworkPolicy`

Configuration options for the NetworkPolicy feature. https://kubernetes.io/docs/concepts/services-networking/networkpolicies/

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether network policy is enabled on the cluster. |
| `provider` | `string` | The selected network policy provider. |

### `NetworkPolicyConfig`

Configuration for NetworkPolicy. This only tracks whether the addon is enabled or not on the Master, it does not track whether network policy is enabled for the nodes.

| Property | Type | Description |
|----------|------|-------------|
| `disabled` | `boolean` | Whether NetworkPolicy is enabled for this cluster. |

### `NetworkTags`

Collection of Compute Engine network tags that can be applied to a node's underlying VM instance.

| Property | Type | Description |
|----------|------|-------------|
| `tags` | `array<string>` | List of network tags. |

### `NetworkTierConfig`

NetworkTierConfig contains network tier information.

| Property | Type | Description |
|----------|------|-------------|
| `networkTier` | `string` | Network tier configuration. |

### `NodeAffinity`

Specifies the NodeAffinity key, values, and affinity operator according to [shared sole tenant node group affinities](https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes#node_affinity_and_anti-affinity).

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | Key for NodeAffinity. |
| `operator` | `string` | Operator for NodeAffinity. |
| `values` | `array<string>` | Values for NodeAffinity. |

### `NodeConfig`

Parameters that describe the nodes in a cluster. GKE Autopilot clusters do not recognize parameters in `NodeConfig`. Use AutoprovisioningNodePoolDefaults instead.

| Property | Type | Description |
|----------|------|-------------|
| `accelerators` | `array<AcceleratorConfig>` | A list of hardware accelerators to be attached to each node. See https://cloud.google.com/compute... |
| `advancedMachineFeatures` | `AdvancedMachineFeatures` | Advanced features for the Compute Engine VM. |
| `bootDisk` | `BootDisk` | The boot disk configuration for the node pool. |
| `bootDiskKmsKey` | `string` | The Customer Managed Encryption Key used to encrypt the boot disk attached to each node in the no... |
| `confidentialNodes` | `ConfidentialNodes` | Confidential nodes config. All the nodes in the node pool will be Confidential VM once enabled. |
| `containerdConfig` | `ContainerdConfig` | Parameters for containerd customization. |
| `diskSizeGb` | `integer` | Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB. ... |
| `diskType` | `string` | Type of the disk attached to each node (e.g. 'pd-standard', 'pd-ssd' or 'pd-balanced') If unspeci... |
| `effectiveCgroupMode` | `string` | Output only. effective_cgroup_mode is the cgroup mode actually used by the node pool. It is deter... |
| `enableConfidentialStorage` | `boolean` | Optional. Reserved for future use. |
| `ephemeralStorageLocalSsdConfig` | `EphemeralStorageLocalSsdConfig` | Parameters for the node ephemeral storage using Local SSDs. If unspecified, ephemeral storage is ... |
| `fastSocket` | `FastSocket` | Enable or disable NCCL fast socket for the node pool. |
| `flexStart` | `boolean` | Flex Start flag for enabling Flex Start VM. |
| `gcfsConfig` | `GcfsConfig` | Google Container File System (image streaming) configs. |
| `gvnic` | `VirtualNIC` | Enable or disable gvnic in the node pool. |
| `imageType` | `string` | The image type to use for this node. Note that for a given image type, the latest version of it w... |
| `kubeletConfig` | `NodeKubeletConfig` | Node kubelet configs. |
| `labels` | `object` | The map of Kubernetes labels (key/value pairs) to be applied to each node. These will added in ad... |
| `linuxNodeConfig` | `LinuxNodeConfig` | Parameters that can be configured on Linux nodes. |
| `localNvmeSsdBlockConfig` | `LocalNvmeSsdBlockConfig` | Parameters for using raw-block Local NVMe SSDs. |
| `localSsdCount` | `integer` | The number of local SSD disks to be attached to the node. The limit for this value is dependent u... |
| `localSsdEncryptionMode` | `string` | Specifies which method should be used for encrypting the Local SSDs attached to the node. |
| `loggingConfig` | `NodePoolLoggingConfig` | Logging configuration. |
| `machineType` | `string` | The name of a Google Compute Engine [machine type](https://cloud.google.com/compute/docs/machine-... |
| `maxRunDuration` | `string` | The maximum duration for the nodes to exist. If unspecified, the nodes can exist indefinitely. |
| `metadata` | `object` | The metadata key/value pairs assigned to instances in the cluster. Keys must conform to the regex... |
| `minCpuPlatform` | `string` | Minimum CPU platform to be used by this instance. The instance may be scheduled on the specified ... |
| `nodeGroup` | `string` | Setting this field will assign instances of this pool to run on the specified node group. This is... |
| `oauthScopes` | `array<string>` | The set of Google API scopes to be made available on all of the node VMs under the "default" serv... |
| `preemptible` | `boolean` | Whether the nodes are created as preemptible VM instances. See: https://cloud.google.com/compute/... |
| `reservationAffinity` | `ReservationAffinity` | The optional reservation affinity. Setting this field will apply the specified [Zonal Compute Res... |
| `resourceLabels` | `object` | The resource labels for the node pool to use to annotate any related Google Compute Engine resour... |
| `resourceManagerTags` | `ResourceManagerTags` | A map of resource manager tag keys and values to be attached to the nodes. |
| `sandboxConfig` | `SandboxConfig` | Sandbox configuration for this node. |
| `secondaryBootDiskUpdateStrategy` | `SecondaryBootDiskUpdateStrategy` | Secondary boot disk update strategy. |
| `secondaryBootDisks` | `array<SecondaryBootDisk>` | List of secondary boot disks attached to the nodes. |
| `serviceAccount` | `string` | The Google Cloud Platform Service Account to be used by the node VMs. Specify the email address o... |
| `shieldedInstanceConfig` | `ShieldedInstanceConfig` | Shielded Instance options. |
| `soleTenantConfig` | `SoleTenantConfig` | Parameters for node pools to be backed by shared sole tenant node groups. |
| `spot` | `boolean` | Spot flag for enabling Spot VM, which is a rebrand of the existing preemptible flag. |
| `storagePools` | `array<string>` | List of Storage Pools where boot disks are provisioned. |
| `tags` | `array<string>` | The list of instance tags applied to all nodes. Tags are used to identify valid sources or target... |
| `taints` | `array<NodeTaint>` | List of kubernetes taints to be applied to each node. For more information, including usage and t... |
| `windowsNodeConfig` | `WindowsNodeConfig` | Parameters that can be configured on Windows nodes. |
| `workloadMetadataConfig` | `WorkloadMetadataConfig` | The workload metadata configuration for this node. |

### `NodeConfigDefaults`

Subset of NodeConfig message that has defaults.

| Property | Type | Description |
|----------|------|-------------|
| `containerdConfig` | `ContainerdConfig` | Parameters for containerd customization. |
| `gcfsConfig` | `GcfsConfig` | GCFS (Google Container File System, also known as Riptide) options. |
| `loggingConfig` | `NodePoolLoggingConfig` | Logging configuration for node pools. |
| `nodeKubeletConfig` | `NodeKubeletConfig` | NodeKubeletConfig controls the defaults for new node-pools. Currently only `insecure_kubelet_read... |

### `NodeDrainConfig`

NodeDrainConfig contains the node drain related configurations for this nodepool.

| Property | Type | Description |
|----------|------|-------------|
| `respectPdbDuringNodePoolDeletion` | `boolean` | Whether to respect PDB during node pool deletion. |

### `NodeKernelModuleLoading`

Configuration for kernel module loading on nodes.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `string` | Set the node module loading policy for nodes in the node pool. |

### `NodeKubeletConfig`

Node kubelet configs.

| Property | Type | Description |
|----------|------|-------------|
| `allowedUnsafeSysctls` | `array<string>` | Optional. Defines a comma-separated allowlist of unsafe sysctls or sysctl patterns (ending in `*`... |
| `containerLogMaxFiles` | `integer` | Optional. Defines the maximum number of container log files that can be present for a container. ... |
| `containerLogMaxSize` | `string` | Optional. Defines the maximum size of the container log file before it is rotated. See https://ku... |
| `cpuCfsQuota` | `boolean` | Enable CPU CFS quota enforcement for containers that specify CPU limits. This option is enabled b... |
| `cpuCfsQuotaPeriod` | `string` | Set the CPU CFS quota period value 'cpu.cfs_period_us'. The string must be a sequence of decimal ... |
| `cpuManagerPolicy` | `string` | Control the CPU management policy on the node. See https://kubernetes.io/docs/tasks/administer-cl... |
| `evictionMaxPodGracePeriodSeconds` | `integer` | Optional. eviction_max_pod_grace_period_seconds is the maximum allowed grace period (in seconds) ... |
| `evictionMinimumReclaim` | `EvictionMinimumReclaim` | Optional. eviction_minimum_reclaim is a map of signal names to quantities that defines minimum re... |
| `evictionSoft` | `EvictionSignals` | Optional. eviction_soft is a map of signal names to quantities that defines soft eviction thresho... |
| `evictionSoftGracePeriod` | `EvictionGracePeriod` | Optional. eviction_soft_grace_period is a map of signal names to quantities that defines grace pe... |
| `imageGcHighThresholdPercent` | `integer` | Optional. Defines the percent of disk usage after which image garbage collection is always run. T... |
| `imageGcLowThresholdPercent` | `integer` | Optional. Defines the percent of disk usage before which image garbage collection is never run. L... |
| `imageMaximumGcAge` | `string` | Optional. Defines the maximum age an image can be unused before it is garbage collected. The stri... |
| `imageMinimumGcAge` | `string` | Optional. Defines the minimum age for an unused image before it is garbage collected. The string ... |
| `insecureKubeletReadonlyPortEnabled` | `boolean` | Enable or disable Kubelet read only port. |
| `maxParallelImagePulls` | `integer` | Optional. Defines the maximum number of image pulls in parallel. The range is 2 to 5, inclusive. ... |
| `memoryManager` | `MemoryManager` | Optional. Controls NUMA-aware Memory Manager configuration on the node. For more information, see... |
| `podPidsLimit` | `string` | Set the Pod PID limits. See https://kubernetes.io/docs/concepts/policy/pid-limiting/#pod-pid-limi... |
| `singleProcessOomKill` | `boolean` | Optional. Defines whether to enable single process OOM killer. If true, will prevent the memory.o... |
| `topologyManager` | `TopologyManager` | Optional. Controls Topology Manager configuration on the node. For more information, see: https:/... |

### `NodeLabels`

Collection of node-level [Kubernetes labels](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels).

| Property | Type | Description |
|----------|------|-------------|
| `labels` | `object` | Map of node label keys and node label values. |

### `NodeManagement`

NodeManagement defines the set of node management services turned on for the node pool.

| Property | Type | Description |
|----------|------|-------------|
| `autoRepair` | `boolean` | A flag that specifies whether the node auto-repair is enabled for the node pool. If enabled, the ... |
| `autoUpgrade` | `boolean` | A flag that specifies whether node auto-upgrade is enabled for the node pool. If enabled, node au... |
| `upgradeOptions` | `AutoUpgradeOptions` | Specifies the Auto Upgrade knobs for the node pool. |

### `NodeNetworkConfig`

Parameters for node pool-level network config.

| Property | Type | Description |
|----------|------|-------------|
| `additionalNodeNetworkConfigs` | `array<AdditionalNodeNetworkConfig>` | We specify the additional node networks for this node pool using this list. Each node network cor... |
| `additionalPodNetworkConfigs` | `array<AdditionalPodNetworkConfig>` | We specify the additional pod networks for this node pool using this list. Each pod network corre... |
| `createPodRange` | `boolean` | Input only. Whether to create a new range for pod IPs in this node pool. Defaults are provided fo... |
| `enablePrivateNodes` | `boolean` | Whether nodes have internal IP addresses only. If enable_private_nodes is not specified, then the... |
| `networkPerformanceConfig` | `NetworkPerformanceConfig` | Network bandwidth tier configuration. |
| `networkTierConfig` | `NetworkTierConfig` | Output only. The network tier configuration for the node pool inherits from the cluster-level con... |
| `podCidrOverprovisionConfig` | `PodCIDROverprovisionConfig` | [PRIVATE FIELD] Pod CIDR size overprovisioning config for the nodepool. Pod CIDR size per node de... |
| `podIpv4CidrBlock` | `string` | The IP address range for pod IPs in this node pool. Only applicable if `create_pod_range` is true... |
| `podIpv4RangeUtilization` | `number` | Output only. The utilization of the IPv4 range for the pod. The ratio is Usage/[Total number of I... |
| `podRange` | `string` | The ID of the secondary range for pod IPs. If `create_pod_range` is true, this ID is used for the... |
| `subnetwork` | `string` | The subnetwork path for the node pool. Format: projects/{project}/regions/{region}/subnetworks/{s... |

### `NodePool`

NodePool contains the name and configuration for a cluster's node pool. Node pools are a set of nodes (i.e. VM's), with a common configuration and specification, under the control of the cluster master. They may have a set of Kubernetes labels applied to them, which may be used to reference them during pod scheduling. They may also be resized up or down, to accommodate the workload.

| Property | Type | Description |
|----------|------|-------------|
| `autopilotConfig` | `AutopilotConfig` | Specifies the autopilot configuration for this node pool. This field is exclusively reserved for ... |
| `autoscaling` | `NodePoolAutoscaling` | Autoscaler configuration for this NodePool. Autoscaler is enabled only if a valid configuration i... |
| `bestEffortProvisioning` | `BestEffortProvisioning` | Enable best effort provisioning for nodes |
| `conditions` | `array<StatusCondition>` | Which conditions caused the current node pool state. |
| `config` | `NodeConfig` | The node configuration of the pool. |
| `etag` | `string` | This checksum is computed by the server based on the value of node pool fields, and may be sent o... |
| `initialNodeCount` | `integer` | The initial node count for the pool. You must ensure that your Compute Engine [resource quota](ht... |
| `instanceGroupUrls` | `array<string>` | Output only. The resource URLs of the [managed instance groups](https://cloud.google.com/compute/... |
| `locations` | `array<string>` | The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) ... |
| `management` | `NodeManagement` | NodeManagement configuration for this NodePool. |
| `maxPodsConstraint` | `MaxPodsConstraint` | The constraint on the maximum number of pods that can be run simultaneously on a node in the node... |
| `name` | `string` | The name of the node pool. |
| `networkConfig` | `NodeNetworkConfig` | Networking configuration for this NodePool. If specified, it overrides the cluster-level defaults. |
| `nodeDrainConfig` | `NodeDrainConfig` | Specifies the node drain configuration for this node pool. |
| `placementPolicy` | `PlacementPolicy` | Specifies the node placement policy. |
| `podIpv4CidrSize` | `integer` | Output only. The pod CIDR block size per node in this node pool. |
| `queuedProvisioning` | `QueuedProvisioning` | Specifies the configuration of queued provisioning. |
| `selfLink` | `string` | Output only. Server-defined URL for the resource. |
| `status` | `string` | Output only. The status of the nodes in this pool instance. |
| `statusMessage` | `string` | Output only. Deprecated. Use conditions instead. Additional information about the current status ... |
| `updateInfo` | `UpdateInfo` | Output only. Update info contains relevant information during a node pool update. |
| `upgradeSettings` | `UpgradeSettings` | Upgrade settings control disruption and speed of the upgrade. |
| `version` | `string` | The version of Kubernetes running on this NodePool's nodes. If unspecified, it defaults as descri... |

### `NodePoolAutoConfig`

Node pool configs that apply to all auto-provisioned node pools in autopilot clusters and node auto-provisioning enabled clusters.

| Property | Type | Description |
|----------|------|-------------|
| `linuxNodeConfig` | `LinuxNodeConfig` | Output only. Configuration options for Linux nodes. |
| `networkTags` | `NetworkTags` | The list of instance tags applied to all nodes. Tags are used to identify valid sources or target... |
| `nodeKubeletConfig` | `NodeKubeletConfig` | NodeKubeletConfig controls the defaults for autoprovisioned node-pools. Currently only `insecure_... |
| `resourceManagerTags` | `ResourceManagerTags` | Resource manager tag keys and values to be attached to the nodes for managing Compute Engine fire... |

### `NodePoolAutoscaling`

NodePoolAutoscaling contains information required by cluster autoscaler to adjust the size of the node pool to the current cluster usage.

| Property | Type | Description |
|----------|------|-------------|
| `autoprovisioned` | `boolean` | Can this node pool be deleted automatically. |
| `enabled` | `boolean` | Is autoscaling enabled for this node pool. |
| `locationPolicy` | `string` | Location policy used when scaling up a nodepool. |
| `maxNodeCount` | `integer` | Maximum number of nodes for one location in the node pool. Must be >= min_node_count. There has t... |
| `minNodeCount` | `integer` | Minimum number of nodes for one location in the node pool. Must be greater than or equal to 0 and... |
| `totalMaxNodeCount` | `integer` | Maximum number of nodes in the node pool. Must be greater than or equal to total_min_node_count. ... |
| `totalMinNodeCount` | `integer` | Minimum number of nodes in the node pool. Must be greater than or equal to 0 and less than or equ... |

### `NodePoolDefaults`

Subset of Nodepool message that has defaults.

| Property | Type | Description |
|----------|------|-------------|
| `nodeConfigDefaults` | `NodeConfigDefaults` | Subset of NodeConfig message that has defaults. |

### `NodePoolLoggingConfig`

NodePoolLoggingConfig specifies logging configuration for nodepools.

| Property | Type | Description |
|----------|------|-------------|
| `variantConfig` | `LoggingVariantConfig` | Logging variant configuration. |

### `NodePoolUpgradeInfo`

NodePoolUpgradeInfo contains the upgrade information of a nodepool.

| Property | Type | Description |
|----------|------|-------------|
| `autoUpgradeStatus` | `array<string>` | The auto upgrade status. |
| `endOfExtendedSupportTimestamp` | `string` | The nodepool's current minor version's end of extended support timestamp. |
| `endOfStandardSupportTimestamp` | `string` | The nodepool's current minor version's end of standard support timestamp. |
| `minorTargetVersion` | `string` | minor_target_version indicates the target version for minor upgrade. |
| `patchTargetVersion` | `string` | patch_target_version indicates the target version for patch upgrade. |
| `pausedReason` | `array<string>` | The auto upgrade paused reason. |
| `upgradeDetails` | `array<UpgradeDetails>` | The list of past auto upgrades. |

### `NodeTaint`

Kubernetes taint is composed of three fields: key, value, and effect. Effect can only be one of three types: NoSchedule, PreferNoSchedule or NoExecute. See [here](https://kubernetes.io/docs/concepts/configuration/taint-and-toleration) for more information, including usage and the valid values.

| Property | Type | Description |
|----------|------|-------------|
| `effect` | `string` | Effect for taint. |
| `key` | `string` | Key for taint. |
| `value` | `string` | Value for taint. |

### `NodeTaints`

Collection of Kubernetes [node taints](https://kubernetes.io/docs/concepts/configuration/taint-and-toleration).

| Property | Type | Description |
|----------|------|-------------|
| `taints` | `array<NodeTaint>` | List of node taints. |

### `NotificationConfig`

NotificationConfig is the configuration of notifications.

| Property | Type | Description |
|----------|------|-------------|
| `pubsub` | `PubSub` | Notification config for Pub/Sub. |

### `Operation`

This operation resource represents operations that may have happened or are happening on the cluster. All fields are output only.

| Property | Type | Description |
|----------|------|-------------|
| `clusterConditions` | `array<StatusCondition>` | Which conditions caused the current cluster state. Deprecated. Use field error instead. |
| `detail` | `string` | Output only. Detailed operation progress, if available. |
| `endTime` | `string` | Output only. The time the operation completed, in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt)... |
| `error` | `Status` | The error result of the operation in case of failure. |
| `location` | `string` | Output only. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/r... |
| `name` | `string` | Output only. The server-assigned ID for the operation. |
| `nodepoolConditions` | `array<StatusCondition>` | Which conditions caused the current node pool state. Deprecated. Use field error instead. |
| `operationType` | `string` | Output only. The operation type. |
| `progress` | `OperationProgress` | Output only. Progress information for an operation. |
| `selfLink` | `string` | Output only. Server-defined URI for the operation. Example: `https://container.googleapis.com/v1a... |
| `startTime` | `string` | Output only. The time the operation started, in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) t... |
| `status` | `string` | Output only. The current status of the operation. |
| `statusMessage` | `string` | Output only. If an error has occurred, a textual description of the error. Deprecated. Use the fi... |
| `targetLink` | `string` | Output only. Server-defined URI for the target of the operation. The format of this is a URI to t... |
| `zone` | `string` | Output only. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/z... |

### `OperationError`

OperationError records errors seen from CloudKMS keys encountered during updates to DatabaseEncryption configuration.

| Property | Type | Description |
|----------|------|-------------|
| `errorMessage` | `string` | Description of the error seen during the operation. |
| `keyName` | `string` | CloudKMS key resource that had the error. |
| `timestamp` | `string` | Time when the CloudKMS error was seen. |

### `OperationProgress`

Information about operation (or operation stage) progress.

| Property | Type | Description |
|----------|------|-------------|
| `metrics` | `array<Metric>` | Progress metric bundle, for example: metrics: [{name: "nodes done", int_value: 15}, {name: "nodes... |
| `name` | `string` | A non-parameterized string describing an operation stage. Unset for single-stage operations. |
| `stages` | `array<OperationProgress>` | Substages of an operation or a stage. |
| `status` | `string` | Status of an operation stage. Unset for single-stage operations. |

### `ParallelstoreCsiDriverConfig`

Configuration for the Cloud Storage Parallelstore CSI driver.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether the Cloud Storage Parallelstore CSI driver is enabled for this cluster. |

### `ParentProductConfig`

ParentProductConfig is the configuration of the parent product of the cluster. This field is used by Google internal products that are built on top of a GKE cluster and take the ownership of the cluster.

| Property | Type | Description |
|----------|------|-------------|
| `labels` | `object` | Labels contain the configuration of the parent product. |
| `productName` | `string` | Name of the parent product associated with the cluster. |

### `PdbBlockedPod`

The namespace/name of the pod whose eviction is blocked by PDB.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name of the pod. |
| `namespace` | `string` | The namespace of the pod. |

### `PlacementPolicy`

PlacementPolicy defines the placement policy used by the node pool.

| Property | Type | Description |
|----------|------|-------------|
| `policyName` | `string` | If set, refers to the name of a custom resource policy supplied by the user. The resource policy ... |
| `tpuTopology` | `string` | Optional. TPU placement topology for pod slice node pool. https://cloud.google.com/tpu/docs/types... |
| `type` | `string` | The type of placement. |

### `PodAutoscaling`

PodAutoscaling is used for configuration of parameters for workload autoscaling.

| Property | Type | Description |
|----------|------|-------------|
| `hpaProfile` | `string` | Selected Horizontal Pod Autoscaling profile. |

### `PodCIDROverprovisionConfig`

[PRIVATE FIELD] Config for pod CIDR size overprovisioning.

| Property | Type | Description |
|----------|------|-------------|
| `disable` | `boolean` | Whether Pod CIDR overprovisioning is disabled. Note: Pod CIDR overprovisioning is enabled by defa... |

### `PrivateClusterConfig`

Configuration options for private clusters.

| Property | Type | Description |
|----------|------|-------------|
| `enablePrivateEndpoint` | `boolean` | Whether the master's internal IP address is used as the cluster endpoint. Deprecated: Use Control... |
| `enablePrivateNodes` | `boolean` | Whether nodes have internal IP addresses only. If enabled, all nodes are given only RFC 1918 priv... |
| `masterGlobalAccessConfig` | `PrivateClusterMasterGlobalAccessConfig` | Controls master global access settings. Deprecated: Use ControlPlaneEndpointsConfig.IPEndpointsCo... |
| `masterIpv4CidrBlock` | `string` | The IP range in CIDR notation to use for the hosted master network. This range will be used for a... |
| `peeringName` | `string` | Output only. The peering name in the customer VPC used by this cluster. |
| `privateEndpoint` | `string` | Output only. The internal IP address of this cluster's master endpoint. Deprecated: Use ControlPl... |
| `privateEndpointSubnetwork` | `string` | Subnet to provision the master's private endpoint during cluster creation. Specified in projects/... |
| `publicEndpoint` | `string` | Output only. The external IP address of this cluster's master endpoint. Deprecated:Use ControlPla... |

### `PrivateClusterMasterGlobalAccessConfig`

Configuration for controlling master global access settings.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whenever master is accessible globally or not. |

### `PrivateRegistryAccessConfig`

PrivateRegistryAccessConfig contains access configuration for private container registries.

| Property | Type | Description |
|----------|------|-------------|
| `certificateAuthorityDomainConfig` | `array<CertificateAuthorityDomainConfig>` | Private registry access configuration. |
| `enabled` | `boolean` | Private registry access is enabled. |

### `PrivilegedAdmissionConfig`

PrivilegedAdmissionConfig stores the list of authorized allowlist paths for the cluster.

| Property | Type | Description |
|----------|------|-------------|
| `allowlistPaths` | `array<string>` | The customer allowlist Cloud Storage paths for the cluster. These paths are used with the `--auto... |

### `PubSub`

Pub/Sub specific notification config.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Enable notifications for Pub/Sub. |
| `filter` | `Filter` | Allows filtering to one or more specific event types. If no filter is specified, or if a filter i... |
| `topic` | `string` | The desired Pub/Sub topic to which notifications will be sent by GKE. Format is `projects/{projec... |

### `QueuedProvisioning`

QueuedProvisioning defines the queued provisioning used by the node pool.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Denotes that this nodepool is QRM specific, meaning nodes can be only obtained through queuing vi... |

### `RBACBindingConfig`

RBACBindingConfig allows user to restrict ClusterRoleBindings an RoleBindings that can be created.

| Property | Type | Description |
|----------|------|-------------|
| `enableInsecureBindingSystemAuthenticated` | `boolean` | Setting this to true will allow any ClusterRoleBinding and RoleBinding with subjects system:authe... |
| `enableInsecureBindingSystemUnauthenticated` | `boolean` | Setting this to true will allow any ClusterRoleBinding and RoleBinding with subjets system:anonym... |

### `RangeInfo`

RangeInfo contains the range name and the range utilization by this cluster.

| Property | Type | Description |
|----------|------|-------------|
| `rangeName` | `string` | Output only. Name of a range. |
| `utilization` | `number` | Output only. The utilization of the range. |

### `RayClusterLoggingConfig`

RayClusterLoggingConfig specifies configuration of Ray logging.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Enable log collection for Ray clusters. |

### `RayClusterMonitoringConfig`

RayClusterMonitoringConfig specifies monitoring configuration for Ray clusters.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Enable metrics collection for Ray clusters. |

### `RayOperatorConfig`

Configuration options for the Ray Operator add-on.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether the Ray Operator addon is enabled for this cluster. |
| `rayClusterLoggingConfig` | `RayClusterLoggingConfig` | Optional. Logging configuration for Ray clusters. |
| `rayClusterMonitoringConfig` | `RayClusterMonitoringConfig` | Optional. Monitoring configuration for Ray clusters. |

### `RecurringTimeWindow`

Represents an arbitrary window of time that recurs.

| Property | Type | Description |
|----------|------|-------------|
| `recurrence` | `string` | An RRULE (https://tools.ietf.org/html/rfc5545#section-3.8.5.3) for how this window recurs. They g... |
| `window` | `TimeWindow` | The window of the first recurrence. |

### `RegistryHeader`

RegistryHeader configures headers for the registry.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | Key configures the header key. |
| `value` | `array<string>` | Value configures the header value. |

### `RegistryHostConfig`

RegistryHostConfig configures the top-level structure for a single containerd registry server's configuration, which represents one hosts.toml file on the node. It will override the same fqdns in PrivateRegistryAccessConfig.

| Property | Type | Description |
|----------|------|-------------|
| `hosts` | `array<HostConfig>` | HostConfig configures a list of host-specific configurations for the server. Each server can have... |
| `server` | `string` | Defines the host name of the registry server, which will be used to create configuration file as ... |

### `ReleaseChannel`

ReleaseChannel indicates which release channel a cluster is subscribed to. Release channels are arranged in order of risk. When a cluster is subscribed to a release channel, Google maintains both the master version and the node version. Node auto-upgrade defaults to true and cannot be disabled.

| Property | Type | Description |
|----------|------|-------------|
| `channel` | `string` | channel specifies which release channel the cluster is subscribed to. |

### `ReleaseChannelConfig`

ReleaseChannelConfig exposes configuration for a release channel.

| Property | Type | Description |
|----------|------|-------------|
| `channel` | `string` | The release channel this configuration applies to. |
| `defaultVersion` | `string` | The default version for newly created clusters on the channel. |
| `upgradeTargetVersion` | `string` | The auto upgrade target version for clusters on the channel. |
| `validVersions` | `array<string>` | List of valid versions for the channel. |

### `ReservationAffinity`

[ReservationAffinity](https://cloud.google.com/compute/docs/instances/reserving-zonal-resources) is the configuration of desired reservation which instances could take capacity from.

| Property | Type | Description |
|----------|------|-------------|
| `consumeReservationType` | `string` | Corresponds to the type of reservation consumption. |
| `key` | `string` | Corresponds to the label key of a reservation resource. To target a SPECIFIC_RESERVATION by name,... |
| `values` | `array<string>` | Corresponds to the label value(s) of reservation resource(s). |

### `ResourceLabels`

Collection of [Resource Manager labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels).

| Property | Type | Description |
|----------|------|-------------|
| `labels` | `object` | Map of node label keys and node label values. |

### `ResourceLimit`

Contains information about amount of some resource in the cluster. For memory, value should be in GB.

| Property | Type | Description |
|----------|------|-------------|
| `maximum` | `string` | Maximum amount of the resource in the cluster. |
| `minimum` | `string` | Minimum amount of the resource in the cluster. |
| `resourceType` | `string` | Resource name "cpu", "memory" or gpu-specific string. |

### `ResourceManagerTags`

A map of resource manager tag keys and values to be attached to the nodes for managing Compute Engine firewalls using Network Firewall Policies. Tags must be according to specifications in https://cloud.google.com/vpc/docs/tags-firewalls-overview#specifications. A maximum of 5 tag key-value pairs can be specified. Existing tags will be replaced with new values.

| Property | Type | Description |
|----------|------|-------------|
| `tags` | `object` | TagKeyValue must be in one of the following formats ([KEY]=[VALUE]) 1. `tagKeys/{tag_key_id}=tagV... |

### `ResourceUsageExportConfig`

Configuration for exporting cluster resource usages.

| Property | Type | Description |
|----------|------|-------------|
| `bigqueryDestination` | `BigQueryDestination` | Configuration to use BigQuery as usage export destination. |
| `consumptionMeteringConfig` | `ConsumptionMeteringConfig` | Configuration to enable resource consumption metering. |
| `enableNetworkEgressMetering` | `boolean` | Whether to enable network egress metering for this cluster. If enabled, a daemonset will be creat... |

### `RollbackNodePoolUpgradeRequest`

RollbackNodePoolUpgradeRequest rollbacks the previously Aborted or Failed NodePool upgrade. This will be an no-op if the last upgrade successfully completed.

| Property | Type | Description |
|----------|------|-------------|
| `clusterId` | `string` | Deprecated. The name of the cluster to rollback. This field has been deprecated and replaced by t... |
| `name` | `string` | The name (project, location, cluster, node pool id) of the node poll to rollback upgrade. Specifi... |
| `nodePoolId` | `string` | Deprecated. The name of the node pool to rollback. This field has been deprecated and replaced by... |
| `projectId` | `string` | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com... |
| `respectPdb` | `boolean` | Option for rollback to ignore the PodDisruptionBudget. Default value is false. |
| `zone` | `string` | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zo... |

### `RotationConfig`

RotationConfig is config for secret manager auto rotation.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether the rotation is enabled. |
| `rotationInterval` | `string` | The interval between two consecutive rotations. Default rotation interval is 2 minutes. |

### `SandboxConfig`

SandboxConfig contains configurations of the sandbox to use for the node.

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | Type of the sandbox to use for the node. |

### `SecondaryBootDisk`

SecondaryBootDisk represents a persistent disk attached to a node with special configurations based on its mode.

| Property | Type | Description |
|----------|------|-------------|
| `diskImage` | `string` | Fully-qualified resource ID for an existing disk image. |
| `mode` | `string` | Disk mode (container image cache, etc.) |

### `SecondaryBootDiskUpdateStrategy`

SecondaryBootDiskUpdateStrategy is a placeholder which will be extended in the future to define different options for updating secondary boot disks.

### `SecretManagerConfig`

SecretManagerConfig is config for secret manager enablement.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Enable/Disable Secret Manager Config. |
| `rotationConfig` | `RotationConfig` | Rotation config for secret manager. |

### `SecurityBulletinEvent`

SecurityBulletinEvent is a notification sent to customers when a security bulletin has been posted that they are vulnerable to.

| Property | Type | Description |
|----------|------|-------------|
| `affectedSupportedMinors` | `array<string>` | The GKE minor versions affected by this vulnerability. |
| `briefDescription` | `string` | A brief description of the bulletin. See the bulletin pointed to by the bulletin_uri field for an... |
| `bulletinId` | `string` | The ID of the bulletin corresponding to the vulnerability. |
| `bulletinUri` | `string` | The URI link to the bulletin on the website for more information. |
| `cveIds` | `array<string>` | The CVEs associated with this bulletin. |
| `manualStepsRequired` | `boolean` | If this field is specified, it means there are manual steps that the user must take to make their... |
| `mitigatedVersions` | `array<string>` | The GKE versions where this vulnerability is mitigated. |
| `patchedVersions` | `array<string>` | The GKE versions where this vulnerability is patched. |
| `resourceTypeAffected` | `string` | The resource type (node/control plane) that has the vulnerability. Multiple notifications (1 noti... |
| `severity` | `string` | The severity of this bulletin as it relates to GKE. |
| `suggestedUpgradeTarget` | `string` | This represents a version selected from the patched_versions field that the cluster receiving thi... |

### `SecurityPostureConfig`

SecurityPostureConfig defines the flags needed to enable/disable features for the Security Posture API.

| Property | Type | Description |
|----------|------|-------------|
| `mode` | `string` | Sets which mode to use for Security Posture features. |
| `vulnerabilityMode` | `string` | Sets which mode to use for vulnerability scanning. |

### `ServerConfig`

Kubernetes Engine service configuration.

| Property | Type | Description |
|----------|------|-------------|
| `channels` | `array<ReleaseChannelConfig>` | List of release channel configurations. |
| `defaultClusterVersion` | `string` | Version of Kubernetes the service deploys by default. |
| `defaultImageType` | `string` | Default image type. |
| `validImageTypes` | `array<string>` | List of valid image types. |
| `validMasterVersions` | `array<string>` | List of valid master versions, in descending order. |
| `validNodeVersions` | `array<string>` | List of valid node upgrade target versions, in descending order. |

### `ServiceExternalIPsConfig`

Config to block services with externalIPs field.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether Services with ExternalIPs field are allowed or not. |

### `SetAddonsConfigRequest`

SetAddonsConfigRequest sets the addons associated with the cluster.

| Property | Type | Description |
|----------|------|-------------|
| `addonsConfig` | `AddonsConfig` | Required. The desired configurations for the various addons available to run in the cluster. |
| `clusterId` | `string` | Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by th... |
| `name` | `string` | The name (project, location, cluster) of the cluster to set addons. Specified in the format `proj... |
| `projectId` | `string` | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com... |
| `zone` | `string` | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zo... |

### `SetLabelsRequest`

SetLabelsRequest sets the Google Cloud Platform labels on a Google Container Engine cluster, which will in turn set them for Google Compute Engine resources used by that cluster

| Property | Type | Description |
|----------|------|-------------|
| `clusterId` | `string` | Deprecated. The name of the cluster. This field has been deprecated and replaced by the name field. |
| `labelFingerprint` | `string` | Required. The fingerprint of the previous set of labels for this resource, used to detect conflic... |
| `name` | `string` | The name (project, location, cluster name) of the cluster to set labels. Specified in the format ... |
| `projectId` | `string` | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com... |
| `resourceLabels` | `object` | Required. The labels to set for that cluster. |
| `zone` | `string` | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zo... |

### `SetLegacyAbacRequest`

SetLegacyAbacRequest enables or disables the ABAC authorization mechanism for a cluster.

| Property | Type | Description |
|----------|------|-------------|
| `clusterId` | `string` | Deprecated. The name of the cluster to update. This field has been deprecated and replaced by the... |
| `enabled` | `boolean` | Required. Whether ABAC authorization will be enabled in the cluster. |
| `name` | `string` | The name (project, location, cluster name) of the cluster to set legacy abac. Specified in the fo... |
| `projectId` | `string` | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com... |
| `zone` | `string` | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zo... |

### `SetLocationsRequest`

SetLocationsRequest sets the locations of the cluster.

| Property | Type | Description |
|----------|------|-------------|
| `clusterId` | `string` | Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by th... |
| `locations` | `array<string>` | Required. The desired list of Google Compute Engine [zones](https://cloud.google.com/compute/docs... |
| `name` | `string` | The name (project, location, cluster) of the cluster to set locations. Specified in the format `p... |
| `projectId` | `string` | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com... |
| `zone` | `string` | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zo... |

### `SetLoggingServiceRequest`

SetLoggingServiceRequest sets the logging service of a cluster.

| Property | Type | Description |
|----------|------|-------------|
| `clusterId` | `string` | Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by th... |
| `loggingService` | `string` | Required. The logging service the cluster should use to write logs. Currently available options: ... |
| `name` | `string` | The name (project, location, cluster) of the cluster to set logging. Specified in the format `pro... |
| `projectId` | `string` | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com... |
| `zone` | `string` | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zo... |

### `SetMaintenancePolicyRequest`

SetMaintenancePolicyRequest sets the maintenance policy for a cluster.

| Property | Type | Description |
|----------|------|-------------|
| `clusterId` | `string` | Required. The name of the cluster to update. |
| `maintenancePolicy` | `MaintenancePolicy` | Required. The maintenance policy to be set for the cluster. An empty field clears the existing ma... |
| `name` | `string` | The name (project, location, cluster name) of the cluster to set maintenance policy. Specified in... |
| `projectId` | `string` | Required. The Google Developers Console [project ID or project number](https://cloud.google.com/r... |
| `zone` | `string` | Required. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zone... |

### `SetMasterAuthRequest`

SetMasterAuthRequest updates the admin password of a cluster.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` | Required. The exact form of action to be taken on the master auth. |
| `clusterId` | `string` | Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by th... |
| `name` | `string` | The name (project, location, cluster) of the cluster to set auth. Specified in the format `projec... |
| `projectId` | `string` | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com... |
| `update` | `MasterAuth` | Required. A description of the update. |
| `zone` | `string` | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zo... |

### `SetMonitoringServiceRequest`

SetMonitoringServiceRequest sets the monitoring service of a cluster.

| Property | Type | Description |
|----------|------|-------------|
| `clusterId` | `string` | Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by th... |
| `monitoringService` | `string` | Required. The monitoring service the cluster should use to write metrics. Currently available opt... |
| `name` | `string` | The name (project, location, cluster) of the cluster to set monitoring. Specified in the format `... |
| `projectId` | `string` | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com... |
| `zone` | `string` | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zo... |

### `SetNetworkPolicyRequest`

SetNetworkPolicyRequest enables/disables network policy for a cluster.

| Property | Type | Description |
|----------|------|-------------|
| `clusterId` | `string` | Deprecated. The name of the cluster. This field has been deprecated and replaced by the name field. |
| `name` | `string` | The name (project, location, cluster name) of the cluster to set networking policy. Specified in ... |
| `networkPolicy` | `NetworkPolicy` | Required. Configuration options for the NetworkPolicy feature. |
| `projectId` | `string` | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com... |
| `zone` | `string` | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zo... |

### `SetNodePoolAutoscalingRequest`

SetNodePoolAutoscalingRequest sets the autoscaler settings of a node pool.

| Property | Type | Description |
|----------|------|-------------|
| `autoscaling` | `NodePoolAutoscaling` | Required. Autoscaling configuration for the node pool. |
| `clusterId` | `string` | Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by th... |
| `name` | `string` | The name (project, location, cluster, node pool) of the node pool to set autoscaler settings. Spe... |
| `nodePoolId` | `string` | Deprecated. The name of the node pool to upgrade. This field has been deprecated and replaced by ... |
| `projectId` | `string` | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com... |
| `zone` | `string` | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zo... |

### `SetNodePoolManagementRequest`

SetNodePoolManagementRequest sets the node management properties of a node pool.

| Property | Type | Description |
|----------|------|-------------|
| `clusterId` | `string` | Deprecated. The name of the cluster to update. This field has been deprecated and replaced by the... |
| `management` | `NodeManagement` | Required. NodeManagement configuration for the node pool. |
| `name` | `string` | The name (project, location, cluster, node pool id) of the node pool to set management properties... |
| `nodePoolId` | `string` | Deprecated. The name of the node pool to update. This field has been deprecated and replaced by t... |
| `projectId` | `string` | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com... |
| `zone` | `string` | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zo... |

### `SetNodePoolSizeRequest`

SetNodePoolSizeRequest sets the size of a node pool.

| Property | Type | Description |
|----------|------|-------------|
| `clusterId` | `string` | Deprecated. The name of the cluster to update. This field has been deprecated and replaced by the... |
| `name` | `string` | The name (project, location, cluster, node pool id) of the node pool to set size. Specified in th... |
| `nodeCount` | `integer` | Required. The desired node count for the pool. |
| `nodePoolId` | `string` | Deprecated. The name of the node pool to update. This field has been deprecated and replaced by t... |
| `projectId` | `string` | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com... |
| `zone` | `string` | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zo... |

### `ShieldedInstanceConfig`

A set of Shielded Instance options.

| Property | Type | Description |
|----------|------|-------------|
| `enableIntegrityMonitoring` | `boolean` | Defines whether the instance has integrity monitoring enabled. Enables monitoring and attestation... |
| `enableSecureBoot` | `boolean` | Defines whether the instance has Secure Boot enabled. Secure Boot helps ensure that the system on... |

### `ShieldedNodes`

Configuration of Shielded Nodes feature.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether Shielded Nodes features are enabled on all nodes in this cluster. |

### `SoleTenantConfig`

SoleTenantConfig contains the NodeAffinities to specify what shared sole tenant node groups should back the node pool.

| Property | Type | Description |
|----------|------|-------------|
| `minNodeCpus` | `integer` | Optional. The minimum number of virtual CPUs this instance will consume when running on a sole-te... |
| `nodeAffinities` | `array<NodeAffinity>` | NodeAffinities used to match to a shared sole tenant node group. |

### `StandardRolloutPolicy`

Standard rollout policy is the default policy for blue-green.

| Property | Type | Description |
|----------|------|-------------|
| `batchNodeCount` | `integer` | Number of blue nodes to drain in a batch. |
| `batchPercentage` | `number` | Percentage of the blue pool nodes to drain in a batch. The range of this field should be (0.0, 1.0]. |
| `batchSoakDuration` | `string` | Soak time after each batch gets drained. Default to zero. |

### `StartIPRotationRequest`

StartIPRotationRequest creates a new IP for the cluster and then performs a node upgrade on each node pool to point to the new IP.

| Property | Type | Description |
|----------|------|-------------|
| `clusterId` | `string` | Deprecated. The name of the cluster. This field has been deprecated and replaced by the name field. |
| `name` | `string` | The name (project, location, cluster name) of the cluster to start IP rotation. Specified in the ... |
| `projectId` | `string` | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com... |
| `rotateCredentials` | `boolean` | Whether to rotate credentials during IP rotation. |
| `zone` | `string` | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zo... |

### `StatefulHAConfig`

Configuration for the Stateful HA add-on.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether the Stateful HA add-on is enabled for this cluster. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `StatusCondition`

StatusCondition describes why a cluster or a node pool has a certain status (e.g., ERROR or DEGRADED).

| Property | Type | Description |
|----------|------|-------------|
| `canonicalCode` | `string` | Canonical code of the condition. |
| `code` | `string` | Machine-friendly representation of the condition Deprecated. Use canonical_code instead. |
| `message` | `string` | Human-friendly representation of the condition |

### `TimeWindow`

Represents an arbitrary window of time.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | The time that the window ends. The end time should take place after the start time. |
| `maintenanceExclusionOptions` | `MaintenanceExclusionOptions` | MaintenanceExclusionOptions provides maintenance exclusion related options. |
| `startTime` | `string` | The time that the window first starts. |

### `TopologyManager`

TopologyManager defines the configuration options for Topology Manager feature. See https://kubernetes.io/docs/tasks/administer-cluster/topology-manager/

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `string` | Configures the strategy for resource alignment. Allowed values are: * none: the default policy, a... |
| `scope` | `string` | The Topology Manager aligns resources in following scopes: * container * pod The default scope is... |

### `UpdateClusterRequest`

UpdateClusterRequest updates the settings of a cluster.

| Property | Type | Description |
|----------|------|-------------|
| `clusterId` | `string` | Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by th... |
| `name` | `string` | The name (project, location, cluster) of the cluster to update. Specified in the format `projects... |
| `projectId` | `string` | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com... |
| `update` | `ClusterUpdate` | Required. A description of the update. |
| `zone` | `string` | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zo... |

### `UpdateInfo`

UpdateInfo contains resource (instance groups, etc), status and other intermediate information relevant to a node pool upgrade.

| Property | Type | Description |
|----------|------|-------------|
| `blueGreenInfo` | `BlueGreenInfo` | Information of a blue-green upgrade. |

### `UpdateMasterRequest`

UpdateMasterRequest updates the master of the cluster.

| Property | Type | Description |
|----------|------|-------------|
| `clusterId` | `string` | Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by th... |
| `masterVersion` | `string` | Required. The Kubernetes version to change the master to. Users may specify either explicit versi... |
| `name` | `string` | The name (project, location, cluster) of the cluster to update. Specified in the format `projects... |
| `projectId` | `string` | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com... |
| `zone` | `string` | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zo... |

### `UpdateNodePoolRequest`

UpdateNodePoolRequests update a node pool's image and/or version.

| Property | Type | Description |
|----------|------|-------------|
| `accelerators` | `array<AcceleratorConfig>` | A list of hardware accelerators to be attached to each node. See https://cloud.google.com/compute... |
| `bootDisk` | `BootDisk` | The desired boot disk config for nodes in the node pool. Initiates an upgrade operation that migr... |
| `clusterId` | `string` | Deprecated. The name of the cluster to upgrade. This field has been deprecated and replaced by th... |
| `confidentialNodes` | `ConfidentialNodes` | Confidential nodes config. All the nodes in the node pool will be Confidential VM once enabled. |
| `containerdConfig` | `ContainerdConfig` | The desired containerd config for nodes in the node pool. Initiates an upgrade operation that rec... |
| `diskSizeGb` | `string` | Optional. The desired disk size for nodes in the node pool specified in GB. The smallest allowed ... |
| `diskType` | `string` | Optional. The desired disk type (e.g. 'pd-standard', 'pd-ssd' or 'pd-balanced') for nodes in the ... |
| `etag` | `string` | The current etag of the node pool. If an etag is provided and does not match the current etag of ... |
| `fastSocket` | `FastSocket` | Enable or disable NCCL fast socket for the node pool. |
| `flexStart` | `boolean` | Flex Start flag for enabling Flex Start VM. |
| `gcfsConfig` | `GcfsConfig` | GCFS config. |
| `gvnic` | `VirtualNIC` | Enable or disable gvnic on the node pool. |
| `imageType` | `string` | Required. The desired image type for the node pool. Please see https://cloud.google.com/kubernete... |
| `kubeletConfig` | `NodeKubeletConfig` | Node kubelet configs. |
| `labels` | `NodeLabels` | The desired node labels to be applied to all nodes in the node pool. If this field is not present... |
| `linuxNodeConfig` | `LinuxNodeConfig` | Parameters that can be configured on Linux nodes. |
| `locations` | `array<string>` | The desired list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#ava... |
| `loggingConfig` | `NodePoolLoggingConfig` | Logging configuration. |
| `machineType` | `string` | Optional. The desired [Google Compute Engine machine type](https://cloud.google.com/compute/docs/... |
| `maxRunDuration` | `string` | The maximum duration for the nodes to exist. If unspecified, the nodes can exist indefinitely. |
| `name` | `string` | The name (project, location, cluster, node pool) of the node pool to update. Specified in the for... |
| `nodeDrainConfig` | `NodeDrainConfig` | The desired node drain configuration for nodes in the node pool. |
| `nodeNetworkConfig` | `NodeNetworkConfig` | Node network config. |
| `nodePoolId` | `string` | Deprecated. The name of the node pool to upgrade. This field has been deprecated and replaced by ... |
| `nodeVersion` | `string` | Required. The Kubernetes version to change the nodes to (typically an upgrade). Users may specify... |
| `projectId` | `string` | Deprecated. The Google Developers Console [project ID or project number](https://cloud.google.com... |
| `queuedProvisioning` | `QueuedProvisioning` | Specifies the configuration of queued provisioning. |
| `resourceLabels` | `ResourceLabels` | The resource labels for the node pool to use to annotate any related Google Compute Engine resour... |
| `resourceManagerTags` | `ResourceManagerTags` | Desired resource manager tag keys and values to be attached to the nodes for managing Compute Eng... |
| `storagePools` | `array<string>` | List of Storage Pools where boot disks are provisioned. Existing Storage Pools will be replaced w... |
| `tags` | `NetworkTags` | The desired network tags to be applied to all nodes in the node pool. If this field is not presen... |
| `taints` | `NodeTaints` | The desired node taints to be applied to all nodes in the node pool. If this field is not present... |
| `upgradeSettings` | `UpgradeSettings` | Upgrade settings control disruption and speed of the upgrade. |
| `windowsNodeConfig` | `WindowsNodeConfig` | Parameters that can be configured on Windows nodes. |
| `workloadMetadataConfig` | `WorkloadMetadataConfig` | The desired workload metadata config for the node pool. |
| `zone` | `string` | Deprecated. The name of the Google Compute Engine [zone](https://cloud.google.com/compute/docs/zo... |

### `UpgradeAvailableEvent`

UpgradeAvailableEvent is a notification sent to customers when a new available version is released.

| Property | Type | Description |
|----------|------|-------------|
| `releaseChannel` | `ReleaseChannel` | The release channel of the version. If empty, it means a non-channel release. |
| `resource` | `string` | Optional relative path to the resource. For example, the relative path of the node pool. |
| `resourceType` | `string` | The resource type of the release version. |
| `version` | `string` | The release version available for upgrade. |

### `UpgradeDetails`

UpgradeDetails contains detailed information of each individual upgrade operation.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | The end timestamp of the upgrade. |
| `initialVersion` | `string` | The version before the upgrade. |
| `startTime` | `string` | The start timestamp of the upgrade. |
| `startType` | `string` | The start type of the upgrade. |
| `state` | `string` | Output only. The state of the upgrade. |
| `targetVersion` | `string` | The version after the upgrade. |

### `UpgradeEvent`

UpgradeEvent is a notification sent to customers by the cluster server when a resource is upgrading.

| Property | Type | Description |
|----------|------|-------------|
| `currentVersion` | `string` | The current version before the upgrade. |
| `operation` | `string` | The operation associated with this upgrade. |
| `operationStartTime` | `string` | The time when the operation was started. |
| `resource` | `string` | Optional relative path to the resource. For example in node pool upgrades, the relative path of t... |
| `resourceType` | `string` | The resource type that is upgrading. |
| `targetVersion` | `string` | The target version for the upgrade. |

### `UpgradeInfoEvent`

UpgradeInfoEvent is a notification sent to customers about the upgrade information of a resource.

| Property | Type | Description |
|----------|------|-------------|
| `currentVersion` | `string` | The current version before the upgrade. |
| `description` | `string` | A brief description of the event. |
| `disruptionEvent` | `DisruptionEvent` | The information about the disruption event. This field is only populated when event_type is DISRU... |
| `endTime` | `string` | The time when the operation ended. |
| `eventType` | `string` | The type of the event. |
| `extendedSupportEndTime` | `string` | The end of extended support timestamp. |
| `operation` | `string` | The operation associated with this upgrade. |
| `resource` | `string` | Optional relative path to the resource. For example in node pool upgrades, the relative path of t... |
| `resourceType` | `string` | The resource type associated with the upgrade. |
| `standardSupportEndTime` | `string` | The end of standard support timestamp. |
| `startTime` | `string` | The time when the operation was started. |
| `state` | `string` | Output only. The state of the upgrade. |
| `targetVersion` | `string` | The target version for the upgrade. |

### `UpgradeSettings`

These upgrade settings control the level of parallelism and the level of disruption caused by an upgrade. maxUnavailable controls the number of nodes that can be simultaneously unavailable. maxSurge controls the number of additional nodes that can be added to the node pool temporarily for the time of the upgrade to increase the number of available nodes. (maxUnavailable + maxSurge) determines the level of parallelism (how many nodes are being upgraded at the same time). Note: upgrades inevitably introduce some disruption since workloads need to be moved from old nodes to new, upgraded ones. Even if maxUnavailable=0, this holds true. (Disruption stays within the limits of PodDisruptionBudget, if it is configured.) Consider a hypothetical node pool with 5 nodes having maxSurge=2, maxUnavailable=1. This means the upgrade process upgrades 3 nodes simultaneously. It creates 2 additional (upgraded) nodes, then it brings down 3 old (not yet upgraded) nodes at the same time. This ensures that there are always at least 4 nodes available. These upgrade settings configure the upgrade strategy for the node pool. Use strategy to switch between the strategies applied to the node pool. If the strategy is ROLLING, use max_surge and max_unavailable to control the level of parallelism and the level of disruption caused by upgrade. 1. maxSurge controls the number of additional nodes that can be added to the node pool temporarily for the time of the upgrade to increase the number of available nodes. 2. maxUnavailable controls the number of nodes that can be simultaneously unavailable. 3. (maxUnavailable + maxSurge) determines the level of parallelism (how many nodes are being upgraded at the same time). If the strategy is BLUE_GREEN, use blue_green_settings to configure the blue-green upgrade related settings. 1. standard_rollout_policy is the default policy. The policy is used to control the way blue pool gets drained. The draining is executed in the batch mode. The batch size could be specified as either percentage of the node pool size or the number of nodes. batch_soak_duration is the soak time after each batch gets drained. 2. node_pool_soak_duration is the soak time after all blue nodes are drained. After this period, the blue pool nodes will be deleted.

| Property | Type | Description |
|----------|------|-------------|
| `blueGreenSettings` | `BlueGreenSettings` | Settings for blue-green upgrade strategy. |
| `maxSurge` | `integer` | The maximum number of nodes that can be created beyond the current size of the node pool during t... |
| `maxUnavailable` | `integer` | The maximum number of nodes that can be simultaneously unavailable during the upgrade process. A ... |
| `strategy` | `string` | Update strategy of the node pool. |

### `UsableSubnetwork`

UsableSubnetwork resource returns the subnetwork name, its associated network and the primary CIDR range.

| Property | Type | Description |
|----------|------|-------------|
| `ipCidrRange` | `string` | The range of internal addresses that are owned by this subnetwork. |
| `network` | `string` | Network Name. Example: projects/my-project/global/networks/my-network |
| `secondaryIpRanges` | `array<UsableSubnetworkSecondaryRange>` | Secondary IP ranges. |
| `statusMessage` | `string` | A human readable status message representing the reasons for cases where the caller cannot use th... |
| `subnetwork` | `string` | Subnetwork Name. Example: projects/my-project/regions/us-central1/subnetworks/my-subnet |

### `UsableSubnetworkSecondaryRange`

Secondary IP range of a usable subnetwork.

| Property | Type | Description |
|----------|------|-------------|
| `ipCidrRange` | `string` | The range of IP addresses belonging to this subnetwork secondary range. |
| `rangeName` | `string` | The name associated with this subnetwork secondary range, used when adding an alias IP range to a... |
| `status` | `string` | This field is to determine the status of the secondary range programmably. |

### `UserManagedKeysConfig`

UserManagedKeysConfig holds the resource address to Keys which are used for signing certs and token that are used for communication within cluster.

| Property | Type | Description |
|----------|------|-------------|
| `aggregationCa` | `string` | The Certificate Authority Service caPool to use for the aggregation CA in this cluster. |
| `clusterCa` | `string` | The Certificate Authority Service caPool to use for the cluster CA in this cluster. |
| `controlPlaneDiskEncryptionKey` | `string` | The Cloud KMS cryptoKey to use for Confidential Hyperdisk on the control plane nodes. |
| `controlPlaneDiskEncryptionKeyVersions` | `array<string>` | Output only. All of the versions of the Cloud KMS cryptoKey that are used by Confidential Hyperdi... |
| `etcdApiCa` | `string` | Resource path of the Certificate Authority Service caPool to use for the etcd API CA in this clus... |
| `etcdPeerCa` | `string` | Resource path of the Certificate Authority Service caPool to use for the etcd peer CA in this clu... |
| `gkeopsEtcdBackupEncryptionKey` | `string` | Resource path of the Cloud KMS cryptoKey to use for encryption of internal etcd backups. |
| `serviceAccountSigningKeys` | `array<string>` | The Cloud KMS cryptoKeyVersions to use for signing service account JWTs issued by this cluster. F... |
| `serviceAccountVerificationKeys` | `array<string>` | The Cloud KMS cryptoKeyVersions to use for verifying service account JWTs issued by this cluster.... |

### `VerticalPodAutoscaling`

VerticalPodAutoscaling contains global, per-cluster information required by Vertical Pod Autoscaler to automatically adjust the resources of pods controlled by it.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Enables vertical pod autoscaling. |

### `VirtualNIC`

Configuration of gVNIC feature.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Whether gVNIC features are enabled in the node pool. |

### `WindowsNodeConfig`

Parameters that can be configured on Windows nodes. Windows Node Config that define the parameters that will be used to configure the Windows node pool settings.

| Property | Type | Description |
|----------|------|-------------|
| `osVersion` | `string` | OSVersion specifies the Windows node config to be used on the node. |

### `WorkloadIdentityConfig`

Configuration for the use of Kubernetes Service Accounts in IAM policies.

| Property | Type | Description |
|----------|------|-------------|
| `workloadPool` | `string` | The workload pool to attach all Kubernetes service accounts to. |

### `WorkloadMetadataConfig`

WorkloadMetadataConfig defines the metadata configuration to expose to workloads on the node pool.

| Property | Type | Description |
|----------|------|-------------|
| `mode` | `string` | Mode is the configuration for how to expose metadata to workloads running on the node pool. |

### `WorkloadPolicyConfig`

WorkloadPolicyConfig is the configuration related to GCW workload policy

| Property | Type | Description |
|----------|------|-------------|
| `allowNetAdmin` | `boolean` | If true, workloads can use NET_ADMIN capability. |
| `autopilotCompatibilityAuditingEnabled` | `boolean` | If true, enables the GCW Auditor that audits workloads on standard clusters. |

### `WritableCgroups`

Defines writable cgroups configuration.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Optional. Whether writable cgroups is enabled. |

