# API Management API - API Reference

**Version**: `v1alpha` | **Methods**: 23 | **Schemas**: 32

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `apim.projects.locations.getEntitlement` | GET | `v1alpha/{+name}` | GetEntitlement returns the entitlement for the provided project. |
| `apim.projects.locations.list` | GET | `v1alpha/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `apim.projects.locations.listApiObservationTags` | GET | `v1alpha/{+parent}:listApiObservationTags` | ListApiObservationTags lists all extant tags on any observation in the given project. |
| `apim.projects.locations.get` | GET | `v1alpha/{+name}` | Gets information about a location. |
| `apim.projects.locations.observationJobs.list` | GET | `v1alpha/{+parent}/observationJobs` | ListObservationJobs gets all ObservationJobs for a given project and location. |
| `apim.projects.locations.observationJobs.delete` | DELETE | `v1alpha/{+name}` | DeleteObservationJob deletes an ObservationJob. This method will fail if the observation job is c... |
| `apim.projects.locations.observationJobs.create` | POST | `v1alpha/{+parent}/observationJobs` | CreateObservationJob creates a new ObservationJob but does not have any effecton its own. It is a... |
| `apim.projects.locations.observationJobs.enable` | POST | `v1alpha/{+name}:enable` | Enables the given ObservationJob. |
| `apim.projects.locations.observationJobs.disable` | POST | `v1alpha/{+name}:disable` | Disables the given ObservationJob. |
| `apim.projects.locations.observationJobs.get` | GET | `v1alpha/{+name}` | GetObservationJob retrieves a single ObservationJob by name. |
| `apim.projects.locations.observationJobs.apiObservations.batchEditTags` | POST | `v1alpha/{+parent}/apiObservations:batchEditTags` | BatchEditTagsApiObservations adds or removes Tags for ApiObservations. |
| `apim.projects.locations.observationJobs.apiObservations.list` | GET | `v1alpha/{+parent}/apiObservations` | ListApiObservations gets all ApiObservations for a given project and location and ObservationJob. |
| `apim.projects.locations.observationJobs.apiObservations.get` | GET | `v1alpha/{+name}` | GetApiObservation retrieves a single ApiObservation by name. |
| `apim.projects.locations.observationJobs.apiObservations.apiOperations.get` | GET | `v1alpha/{+name}` | GetApiOperation retrieves a single ApiOperation by name. |
| `apim.projects.locations.observationJobs.apiObservations.apiOperations.list` | GET | `v1alpha/{+parent}/apiOperations` | ListApiOperations gets all ApiOperations for a given project and location and ObservationJob and ... |
| `apim.projects.locations.operations.delete` | DELETE | `v1alpha/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `apim.projects.locations.operations.list` | GET | `v1alpha/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `apim.projects.locations.operations.get` | GET | `v1alpha/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `apim.projects.locations.operations.cancel` | POST | `v1alpha/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `apim.projects.locations.observationSources.delete` | DELETE | `v1alpha/{+name}` | DeleteObservationSource deletes an observation source. This method will fail if the observation s... |
| `apim.projects.locations.observationSources.get` | GET | `v1alpha/{+name}` | GetObservationSource retrieves a single ObservationSource by name. |
| `apim.projects.locations.observationSources.create` | POST | `v1alpha/{+parent}/observationSources` | CreateObservationSource creates a new ObservationSource but does not affect any deployed infrastr... |
| `apim.projects.locations.observationSources.list` | GET | `v1alpha/{+parent}/observationSources` | ListObservationSources gets all ObservationSources for a given project and location. |

### `apim.projects.locations.getEntitlement`

**GET** `v1alpha/{+name}`

GetEntitlement returns the entitlement for the provided project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The entitlement resource name Format: projects/{project}/locations/{location}/entitlement |

**Response**: `Entitlement`

```typescript
const res = await apim.locations.getEntitlement({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apim.projects.locations.list`

**GET** `v1alpha/{+name}/locations`

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
const res = await apim.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apim.projects.locations.listApiObservationTags`

**GET** `v1alpha/{+parent}:listApiObservationTags`

ListApiObservationTags lists all extant tags on any observation in the given project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of tags. Format: projects/{project}/locations/{location} |
| `pageSize` | `integer` | query | No | Optional. The maximum number of tags to return. The service may return fewer than this value. If unspecified, at most... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListApiObservationTags` call. Provide this to retrieve the subseque... |

**Response**: `ListApiObservationTagsResponse`

```typescript
const res = await apim.locations.listApiObservationTags({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apim.projects.locations.get`

**GET** `v1alpha/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await apim.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apim.projects.locations.observationJobs.list`

**GET** `v1alpha/{+parent}/observationJobs`

ListObservationJobs gets all ObservationJobs for a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of ObservationJobs. Format: projects/{project}/locations/{location} |
| `pageSize` | `integer` | query | No | Optional. The maximum number of ObservationJobs to return. The service may return fewer than this value. If unspecifi... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListObservationJobs` call. Provide this to retrieve the subsequent ... |

**Response**: `ListObservationJobsResponse`

```typescript
const res = await apim.observationJobs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apim.projects.locations.observationJobs.delete`

**DELETE** `v1alpha/{+name}`

DeleteObservationJob deletes an ObservationJob. This method will fail if the observation job is currently being used by any ObservationSource, even if not enabled.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource Format: projects/{project}/locations/{location}/observationJobs/{observation_job} |

**Response**: `Operation`

```typescript
const res = await apim.observationJobs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apim.projects.locations.observationJobs.create`

**POST** `v1alpha/{+parent}/observationJobs`

CreateObservationJob creates a new ObservationJob but does not have any effecton its own. It is a configuration that can be used in an Observation Job to collect data about existing APIs.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this ObservationJob will be created. Format: projects/{project}/locations/{location} |
| `observationJobId` | `string` | query | No | Required. The ID to use for the Observation Job. This value should be 4-63 characters, and valid characters are /a-z-/. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `ObservationJob`

**Response**: `Operation`

```typescript
const res = await apim.observationJobs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apim.projects.locations.observationJobs.enable`

**POST** `v1alpha/{+name}:enable`

Enables the given ObservationJob.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the ObservationJob to enable. Format: projects/{project}/locations/{location}/observationJobs/{... |

**Request body**: `EnableObservationJobRequest`

**Response**: `Operation`

```typescript
const res = await apim.observationJobs.enable({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apim.projects.locations.observationJobs.disable`

**POST** `v1alpha/{+name}:disable`

Disables the given ObservationJob.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the ObservationJob to disable. Format: projects/{project}/locations/{location}/observationJobs/... |

**Request body**: `DisableObservationJobRequest`

**Response**: `Operation`

```typescript
const res = await apim.observationJobs.disable({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apim.projects.locations.observationJobs.get`

**GET** `v1alpha/{+name}`

GetObservationJob retrieves a single ObservationJob by name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the ObservationJob to retrieve. Format: projects/{project}/locations/{location}/observationJobs... |

**Response**: `ObservationJob`

```typescript
const res = await apim.observationJobs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apim.projects.locations.observationJobs.apiObservations.batchEditTags`

**POST** `v1alpha/{+parent}/apiObservations:batchEditTags`

BatchEditTagsApiObservations adds or removes Tags for ApiObservations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource shared by all ApiObservations being edited. Format: projects/{project}/locations/{locat... |

**Request body**: `BatchEditTagsApiObservationsRequest`

**Response**: `BatchEditTagsApiObservationsResponse`

```typescript
const res = await apim.apiObservations.batchEditTags({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apim.projects.locations.observationJobs.apiObservations.list`

**GET** `v1alpha/{+parent}/apiObservations`

ListApiObservations gets all ApiObservations for a given project and location and ObservationJob.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of ApiObservations. Format: projects/{project}/locations/{location}/... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of ApiObservations to return. The service may return fewer than this value. If unspecifi... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListApiObservations` call. Provide this to retrieve the subsequent ... |

**Response**: `ListApiObservationsResponse`

```typescript
const res = await apim.apiObservations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apim.projects.locations.observationJobs.apiObservations.get`

**GET** `v1alpha/{+name}`

GetApiObservation retrieves a single ApiObservation by name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the ApiObservation to retrieve. Format: projects/{project}/locations/{location}/observationJobs... |

**Response**: `ApiObservation`

```typescript
const res = await apim.apiObservations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apim.projects.locations.observationJobs.apiObservations.apiOperations.get`

**GET** `v1alpha/{+name}`

GetApiOperation retrieves a single ApiOperation by name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the ApiOperation to retrieve. Format: projects/{project}/locations/{location}/observationJobs/{... |

**Response**: `ApiOperation`

```typescript
const res = await apim.apiOperations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apim.projects.locations.observationJobs.apiObservations.apiOperations.list`

**GET** `v1alpha/{+parent}/apiOperations`

ListApiOperations gets all ApiOperations for a given project and location and ObservationJob and ApiObservation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of ApiOperations. Format: projects/{project}/locations/{location}/ob... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of ApiOperations to return. The service may return fewer than this value. If unspecified... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListApiApiOperations` call. Provide this to retrieve the subsequent... |

**Response**: `ListApiOperationsResponse`

```typescript
const res = await apim.apiOperations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apim.projects.locations.operations.delete`

**DELETE** `v1alpha/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await apim.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apim.projects.locations.operations.list`

**GET** `v1alpha/{+name}/operations`

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
const res = await apim.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apim.projects.locations.operations.get`

**GET** `v1alpha/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await apim.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apim.projects.locations.operations.cancel`

**POST** `v1alpha/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await apim.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apim.projects.locations.observationSources.delete`

**DELETE** `v1alpha/{+name}`

DeleteObservationSource deletes an observation source. This method will fail if the observation source is currently being used by any ObservationJob, even if not enabled.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource Format: projects/{project}/locations/{location}/observationSources/{source} |

**Response**: `Operation`

```typescript
const res = await apim.observationSources.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apim.projects.locations.observationSources.get`

**GET** `v1alpha/{+name}`

GetObservationSource retrieves a single ObservationSource by name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the ObservationSource to retrieve. Format: projects/{project}/locations/{location}/observationS... |

**Response**: `ObservationSource`

```typescript
const res = await apim.observationSources.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apim.projects.locations.observationSources.create`

**POST** `v1alpha/{+parent}/observationSources`

CreateObservationSource creates a new ObservationSource but does not affect any deployed infrastructure. It is a configuration that can be used in an Observation Job to collect data about APIs running in user's dataplane.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Value for parent. |
| `observationSourceId` | `string` | query | No | Required. The ID to use for the Observation Source. This value should be 4-63 characters, and valid characters are /a... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `ObservationSource`

**Response**: `Operation`

```typescript
const res = await apim.observationSources.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apim.projects.locations.observationSources.list`

**GET** `v1alpha/{+parent}/observationSources`

ListObservationSources gets all ObservationSources for a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of ObservationSources. Format: projects/{project}/locations/{location} |
| `pageSize` | `integer` | query | No | Optional. The maximum number of ObservationSources to return. The service may return fewer than this value. If unspec... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListObservationSources` call. Provide this to retrieve the subseque... |

**Response**: `ListObservationSourcesResponse`

```typescript
const res = await apim.observationSources.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `ApiObservation`

Message describing ApiObservation object

| Property | Type | Description |
|----------|------|-------------|
| `apiOperationCount` | `string` | The number of observed API Operations. |
| `createTime` | `string` | Create time stamp |
| `hostname` | `string` | The hostname of requests processed for this Observation. |
| `lastEventDetectedTime` | `string` | Last event detected time stamp |
| `name` | `string` | Identifier. Name of resource |
| `serverIps` | `array<string>` | The IP address (IPv4 or IPv6) of the origin server that the request was sent to. This field can i... |
| `sourceLocations` | `array<string>` | Location of the Observation Source, for example "us-central1" or "europe-west1." |
| `style` | `string` | Style of ApiObservation |
| `tags` | `array<string>` | User-defined tags to organize and sort |
| `updateTime` | `string` | Update time stamp |

### `ApiOperation`

Message describing ApiOperation object

| Property | Type | Description |
|----------|------|-------------|
| `count` | `string` | The number of occurrences of this API Operation. |
| `firstSeenTime` | `string` | First seen time stamp |
| `httpOperation` | `HttpOperation` | An HTTP Operation. |
| `lastSeenTime` | `string` | Last seen time stamp |
| `name` | `string` | Identifier. Name of resource |

### `BatchEditTagsApiObservationsRequest`

Message for requesting batch edit tags for ApiObservations

| Property | Type | Description |
|----------|------|-------------|
| `requests` | `array<EditTagsApiObservationsRequest>` | Required. The request message specifying the resources to update. A maximum of 1000 apiObservatio... |

### `BatchEditTagsApiObservationsResponse`

Message for response to edit Tags for ApiObservations

| Property | Type | Description |
|----------|------|-------------|
| `apiObservations` | `array<ApiObservation>` | ApiObservations that were changed |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `DisableObservationJobRequest`

Message for disabling an ObservationJob

### `EditTagsApiObservationsRequest`

Message for requesting edit tags for ApiObservation

| Property | Type | Description |
|----------|------|-------------|
| `apiObservationId` | `string` | Required. Identifier of ApiObservation need to be edit tags Format example: "apigee.googleapis.co... |
| `tagActions` | `array<TagAction>` | Required. Tag actions to be applied |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `EnableObservationJobRequest`

Message for enabling an ObservationJob

### `Entitlement`

Entitlement stores data related to API Observation entitlement for a given project

| Property | Type | Description |
|----------|------|-------------|
| `apiObservationEntitled` | `boolean` | Whether API Observation is entitled. |
| `billingProjectNumber` | `string` | Project number of associated billing project that has Apigee and Advanced API Security entitled. |
| `createTime` | `string` | Output only. The time of the entitlement creation. |
| `name` | `string` | Identifier. The entitlement resource name `projects/{project}/locations/{location}/entitlement` |
| `updateTime` | `string` | Output only. The time of the entitlement update. |

### `GclbObservationSource`

The GCLB observation source.

| Property | Type | Description |
|----------|------|-------------|
| `pscNetworkConfigs` | `array<GclbObservationSourcePscNetworkConfig>` | Required. The VPC networks where traffic will be observed. All load balancers within this network... |

### `GclbObservationSourcePscNetworkConfig`

Network information for setting up a PSC connection.

| Property | Type | Description |
|----------|------|-------------|
| `network` | `string` | Required. The VPC network. Format: `projects/{project_id}/global/networks/{network}` |
| `subnetwork` | `string` | Required. The subnetwork in the source region that will be used to connect to the Cloud Load Bala... |

### `HttpOperation`

An HTTP-based API Operation, sometimes called a "REST" Operation.

| Property | Type | Description |
|----------|------|-------------|
| `method` | `string` | HTTP Method. |
| `path` | `string` | Path of the HTTP request. |
| `pathParams` | `array<HttpOperationPathParam>` | Path params of HttpOperation |
| `queryParams` | `object` | Query params of HttpOperation |
| `request` | `HttpOperationHttpRequest` | Request metadata. |
| `response` | `HttpOperationHttpResponse` | Response metadata. |

### `HttpOperationHeader`

An aggregation of HTTP header occurrences.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `string` | The number of occurrences of this Header across transactions. |
| `dataType` | `string` | Data type of header |
| `name` | `string` | Header name. |

### `HttpOperationHttpRequest`

An aggregation of HTTP requests.

| Property | Type | Description |
|----------|------|-------------|
| `headers` | `object` | Unordered map from header name to header metadata |

### `HttpOperationHttpResponse`

An aggregation of HTTP responses.

| Property | Type | Description |
|----------|------|-------------|
| `headers` | `object` | Unordered map from header name to header metadata |
| `responseCodes` | `object` | Map of status code to observed count |

### `HttpOperationPathParam`

HTTP Path parameter.

| Property | Type | Description |
|----------|------|-------------|
| `dataType` | `string` | Data type of path param |
| `position` | `integer` | Segment location in the path, 1-indexed |

### `HttpOperationQueryParam`

An aggregation of HTTP query parameter occurrences.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `string` | The number of occurrences of this query parameter across transactions. |
| `dataType` | `string` | Data type of path param |
| `name` | `string` | Name of query param |

### `ListApiObservationTagsResponse`

Message for response to listing tags

| Property | Type | Description |
|----------|------|-------------|
| `apiObservationTags` | `array<string>` | The tags from the specified project |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `ListApiObservationsResponse`

Message for response to listing ApiObservations

| Property | Type | Description |
|----------|------|-------------|
| `apiObservations` | `array<ApiObservation>` | The ApiObservation from the specified project and location and ObservationJobs. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `ListApiOperationsResponse`

Message for response to listing ApiOperations

| Property | Type | Description |
|----------|------|-------------|
| `apiOperations` | `array<ApiOperation>` | The ApiOperations from the specified project and location and ObservationJob and ApiObservation. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `ListLocationsResponse`

The response message for Locations.ListLocations.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<Location>` | A list of locations that matches the specified filter in the request. |
| `nextPageToken` | `string` | The standard List next-page token. |

### `ListObservationJobsResponse`

Message for response to listing ObservationJobs

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `observationJobs` | `array<ObservationJob>` | The ObservationJob from the specified project and location. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListObservationSourcesResponse`

Message for response to listing ObservationSources

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `observationSources` | `array<ObservationSource>` | The ObservationSource from the specified project and location. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

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

### `ObservationJob`

Message describing ObservationJob object

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. [Output only] Create time stamp |
| `name` | `string` | Identifier. name of resource Format: projects/{project}/locations/{location}/observationJobs/{obs... |
| `sources` | `array<string>` | Optional. These should be of the same kind of source. |
| `state` | `string` | Output only. The observation job state |
| `updateTime` | `string` | Output only. [Output only] Update time stamp |

### `ObservationSource`

Observation source configuration types

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. [Output only] Create time stamp |
| `gclbObservationSource` | `GclbObservationSource` | The GCLB observation source |
| `name` | `string` | Identifier. name of resource For MVP, each region can only have 1 source. |
| `state` | `string` | Output only. The observation source state |
| `updateTime` | `string` | Output only. [Output only] Update time stamp |

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

### `TagAction`

Message for edit tag action

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` | Required. Action to be applied |
| `tag` | `string` | Required. Tag to be added or removed |

