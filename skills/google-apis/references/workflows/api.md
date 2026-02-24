# Workflows API - API Reference

**Version**: `v1` | **Methods**: 11 | **Schemas**: 11

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `workflows.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `workflows.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `workflows.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `workflows.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `workflows.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `workflows.projects.locations.workflows.delete` | DELETE | `v1/{+name}` | Deletes a workflow with the specified name. This method also cancels and deletes all running exec... |
| `workflows.projects.locations.workflows.listRevisions` | GET | `v1/{+name}:listRevisions` | Lists revisions for a given workflow. |
| `workflows.projects.locations.workflows.list` | GET | `v1/{+parent}/workflows` | Lists workflows in a given project and location. The default order is not specified. |
| `workflows.projects.locations.workflows.patch` | PATCH | `v1/{+name}` | Updates an existing workflow. Running this method has no impact on already running executions of ... |
| `workflows.projects.locations.workflows.create` | POST | `v1/{+parent}/workflows` | Creates a new workflow. If a workflow with the specified name already exists in the specified pro... |
| `workflows.projects.locations.workflows.get` | GET | `v1/{+name}` | Gets details of a single workflow. |

### `workflows.projects.locations.list`

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
const res = await workflows.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workflows.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await workflows.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workflows.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await workflows.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workflows.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await workflows.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workflows.projects.locations.operations.list`

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
const res = await workflows.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workflows.projects.locations.workflows.delete`

**DELETE** `v1/{+name}`

Deletes a workflow with the specified name. This method also cancels and deletes all running executions of the workflow.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the workflow to be deleted. Format: projects/{project}/locations/{location}/workflows/{workflow} |

**Response**: `Operation`

```typescript
const res = await workflows.workflows.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workflows.projects.locations.workflows.listRevisions`

**GET** `v1/{+name}:listRevisions`

Lists revisions for a given workflow.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Workflow for which the revisions should be listed. Format: projects/{project}/locations/{location}/workflow... |
| `pageSize` | `integer` | query | No | The maximum number of revisions to return per page. If a value is not specified, a default value of 20 is used. The m... |
| `pageToken` | `string` | query | No | The page token, received from a previous ListWorkflowRevisions call. Provide this to retrieve the subsequent page. |

**Response**: `ListWorkflowRevisionsResponse`

```typescript
const res = await workflows.workflows.listRevisions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workflows.projects.locations.workflows.list`

**GET** `v1/{+parent}/workflows`

Lists workflows in a given project and location. The default order is not specified.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Project and location from which the workflows should be listed. Format: projects/{project}/locations/{locat... |
| `filter` | `string` | query | No | Filter to restrict results to specific workflows. For details, see AIP-160. For example, if you are using the Google ... |
| `orderBy` | `string` | query | No | Comma-separated list of fields that specify the order of the results. Default sorting order for a field is ascending.... |
| `pageSize` | `integer` | query | No | Maximum number of workflows to return per call. The service might return fewer than this value even if not at the end... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListWorkflows` call. Provide this to retrieve the subsequent page. When pagin... |

**Response**: `ListWorkflowsResponse`

```typescript
const res = await workflows.workflows.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workflows.projects.locations.workflows.patch`

**PATCH** `v1/{+name}`

Updates an existing workflow. Running this method has no impact on already running executions of the workflow. A new revision of the workflow might be created as a result of a successful update operation. In that case, the new revision is used in new workflow executions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource name of the workflow. Format: projects/{project}/locations/{location}/workflows/{workflow}. This is a wo... |
| `updateMask` | `string` | query | No | List of fields to be updated. If not present, the entire workflow will be updated. |

**Request body**: `Workflow`

**Response**: `Operation`

```typescript
const res = await workflows.workflows.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workflows.projects.locations.workflows.create`

**POST** `v1/{+parent}/workflows`

Creates a new workflow. If a workflow with the specified name already exists in the specified project and location, the long running operation returns a ALREADY_EXISTS error.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Project and location in which the workflow should be created. Format: projects/{project}/locations/{location} |
| `workflowId` | `string` | query | No | Required. The ID of the workflow to be created. It has to fulfill the following requirements: * Must contain only let... |

**Request body**: `Workflow`

**Response**: `Operation`

```typescript
const res = await workflows.workflows.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workflows.projects.locations.workflows.get`

**GET** `v1/{+name}`

Gets details of a single workflow.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the workflow for which information should be retrieved. Format: projects/{project}/locations/{locat... |
| `revisionId` | `string` | query | No | Optional. The revision of the workflow to retrieve. If the revision_id is empty, the latest revision is retrieved. Th... |

**Response**: `Workflow`

```typescript
const res = await workflows.workflows.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

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

### `ListWorkflowRevisionsResponse`

Response for the ListWorkflowRevisions method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `workflows` | `array<Workflow>` | The revisions of the workflow, ordered in reverse chronological order. |

### `ListWorkflowsResponse`

Response for the ListWorkflows method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `unreachable` | `array<string>` | Unreachable resources. |
| `workflows` | `array<Workflow>` | The workflows that match the request. |

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
| `apiVersion` | `string` | API version used to start the operation. |
| `createTime` | `string` | The time the operation was created. |
| `endTime` | `string` | The time the operation finished running. |
| `target` | `string` | Server-defined resource path for the target of the operation. |
| `verb` | `string` | Name of the verb executed by the operation. |

### `StateError`

Describes an error related to the current state of the workflow.

| Property | Type | Description |
|----------|------|-------------|
| `details` | `string` | Provides specifics about the error. |
| `type` | `string` | The type of this state error. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `Workflow`

Workflow program to be executed by Workflows.

| Property | Type | Description |
|----------|------|-------------|
| `allKmsKeys` | `array<string>` | Output only. A list of all KMS crypto keys used to encrypt or decrypt the data associated with th... |
| `allKmsKeysVersions` | `array<string>` | Output only. A list of all KMS crypto key versions used to encrypt or decrypt the data associated... |
| `callLogLevel` | `string` | Optional. Describes the level of platform logging to apply to calls and call responses during exe... |
| `createTime` | `string` | Output only. The timestamp for when the workflow was created. This is a workflow-wide field and i... |
| `cryptoKeyName` | `string` | Optional. The resource name of a KMS crypto key used to encrypt or decrypt the data associated wi... |
| `cryptoKeyVersion` | `string` | Output only. The resource name of a KMS crypto key version used to encrypt or decrypt the data as... |
| `description` | `string` | Description of the workflow provided by the user. Must be at most 1000 Unicode characters long. T... |
| `executionHistoryLevel` | `string` | Optional. Describes the execution history level to apply to this workflow. |
| `labels` | `object` | Labels associated with this workflow. Labels can contain at most 64 entries. Keys and values can ... |
| `name` | `string` | The resource name of the workflow. Format: projects/{project}/locations/{location}/workflows/{wor... |
| `revisionCreateTime` | `string` | Output only. The timestamp for the latest revision of the workflow's creation. |
| `revisionId` | `string` | Output only. The revision of the workflow. A new revision of a workflow is created as a result of... |
| `serviceAccount` | `string` | The service account associated with the latest workflow version. This service account represents ... |
| `sourceContents` | `string` | Workflow code to be executed. The size limit is 128KB. |
| `state` | `string` | Output only. State of the workflow deployment. |
| `stateError` | `StateError` | Output only. Error regarding the state of the workflow. For example, this field will have error d... |
| `tags` | `object` | Optional. Input only. Immutable. Tags associated with this workflow. |
| `updateTime` | `string` | Output only. The timestamp for when the workflow was last updated. This is a workflow-wide field ... |
| `userEnvVars` | `object` | Optional. User-defined environment variables associated with this workflow revision. This map has... |

