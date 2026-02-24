# Rapid Migration Assessment API - API Reference

**Version**: `v1` | **Methods**: 16 | **Schemas**: 16

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `rapidmigrationassessment.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `rapidmigrationassessment.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. |
| `rapidmigrationassessment.projects.locations.annotations.get` | GET | `v1/{+name}` | Gets details of a single Annotation. |
| `rapidmigrationassessment.projects.locations.annotations.create` | POST | `v1/{+parent}/annotations` | Creates an Annotation |
| `rapidmigrationassessment.projects.locations.collectors.create` | POST | `v1/{+parent}/collectors` | Create a Collector to manage the on-prem appliance which collects information about Customer assets. |
| `rapidmigrationassessment.projects.locations.collectors.resume` | POST | `v1/{+name}:resume` | Resumes the given collector. |
| `rapidmigrationassessment.projects.locations.collectors.get` | GET | `v1/{+name}` | Gets details of a single Collector. |
| `rapidmigrationassessment.projects.locations.collectors.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single Collector. |
| `rapidmigrationassessment.projects.locations.collectors.register` | POST | `v1/{+name}:register` | Registers the given collector. |
| `rapidmigrationassessment.projects.locations.collectors.list` | GET | `v1/{+parent}/collectors` | Lists Collectors in a given project and location. |
| `rapidmigrationassessment.projects.locations.collectors.delete` | DELETE | `v1/{+name}` | Deletes a single Collector - changes state of collector to "Deleting". Background jobs does final... |
| `rapidmigrationassessment.projects.locations.collectors.pause` | POST | `v1/{+name}:pause` | Pauses the given collector. |
| `rapidmigrationassessment.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `rapidmigrationassessment.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `rapidmigrationassessment.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `rapidmigrationassessment.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |

### `rapidmigrationassessment.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await rapidmigrationassessment.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `rapidmigrationassessment.projects.locations.list`

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
const res = await rapidmigrationassessment.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `rapidmigrationassessment.projects.locations.annotations.get`

**GET** `v1/{+name}`

Gets details of a single Annotation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. |

**Response**: `Annotation`

```typescript
const res = await rapidmigrationassessment.annotations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `rapidmigrationassessment.projects.locations.annotations.create`

**POST** `v1/{+parent}/annotations`

Creates an Annotation

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the parent (project+location). |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. |

**Request body**: `Annotation`

**Response**: `Operation`

```typescript
const res = await rapidmigrationassessment.annotations.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `rapidmigrationassessment.projects.locations.collectors.create`

**POST** `v1/{+parent}/collectors`

Create a Collector to manage the on-prem appliance which collects information about Customer assets.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the parent (project+location). |
| `collectorId` | `string` | query | No | Required. Id of the requesting object. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. |

**Request body**: `Collector`

**Response**: `Operation`

```typescript
const res = await rapidmigrationassessment.collectors.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `rapidmigrationassessment.projects.locations.collectors.resume`

**POST** `v1/{+name}:resume`

Resumes the given collector.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. |

**Request body**: `ResumeCollectorRequest`

**Response**: `Operation`

```typescript
const res = await rapidmigrationassessment.collectors.resume({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `rapidmigrationassessment.projects.locations.collectors.get`

**GET** `v1/{+name}`

Gets details of a single Collector.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. |

**Response**: `Collector`

```typescript
const res = await rapidmigrationassessment.collectors.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `rapidmigrationassessment.projects.locations.collectors.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single Collector.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | name of resource. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the Collector resource by the update. The fie... |

**Request body**: `Collector`

**Response**: `Operation`

```typescript
const res = await rapidmigrationassessment.collectors.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `rapidmigrationassessment.projects.locations.collectors.register`

**POST** `v1/{+name}:register`

Registers the given collector.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. |

**Request body**: `RegisterCollectorRequest`

**Response**: `Operation`

```typescript
const res = await rapidmigrationassessment.collectors.register({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `rapidmigrationassessment.projects.locations.collectors.list`

**GET** `v1/{+parent}/collectors`

Lists Collectors in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for ListCollectorsRequest. |
| `filter` | `string` | query | No | Filtering results. |
| `orderBy` | `string` | query | No | Hint for how to order the results. |
| `pageSize` | `integer` | query | No | Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appropriate de... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. |

**Response**: `ListCollectorsResponse`

```typescript
const res = await rapidmigrationassessment.collectors.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `rapidmigrationassessment.projects.locations.collectors.delete`

**DELETE** `v1/{+name}`

Deletes a single Collector - changes state of collector to "Deleting". Background jobs does final deletion through producer API.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `Operation`

```typescript
const res = await rapidmigrationassessment.collectors.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `rapidmigrationassessment.projects.locations.collectors.pause`

**POST** `v1/{+name}:pause`

Pauses the given collector.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. |

**Request body**: `PauseCollectorRequest`

**Response**: `Operation`

```typescript
const res = await rapidmigrationassessment.collectors.pause({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `rapidmigrationassessment.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await rapidmigrationassessment.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `rapidmigrationassessment.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await rapidmigrationassessment.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `rapidmigrationassessment.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await rapidmigrationassessment.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `rapidmigrationassessment.projects.locations.operations.list`

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
const res = await rapidmigrationassessment.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `Annotation`

Message describing an Annotation

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Create time stamp. |
| `labels` | `object` | Labels as key value pairs. |
| `name` | `string` | name of resource. |
| `type` | `string` | Type of an annotation. |
| `updateTime` | `string` | Output only. Update time stamp. |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `Collector`

Message describing Collector object.

| Property | Type | Description |
|----------|------|-------------|
| `bucket` | `string` | Output only. Store cloud storage bucket name (which is a guid) created with this Collector. |
| `clientVersion` | `string` | Output only. Client version. |
| `collectionDays` | `integer` | How many days to collect data. |
| `createTime` | `string` | Output only. Create time stamp. |
| `description` | `string` | User specified description of the Collector. |
| `displayName` | `string` | User specified name of the Collector. |
| `eulaUri` | `string` | Uri for EULA (End User License Agreement) from customer. |
| `expectedAssetCount` | `string` | User specified expected asset count. |
| `guestOsScan` | `GuestOsScan` | Output only. Reference to MC Source Guest Os Scan. |
| `labels` | `object` | Labels as key value pairs. |
| `name` | `string` | name of resource. |
| `serviceAccount` | `string` | Service Account email used to ingest data to this Collector. |
| `state` | `string` | Output only. State of the Collector. |
| `updateTime` | `string` | Output only. Update time stamp. |
| `vsphereScan` | `VSphereScan` | Output only. Reference to MC Source vsphere_scan. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `GuestOsScan`

Message describing a MC Source of type Guest OS Scan.

| Property | Type | Description |
|----------|------|-------------|
| `coreSource` | `string` | reference to the corresponding Guest OS Scan in MC Source. |

### `ListCollectorsResponse`

Message for response to listing Collectors.

| Property | Type | Description |
|----------|------|-------------|
| `collectors` | `array<Collector>` | The list of Collectors. |
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

### `PauseCollectorRequest`

Message for pausing a Collector.

| Property | Type | Description |
|----------|------|-------------|
| `requestId` | `string` | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you... |

### `RegisterCollectorRequest`

Message for registering a Collector.

| Property | Type | Description |
|----------|------|-------------|
| `requestId` | `string` | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you... |

### `ResumeCollectorRequest`

Message for resuming a Collector.

| Property | Type | Description |
|----------|------|-------------|
| `requestId` | `string` | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you... |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `VSphereScan`

Message describing a MC Source of type VSphere Scan.

| Property | Type | Description |
|----------|------|-------------|
| `coreSource` | `string` | reference to the corresponding VSphere Scan in MC Source. |

