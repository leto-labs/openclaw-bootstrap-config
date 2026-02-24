# Cloud IDS API - API Reference

**Version**: `v1` | **Methods**: 11 | **Schemas**: 10

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `ids.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `ids.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. |
| `ids.projects.locations.endpoints.get` | GET | `v1/{+name}` | Gets details of a single Endpoint. |
| `ids.projects.locations.endpoints.list` | GET | `v1/{+parent}/endpoints` | Lists Endpoints in a given project and location. |
| `ids.projects.locations.endpoints.create` | POST | `v1/{+parent}/endpoints` | Creates a new Endpoint in a given project and location. |
| `ids.projects.locations.endpoints.delete` | DELETE | `v1/{+name}` | Deletes a single Endpoint. |
| `ids.projects.locations.endpoints.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single Endpoint. |
| `ids.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `ids.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `ids.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `ids.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |

### `ids.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await ids.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ids.projects.locations.list`

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
const res = await ids.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ids.projects.locations.endpoints.get`

**GET** `v1/{+name}`

Gets details of a single Endpoint.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the endpoint to retrieve. Format: projects/{project}/locations/{location}/endpoints/{endpoint} |

**Response**: `Endpoint`

```typescript
const res = await ids.endpoints.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ids.projects.locations.endpoints.list`

**GET** `v1/{+parent}/endpoints`

Lists Endpoints in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of endpoints. |
| `filter` | `string` | query | No | Optional. The filter expression, following the syntax outlined in https://google.aip.dev/160. |
| `orderBy` | `string` | query | No | Optional. One or more fields to compare and use to sort the output. See https://google.aip.dev/132#ordering. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of endpoints to return. The service may return fewer than this value. |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListEndpoints` call. Provide this to retrieve the subsequent page. ... |

**Response**: `ListEndpointsResponse`

```typescript
const res = await ids.endpoints.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ids.projects.locations.endpoints.create`

**POST** `v1/{+parent}/endpoints`

Creates a new Endpoint in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The endpoint's parent. |
| `endpointId` | `string` | query | No | Required. The endpoint identifier. This will be part of the endpoint's resource name. This value must start with a lo... |
| `requestId` | `string` | query | No | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |

**Request body**: `Endpoint`

**Response**: `Operation`

```typescript
const res = await ids.endpoints.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ids.projects.locations.endpoints.delete`

**DELETE** `v1/{+name}`

Deletes a single Endpoint.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the endpoint to delete. |
| `requestId` | `string` | query | No | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |

**Response**: `Operation`

```typescript
const res = await ids.endpoints.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ids.projects.locations.endpoints.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single Endpoint.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The name of the endpoint. |
| `requestId` | `string` | query | No | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `updateMask` | `string` | query | No | Field mask is used to specify the fields to be overwritten in the Endpoint resource by the update. The fields specifi... |

**Request body**: `Endpoint`

**Response**: `Operation`

```typescript
const res = await ids.endpoints.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ids.projects.locations.operations.list`

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
const res = await ids.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ids.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await ids.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ids.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await ids.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ids.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await ids.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Endpoint`

Endpoint describes a single IDS endpoint. It defines a forwarding rule to which packets can be sent for IDS inspection.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The create time timestamp. |
| `description` | `string` | User-provided description of the endpoint |
| `endpointForwardingRule` | `string` | Output only. The fully qualified URL of the endpoint's ILB Forwarding Rule. |
| `endpointIp` | `string` | Output only. The IP address of the IDS Endpoint's ILB. |
| `labels` | `object` | The labels of the endpoint. |
| `name` | `string` | Output only. The name of the endpoint. |
| `network` | `string` | Required. The fully qualified URL of the network to which the IDS Endpoint is attached. |
| `satisfiesPzi` | `boolean` | Output only. [Output Only] Reserved for future use. |
| `satisfiesPzs` | `boolean` | Output only. [Output Only] Reserved for future use. |
| `severity` | `string` | Required. Lowest threat severity that this endpoint will alert on. |
| `state` | `string` | Output only. Current state of the endpoint. |
| `threatExceptions` | `array<string>` | List of threat IDs to be excepted from generating alerts. |
| `trafficLogs` | `boolean` | Whether the endpoint should report traffic logs in addition to threat logs. |
| `updateTime` | `string` | Output only. The update time timestamp. |

### `ListEndpointsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `endpoints` | `array<Endpoint>` | The list of endpoints response. |
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

