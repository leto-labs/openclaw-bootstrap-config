# Cloud TPU API - API Reference

**Version**: `v2` | **Methods**: 24 | **Schemas**: 54

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `tpu.projects.locations.get` | GET | `v2/{+name}` | Gets information about a location. |
| `tpu.projects.locations.generateServiceIdentity` | POST | `v2/{+parent}:generateServiceIdentity` | Generates the Cloud TPU service identity for the project. |
| `tpu.projects.locations.list` | GET | `v2/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `tpu.projects.locations.acceleratorTypes.get` | GET | `v2/{+name}` | Gets AcceleratorType. |
| `tpu.projects.locations.acceleratorTypes.list` | GET | `v2/{+parent}/acceleratorTypes` | Lists accelerator types supported by this API. |
| `tpu.projects.locations.runtimeVersions.list` | GET | `v2/{+parent}/runtimeVersions` | Lists runtime versions supported by this API. |
| `tpu.projects.locations.runtimeVersions.get` | GET | `v2/{+name}` | Gets a runtime version. |
| `tpu.projects.locations.queuedResources.get` | GET | `v2/{+name}` | Gets details of a queued resource. |
| `tpu.projects.locations.queuedResources.reset` | POST | `v2/{+name}:reset` | Resets a QueuedResource TPU instance |
| `tpu.projects.locations.queuedResources.delete` | DELETE | `v2/{+name}` | Deletes a QueuedResource TPU instance. |
| `tpu.projects.locations.queuedResources.create` | POST | `v2/{+parent}/queuedResources` | Creates a QueuedResource TPU instance. |
| `tpu.projects.locations.queuedResources.list` | GET | `v2/{+parent}/queuedResources` | Lists queued resources. |
| `tpu.projects.locations.nodes.create` | POST | `v2/{+parent}/nodes` | Creates a node. |
| `tpu.projects.locations.nodes.patch` | PATCH | `v2/{+name}` | Updates the configurations of a node. |
| `tpu.projects.locations.nodes.getGuestAttributes` | POST | `v2/{+name}:getGuestAttributes` | Retrieves the guest attributes for the node. |
| `tpu.projects.locations.nodes.get` | GET | `v2/{+name}` | Gets the details of a node. |
| `tpu.projects.locations.nodes.start` | POST | `v2/{+name}:start` | Starts a node. |
| `tpu.projects.locations.nodes.stop` | POST | `v2/{+name}:stop` | Stops a node. This operation is only available with single TPU nodes. |
| `tpu.projects.locations.nodes.list` | GET | `v2/{+parent}/nodes` | Lists nodes. |
| `tpu.projects.locations.nodes.delete` | DELETE | `v2/{+name}` | Deletes a node. |
| `tpu.projects.locations.operations.get` | GET | `v2/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `tpu.projects.locations.operations.cancel` | POST | `v2/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `tpu.projects.locations.operations.list` | GET | `v2/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `tpu.projects.locations.operations.delete` | DELETE | `v2/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |

### `tpu.projects.locations.get`

**GET** `v2/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await tpu.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `tpu.projects.locations.generateServiceIdentity`

**POST** `v2/{+parent}:generateServiceIdentity`

Generates the Cloud TPU service identity for the project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name. |

**Request body**: `GenerateServiceIdentityRequest`

**Response**: `GenerateServiceIdentityResponse`

```typescript
const res = await tpu.locations.generateServiceIdentity({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `tpu.projects.locations.list`

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
const res = await tpu.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `tpu.projects.locations.acceleratorTypes.get`

**GET** `v2/{+name}`

Gets AcceleratorType.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name. |

**Response**: `AcceleratorType`

```typescript
const res = await tpu.acceleratorTypes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `tpu.projects.locations.acceleratorTypes.list`

**GET** `v2/{+parent}/acceleratorTypes`

Lists accelerator types supported by this API.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name. |
| `filter` | `string` | query | No | List filter. |
| `orderBy` | `string` | query | No | Sort results. |
| `pageSize` | `integer` | query | No | The maximum number of items to return. |
| `pageToken` | `string` | query | No | The next_page_token value returned from a previous List request, if any. |

**Response**: `ListAcceleratorTypesResponse`

```typescript
const res = await tpu.acceleratorTypes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `tpu.projects.locations.runtimeVersions.list`

**GET** `v2/{+parent}/runtimeVersions`

Lists runtime versions supported by this API.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name. |
| `filter` | `string` | query | No | List filter. |
| `orderBy` | `string` | query | No | Sort results. |
| `pageSize` | `integer` | query | No | The maximum number of items to return. |
| `pageToken` | `string` | query | No | The next_page_token value returned from a previous List request, if any. |

**Response**: `ListRuntimeVersionsResponse`

```typescript
const res = await tpu.runtimeVersions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `tpu.projects.locations.runtimeVersions.get`

**GET** `v2/{+name}`

Gets a runtime version.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name. |

**Response**: `RuntimeVersion`

```typescript
const res = await tpu.runtimeVersions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `tpu.projects.locations.queuedResources.get`

**GET** `v2/{+name}`

Gets details of a queued resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name. |

**Response**: `QueuedResource`

```typescript
const res = await tpu.queuedResources.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `tpu.projects.locations.queuedResources.reset`

**POST** `v2/{+name}:reset`

Resets a QueuedResource TPU instance

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the queued resource. |

**Request body**: `ResetQueuedResourceRequest`

**Response**: `Operation`

```typescript
const res = await tpu.queuedResources.reset({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `tpu.projects.locations.queuedResources.delete`

**DELETE** `v2/{+name}`

Deletes a QueuedResource TPU instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name. |
| `force` | `boolean` | query | No | Optional. If set to true, all running nodes belonging to this queued resource will be deleted first and then the queu... |
| `requestId` | `string` | query | No | Optional. Idempotent request UUID. |

**Response**: `Operation`

```typescript
const res = await tpu.queuedResources.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `tpu.projects.locations.queuedResources.create`

**POST** `v2/{+parent}/queuedResources`

Creates a QueuedResource TPU instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name. |
| `queuedResourceId` | `string` | query | No | Optional. The unqualified resource name. Should follow the `^[A-Za-z0-9_.~+%-]+$` regex format. |
| `requestId` | `string` | query | No | Optional. Idempotent request UUID. |

**Request body**: `QueuedResource`

**Response**: `Operation`

```typescript
const res = await tpu.queuedResources.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `tpu.projects.locations.queuedResources.list`

**GET** `v2/{+parent}/queuedResources`

Lists queued resources.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of items to return. |
| `pageToken` | `string` | query | No | Optional. The next_page_token value returned from a previous List request, if any. |

**Response**: `ListQueuedResourcesResponse`

```typescript
const res = await tpu.queuedResources.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `tpu.projects.locations.nodes.create`

**POST** `v2/{+parent}/nodes`

Creates a node.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name. |
| `nodeId` | `string` | query | No | The unqualified resource name. |

**Request body**: `Node`

**Response**: `Operation`

```typescript
const res = await tpu.nodes.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `tpu.projects.locations.nodes.patch`

**PATCH** `v2/{+name}`

Updates the configurations of a node.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Immutable. The name of the TPU. |
| `updateMask` | `string` | query | No | Required. Mask of fields from Node to update. Supported fields: [description, tags, labels, metadata, network_config.... |

**Request body**: `Node`

**Response**: `Operation`

```typescript
const res = await tpu.nodes.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `tpu.projects.locations.nodes.getGuestAttributes`

**POST** `v2/{+name}:getGuestAttributes`

Retrieves the guest attributes for the node.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name. |

**Request body**: `GetGuestAttributesRequest`

**Response**: `GetGuestAttributesResponse`

```typescript
const res = await tpu.nodes.getGuestAttributes({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `tpu.projects.locations.nodes.get`

**GET** `v2/{+name}`

Gets the details of a node.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name. |

**Response**: `Node`

```typescript
const res = await tpu.nodes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `tpu.projects.locations.nodes.start`

**POST** `v2/{+name}:start`

Starts a node.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name. |

**Request body**: `StartNodeRequest`

**Response**: `Operation`

```typescript
const res = await tpu.nodes.start({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `tpu.projects.locations.nodes.stop`

**POST** `v2/{+name}:stop`

Stops a node. This operation is only available with single TPU nodes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name. |

**Request body**: `StopNodeRequest`

**Response**: `Operation`

```typescript
const res = await tpu.nodes.stop({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `tpu.projects.locations.nodes.list`

**GET** `v2/{+parent}/nodes`

Lists nodes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name. |
| `pageSize` | `integer` | query | No | The maximum number of items to return. |
| `pageToken` | `string` | query | No | The next_page_token value returned from a previous List request, if any. |

**Response**: `ListNodesResponse`

```typescript
const res = await tpu.nodes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `tpu.projects.locations.nodes.delete`

**DELETE** `v2/{+name}`

Deletes a node.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name. |

**Response**: `Operation`

```typescript
const res = await tpu.nodes.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `tpu.projects.locations.operations.get`

**GET** `v2/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await tpu.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `tpu.projects.locations.operations.cancel`

**POST** `v2/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Response**: `Empty`

```typescript
const res = await tpu.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `tpu.projects.locations.operations.list`

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
const res = await tpu.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `tpu.projects.locations.operations.delete`

**DELETE** `v2/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await tpu.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AcceleratorConfig`

A TPU accelerator configuration.

| Property | Type | Description |
|----------|------|-------------|
| `topology` | `string` | Required. Topology of TPU in chips. |
| `type` | `string` | Required. Type of TPU. |

### `AcceleratorType`

A accelerator type that a Node can be configured with.

| Property | Type | Description |
|----------|------|-------------|
| `acceleratorConfigs` | `array<AcceleratorConfig>` | The accelerator config. |
| `name` | `string` | The resource name. |
| `type` | `string` | The accelerator type. |

### `AcceptedData`

Further data for the accepted state.

### `AccessConfig`

An access config attached to the TPU worker.

| Property | Type | Description |
|----------|------|-------------|
| `externalIp` | `string` | Output only. An external IP address associated with the TPU worker. |

### `ActiveData`

Further data for the active state.

### `AttachedDisk`

A node-attached disk resource. Next ID: 8;

| Property | Type | Description |
|----------|------|-------------|
| `mode` | `string` | The mode in which to attach this disk. If not specified, the default is READ_WRITE mode. Only app... |
| `sourceDisk` | `string` | Specifies the full path to an existing disk. For example: "projects/my-project/zones/us-central1-... |

### `BootDiskConfig`

Sets the boot disk configuration for the TPU node.

| Property | Type | Description |
|----------|------|-------------|
| `customerEncryptionKey` | `CustomerEncryptionKey` | Optional. Customer encryption key for boot disk. |

### `CreatingData`

Further data for the creating state.

### `CustomerEncryptionKey`

Defines the customer encryption key for disk encryption.

| Property | Type | Description |
|----------|------|-------------|
| `kmsKeyName` | `string` | The name of the encryption key that is stored in Google Cloud KMS. For example: "kmsKeyName": "pr... |

### `DeletingData`

Further data for the deleting state.

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `FailedData`

Further data for the failed state.

| Property | Type | Description |
|----------|------|-------------|
| `error` | `Status` | Output only. The error that caused the queued resource to enter the FAILED state. |

### `GenerateServiceIdentityRequest`

Request for GenerateServiceIdentity.

### `GenerateServiceIdentityResponse`

Response for GenerateServiceIdentity.

| Property | Type | Description |
|----------|------|-------------|
| `identity` | `ServiceIdentity` | ServiceIdentity that was created or retrieved. |

### `GetGuestAttributesRequest`

Request for GetGuestAttributes.

| Property | Type | Description |
|----------|------|-------------|
| `queryPath` | `string` | The guest attributes path to be queried. |
| `workerIds` | `array<string>` | The 0-based worker ID. If it is empty, all workers' GuestAttributes will be returned. |

### `GetGuestAttributesResponse`

Response for GetGuestAttributes.

| Property | Type | Description |
|----------|------|-------------|
| `guestAttributes` | `array<GuestAttributes>` | The guest attributes for the TPU workers. |

### `Guaranteed`

Guaranteed tier definition.

| Property | Type | Description |
|----------|------|-------------|
| `minDuration` | `string` | Optional. Defines the minimum duration of the guarantee. If specified, the requested resources wi... |

### `GuestAttributes`

A guest attributes.

| Property | Type | Description |
|----------|------|-------------|
| `queryPath` | `string` | The path to be queried. This can be the default namespace ('/') or a nested namespace ('/\/') or ... |
| `queryValue` | `GuestAttributesValue` | The value of the requested queried path. |

### `GuestAttributesEntry`

A guest attributes namespace/key/value entry.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | Key for the guest attribute entry. |
| `namespace` | `string` | Namespace for the guest attribute entry. |
| `value` | `string` | Value for the guest attribute entry. |

### `GuestAttributesValue`

Array of guest attribute namespace/key/value tuples.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<GuestAttributesEntry>` | The list of guest attributes entries. |

### `Interval`

Represents a time interval, encoded as a Timestamp start (inclusive) and a Timestamp end (exclusive). The start must be less than or equal to the end. When the start equals the end, the interval is empty (matches no time). When both start and end are unspecified, the interval matches any time.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | Optional. Exclusive end of the interval. If specified, a Timestamp matching this interval will ha... |
| `startTime` | `string` | Optional. Inclusive start of the interval. If specified, a Timestamp matching this interval will ... |

### `ListAcceleratorTypesResponse`

Response for ListAcceleratorTypes.

| Property | Type | Description |
|----------|------|-------------|
| `acceleratorTypes` | `array<AcceleratorType>` | The listed nodes. |
| `nextPageToken` | `string` | The next page token or empty if none. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListLocationsResponse`

The response message for Locations.ListLocations.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<Location>` | A list of locations that matches the specified filter in the request. |
| `nextPageToken` | `string` | The standard List next-page token. |

### `ListNodesResponse`

Response for ListNodes.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The next page token or empty if none. |
| `nodes` | `array<Node>` | The listed nodes. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<Operation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `ListQueuedResourcesResponse`

Response for ListQueuedResources.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The next page token or empty if none. |
| `queuedResources` | `array<QueuedResource>` | The listed queued resources. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListRuntimeVersionsResponse`

Response for ListRuntimeVersions.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The next page token or empty if none. |
| `runtimeVersions` | `array<RuntimeVersion>` | The listed nodes. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `MultisliceParams`

Parameters to specify for multislice QueuedResource requests. This message must be populated in case of multislice requests instead of node_id.

| Property | Type | Description |
|----------|------|-------------|
| `nodeCount` | `integer` | Required. Number of nodes with this spec. The system will attempt to provision "node_count" nodes... |
| `nodeIdPrefix` | `string` | Optional. Prefix of node_ids in case of multislice request. Should follow the `^[A-Za-z0-9_.~+%-]... |

### `NetworkConfig`

Network related configurations.

| Property | Type | Description |
|----------|------|-------------|
| `canIpForward` | `boolean` | Allows the TPU node to send and receive packets with non-matching destination or source IPs. This... |
| `enableExternalIps` | `boolean` | Indicates that external IP addresses would be associated with the TPU workers. If set to false, t... |
| `network` | `string` | The name of the network for the TPU node. It must be a preexisting Google Compute Engine network.... |
| `queueCount` | `integer` | Optional. Specifies networking queue count for TPU VM instance's network interface. |
| `subnetwork` | `string` | The name of the subnetwork for the TPU node. It must be a preexisting Google Compute Engine subne... |

### `NetworkEndpoint`

A network endpoint over which a TPU worker can be reached.

| Property | Type | Description |
|----------|------|-------------|
| `accessConfig` | `AccessConfig` | The access config for the TPU worker. |
| `ipAddress` | `string` | The internal IP address of this network endpoint. |
| `port` | `integer` | The port of this network endpoint. |

### `Node`

A TPU instance.

| Property | Type | Description |
|----------|------|-------------|
| `acceleratorConfig` | `AcceleratorConfig` | The AccleratorConfig for the TPU Node. |
| `acceleratorType` | `string` | Optional. The type of hardware accelerators associated with this node. |
| `apiVersion` | `string` | Output only. The API version that created this Node. |
| `bootDiskConfig` | `BootDiskConfig` | Optional. Boot disk configuration. |
| `cidrBlock` | `string` | The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must be a... |
| `createTime` | `string` | Output only. The time when the node was created. |
| `dataDisks` | `array<AttachedDisk>` | The additional data disks for the Node. |
| `description` | `string` | The user-supplied description of the TPU. Maximum of 512 characters. |
| `health` | `string` | The health status of the TPU node. |
| `healthDescription` | `string` | Output only. If this field is populated, it contains a description of why the TPU Node is unhealthy. |
| `id` | `string` | Output only. The unique identifier for the TPU Node. |
| `labels` | `object` | Resource labels to represent user-provided metadata. |
| `metadata` | `object` | Custom metadata to apply to the TPU Node. Can set startup-script and shutdown-script |
| `multisliceNode` | `boolean` | Output only. Whether the Node belongs to a Multislice group. |
| `name` | `string` | Output only. Immutable. The name of the TPU. |
| `networkConfig` | `NetworkConfig` | Network configurations for the TPU node. network_config and network_configs are mutually exclusiv... |
| `networkConfigs` | `array<NetworkConfig>` | Optional. Repeated network configurations for the TPU node. This field is used to specify multipl... |
| `networkEndpoints` | `array<NetworkEndpoint>` | Output only. The network endpoints where TPU workers can be accessed and sent work. It is recomme... |
| `queuedResource` | `string` | Output only. The qualified name of the QueuedResource that requested this Node. |
| `runtimeVersion` | `string` | Required. The runtime version running in the Node. |
| `schedulingConfig` | `SchedulingConfig` | The scheduling options for this node. |
| `serviceAccount` | `ServiceAccount` | The Google Cloud Platform Service Account to be used by the TPU node VMs. If None is specified, t... |
| `shieldedInstanceConfig` | `ShieldedInstanceConfig` | Shielded Instance options. |
| `state` | `string` | Output only. The current state for the TPU Node. |
| `symptoms` | `array<Symptom>` | Output only. The Symptoms that have occurred to the TPU Node. |
| `tags` | `array<string>` | Tags to apply to the TPU Node. Tags are used to identify valid sources or targets for network fir... |
| `upcomingMaintenance` | `UpcomingMaintenance` | Output only. Upcoming maintenance on this TPU node. |

### `NodeSpec`

Details of the TPU node(s) being requested. Users can request either a single node or multiple nodes. NodeSpec provides the specification for node(s) to be created.

| Property | Type | Description |
|----------|------|-------------|
| `multisliceParams` | `MultisliceParams` | Optional. Fields to specify in case of multislice request. |
| `node` | `Node` | Required. The node. |
| `nodeId` | `string` | Optional. The unqualified resource name. Should follow the `^[A-Za-z0-9_.~+%-]+$` regex format. T... |
| `parent` | `string` | Required. The parent resource name. |

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

Metadata describing an Operation

| Property | Type | Description |
|----------|------|-------------|
| `apiVersion` | `string` | API version. |
| `cancelRequested` | `boolean` | Specifies if cancellation was requested for the operation. |
| `createTime` | `string` | The time the operation was created. |
| `endTime` | `string` | The time the operation finished running. |
| `statusDetail` | `string` | Human-readable status of the operation, if any. |
| `target` | `string` | Target of the operation - for example projects/project-1/connectivityTests/test-1 |
| `verb` | `string` | Name of the verb executed by the operation. |

### `ProvisioningData`

Further data for the provisioning state.

### `QueuedResource`

A QueuedResource represents a request for resources that will be placed in a queue and fulfilled when the necessary resources are available.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time when the QueuedResource was created. |
| `guaranteed` | `Guaranteed` | Optional. The Guaranteed tier |
| `name` | `string` | Output only. Immutable. The name of the QueuedResource. |
| `queueingPolicy` | `QueueingPolicy` | Optional. The queueing policy of the QueuedRequest. |
| `reservationName` | `string` | Optional. Name of the reservation in which the resource should be provisioned. Format: projects/{... |
| `spot` | `Spot` | Optional. The Spot tier. |
| `state` | `QueuedResourceState` | Output only. State of the QueuedResource request. |
| `tpu` | `Tpu` | Optional. Defines a TPU resource. |

### `QueuedResourceState`

QueuedResourceState defines the details of the QueuedResource request.

| Property | Type | Description |
|----------|------|-------------|
| `acceptedData` | `AcceptedData` | Output only. Further data for the accepted state. |
| `activeData` | `ActiveData` | Output only. Further data for the active state. |
| `creatingData` | `CreatingData` | Output only. Further data for the creating state. |
| `deletingData` | `DeletingData` | Output only. Further data for the deleting state. |
| `failedData` | `FailedData` | Output only. Further data for the failed state. |
| `provisioningData` | `ProvisioningData` | Output only. Further data for the provisioning state. |
| `state` | `string` | Output only. State of the QueuedResource request. |
| `stateInitiator` | `string` | Output only. The initiator of the QueuedResources's current state. Used to indicate whether the S... |
| `suspendedData` | `SuspendedData` | Output only. Further data for the suspended state. |
| `suspendingData` | `SuspendingData` | Output only. Further data for the suspending state. |

### `QueueingPolicy`

Defines the policy of the QueuedRequest.

| Property | Type | Description |
|----------|------|-------------|
| `validAfterDuration` | `string` | Optional. A relative time after which resources may be created. |
| `validAfterTime` | `string` | Optional. An absolute time after which resources may be created. |
| `validInterval` | `Interval` | Optional. An absolute time interval within which resources may be created. |
| `validUntilDuration` | `string` | Optional. A relative time after which resources should not be created. If the request cannot be f... |
| `validUntilTime` | `string` | Optional. An absolute time after which resources should not be created. If the request cannot be ... |

### `ResetQueuedResourceRequest`

Request for ResetQueuedResource.

### `RuntimeVersion`

A runtime version that a Node can be configured with.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The resource name. |
| `version` | `string` | The runtime version. |

### `SchedulingConfig`

Sets the scheduling options for this node.

| Property | Type | Description |
|----------|------|-------------|
| `preemptible` | `boolean` | Defines whether the node is preemptible. |
| `reserved` | `boolean` | Whether the node is created under a reservation. |
| `spot` | `boolean` | Optional. Defines whether the node is Spot VM. |

### `ServiceAccount`

A service account.

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | Email address of the service account. If empty, default Compute service account will be used. |
| `scope` | `array<string>` | The list of scopes to be made available for this service account. If empty, access to all Cloud A... |

### `ServiceIdentity`

The per-product per-project service identity for Cloud TPU service.

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | The email address of the service identity. |

### `ShieldedInstanceConfig`

A set of Shielded Instance options.

| Property | Type | Description |
|----------|------|-------------|
| `enableSecureBoot` | `boolean` | Defines whether the instance has Secure Boot enabled. |

### `Spot`

Spot tier definition.

### `StartNodeRequest`

Request for StartNode.

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `StopNodeRequest`

Request for StopNode.

### `SuspendedData`

Further data for the suspended state.

### `SuspendingData`

Further data for the suspending state.

### `Symptom`

A Symptom instance.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Timestamp when the Symptom is created. |
| `details` | `string` | Detailed information of the current Symptom. |
| `symptomType` | `string` | Type of the Symptom. |
| `workerId` | `string` | A string used to uniquely distinguish a worker within a TPU node. |

### `Tpu`

Details of the TPU resource(s) being requested.

| Property | Type | Description |
|----------|------|-------------|
| `nodeSpec` | `array<NodeSpec>` | Optional. The TPU node(s) being requested. |

### `UpcomingMaintenance`

Upcoming Maintenance notification information.

| Property | Type | Description |
|----------|------|-------------|
| `canReschedule` | `boolean` | Indicates if the maintenance can be customer triggered. |
| `latestWindowStartTime` | `string` | The latest time for the planned maintenance window to start. This timestamp value is in RFC3339 t... |
| `maintenanceStatus` | `string` | The status of the maintenance. |
| `type` | `string` | Defines the type of maintenance. |
| `windowEndTime` | `string` | The time by which the maintenance disruption will be completed. This timestamp value is in RFC333... |
| `windowStartTime` | `string` | The current start time of the maintenance window. This timestamp value is in RFC3339 text format. |

