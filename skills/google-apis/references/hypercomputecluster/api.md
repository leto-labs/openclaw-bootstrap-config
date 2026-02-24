# Cluster Director API - API Reference

**Version**: `v1` | **Methods**: 11 | **Schemas**: 69

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `hypercomputecluster.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `hypercomputecluster.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `hypercomputecluster.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `hypercomputecluster.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `hypercomputecluster.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `hypercomputecluster.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `hypercomputecluster.projects.locations.clusters.list` | GET | `v1/{+parent}/clusters` | Lists Clusters in a given project and location. |
| `hypercomputecluster.projects.locations.clusters.get` | GET | `v1/{+name}` | Gets details of a single Cluster. |
| `hypercomputecluster.projects.locations.clusters.create` | POST | `v1/{+parent}/clusters` | Creates a new Cluster in a given project and location. |
| `hypercomputecluster.projects.locations.clusters.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single Cluster. |
| `hypercomputecluster.projects.locations.clusters.delete` | DELETE | `v1/{+name}` | Deletes a single Cluster. |

### `hypercomputecluster.projects.locations.list`

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
const res = await hypercomputecluster.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `hypercomputecluster.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await hypercomputecluster.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `hypercomputecluster.projects.locations.operations.list`

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
const res = await hypercomputecluster.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `hypercomputecluster.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await hypercomputecluster.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `hypercomputecluster.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await hypercomputecluster.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `hypercomputecluster.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await hypercomputecluster.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `hypercomputecluster.projects.locations.clusters.list`

**GET** `v1/{+parent}/clusters`

Lists Clusters in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent location of the clusters to list, in the format `projects/{project}/locations/{location}`. |
| `filter` | `string` | query | No | Optional. [Filter](https://google.aip.dev/160) to apply to the returned results. |
| `orderBy` | `string` | query | No | Optional. How to order the resulting clusters. Must be one of the following strings: * `name` * `name desc` * `create... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of clusters to return. The service may return fewer than this value. |
| `pageToken` | `string` | query | No | Optional. A page token received from a previous `ListClusters` call. Provide this to retrieve the subsequent page. Wh... |

**Response**: `ListClustersResponse`

```typescript
const res = await hypercomputecluster.clusters.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `hypercomputecluster.projects.locations.clusters.get`

**GET** `v1/{+name}`

Gets details of a single Cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the cluster to retrieve, in the format `projects/{project}/locations/{location}/clusters/{cluster}`. |

**Response**: `Cluster`

```typescript
const res = await hypercomputecluster.clusters.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `hypercomputecluster.projects.locations.clusters.create`

**POST** `v1/{+parent}/clusters`

Creates a new Cluster in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent location in which the cluster should be created, in the format `projects/{project}/locations/{locati... |
| `clusterId` | `string` | query | No | Required. ID of the cluster to create. Must conform to [RFC-1034](https://datatracker.ietf.org/doc/html/rfc1034) (low... |
| `requestId` | `string` | query | No | Optional. A unique identifier for this request. A random UUID is recommended. This request is idempotent if and only ... |

**Request body**: `Cluster`

**Response**: `Operation`

```typescript
const res = await hypercomputecluster.clusters.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `hypercomputecluster.projects.locations.clusters.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single Cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. [Relative resource name](https://google.aip.dev/122) of the cluster, in the format `projects/{project}/lo... |
| `requestId` | `string` | query | No | Optional. A unique identifier for this request. A random UUID is recommended. This request is idempotent if and only ... |
| `updateMask` | `string` | query | No | Optional. Mask specifying which fields in the cluster to update. All paths must be specified explicitly - wildcards a... |

**Request body**: `Cluster`

**Response**: `Operation`

```typescript
const res = await hypercomputecluster.clusters.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `hypercomputecluster.projects.locations.clusters.delete`

**DELETE** `v1/{+name}`

Deletes a single Cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the cluster to delete, in the format `projects/{project}/locations/{location}/clusters/{cluster}`. |
| `requestId` | `string` | query | No | Optional. A unique identifier for this request. A random UUID is recommended. This request is idempotent if and only ... |

**Response**: `Operation`

```typescript
const res = await hypercomputecluster.clusters.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `BootDisk`

A [Persistent disk](https://cloud.google.com/compute/docs/disks) used as the boot disk for a Compute Engine VM instance.

| Property | Type | Description |
|----------|------|-------------|
| `sizeGb` | `string` | Required. Immutable. Size of the disk in gigabytes. Must be at least 10GB. |
| `type` | `string` | Required. Immutable. [Persistent disk type](https://cloud.google.com/compute/docs/disks#disk-type... |

### `BucketReference`

A reference to a [Google Cloud Storage](https://cloud.google.com/storage) bucket.

| Property | Type | Description |
|----------|------|-------------|
| `bucket` | `string` | Output only. Name of the bucket. |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `CheckClusterHealth`

When set in OperationStep, indicates that cluster health check should be performed.

### `Cluster`

A collection of virtual machines and connected resources forming a high-performance computing cluster capable of running large-scale, tightly coupled workloads. A cluster combines a set a compute resources that perform computations, storage resources that contain inputs and store outputs, an orchestrator that is responsible for assigning jobs to compute resources, and network resources that connect everything together.

| Property | Type | Description |
|----------|------|-------------|
| `computeResources` | `object` | Optional. Compute resources available to the cluster. Keys specify the ID of the compute resource... |
| `createTime` | `string` | Output only. Time that the cluster was originally created. |
| `description` | `string` | Optional. User-provided description of the cluster. |
| `labels` | `object` | Optional. [Labels](https://cloud.google.com/compute/docs/labeling-resources) applied to the clust... |
| `name` | `string` | Identifier. [Relative resource name](https://google.aip.dev/122) of the cluster, in the format `p... |
| `networkResources` | `object` | Optional. Network resources available to the cluster. Must contain at most one value. Keys specif... |
| `orchestrator` | `Orchestrator` | Optional. Orchestrator that is responsible for scheduling and running jobs on the cluster. |
| `reconciling` | `boolean` | Output only. Indicates whether changes to the cluster are currently in flight. If this is `true`,... |
| `storageResources` | `object` | Optional. Storage resources available to the cluster. Keys specify the ID of the storage resource... |
| `updateTime` | `string` | Output only. Time that the cluster was most recently updated. |

### `ComputeInstance`

Details about a Compute Engine [instance](https://cloud.google.com/compute/docs/instances).

| Property | Type | Description |
|----------|------|-------------|
| `instance` | `string` | Output only. Name of the VM instance, in the format `projects/{project}/zones/{zone}/instances/{i... |

### `ComputeInstanceSlurmNodeSet`

When set in a SlurmNodeSet, indicates that the nodeset should be backed by Compute Engine VM instances.

| Property | Type | Description |
|----------|------|-------------|
| `bootDisk` | `BootDisk` | Optional. Boot disk for the compute instance |
| `labels` | `object` | Optional. [Labels](https://cloud.google.com/compute/docs/labeling-resources) that should be appli... |
| `startupScript` | `string` | Optional. [Startup script](https://cloud.google.com/compute/docs/instances/startup-scripts/linux)... |

### `ComputeResource`

A resource defining how virtual machines and accelerators should be provisioned for the cluster.

| Property | Type | Description |
|----------|------|-------------|
| `config` | `ComputeResourceConfig` | Required. Immutable. Configuration for this compute resource, which describes how it should be cr... |

### `ComputeResourceConfig`

Describes how a compute resource should be created at runtime.

| Property | Type | Description |
|----------|------|-------------|
| `newFlexStartInstances` | `NewFlexStartInstancesConfig` | Optional. Immutable. If set, indicates that this resource should use flex-start VMs. |
| `newOnDemandInstances` | `NewOnDemandInstancesConfig` | Optional. Immutable. If set, indicates that this resource should use on-demand VMs. |
| `newReservedInstances` | `NewReservedInstancesConfig` | Optional. Immutable. If set, indicates that this resource should use reserved VMs. |
| `newSpotInstances` | `NewSpotInstancesConfig` | Optional. Immutable. If set, indicates that this resource should use spot VMs. |

### `CreateFilestoreInstance`

When set in OperationStep, indicates that a new filestore instance should be created.

| Property | Type | Description |
|----------|------|-------------|
| `filestore` | `string` | Output only. Name of the Filestore instance, in the format `projects/{project}/locations/{locatio... |

### `CreateLoginNode`

When set in OperationStep, indicates that a login node should be created.

### `CreateLustreInstance`

When set in OperationStep, indicates that a new lustre instance should be created.

| Property | Type | Description |
|----------|------|-------------|
| `lustre` | `string` | Output only. Name of the Managed Lustre instance, in the format `projects/{project}/locations/{lo... |

### `CreateNetwork`

When set in OperationStep, indicates that a new network should be created.

| Property | Type | Description |
|----------|------|-------------|
| `network` | `string` | Output only. Name of the network to create, in the format `projects/{project}/global/networks/{ne... |

### `CreateNodeset`

When set in OperationStep, indicates that a nodeset should be created.

| Property | Type | Description |
|----------|------|-------------|
| `nodesets` | `array<string>` | Output only. Name of the nodeset to create |

### `CreateOrchestrator`

When set in OperationStep, indicates that an orchestrator should be created.

### `CreatePartition`

When set in OperationStep, indicates that a partition should be created.

| Property | Type | Description |
|----------|------|-------------|
| `partitions` | `array<string>` | Output only. Name of the partition to create |

### `CreatePrivateServiceAccess`

When set in OperationStep, indicates that a new private service access should be created.

### `CreateStorageBucket`

When set in OperationStep, indicates that a new storage bucket should be created.

| Property | Type | Description |
|----------|------|-------------|
| `bucket` | `string` | Output only. Name of the bucket. |

### `DeleteFilestoreInstance`

When set in OperationStep, indicates that a Filestore instance should be deleted.

| Property | Type | Description |
|----------|------|-------------|
| `filestore` | `string` | Output only. Name of the Filestore instance, in the format `projects/{project}/locations/{locatio... |

### `DeleteLoginNode`

When set in OperationStep, indicates that a login node should be deleted.

### `DeleteLustreInstance`

When set in OperationStep, indicates that a Lustre instance should be deleted.

| Property | Type | Description |
|----------|------|-------------|
| `lustre` | `string` | Output only. Name of the Managed Lustre instance, in the format `projects/{project}/locations/{lo... |

### `DeleteNetwork`

When set in OperationStep, indicates network deletion step with the resource name.

| Property | Type | Description |
|----------|------|-------------|
| `network` | `string` | Output only. Name of the network to delete, in the format `projects/{project}/global/networks/{ne... |

### `DeleteNodeset`

When set in OperationStep, indicates that a nodeset should be deleted.

| Property | Type | Description |
|----------|------|-------------|
| `nodesets` | `array<string>` | Output only. Name of the nodeset to delete |

### `DeleteOrchestrator`

When set in OperationStep, indicates that an orchestrator should be deleted.

### `DeletePartition`

When set in OperationStep, indicates that a partition should be deleted.

| Property | Type | Description |
|----------|------|-------------|
| `partitions` | `array<string>` | Output only. Name of the partition to delete |

### `DeletePrivateServiceAccess`

When set in OperationStep, indicates private service access deletion step.

### `DeleteStorageBucket`

When set in OperationStep, indicates that Cloud Storage bucket should be deleted.

| Property | Type | Description |
|----------|------|-------------|
| `bucket` | `string` | Output only. Name of the bucket. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `ExistingBucketConfig`

When set in a StorageResourceConfig, indicates that an existing [Google Cloud Storage](https://cloud.google.com/storage) bucket should be imported.

| Property | Type | Description |
|----------|------|-------------|
| `bucket` | `string` | Required. Immutable. Name of the Cloud Storage bucket to import. |

### `ExistingFilestoreConfig`

When set in a StorageResourceConfig, indicates that an existing [Filestore](https://cloud.google.com/filestore) instance should be imported.

| Property | Type | Description |
|----------|------|-------------|
| `filestore` | `string` | Required. Immutable. Name of the Filestore instance to import, in the format `projects/{project}/... |

### `ExistingLustreConfig`

When set in a StorageResourceConfig, indicates that an existing [Managed Lustre](https://cloud.google.com/products/managed-lustre) instance should be imported.

| Property | Type | Description |
|----------|------|-------------|
| `lustre` | `string` | Required. Immutable. Name of the Managed Lustre instance to import, in the format `projects/{proj... |

### `ExistingNetworkConfig`

When set in a NetworkResourceConfig, indicates that an existing network should be imported.

| Property | Type | Description |
|----------|------|-------------|
| `network` | `string` | Required. Immutable. Name of the network to import, in the format `projects/{project}/global/netw... |
| `subnetwork` | `string` | Required. Immutable. Particular subnetwork to use, in the format `projects/{project}/regions/{reg... |

### `FileShareConfig`

Message describing filestore configuration

| Property | Type | Description |
|----------|------|-------------|
| `capacityGb` | `string` | Required. Size of the filestore in GB. Must be between 1024 and 102400, and must meet scalability... |
| `fileShare` | `string` | Required. Filestore share location |

### `FilestoreReference`

A reference to a [Filestore](https://cloud.google.com/filestore) instance.

| Property | Type | Description |
|----------|------|-------------|
| `filestore` | `string` | Output only. Name of the Filestore instance, in the format `projects/{project}/locations/{locatio... |

### `GcsAutoclassConfig`

Message describing Google Cloud Storage autoclass configuration

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Required. Enables Auto-class feature. |
| `terminalStorageClass` | `string` | Optional. Terminal storage class of the autoclass bucket |

### `GcsHierarchicalNamespaceConfig`

Message describing Google Cloud Storage hierarchical namespace configuration

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Required. Enables hierarchical namespace setup for the bucket. |

### `ListClustersResponse`

Response message for ListClusters.

| Property | Type | Description |
|----------|------|-------------|
| `clusters` | `array<Cluster>` | Clusters in the specified location. |
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page. If this field is absent, ther... |
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

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `LustreReference`

A reference to a [Managed Lustre](https://cloud.google.com/products/managed-lustre) instance.

| Property | Type | Description |
|----------|------|-------------|
| `lustre` | `string` | Output only. Name of the Managed Lustre instance, in the format `projects/{project}/locations/{lo... |

### `NetworkReference`

A reference to a [VPC network](https://cloud.google.com/vpc/docs/vpc) in Google Compute Engine.

| Property | Type | Description |
|----------|------|-------------|
| `network` | `string` | Output only. Name of the network, in the format `projects/{project}/global/networks/{network}`. |
| `subnetwork` | `string` | Output only. Name of the particular subnetwork being used by the cluster, in the format `projects... |

### `NetworkResource`

A resource representing a network that connects the various components of a cluster together.

| Property | Type | Description |
|----------|------|-------------|
| `config` | `NetworkResourceConfig` | Immutable. Configuration for this network resource, which describes how it should be created or i... |
| `network` | `NetworkReference` | Reference to a network in Google Compute Engine. |

### `NetworkResourceConfig`

Describes how a network resource should be initialized. Each network resource can either be imported from an existing Google Cloud resource or initialized when the cluster is created.

| Property | Type | Description |
|----------|------|-------------|
| `existingNetwork` | `ExistingNetworkConfig` | Optional. Immutable. If set, indicates that an existing network should be imported. |
| `newNetwork` | `NewNetworkConfig` | Optional. Immutable. If set, indicates that a new network should be created. |

### `NewBucketConfig`

When set in a StorageResourceConfig, indicates that a new [Google Cloud Storage](https://cloud.google.com/storage) bucket should be created.

| Property | Type | Description |
|----------|------|-------------|
| `autoclass` | `GcsAutoclassConfig` | Optional. Immutable. If set, indicates that the bucket should use [Autoclass](https://cloud.googl... |
| `bucket` | `string` | Required. Immutable. Name of the Cloud Storage bucket to create. |
| `hierarchicalNamespace` | `GcsHierarchicalNamespaceConfig` | Optional. Immutable. If set, indicates that the bucket should use [hierarchical namespaces](https... |
| `storageClass` | `string` | Optional. Immutable. If set, uses the provided storage class as the bucket's default storage class. |

### `NewFilestoreConfig`

When set in a StorageResourceConfig, indicates that a new [Filestore](https://cloud.google.com/filestore) instance should be created.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Immutable. Description of the instance. Maximum of 2048 characters. |
| `fileShares` | `array<FileShareConfig>` | Required. Immutable. File system shares on the instance. Exactly one file share must be specified. |
| `filestore` | `string` | Required. Immutable. Name of the Filestore instance to create, in the format `projects/{project}/... |
| `protocol` | `string` | Optional. Immutable. Access protocol to use for all file shares in the instance. Defaults to NFS ... |
| `tier` | `string` | Required. Immutable. Service tier to use for the instance. |

### `NewFlexStartInstancesConfig`

When set in a ComputeResourceConfig, indicates that VM instances should be created using [Flex Start](https://cloud.google.com/compute/docs/instances/provisioning-models).

| Property | Type | Description |
|----------|------|-------------|
| `machineType` | `string` | Required. Immutable. Name of the Compute Engine [machine type](https://cloud.google.com/compute/d... |
| `maxDuration` | `string` | Required. Immutable. Specifies the time limit for created instances. Instances will be terminated... |
| `zone` | `string` | Required. Immutable. Name of the zone in which VM instances should run, e.g., `us-central1-a`. Mu... |

### `NewLustreConfig`

When set in a StorageResourceConfig, indicates that a new [Managed Lustre](https://cloud.google.com/products/managed-lustre) instance should be created.

| Property | Type | Description |
|----------|------|-------------|
| `capacityGb` | `string` | Required. Immutable. Storage capacity of the instance in gibibytes (GiB). Allowed values are betw... |
| `description` | `string` | Optional. Immutable. Description of the Managed Lustre instance. Maximum of 2048 characters. |
| `filesystem` | `string` | Required. Immutable. Filesystem name for this instance. This name is used by client-side tools, i... |
| `lustre` | `string` | Required. Immutable. Name of the Managed Lustre instance to create, in the format `projects/{proj... |

### `NewNetworkConfig`

When set in a NetworkResourceConfig, indicates that a new network should be created.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Immutable. Description of the network. Maximum of 2048 characters. |
| `network` | `string` | Required. Immutable. Name of the network to create, in the format `projects/{project}/global/netw... |

### `NewOnDemandInstancesConfig`

When set in a ComputeResourceConfig, indicates that on-demand (i.e., using the standard provisioning model) VM instances should be created.

| Property | Type | Description |
|----------|------|-------------|
| `machineType` | `string` | Required. Immutable. Name of the Compute Engine [machine type](https://cloud.google.com/compute/d... |
| `zone` | `string` | Required. Immutable. Name of the zone in which VM instances should run, e.g., `us-central1-a`. Mu... |

### `NewReservedInstancesConfig`

When set in a ComputeResourceConfig, indicates that VM instances should be created from a [reservation](https://cloud.google.com/compute/docs/instances/reservations-overview).

| Property | Type | Description |
|----------|------|-------------|
| `reservation` | `string` | Optional. Immutable. Name of the reservation from which VM instances should be created, in the fo... |

### `NewSpotInstancesConfig`

When set in a ComputeResourceConfig, indicates that [spot VM](https://cloud.google.com/compute/docs/instances/spot) instances should be created.

| Property | Type | Description |
|----------|------|-------------|
| `machineType` | `string` | Required. Immutable. Name of the Compute Engine [machine type](https://cloud.google.com/compute/d... |
| `terminationAction` | `string` | Optional. Termination action for the instance. If not specified, Compute Engine sets the terminat... |
| `zone` | `string` | Required. Immutable. Name of the zone in which VM instances should run, e.g., `us-central1-a`. Mu... |

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
| `progress` | `OperationProgress` | Output only. Progress of the operation. |
| `requestedCancellation` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. Operations ... |
| `target` | `string` | Output only. Server-defined resource path for the target of the operation. |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `OperationProgress`

Message describing the progress of a cluster mutation long-running operation.

| Property | Type | Description |
|----------|------|-------------|
| `steps` | `array<OperationStep>` | Output only. Steps and status of the operation. |

### `OperationStep`

Message describing the status of a single step in a cluster mutation long-running operation.

| Property | Type | Description |
|----------|------|-------------|
| `checkClusterHealth` | `CheckClusterHealth` | Output only. If set, indicates that cluster health check is part of the operation. |
| `createFilestoreInstance` | `CreateFilestoreInstance` | Output only. If set, indicates that new Filestore instance creation is part of the operation. |
| `createLoginNode` | `CreateLoginNode` | Output only. If set, indicates that new login node creation is part of the operation. |
| `createLustreInstance` | `CreateLustreInstance` | Output only. If set, indicates that new Lustre instance creation is part of the operation. |
| `createNetwork` | `CreateNetwork` | Output only. If set, indicates that new network creation is part of the operation. |
| `createNodeset` | `CreateNodeset` | Output only. If set, indicates that new nodeset creation is part of the operation. |
| `createOrchestrator` | `CreateOrchestrator` | Output only. If set, indicates that orchestrator creation is part of the operation. |
| `createPartition` | `CreatePartition` | Output only. If set, indicates that new partition creation is part of the operation. |
| `createPrivateServiceAccess` | `CreatePrivateServiceAccess` | Output only. If set, indicates that new private service access creation is part of the operation. |
| `createStorageBucket` | `CreateStorageBucket` | Output only. If set, indicates that new Cloud Storage bucket creation is part of the operation. |
| `deleteFilestoreInstance` | `DeleteFilestoreInstance` | Output only. If set, indicates that Filestore instance deletion is part of the operation. |
| `deleteLoginNode` | `DeleteLoginNode` | Output only. If set, indicates that login node deletion is part of the operation. |
| `deleteLustreInstance` | `DeleteLustreInstance` | Output only. If set, indicates that Lustre instance deletion is part of the operation. |
| `deleteNetwork` | `DeleteNetwork` | Output only. If set, indicates that network deletion is part of the operation. |
| `deleteNodeset` | `DeleteNodeset` | Output only. If set, indicates that nodeset deletion is part of the operation. |
| `deleteOrchestrator` | `DeleteOrchestrator` | Output only. If set, indicates that orchestrator deletion is part of the operation. |
| `deletePartition` | `DeletePartition` | Output only. If set, indicates that partition deletion is part of the operation. |
| `deletePrivateServiceAccess` | `DeletePrivateServiceAccess` | Output only. If set, indicates that private service access deletion is part of the operation. |
| `deleteStorageBucket` | `DeleteStorageBucket` | Output only. If set, indicates that Cloud Storage bucket deletion is part of the operation. |
| `state` | `string` | Output only. State of the operation step. |
| `updateLoginNode` | `UpdateLoginNode` | Output only. If set, indicates that login node update is part of the operation. |
| `updateNodeset` | `UpdateNodeset` | Output only. If set, indicates that nodeset update is part of the operation. |
| `updateOrchestrator` | `UpdateOrchestrator` | Output only. If set, indicates that an orchestrator update is part of the operation. |
| `updatePartition` | `UpdatePartition` | Output only. If set, indicates that partition update is part of the operation. |

### `Orchestrator`

The component responsible for scheduling and running workloads on the cluster as well as providing the user interface for interacting with the cluster at runtime.

| Property | Type | Description |
|----------|------|-------------|
| `slurm` | `SlurmOrchestrator` | Optional. If set, indicates that the cluster should use Slurm as the orchestrator. |

### `SlurmLoginNodes`

Configuration for Slurm [login nodes](https://slurm.schedmd.com/quickstart_admin.html#login) in the cluster. Login nodes are Compute Engine VM instances that allow users to access the cluster over SSH.

| Property | Type | Description |
|----------|------|-------------|
| `bootDisk` | `BootDisk` | Optional. Boot disk for the login node. |
| `count` | `string` | Required. Number of login node instances to create. |
| `enableOsLogin` | `boolean` | Optional. Whether [OS Login](https://cloud.google.com/compute/docs/oslogin) should be enabled on ... |
| `enablePublicIps` | `boolean` | Optional. Whether login node instances should be assigned [external IP addresses](https://cloud.g... |
| `instances` | `array<ComputeInstance>` | Output only. Information about the login node instances that were created in Compute Engine. |
| `labels` | `object` | Optional. [Labels](https://cloud.google.com/compute/docs/labeling-resources) that should be appli... |
| `machineType` | `string` | Required. Name of the Compute Engine [machine type](https://cloud.google.com/compute/docs/machine... |
| `startupScript` | `string` | Optional. [Startup script](https://cloud.google.com/compute/docs/instances/startup-scripts/linux)... |
| `storageConfigs` | `array<StorageConfig>` | Optional. How storage resources should be mounted on each login node. |
| `zone` | `string` | Required. Name of the zone in which login nodes should run, e.g., `us-central1-a`. Must be in the... |

### `SlurmNodeSet`

Configuration for Slurm nodesets in the cluster. Nodesets are groups of compute nodes used by Slurm that are responsible for running workloads submitted to the cluster.

| Property | Type | Description |
|----------|------|-------------|
| `computeId` | `string` | Optional. ID of the compute resource on which this nodeset will run. Must match a key in the clus... |
| `computeInstance` | `ComputeInstanceSlurmNodeSet` | Optional. If set, indicates that the nodeset should be backed by Compute Engine instances. |
| `id` | `string` | Required. Identifier for the nodeset, which allows it to be referenced by partitions. Must confor... |
| `maxDynamicNodeCount` | `string` | Optional. Controls how many additional nodes a cluster can bring online to handle workloads. Set ... |
| `staticNodeCount` | `string` | Optional. Number of nodes to be statically created for this nodeset. The cluster will attempt to ... |
| `storageConfigs` | `array<StorageConfig>` | Optional. How storage resources should be mounted on each compute node. |

### `SlurmOrchestrator`

When set in Orchestrator, indicates that the cluster should use [Slurm](https://slurm.schedmd.com/) as the orchestrator.

| Property | Type | Description |
|----------|------|-------------|
| `defaultPartition` | `string` | Optional. Default partition to use for submitted jobs that do not explicitly specify a partition.... |
| `epilogBashScripts` | `array<string>` | Optional. Slurm [epilog scripts](https://slurm.schedmd.com/prolog_epilog.html), which will be exe... |
| `loginNodes` | `SlurmLoginNodes` | Required. Configuration for login nodes, which allow users to access the cluster over SSH. |
| `nodeSets` | `array<SlurmNodeSet>` | Optional. Compute resource configuration for the Slurm nodesets in your cluster. If not specified... |
| `partitions` | `array<SlurmPartition>` | Optional. Configuration for the Slurm partitions in your cluster. Each partition can contain one ... |
| `prologBashScripts` | `array<string>` | Optional. Slurm [prolog scripts](https://slurm.schedmd.com/prolog_epilog.html), which will be exe... |

### `SlurmPartition`

Configuration for Slurm partitions in the cluster. Partitions are groups of nodesets, and are how clients specify where their workloads should be run.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | Required. ID of the partition, which is how users will identify it. Must conform to [RFC-1034](ht... |
| `nodeSetIds` | `array<string>` | Required. IDs of the nodesets that make up this partition. Values must match SlurmNodeSet.id. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `StorageConfig`

Description of how a storage resource should be mounted on a VM instance.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | Required. ID of the storage resource to mount, which must match a key in the cluster's storage_re... |
| `localMount` | `string` | Required. A directory inside the VM instance's file system where the storage resource should be m... |

### `StorageResource`

A resource representing a form of persistent storage that is accessible to compute resources in the cluster.

| Property | Type | Description |
|----------|------|-------------|
| `bucket` | `BucketReference` | Reference to a Google Cloud Storage bucket. Populated if and only if the storage resource was con... |
| `config` | `StorageResourceConfig` | Required. Immutable. Configuration for this storage resource, which describes how it should be cr... |
| `filestore` | `FilestoreReference` | Reference to a Filestore instance. Populated if and only if the storage resource was configured t... |
| `lustre` | `LustreReference` | Reference to a Managed Lustre instance. Populated if and only if the storage resource was configu... |

### `StorageResourceConfig`

Describes how a storage resource should be initialized. Each storage resource can either be imported from an existing Google Cloud resource or initialized when the cluster is created.

| Property | Type | Description |
|----------|------|-------------|
| `existingBucket` | `ExistingBucketConfig` | Optional. Immutable. If set, indicates that an existing Cloud Storage bucket should be imported. |
| `existingFilestore` | `ExistingFilestoreConfig` | Optional. Immutable. If set, indicates that an existing Filestore instance should be imported. |
| `existingLustre` | `ExistingLustreConfig` | Optional. Immutable. If set, indicates that an existing Managed Lustre instance should be imported. |
| `newBucket` | `NewBucketConfig` | Optional. Immutable. If set, indicates that a new Cloud Storage bucket should be created. |
| `newFilestore` | `NewFilestoreConfig` | Optional. Immutable. If set, indicates that a new Filestore instance should be created. |
| `newLustre` | `NewLustreConfig` | Optional. Immutable. If set, indicates that a new Managed Lustre instance should be created. |

### `UpdateLoginNode`

When set in OperationStep, indicates that a login node should be updated.

### `UpdateNodeset`

When set in OperationStep, indicates that a nodeset should be updated.

| Property | Type | Description |
|----------|------|-------------|
| `nodesets` | `array<string>` | Output only. Name of the nodeset to update |

### `UpdateOrchestrator`

When set in OperationStep, indicates that an orchestrator should be updated.

### `UpdatePartition`

When set in OperationStep, indicates that a partition should be updated.

| Property | Type | Description |
|----------|------|-------------|
| `partitions` | `array<string>` | Output only. Name of the partition to update |

