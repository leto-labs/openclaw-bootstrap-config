# Blockchain Node Engine API - API Reference

**Version**: `v1` | **Methods**: 11 | **Schemas**: 16

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `blockchainnodeengine.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. |
| `blockchainnodeengine.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `blockchainnodeengine.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `blockchainnodeengine.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `blockchainnodeengine.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `blockchainnodeengine.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `blockchainnodeengine.projects.locations.blockchainNodes.list` | GET | `v1/{+parent}/blockchainNodes` | Lists blockchain nodes in a given project and location. |
| `blockchainnodeengine.projects.locations.blockchainNodes.get` | GET | `v1/{+name}` | Gets details of a single blockchain node. |
| `blockchainnodeengine.projects.locations.blockchainNodes.create` | POST | `v1/{+parent}/blockchainNodes` | Creates a new blockchain node in a given project and location. |
| `blockchainnodeengine.projects.locations.blockchainNodes.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single blockchain node. |
| `blockchainnodeengine.projects.locations.blockchainNodes.delete` | DELETE | `v1/{+name}` | Deletes a single blockchain node. |

### `blockchainnodeengine.projects.locations.list`

**GET** `v1/{+name}/locations`

Lists information about the supported locations for this service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource that owns the locations collection, if applicable. |
| `extraLocationTypes` | `string` | query | No | Optional. A list of extra location types that should be used as conditions for controlling the visibility of the loca... |
| `filter` | `string` | query | No | A filter to narrow down results to a preferred subset. The filtering language accepts strings like `"displayName=toky... |
| `pageSize` | `integer` | query | No | The maximum number of results to return. If not set, the service selects a default. |
| `pageToken` | `string` | query | No | A page token received from the `next_page_token` field in the response. Send that page token to receive the subsequen... |

**Response**: `ListLocationsResponse`

```typescript
const res = await blockchainnodeengine.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `blockchainnodeengine.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await blockchainnodeengine.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `blockchainnodeengine.projects.locations.operations.list`

**GET** `v1/{+name}/operations`

Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation's parent resource. |
| `filter` | `string` | query | No | The standard list filter. |
| `pageSize` | `integer` | query | No | The standard list page size. |
| `pageToken` | `string` | query | No | The standard list page token. |

**Response**: `ListOperationsResponse`

```typescript
const res = await blockchainnodeengine.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `blockchainnodeengine.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await blockchainnodeengine.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `blockchainnodeengine.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await blockchainnodeengine.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `blockchainnodeengine.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await blockchainnodeengine.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `blockchainnodeengine.projects.locations.blockchainNodes.list`

**GET** `v1/{+parent}/blockchainNodes`

Lists blockchain nodes in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for `ListNodesRequest`. |
| `filter` | `string` | query | No | Filtering results. |
| `orderBy` | `string` | query | No | Hint for how to order the results. |
| `pageSize` | `integer` | query | No | Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appropriate de... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. |

**Response**: `ListBlockchainNodesResponse`

```typescript
const res = await blockchainnodeengine.blockchainNodes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `blockchainnodeengine.projects.locations.blockchainNodes.get`

**GET** `v1/{+name}`

Gets details of a single blockchain node.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the blockchain node to fetch. e.g. `projects/my-project/locations/us-central1/b... |

**Response**: `BlockchainNode`

```typescript
const res = await blockchainnodeengine.blockchainNodes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `blockchainnodeengine.projects.locations.blockchainNodes.create`

**POST** `v1/{+parent}/blockchainNodes`

Creates a new blockchain node in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Value for parent. |
| `blockchainNodeId` | `string` | query | No | Required. ID of the requesting object. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `BlockchainNode`

**Response**: `Operation`

```typescript
const res = await blockchainnodeengine.blockchainNodes.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `blockchainnodeengine.projects.locations.blockchainNodes.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single blockchain node.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The fully qualified name of the blockchain node. e.g. `projects/my-project/locations/us-central1/blockch... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the Blockchain node resource by the update. T... |

**Request body**: `BlockchainNode`

**Response**: `Operation`

```typescript
const res = await blockchainnodeengine.blockchainNodes.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `blockchainnodeengine.projects.locations.blockchainNodes.delete`

**DELETE** `v1/{+name}`

Deletes a single blockchain node.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The fully qualified name of the blockchain node to delete. e.g. `projects/my-project/locations/us-central1/... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `Operation`

```typescript
const res = await blockchainnodeengine.blockchainNodes.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `BlockchainNode`

A representation of a blockchain node.

| Property | Type | Description |
|----------|------|-------------|
| `blockchainType` | `string` | Immutable. The blockchain type of the node. |
| `connectionInfo` | `ConnectionInfo` | Output only. The connection information used to interact with a blockchain node. |
| `createTime` | `string` | Output only. The timestamp at which the blockchain node was first created. |
| `ethereumDetails` | `EthereumDetails` | Ethereum-specific blockchain node details. |
| `labels` | `object` | User-provided key-value pairs. |
| `name` | `string` | Output only. The fully qualified name of the blockchain node. e.g. `projects/my-project/locations... |
| `privateServiceConnectEnabled` | `boolean` | Optional. When true, the node is only accessible via Private Service Connect; no public endpoints... |
| `state` | `string` | Output only. A status representing the state of the node. |
| `updateTime` | `string` | Output only. The timestamp at which the blockchain node was last updated. |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `ConnectionInfo`

The connection information through which to interact with a blockchain node.

| Property | Type | Description |
|----------|------|-------------|
| `endpointInfo` | `EndpointInfo` | Output only. The endpoint information through which to interact with a blockchain node. |
| `serviceAttachment` | `string` | Output only. A service attachment that exposes a node, and has the following format: projects/{pr... |

### `EndpointInfo`

Contains endpoint information through which to interact with a blockchain node.

| Property | Type | Description |
|----------|------|-------------|
| `jsonRpcApiEndpoint` | `string` | Output only. The assigned URL for the node JSON-RPC API endpoint. |
| `websocketsApiEndpoint` | `string` | Output only. The assigned URL for the node WebSockets API endpoint. |

### `EthereumDetails`

Ethereum-specific blockchain node details.

| Property | Type | Description |
|----------|------|-------------|
| `additionalEndpoints` | `EthereumEndpoints` | Output only. Ethereum-specific endpoint information. |
| `apiEnableAdmin` | `boolean` | Immutable. Enables JSON-RPC access to functions in the `admin` namespace. Defaults to `false`. |
| `apiEnableDebug` | `boolean` | Immutable. Enables JSON-RPC access to functions in the `debug` namespace. Defaults to `false`. |
| `consensusClient` | `string` | Immutable. The consensus client. |
| `executionClient` | `string` | Immutable. The execution client |
| `gethDetails` | `GethDetails` | Details for the Geth execution client. |
| `network` | `string` | Immutable. The Ethereum environment being accessed. |
| `nodeType` | `string` | Immutable. The type of Ethereum node. |
| `validatorConfig` | `ValidatorConfig` | Configuration for validator-related parameters on the beacon client, and for any GCP-managed vali... |

### `EthereumEndpoints`

Contains endpoint information specific to Ethereum nodes.

| Property | Type | Description |
|----------|------|-------------|
| `beaconApiEndpoint` | `string` | Output only. The assigned URL for the node's Beacon API endpoint. |
| `beaconPrometheusMetricsApiEndpoint` | `string` | Output only. The assigned URL for the node's Beacon Prometheus metrics endpoint. See [Prometheus ... |
| `executionClientPrometheusMetricsApiEndpoint` | `string` | Output only. The assigned URL for the node's execution client's Prometheus metrics endpoint. |

### `GethDetails`

Options for the Geth execution client. See [Command-line Options](https://geth.ethereum.org/docs/fundamentals/command-line-options) for more details.

| Property | Type | Description |
|----------|------|-------------|
| `garbageCollectionMode` | `string` | Immutable. Blockchain garbage collection mode. |

### `GoogleProtobufEmpty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `ListBlockchainNodesResponse`

Message for response to listing blockchain nodes.

| Property | Type | Description |
|----------|------|-------------|
| `blockchainNodes` | `array<BlockchainNode>` | The list of nodes |
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

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

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

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `ValidatorConfig`

Configuration for validator-related parameters on the beacon client, and for any GCP-managed validator client.

| Property | Type | Description |
|----------|------|-------------|
| `beaconFeeRecipient` | `string` | An Ethereum address which the beacon client will send fee rewards to if no recipient is configure... |
| `managedValidatorClient` | `boolean` | Immutable. When true, deploys a GCP-managed validator client alongside the beacon client. |
| `mevRelayUrls` | `array<string>` | URLs for MEV-relay services to use for block building. When set, a GCP-managed MEV-boost service ... |

