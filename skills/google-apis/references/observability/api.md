# Observability API - API Reference

**Version**: `v1` | **Methods**: 42 | **Schemas**: 21

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `observability.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `observability.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `observability.projects.locations.getSettings` | GET | `v1/{+name}` | Get Settings |
| `observability.projects.locations.updateSettings` | PATCH | `v1/{+name}` | Update Settings |
| `observability.projects.locations.buckets.list` | GET | `v1/{+parent}/buckets` | List buckets of a project in a particular location. |
| `observability.projects.locations.buckets.get` | GET | `v1/{+name}` | Get bucket resource. |
| `observability.projects.locations.buckets.datasets.list` | GET | `v1/{+parent}/datasets` | List datasets of a bucket. |
| `observability.projects.locations.buckets.datasets.get` | GET | `v1/{+name}` | Get a dataset. |
| `observability.projects.locations.buckets.datasets.views.get` | GET | `v1/{+name}` | Get a view. |
| `observability.projects.locations.buckets.datasets.views.list` | GET | `v1/{+parent}/views` | List views of a dataset. |
| `observability.projects.locations.buckets.datasets.links.list` | GET | `v1/{+parent}/links` | List links of a dataset. |
| `observability.projects.locations.buckets.datasets.links.create` | POST | `v1/{+parent}/links` | Create a new link. |
| `observability.projects.locations.buckets.datasets.links.get` | GET | `v1/{+name}` | Get a link. |
| `observability.projects.locations.buckets.datasets.links.patch` | PATCH | `v1/{+name}` | Update a link. |
| `observability.projects.locations.buckets.datasets.links.delete` | DELETE | `v1/{+name}` | Delete a link. |
| `observability.projects.locations.traceScopes.patch` | PATCH | `v1/{+name}` | Update a TraceScope. |
| `observability.projects.locations.traceScopes.delete` | DELETE | `v1/{+name}` | Delete a TraceScope. |
| `observability.projects.locations.traceScopes.get` | GET | `v1/{+name}` | Get TraceScope resource. |
| `observability.projects.locations.traceScopes.list` | GET | `v1/{+parent}/traceScopes` | List TraceScopes of a project in a particular location. |
| `observability.projects.locations.traceScopes.create` | POST | `v1/{+parent}/traceScopes` | Create a new TraceScope. |
| `observability.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `observability.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `observability.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `observability.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `observability.projects.locations.scopes.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single Scope. |
| `observability.projects.locations.scopes.get` | GET | `v1/{+name}` | Gets details of a single Scope. |
| `observability.folders.locations.getSettings` | GET | `v1/{+name}` | Get Settings |
| `observability.folders.locations.updateSettings` | PATCH | `v1/{+name}` | Update Settings |
| `observability.folders.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `observability.folders.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `observability.folders.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `observability.folders.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `observability.folders.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `observability.folders.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `observability.organizations.locations.getSettings` | GET | `v1/{+name}` | Get Settings |
| `observability.organizations.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `observability.organizations.locations.updateSettings` | PATCH | `v1/{+name}` | Update Settings |
| `observability.organizations.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `observability.organizations.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `observability.organizations.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `observability.organizations.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `observability.organizations.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |

### `observability.projects.locations.list`

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
const res = await observability.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `observability.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await observability.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `observability.projects.locations.getSettings`

**GET** `v1/{+name}`

Get Settings

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the settings to retrieve. Name format: "projects/[PROJECT_ID]/locations/[LOCATION]/settings" "folde... |

**Response**: `Settings`

```typescript
const res = await observability.locations.getSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `observability.projects.locations.updateSettings`

**PATCH** `v1/{+name}`

Update Settings

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the settings. |
| `updateMask` | `string` | query | No | Optional. The field mask specifying which fields of the settings are to be updated. |

**Request body**: `Settings`

**Response**: `Operation`

```typescript
const res = await observability.locations.updateSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `observability.projects.locations.buckets.list`

**GET** `v1/{+parent}/buckets`

List buckets of a project in a particular location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of buckets. The format is: projects/[PROJECT_ID]/locations/[LOCATION] |
| `pageSize` | `integer` | query | No | Optional. The maximum number of buckets to return. If unspecified, then at most 100 buckets are returned. The maximum... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListBuckets` call. Provide this to retrieve the subsequent page. |
| `showDeleted` | `boolean` | query | No | Optional. If true, then the response will include deleted buckets. |

**Response**: `ListBucketsResponse`

```typescript
const res = await observability.buckets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `observability.projects.locations.buckets.get`

**GET** `v1/{+name}`

Get bucket resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the bucket to retrieve. The format is: projects/[PROJECT_ID]/locations/[LOCATION]/buckets/[BUCKET_ID] |

**Response**: `Bucket`

```typescript
const res = await observability.buckets.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `observability.projects.locations.buckets.datasets.list`

**GET** `v1/{+parent}/datasets`

List datasets of a bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent bucket that owns this collection of datasets. The format is: projects/[PROJECT_ID]/locations/[LO... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of datasets to return. If unspecified, then at most 100 datasets are returned. The maxim... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListDatasets` call. Provide this to retrieve the subsequent page. |
| `showDeleted` | `boolean` | query | No | Optional. If true, then the response will include deleted datasets. |

**Response**: `ListDatasetsResponse`

```typescript
const res = await observability.datasets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `observability.projects.locations.buckets.datasets.get`

**GET** `v1/{+name}`

Get a dataset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the dataset to retrieve. The format is: projects/[PROJECT_ID]/locations/[LOCATION]/buckets/[BUCKET_... |

**Response**: `Dataset`

```typescript
const res = await observability.datasets.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `observability.projects.locations.buckets.datasets.views.get`

**GET** `v1/{+name}`

Get a view.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the view to retrieve. The format is: projects/[PROJECT_ID]/locations/[LOCATION]/buckets/[BUCKET_ID]... |

**Response**: `View`

```typescript
const res = await observability.views.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `observability.projects.locations.buckets.datasets.views.list`

**GET** `v1/{+parent}/views`

List views of a dataset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Dataset whose views are to be listed. The format is: projects/[PROJECT_ID]/locations/[LOCATION]/buckets/[BU... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of views to return. If unspecified, then at most 100 views are returned. The maximum val... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListViews` call. Provide this to retrieve the subsequent page. |

**Response**: `ListViewsResponse`

```typescript
const res = await observability.views.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `observability.projects.locations.buckets.datasets.links.list`

**GET** `v1/{+parent}/links`

List links of a dataset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent dataset that owns this collection of links. The format is: projects/[PROJECT_ID]/locations/[LOCA... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of links to return. If unspecified, then at most 100 links are returned. The maximum val... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListLinks` call. Provide this to retrieve the subsequent page. |

**Response**: `ListLinksResponse`

```typescript
const res = await observability.links.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `observability.projects.locations.buckets.datasets.links.create`

**POST** `v1/{+parent}/links`

Create a new link.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the containing dataset for this link. The format is: projects/[PROJECT_ID]/locations/[LOCATION]/buc... |
| `linkId` | `string` | query | No | Required. Id of the link to create. |

**Request body**: `Link`

**Response**: `Operation`

```typescript
const res = await observability.links.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `observability.projects.locations.buckets.datasets.links.get`

**GET** `v1/{+name}`

Get a link.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the link to retrieve. The format is: projects/[PROJECT_ID]/locations/[LOCATION]/buckets/[BUCKET_ID]... |

**Response**: `Link`

```typescript
const res = await observability.links.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `observability.projects.locations.buckets.datasets.links.patch`

**PATCH** `v1/{+name}`

Update a link.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Name of the link. The format is: projects/[PROJECT_ID]/locations/[LOCATION]/buckets/[BUCKET_ID]/datasets/... |
| `updateMask` | `string` | query | No | Optional. The list of fields to update. |

**Request body**: `Link`

**Response**: `Operation`

```typescript
const res = await observability.links.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `observability.projects.locations.buckets.datasets.links.delete`

**DELETE** `v1/{+name}`

Delete a link.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the link to delete. The format is: projects/[PROJECT_ID]/locations/[LOCATION]/buckets/[BUCKET_ID]/d... |

**Response**: `Operation`

```typescript
const res = await observability.links.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `observability.projects.locations.traceScopes.patch`

**PATCH** `v1/{+name}`

Update a TraceScope.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the trace scope. For example: projects/my-project/locations/global/traceScopes/my-tr... |
| `updateMask` | `string` | query | No | Optional. The list of fields to update. |

**Request body**: `TraceScope`

**Response**: `TraceScope`

```typescript
const res = await observability.traceScopes.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `observability.projects.locations.traceScopes.delete`

**DELETE** `v1/{+name}`

Delete a TraceScope.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The full resource name of the trace scope to delete: projects/[PROJECT_ID]/locations/[LOCATION_ID]/traceSco... |

**Response**: `Empty`

```typescript
const res = await observability.traceScopes.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `observability.projects.locations.traceScopes.get`

**GET** `v1/{+name}`

Get TraceScope resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the trace scope: projects/[PROJECT_ID]/locations/[LOCATION_ID]/traceScopes/[TRACE_SCOP... |

**Response**: `TraceScope`

```typescript
const res = await observability.traceScopes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `observability.projects.locations.traceScopes.list`

**GET** `v1/{+parent}/traceScopes`

List TraceScopes of a project in a particular location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The full resource name of the location to look for trace scopes: projects/[PROJECT_ID]/locations/[LOCATION_... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of... |
| `pageToken` | `string` | query | No | Optional. If present, then retrieve the next batch of results from the preceding call to this method. `page_token` mu... |

**Response**: `ListTraceScopesResponse`

```typescript
const res = await observability.traceScopes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `observability.projects.locations.traceScopes.create`

**POST** `v1/{+parent}/traceScopes`

Create a new TraceScope.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The full resource name of the location where the trace scope should be created projects/[PROJECT_ID]/locati... |
| `traceScopeId` | `string` | query | No | Required. A client-assigned identifier for the trace scope. |

**Request body**: `TraceScope`

**Response**: `TraceScope`

```typescript
const res = await observability.traceScopes.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `observability.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await observability.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `observability.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await observability.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `observability.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await observability.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `observability.projects.locations.operations.list`

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
const res = await observability.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `observability.projects.locations.scopes.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single Scope.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Name of the resource. The format is: projects/{project}/locations/{location}/scopes/{scope} The `{locatio... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the Scope resource by the update. The fields ... |

**Request body**: `Scope`

**Response**: `Scope`

```typescript
const res = await observability.scopes.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `observability.projects.locations.scopes.get`

**GET** `v1/{+name}`

Gets details of a single Scope.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. The format is: projects/{project}/locations/{location}/scopes/{scope} The `{location}... |

**Response**: `Scope`

```typescript
const res = await observability.scopes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `observability.folders.locations.getSettings`

**GET** `v1/{+name}`

Get Settings

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the settings to retrieve. Name format: "projects/[PROJECT_ID]/locations/[LOCATION]/settings" "folde... |

**Response**: `Settings`

```typescript
const res = await observability.locations.getSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `observability.folders.locations.updateSettings`

**PATCH** `v1/{+name}`

Update Settings

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the settings. |
| `updateMask` | `string` | query | No | Optional. The field mask specifying which fields of the settings are to be updated. |

**Request body**: `Settings`

**Response**: `Operation`

```typescript
const res = await observability.locations.updateSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `observability.folders.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await observability.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `observability.folders.locations.list`

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
const res = await observability.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `observability.folders.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await observability.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `observability.folders.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await observability.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `observability.folders.locations.operations.list`

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
const res = await observability.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `observability.folders.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await observability.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `observability.organizations.locations.getSettings`

**GET** `v1/{+name}`

Get Settings

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the settings to retrieve. Name format: "projects/[PROJECT_ID]/locations/[LOCATION]/settings" "folde... |

**Response**: `Settings`

```typescript
const res = await observability.locations.getSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `observability.organizations.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await observability.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `observability.organizations.locations.updateSettings`

**PATCH** `v1/{+name}`

Update Settings

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the settings. |
| `updateMask` | `string` | query | No | Optional. The field mask specifying which fields of the settings are to be updated. |

**Request body**: `Settings`

**Response**: `Operation`

```typescript
const res = await observability.locations.updateSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `observability.organizations.locations.list`

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
const res = await observability.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `observability.organizations.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await observability.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `observability.organizations.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await observability.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `observability.organizations.locations.operations.list`

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
const res = await observability.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `observability.organizations.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await observability.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `Bucket`

Bucket configuration for storing observability data.

| Property | Type | Description |
|----------|------|-------------|
| `cmekSettings` | `CmekSettings` | Optional. Settings for configuring CMEK on a bucket. |
| `createTime` | `string` | Output only. Create timestamp. |
| `deleteTime` | `string` | Output only. Delete timestamp. |
| `description` | `string` | Optional. Description of the bucket. |
| `displayName` | `string` | Optional. User friendly display name. |
| `name` | `string` | Identifier. Name of the bucket. The format is: projects/[PROJECT_ID]/locations/[LOCATION]/buckets... |
| `purgeTime` | `string` | Output only. Timestamp when the bucket in soft-deleted state is purged. |
| `updateTime` | `string` | Output only. Update timestamp. |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `CmekSettings`

Settings for configuring CMEK for a bucket.

| Property | Type | Description |
|----------|------|-------------|
| `kmsKey` | `string` | Optional. The resource name for the configured Cloud KMS key. The format is: projects/[PROJECT_ID... |
| `kmsKeyVersion` | `string` | Output only. The CryptoKeyVersion resource name for the configured Cloud KMS key. The format is: ... |
| `serviceAccountId` | `string` | Output only. The service account used to access the key. |

### `Dataset`

A dataset is a collection of data that has a specific configuration. A dataset can be backed by multiple tables. One bucket can have multiple datasets.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Create timestamp. |
| `deleteTime` | `string` | Output only. Delete timestamp. |
| `description` | `string` | Optional. Description of the dataset. |
| `displayName` | `string` | Optional. User friendly display name. |
| `name` | `string` | Identifier. Name of the dataset. The format is: projects/[PROJECT_ID]/locations/[LOCATION]/bucket... |
| `purgeTime` | `string` | Output only. Timestamp when the dataset in soft-deleted state is purged. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Link`

A link lets a dataset be accessible to BigQuery via usage of linked datasets.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Create timestamp. |
| `description` | `string` | Optional. Description of the link. |
| `displayName` | `string` | Optional. A user friendly display name. |
| `name` | `string` | Identifier. Name of the link. The format is: projects/[PROJECT_ID]/locations/[LOCATION]/buckets/[... |

### `ListBucketsResponse`

Response for listing buckets.

| Property | Type | Description |
|----------|------|-------------|
| `buckets` | `array<Bucket>` | Optional. The list of buckets. |
| `nextPageToken` | `string` | Optional. A token that can be sent as `page_token` to retrieve the next page. When this field is ... |

### `ListDatasetsResponse`

Response for listing datasets.

| Property | Type | Description |
|----------|------|-------------|
| `datasets` | `array<Dataset>` | The list of datasets. |
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page. When this field is omitted, t... |

### `ListLinksResponse`

Response for listing links.

| Property | Type | Description |
|----------|------|-------------|
| `links` | `array<Link>` | The list of links. |
| `nextPageToken` | `string` | Optional. A token that can be sent as `page_token` to retrieve the next page. When this field is ... |

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

### `ListTraceScopesResponse`

Response for listing TraceScopes.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Optional. If there might be more results than appear in this response, then `next_page_token` is ... |
| `traceScopes` | `array<TraceScope>` | Optional. A list of trace scopes. |

### `ListViewsResponse`

Response for listing views.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Optional. A token that can be sent as `page_token` to retrieve the next page. When this field is ... |
| `views` | `array<View>` | The list of views. |

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

### `Scope`

Message describing Scope object

| Property | Type | Description |
|----------|------|-------------|
| `logScope` | `string` | Required. The full resource name of the `LogScope`. For example: //logging.googleapis.com/project... |
| `name` | `string` | Identifier. Name of the resource. The format is: projects/{project}/locations/{location}/scopes/{... |
| `traceScope` | `string` | Required. The resource name of the `TraceScope`. For example: projects/myproject/locations/global... |
| `updateTime` | `string` | Output only. Update timestamp. Note: The Update timestamp for the default scope is initially unset. |

### `Settings`

Describes the settings associated with a project, organization, or folder.

| Property | Type | Description |
|----------|------|-------------|
| `defaultStorageLocation` | `string` | Optional. The location which should be used when any regional resources are provisioned by Google... |
| `kmsKeyName` | `string` | Optional. The resource name for the configured Cloud KMS key. KMS key name format: "projects/[PRO... |
| `name` | `string` | Identifier. The resource name of the settings. |
| `serviceAccountId` | `string` | Output only. The service account for the given resource container, such as project or folder. Thi... |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `TraceScope`

A trace scope is a collection of resources whose traces are queried together.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The creation timestamp of the trace scope. |
| `description` | `string` | Optional. Describes this trace scope. The maximum length of the description is 8000 characters. |
| `name` | `string` | Identifier. The resource name of the trace scope. For example: projects/my-project/locations/glob... |
| `resourceNames` | `array<string>` | Required. Names of the projects that are included in this trace scope. * `projects/[PROJECT_ID]` ... |
| `updateTime` | `string` | Output only. The last update timestamp of the trace scope. |

### `View`

A view corresponds to a read-only representation of a subset of the data in a dataset.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Create timestamp. |
| `description` | `string` | Optional. Description of the view. |
| `displayName` | `string` | Optional. User friendly display name. |
| `name` | `string` | Identifier. Name of the view. The format is: projects/[PROJECT_ID]/locations/[LOCATION]/buckets/[... |
| `updateTime` | `string` | Output only. Update timestamp. |

