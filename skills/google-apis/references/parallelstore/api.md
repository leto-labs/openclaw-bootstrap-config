# Parallelstore API - API Reference

**Version**: `v1` | **Methods**: 13 | **Schemas**: 18

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `parallelstore.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. |
| `parallelstore.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `parallelstore.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `parallelstore.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `parallelstore.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `parallelstore.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `parallelstore.projects.locations.instances.importData` | POST | `v1/{+name}:importData` | Copies data from Cloud Storage to Parallelstore. |
| `parallelstore.projects.locations.instances.exportData` | POST | `v1/{+name}:exportData` | Copies data from Parallelstore to Cloud Storage. |
| `parallelstore.projects.locations.instances.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single instance. |
| `parallelstore.projects.locations.instances.delete` | DELETE | `v1/{+name}` | Deletes a single instance. |
| `parallelstore.projects.locations.instances.create` | POST | `v1/{+parent}/instances` | Creates a Parallelstore instance in a given project and location. |
| `parallelstore.projects.locations.instances.get` | GET | `v1/{+name}` | Gets details of a single instance. |
| `parallelstore.projects.locations.instances.list` | GET | `v1/{+parent}/instances` | Lists all instances in a given project and location. |

### `parallelstore.projects.locations.list`

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
const res = await parallelstore.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `parallelstore.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await parallelstore.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `parallelstore.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await parallelstore.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `parallelstore.projects.locations.operations.list`

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
const res = await parallelstore.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `parallelstore.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await parallelstore.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `parallelstore.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await parallelstore.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `parallelstore.projects.locations.instances.importData`

**POST** `v1/{+name}:importData`

Copies data from Cloud Storage to Parallelstore.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. |

**Request body**: `ImportDataRequest`

**Response**: `Operation`

```typescript
const res = await parallelstore.instances.importData({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `parallelstore.projects.locations.instances.exportData`

**POST** `v1/{+name}:exportData`

Copies data from Parallelstore to Cloud Storage.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. |

**Request body**: `ExportDataRequest`

**Response**: `Operation`

```typescript
const res = await parallelstore.instances.exportData({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `parallelstore.projects.locations.instances.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the instance, in the format `projects/{project}/locations/{location}/instances/{inst... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Required. Mask of fields to update. Field mask is used to specify the fields to be overwritten in the Instance resour... |

**Request body**: `Instance`

**Response**: `Operation`

```typescript
const res = await parallelstore.instances.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `parallelstore.projects.locations.instances.delete`

**DELETE** `v1/{+name}`

Deletes a single instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `Operation`

```typescript
const res = await parallelstore.instances.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `parallelstore.projects.locations.instances.create`

**POST** `v1/{+parent}/instances`

Creates a Parallelstore instance in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The instance's project and location, in the format `projects/{project}/locations/{location}`. Locations map... |
| `instanceId` | `string` | query | No | Required. The name of the Parallelstore instance. * Must contain only lowercase letters, numbers, and hyphens. * Must... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `Instance`

**Response**: `Operation`

```typescript
const res = await parallelstore.instances.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `parallelstore.projects.locations.instances.get`

**GET** `v1/{+name}`

Gets details of a single instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The instance resource name, in the format `projects/{project_id}/locations/{location}/instances/{instance_i... |

**Response**: `Instance`

```typescript
const res = await parallelstore.instances.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `parallelstore.projects.locations.instances.list`

**GET** `v1/{+parent}/instances`

Lists all instances in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location for which to retrieve instance information, in the format `projects/{project_id}/l... |
| `filter` | `string` | query | No | Optional. Filtering results. |
| `orderBy` | `string` | query | No | Optional. Hint for how to order the results. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, the server will pick an ... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListInstancesResponse`

```typescript
const res = await parallelstore.instances.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `DestinationGcsBucket`

Cloud Storage as the destination of a data transfer.

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` | Required. URI to a Cloud Storage bucket in the format: `gs:///`. The path inside the bucket is op... |

### `DestinationParallelstore`

Parallelstore as the destination of a data transfer.

| Property | Type | Description |
|----------|------|-------------|
| `path` | `string` | Optional. Root directory path to the Paralellstore filesystem, starting with `/`. Defaults to `/`... |

### `ExportDataRequest`

Export data from Parallelstore to Cloud Storage.

| Property | Type | Description |
|----------|------|-------------|
| `destinationGcsBucket` | `DestinationGcsBucket` | Cloud Storage destination. |
| `metadataOptions` | `TransferMetadataOptions` | Optional. The metadata options for the export data. |
| `requestId` | `string` | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you... |
| `serviceAccount` | `string` | Optional. User-specified Service Account (SA) credentials to be used when performing the transfer... |
| `sourceParallelstore` | `SourceParallelstore` | Parallelstore source. |

### `GoogleProtobufEmpty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `ImportDataRequest`

Import data from Cloud Storage into a Parallelstore instance.

| Property | Type | Description |
|----------|------|-------------|
| `destinationParallelstore` | `DestinationParallelstore` | Parallelstore destination. |
| `metadataOptions` | `TransferMetadataOptions` | Optional. The transfer metadata options for the import data. |
| `requestId` | `string` | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you... |
| `serviceAccount` | `string` | Optional. User-specified service account credentials to be used when performing the transfer. Use... |
| `sourceGcsBucket` | `SourceGcsBucket` | The Cloud Storage source bucket and, optionally, path inside the bucket. |

### `Instance`

A Parallelstore instance.

| Property | Type | Description |
|----------|------|-------------|
| `accessPoints` | `array<string>` | Output only. A list of IPv4 addresses used for client side configuration. |
| `capacityGib` | `string` | Required. Immutable. The instance's storage capacity in Gibibytes (GiB). Allowed values are betwe... |
| `createTime` | `string` | Output only. The time when the instance was created. |
| `daosVersion` | `string` | Output only. Deprecated: The version of DAOS software running in the instance. |
| `deploymentType` | `string` | Optional. Immutable. The deployment type of the instance. Allowed values are: * `SCRATCH`: the in... |
| `description` | `string` | Optional. The description of the instance. 2048 characters or less. |
| `directoryStripeLevel` | `string` | Optional. Immutable. Stripe level for directories. Allowed values are: * `DIRECTORY_STRIPE_LEVEL_... |
| `effectiveReservedIpRange` | `string` | Output only. Immutable. The ID of the IP address range being used by the instance's VPC network. ... |
| `fileStripeLevel` | `string` | Optional. Immutable. Stripe level for files. Allowed values are: * `FILE_STRIPE_LEVEL_MIN`: offer... |
| `labels` | `object` | Optional. Cloud Labels are a flexible and lightweight mechanism for organizing cloud resources in... |
| `name` | `string` | Identifier. The resource name of the instance, in the format `projects/{project}/locations/{locat... |
| `network` | `string` | Optional. Immutable. The name of the Compute Engine [VPC network](https://cloud.google.com/vpc/do... |
| `reservedIpRange` | `string` | Optional. Immutable. The ID of the IP address range being used by the instance's VPC network. See... |
| `state` | `string` | Output only. The instance state. |
| `updateTime` | `string` | Output only. The time when the instance was updated. |

### `ListInstancesResponse`

Response from ListInstances.

| Property | Type | Description |
|----------|------|-------------|
| `instances` | `array<Instance>` | The list of Parallelstore instances. |
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

Long-running operation metadata.

| Property | Type | Description |
|----------|------|-------------|
| `apiVersion` | `string` | Output only. API version used to start the operation. |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `requestedCancellation` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. Operations ... |
| `statusMessage` | `string` | Output only. Human-readable status of the operation, if any. |
| `target` | `string` | Output only. Server-defined resource path for the target of the operation. |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `ReconciliationOperationMetadata`

Operation metadata returned by the CLH during resource state reconciliation.

| Property | Type | Description |
|----------|------|-------------|
| `deleteResource` | `boolean` | DEPRECATED. Use exclusive_action instead. |
| `exclusiveAction` | `string` | Excluisive action returned by the CLH. |

### `SourceGcsBucket`

Cloud Storage as the source of a data transfer.

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` | Required. URI to a Cloud Storage bucket in the format: `gs:///`. The path inside the bucket is op... |

### `SourceParallelstore`

Parallelstore as the source of a data transfer.

| Property | Type | Description |
|----------|------|-------------|
| `path` | `string` | Optional. Root directory path to the Paralellstore filesystem, starting with `/`. Defaults to `/`... |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `TransferMetadataOptions`

Transfer metadata options for the instance.

| Property | Type | Description |
|----------|------|-------------|
| `gid` | `string` | Optional. The GID preservation behavior. |
| `mode` | `string` | Optional. The mode preservation behavior. |
| `uid` | `string` | Optional. The UID preservation behavior. |

