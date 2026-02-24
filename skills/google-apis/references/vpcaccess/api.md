# Serverless VPC Access API - API Reference

**Version**: `v1` | **Methods**: 8 | **Schemas**: 11

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `vpcaccess.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `vpcaccess.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `vpcaccess.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `vpcaccess.projects.locations.connectors.create` | POST | `v1/{+parent}/connectors` | Creates a Serverless VPC Access connector, returns an operation. |
| `vpcaccess.projects.locations.connectors.patch` | PATCH | `v1/{+name}` | Updates a Serverless VPC Access connector, returns an operation. |
| `vpcaccess.projects.locations.connectors.get` | GET | `v1/{+name}` | Gets a Serverless VPC Access connector. Returns NOT_FOUND if the resource does not exist. |
| `vpcaccess.projects.locations.connectors.list` | GET | `v1/{+parent}/connectors` | Lists Serverless VPC Access connectors. |
| `vpcaccess.projects.locations.connectors.delete` | DELETE | `v1/{+name}` | Deletes a Serverless VPC Access connector. Returns NOT_FOUND if the resource does not exist. |

### `vpcaccess.projects.locations.list`

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
const res = await vpcaccess.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vpcaccess.projects.locations.operations.list`

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
const res = await vpcaccess.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vpcaccess.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await vpcaccess.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vpcaccess.projects.locations.connectors.create`

**POST** `v1/{+parent}/connectors`

Creates a Serverless VPC Access connector, returns an operation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project ID and location in which the configuration should be created, specified in the format `projects... |
| `connectorId` | `string` | query | No | Required. The ID to use for this connector. |

**Request body**: `Connector`

**Response**: `Operation`

```typescript
const res = await vpcaccess.connectors.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vpcaccess.projects.locations.connectors.patch`

**PATCH** `v1/{+name}`

Updates a Serverless VPC Access connector, returns an operation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource name in the format `projects/*/locations/*/connectors/*`. |
| `updateMask` | `string` | query | No | The fields to update on the entry group. If absent or empty, all modifiable fields are updated. |

**Request body**: `Connector`

**Response**: `Operation`

```typescript
const res = await vpcaccess.connectors.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vpcaccess.projects.locations.connectors.get`

**GET** `v1/{+name}`

Gets a Serverless VPC Access connector. Returns NOT_FOUND if the resource does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of a Serverless VPC Access connector to get. |

**Response**: `Connector`

```typescript
const res = await vpcaccess.connectors.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vpcaccess.projects.locations.connectors.list`

**GET** `v1/{+parent}/connectors`

Lists Serverless VPC Access connectors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location from which the routes should be listed. |
| `pageSize` | `integer` | query | No | Maximum number of functions to return per call. |
| `pageToken` | `string` | query | No | Continuation token. |

**Response**: `ListConnectorsResponse`

```typescript
const res = await vpcaccess.connectors.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `vpcaccess.projects.locations.connectors.delete`

**DELETE** `v1/{+name}`

Deletes a Serverless VPC Access connector. Returns NOT_FOUND if the resource does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of a Serverless VPC Access connector to delete. |

**Response**: `Operation`

```typescript
const res = await vpcaccess.connectors.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `Connector`

Definition of a Serverless VPC Access connector.

| Property | Type | Description |
|----------|------|-------------|
| `connectedProjects` | `array<string>` | Output only. List of projects using the connector. |
| `ipCidrRange` | `string` | Optional. The range of internal addresses that follows RFC 4632 notation. Example: `10.132.0.0/28`. |
| `machineType` | `string` | Machine type of VM Instance underlying connector. Default is e2-micro |
| `maxInstances` | `integer` | Maximum value of instances in autoscaling group underlying the connector. |
| `maxThroughput` | `integer` | Maximum throughput of the connector in Mbps. Refers to the expected throughput when using an `e2-... |
| `minInstances` | `integer` | Minimum value of instances in autoscaling group underlying the connector. |
| `minThroughput` | `integer` | Minimum throughput of the connector in Mbps. Refers to the expected throughput when using an `e2-... |
| `name` | `string` | The resource name in the format `projects/*/locations/*/connectors/*`. |
| `network` | `string` | Optional. Name of a VPC network. |
| `state` | `string` | Output only. State of the VPC access connector. |
| `subnet` | `Subnet` | Optional. The subnet in which to house the VPC Access Connector. |

### `ListConnectorsResponse`

Response for listing Serverless VPC Access connectors.

| Property | Type | Description |
|----------|------|-------------|
| `connectors` | `array<Connector>` | List of Serverless VPC Access connectors. |
| `nextPageToken` | `string` | Continuation token. |

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

Metadata for google.longrunning.Operation.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Time when the operation was created. |
| `endTime` | `string` | Output only. Time when the operation completed. |
| `method` | `string` | Output only. Method that initiated the operation e.g. google.cloud.vpcaccess.v1.Connectors.Create... |
| `target` | `string` | Output only. Name of the resource that this operation is acting on e.g. projects/my-project/locat... |

### `OperationMetadataV1Alpha1`

Metadata for google.longrunning.Operation.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | Output only. Time when the operation completed. |
| `insertTime` | `string` | Output only. Time when the operation was created. |
| `method` | `string` | Output only. Method that initiated the operation e.g. google.cloud.vpcaccess.v1alpha1.Connectors.... |
| `target` | `string` | Output only. Name of the resource that this operation is acting on e.g. projects/my-project/locat... |

### `OperationMetadataV1Beta1`

Metadata for google.longrunning.Operation.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Time when the operation was created. |
| `endTime` | `string` | Output only. Time when the operation completed. |
| `method` | `string` | Output only. Method that initiated the operation e.g. google.cloud.vpcaccess.v1beta1.Connectors.C... |
| `target` | `string` | Output only. Name of the resource that this operation is acting on e.g. projects/my-project/locat... |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `Subnet`

The subnet in which to house the connector

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Optional. Subnet name (relative, not fully qualified). E.g. if the full subnet selfLink is https:... |
| `projectId` | `string` | Optional. Project in which the subnet exists. If not set, this project is assumed to be the proje... |

