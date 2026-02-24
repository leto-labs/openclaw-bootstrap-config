# Workload Manager API - API Reference

**Version**: `v1` | **Methods**: 31 | **Schemas**: 98

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `workloadmanager.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `workloadmanager.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `workloadmanager.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `workloadmanager.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `workloadmanager.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `workloadmanager.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `workloadmanager.projects.locations.evaluations.create` | POST | `v1/{+parent}/evaluations` | Creates a new Evaluation in a given project and location. |
| `workloadmanager.projects.locations.evaluations.delete` | DELETE | `v1/{+name}` | Deletes a single Evaluation. |
| `workloadmanager.projects.locations.evaluations.get` | GET | `v1/{+name}` | Gets details of a single Evaluation. |
| `workloadmanager.projects.locations.evaluations.list` | GET | `v1/{+parent}/evaluations` | Lists Evaluations in a given project and location. |
| `workloadmanager.projects.locations.evaluations.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single Evaluation. |
| `workloadmanager.projects.locations.evaluations.executions.run` | POST | `v1/{+name}/executions:run` | Creates a new Execution in a given project and location. |
| `workloadmanager.projects.locations.evaluations.executions.get` | GET | `v1/{+name}` | Gets details of a single Execution. |
| `workloadmanager.projects.locations.evaluations.executions.delete` | DELETE | `v1/{+name}` | Deletes a single Execution. |
| `workloadmanager.projects.locations.evaluations.executions.list` | GET | `v1/{+parent}/executions` | Lists Executions in a given project and location. |
| `workloadmanager.projects.locations.evaluations.executions.results.list` | GET | `v1/{+parent}/results` | Lists the result of a single evaluation. |
| `workloadmanager.projects.locations.evaluations.executions.scannedResources.list` | GET | `v1/{+parent}/scannedResources` | List all scanned resources for a single Execution. |
| `workloadmanager.projects.locations.discoveredprofiles.list` | GET | `v1/{+parent}/discoveredprofiles` | List discovered workload profiles |
| `workloadmanager.projects.locations.discoveredprofiles.get` | GET | `v1/{+name}` | Gets details of a discovered workload profile. |
| `workloadmanager.projects.locations.discoveredprofiles.health.get` | GET | `v1/{+name}` | Get the health of a discovered workload profile. |
| `workloadmanager.projects.locations.deployments.list` | GET | `v1/{+parent}/deployments` | Lists Deployments in a given project and location. |
| `workloadmanager.projects.locations.deployments.get` | GET | `v1/{+name}` | Gets details of a single Deployment. |
| `workloadmanager.projects.locations.deployments.delete` | DELETE | `v1/{+name}` | Deletes a single Deployment. |
| `workloadmanager.projects.locations.deployments.create` | POST | `v1/{+parent}/deployments` | Creates a new Deployment in a given project and location. |
| `workloadmanager.projects.locations.deployments.actuations.get` | GET | `v1/{+name}` | Gets details of a single Actuation. |
| `workloadmanager.projects.locations.deployments.actuations.delete` | DELETE | `v1/{+name}` | Deletes a single Actuation |
| `workloadmanager.projects.locations.deployments.actuations.create` | POST | `v1/{+parent}/actuations` | Creates a new actuation for an existing Deployment. |
| `workloadmanager.projects.locations.deployments.actuations.list` | GET | `v1/{+parent}/actuations` | Lists Actuations in a given project, location and deployment. |
| `workloadmanager.projects.locations.rules.list` | GET | `v1/{+parent}/rules` | Lists rules in a given project. |
| `workloadmanager.projects.locations.insights.writeInsight` | POST | `v1/{+location}/insights:writeInsight` | Write the data insights to workload manager data warehouse. |
| `workloadmanager.projects.locations.insights.delete` | DELETE | `v1/{+name}` | Delete the data insights from workload manager data warehouse. |

### `workloadmanager.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await workloadmanager.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workloadmanager.projects.locations.list`

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
const res = await workloadmanager.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workloadmanager.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await workloadmanager.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workloadmanager.projects.locations.operations.list`

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
const res = await workloadmanager.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workloadmanager.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await workloadmanager.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workloadmanager.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await workloadmanager.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workloadmanager.projects.locations.evaluations.create`

**POST** `v1/{+parent}/evaluations`

Creates a new Evaluation in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource prefix of the evaluation location using the form: `projects/{project_id}/locations/{location_id}` |
| `evaluationId` | `string` | query | No | Required. Id of the requesting object |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `Evaluation`

**Response**: `Operation`

```typescript
const res = await workloadmanager.evaluations.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workloadmanager.projects.locations.evaluations.delete`

**DELETE** `v1/{+name}`

Deletes a single Evaluation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource |
| `force` | `boolean` | query | No | Optional. Followed the best practice from https://aip.dev/135#cascading-delete |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `Operation`

```typescript
const res = await workloadmanager.evaluations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workloadmanager.projects.locations.evaluations.get`

**GET** `v1/{+name}`

Gets details of a single Evaluation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource |

**Response**: `Evaluation`

```typescript
const res = await workloadmanager.evaluations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workloadmanager.projects.locations.evaluations.list`

**GET** `v1/{+parent}/evaluations`

Lists Evaluations in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for ListEvaluationsRequest |
| `filter` | `string` | query | No | Filter to be applied when listing the evaluation results. |
| `orderBy` | `string` | query | No | Hint for how to order the results |
| `pageSize` | `integer` | query | No | Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appropriate de... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. |

**Response**: `ListEvaluationsResponse`

```typescript
const res = await workloadmanager.evaluations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workloadmanager.projects.locations.evaluations.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single Evaluation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | name of resource names have the form 'projects/{project_id}/locations/{location_id}/evaluations/{evaluation_id}' |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the Evaluation resource by the update. The fi... |

**Request body**: `Evaluation`

**Response**: `Operation`

```typescript
const res = await workloadmanager.evaluations.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workloadmanager.projects.locations.evaluations.executions.run`

**POST** `v1/{+name}/executions:run`

Creates a new Execution in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Execution using the form: 'projects/{project}/locations/{location}/evaluations/{ev... |

**Request body**: `RunEvaluationRequest`

**Response**: `Operation`

```typescript
const res = await workloadmanager.executions.run({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workloadmanager.projects.locations.evaluations.executions.get`

**GET** `v1/{+name}`

Gets details of a single Execution.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource |

**Response**: `Execution`

```typescript
const res = await workloadmanager.executions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workloadmanager.projects.locations.evaluations.executions.delete`

**DELETE** `v1/{+name}`

Deletes a single Execution.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `Operation`

```typescript
const res = await workloadmanager.executions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workloadmanager.projects.locations.evaluations.executions.list`

**GET** `v1/{+parent}/executions`

Lists Executions in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource prefix of the Execution using the form: 'projects/{project}/locations/{location}/evaluations/{... |
| `filter` | `string` | query | No | Filtering results |
| `orderBy` | `string` | query | No | Field to sort by. See https://google.aip.dev/132#ordering for more details. |
| `pageSize` | `integer` | query | No | Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appropriate de... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. |

**Response**: `ListExecutionsResponse`

```typescript
const res = await workloadmanager.executions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workloadmanager.projects.locations.evaluations.executions.results.list`

**GET** `v1/{+parent}/results`

Lists the result of a single evaluation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The execution results. Format: {parent}/evaluations/*/executions/*/results |
| `filter` | `string` | query | No | Filtering results |
| `pageSize` | `integer` | query | No | Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appropriate de... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. |

**Response**: `ListExecutionResultsResponse`

```typescript
const res = await workloadmanager.results.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workloadmanager.projects.locations.evaluations.executions.scannedResources.list`

**GET** `v1/{+parent}/scannedResources`

List all scanned resources for a single Execution.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. parent for ListScannedResourcesRequest |
| `filter` | `string` | query | No | Filtering results |
| `orderBy` | `string` | query | No | Field to sort by. See https://google.aip.dev/132#ordering for more details. |
| `pageSize` | `integer` | query | No | Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appropriate de... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. |
| `rule` | `string` | query | No | rule name |

**Response**: `ListScannedResourcesResponse`

```typescript
const res = await workloadmanager.scannedResources.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workloadmanager.projects.locations.discoveredprofiles.list`

**GET** `v1/{+parent}/discoveredprofiles`

List discovered workload profiles

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for ListDiscoveredProfilesRequest |
| `filter` | `string` | query | No | Optional. Filtering results |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListDiscoveredProfilesResponse`

```typescript
const res = await workloadmanager.discoveredprofiles.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workloadmanager.projects.locations.discoveredprofiles.get`

**GET** `v1/{+name}`

Gets details of a discovered workload profile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource |

**Response**: `WorkloadProfile`

```typescript
const res = await workloadmanager.discoveredprofiles.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workloadmanager.projects.locations.discoveredprofiles.health.get`

**GET** `v1/{+name}`

Get the health of a discovered workload profile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name |

**Response**: `WorkloadProfileHealth`

```typescript
const res = await workloadmanager.health.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workloadmanager.projects.locations.deployments.list`

**GET** `v1/{+parent}/deployments`

Lists Deployments in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource prefix of the Deployment using the form: `projects/{project_id}/locations/{location_id}` |
| `filter` | `string` | query | No | Optional. Filter resource follow https://google.aip.dev/160 |
| `orderBy` | `string` | query | No | Optional. Field to sort by. See https://google.aip.dev/132#ordering for more details. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. The maximum value is 1000; values above ... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListDeploymentsResponse`

```typescript
const res = await workloadmanager.deployments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workloadmanager.projects.locations.deployments.get`

**GET** `v1/{+name}`

Gets details of a single Deployment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. The format will be 'projects/{project_id}/locations/{location_id}/deployments/{deploy... |

**Response**: `Deployment`

```typescript
const res = await workloadmanager.deployments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workloadmanager.projects.locations.deployments.delete`

**DELETE** `v1/{+name}`

Deletes a single Deployment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource |
| `force` | `boolean` | query | No | Optional. If set to true, any actuation will also be deleted. Followed the best practice from https://aip.dev/135#cas... |

**Response**: `Operation`

```typescript
const res = await workloadmanager.deployments.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workloadmanager.projects.locations.deployments.create`

**POST** `v1/{+parent}/deployments`

Creates a new Deployment in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource prefix of the Deployment using the form: `projects/{project_id}/locations/{location_id}` |
| `deploymentId` | `string` | query | No | Required. Id of the deployment |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `Deployment`

**Response**: `Operation`

```typescript
const res = await workloadmanager.deployments.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workloadmanager.projects.locations.deployments.actuations.get`

**GET** `v1/{+name}`

Gets details of a single Actuation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource |

**Response**: `Actuation`

```typescript
const res = await workloadmanager.actuations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workloadmanager.projects.locations.deployments.actuations.delete`

**DELETE** `v1/{+name}`

Deletes a single Actuation

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the book to delete. project/{project_id}/locations/{location_id}/deployments/{deployment_id}/ac... |

**Response**: `Operation`

```typescript
const res = await workloadmanager.actuations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workloadmanager.projects.locations.deployments.actuations.create`

**POST** `v1/{+parent}/actuations`

Creates a new actuation for an existing Deployment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the Actuation location using the form: 'projects/{project_id}/locations/{location}/dep... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `Actuation`

**Response**: `Operation`

```typescript
const res = await workloadmanager.actuations.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workloadmanager.projects.locations.deployments.actuations.list`

**GET** `v1/{+parent}/actuations`

Lists Actuations in a given project, location and deployment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource prefix of the Actuation using the form: 'projects/{project_id}/locations/{location}/deployment... |
| `filter` | `string` | query | No | Optional. Filtering results |
| `orderBy` | `string` | query | No | Optional. Field to sort by. See https://google.aip.dev/132#ordering for more details. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListActuationsResponse`

```typescript
const res = await workloadmanager.actuations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workloadmanager.projects.locations.rules.list`

**GET** `v1/{+parent}/rules`

Lists rules in a given project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The [project] on which to execute the request. The format is: projects/{project_id}/locations/{location} Cu... |
| `customRulesBucket` | `string` | query | No | The Cloud Storage bucket name for custom rules. |
| `evaluationType` | `string` | query | No | Optional. The evaluation type of the rules will be applied to. The Cloud Storage bucket name for custom rules. |
| `filter` | `string` | query | No | Filter based on primary_category, secondary_category |
| `pageSize` | `integer` | query | No | Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appropriate de... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. |

**Response**: `ListRulesResponse`

```typescript
const res = await workloadmanager.rules.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workloadmanager.projects.locations.insights.writeInsight`

**POST** `v1/{+location}/insights:writeInsight`

Write the data insights to workload manager data warehouse.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `location` | `string` | path | Yes | Required. The GCP location. The format is: projects/{project}/locations/{location}. |

**Request body**: `WriteInsightRequest`

**Response**: `WriteInsightResponse`

```typescript
const res = await workloadmanager.insights.writeInsight({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workloadmanager.projects.locations.insights.delete`

**DELETE** `v1/{+name}`

Delete the data insights from workload manager data warehouse.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The system id of the SAP system resource to delete. Formatted as projects/{project}/locations/{location}/sa... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `Empty`

```typescript
const res = await workloadmanager.insights.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `ActiveDirectory`

Active directory details

| Property | Type | Description |
|----------|------|-------------|
| `dnsAddress` | `string` | Optional. DNS IP address |
| `domain` | `string` | Optional. human readable form of a domain such as “google.com”. |
| `domainUsername` | `string` | Optional. domain username |
| `secretManagerSecret` | `string` | Required. secret_manager_secret |
| `type` | `string` | Required. active directory type |

### `Actuation`

The Actuation object represents the bootstrap state and output results of deployed infrastructure and software.

| Property | Type | Description |
|----------|------|-------------|
| `actuationOutput` | `ActuationOutput` | Output only. [Output only] Actuation output |
| `deploymentOutput` | `array<DeploymentOutput>` | Output only. [Output only] Deployment output |
| `endTime` | `string` | Output only. [Output only] End time stamp |
| `name` | `string` | The name of actuation resource. The format is projects/{project}/locations/{location}/deployments... |
| `startTime` | `string` | Output only. [Output only] Start time stamp |
| `state` | `string` | Output only. [Output only] Actuation state |

### `ActuationOutput`

Message for output of Actuation

| Property | Type | Description |
|----------|------|-------------|
| `actuateLogs` | `string` | A link to gcs file that store build logs |
| `ansibleError` | `string` | Output only. error message return from ansible. |
| `ansibleFailedTask` | `array<string>` | Output only. failed task name return from ansible. |
| `blueprintId` | `string` | reference to Blueprint Controller deployment and revision resource |
| `cloudbuildId` | `string` | Cloud Build instance UUID associated with this revision, without any suffix or prefix |
| `errorCode` | `string` | Output only. Code describing any errors that may have occurred. If not specified, there is no err... |
| `errorLogs` | `string` | A link to actuation cloud build log. |
| `hasUserFacingErrorMsg` | `boolean` | Output only. whether the error message is user facing. If true, the error message will be shown i... |
| `terraformError` | `string` | Output only. error message return from terraform. |
| `terraformTemplate` | `string` | reference to terraform template used |

### `AgentCommand`

* An AgentCommand specifies a one-time executable program for the agent to run.

| Property | Type | Description |
|----------|------|-------------|
| `command` | `string` | command is the name of the agent one-time executable that will be invoked. |
| `parameters` | `object` | parameters is a map of key/value pairs that can be used to specify additional one-time executable... |

### `AgentStates`

Agent status.

| Property | Type | Description |
|----------|------|-------------|
| `availableVersion` | `string` | Optional. The available version of the agent in artifact registry. |
| `hanaMonitoring` | `ServiceStates` | Optional. HANA monitoring metrics of the agent. |
| `installedVersion` | `string` | Optional. The installed version of the agent on the host. |
| `isFullyEnabled` | `boolean` | Optional. Whether the agent is fully enabled. If false, the agent is has some issues. |
| `processMetrics` | `ServiceStates` | Optional. The Process metrics of the agent. |
| `systemDiscovery` | `ServiceStates` | Optional. The System discovery metrics of the agent. |

### `AgentStatus`

The schema of agent status data.

| Property | Type | Description |
|----------|------|-------------|
| `agentName` | `string` | Output only. The name of the agent. |
| `availableVersion` | `string` | Output only. The available version of the agent in artifact registry. |
| `cloudApiAccessFullScopesGranted` | `string` | Output only. Whether the agent has full access to Cloud APIs. |
| `configurationErrorMessage` | `string` | Output only. The error message for the agent configuration if invalid. |
| `configurationFilePath` | `string` | Output only. The path to the agent configuration file. |
| `configurationValid` | `string` | Output only. Whether the agent configuration is valid. |
| `installedVersion` | `string` | Output only. The installed version of the agent on the host. |
| `instanceUri` | `string` | Output only. The URI of the instance. Format: projects//zones//instances/ |
| `kernelVersion` | `SapDiscoveryResourceInstancePropertiesKernelVersion` | Output only. The kernel version of the system. |
| `references` | `array<AgentStatusReference>` | Output only. Optional references to public documentation. |
| `services` | `array<AgentStatusServiceStatus>` | Output only. The services (process metrics, host metrics, etc.). |
| `systemdServiceEnabled` | `string` | Output only. Whether the agent service is enabled in systemd. |
| `systemdServiceRunning` | `string` | Output only. Whether the agent service is running in systemd. |

### `AgentStatusConfigValue`

The configuration value.

| Property | Type | Description |
|----------|------|-------------|
| `isDefault` | `boolean` | Output only. Whether the configuration value is the default value or overridden. |
| `name` | `string` | Output only. The name of the configuration value. |
| `value` | `string` | Output only. The value of the configuration value. |

### `AgentStatusIAMPermission`

The IAM permission status.

| Property | Type | Description |
|----------|------|-------------|
| `granted` | `string` | Output only. Whether the permission is granted. |
| `name` | `string` | Output only. The name of the permission. |

### `AgentStatusReference`

The reference to public documentation.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Output only. The name of the reference. |
| `url` | `string` | Output only. The URL of the reference. |

### `AgentStatusServiceStatus`

The status of a service (process metrics, host metrics, etc.).

| Property | Type | Description |
|----------|------|-------------|
| `configValues` | `array<AgentStatusConfigValue>` | Output only. The configuration values for the service. |
| `errorMessage` | `string` | Output only. The error message for the service if it is not fully functional. |
| `fullyFunctional` | `string` | Output only. Whether the service is fully functional (all checks passed). |
| `iamPermissions` | `array<AgentStatusIAMPermission>` | Output only. The permissions required for the service. |
| `name` | `string` | Output only. The name of the service. |
| `state` | `string` | Output only. The state of the service (enabled or disabled in the configuration). |
| `unspecifiedStateMessage` | `string` | Output only. The message to display when the service state is unspecified. |

### `AppDetails`

Message for sap instant details

| Property | Type | Description |
|----------|------|-------------|
| `appInstanceId` | `string` | Optional. instance id for app |
| `appServiceAccount` | `string` | Application service account - let custoemrs bring their own SA for application |
| `appVmNames` | `array<string>` | Optional. Customized vm names |
| `ascsImage` | `string` | Required. image for ascs server |
| `ascsInstanceId` | `string` | Optional. instance id for ascs |
| `ascsMachineType` | `string` | Required. ascs_machine_type |
| `ascsServiceAccount` | `string` | ASCS service account - let custoemrs bring their own SA for ASCS |
| `ascsVm` | `string` | Optional. ASCS vm name |
| `ersInstanceId` | `string` | Optional. instance id for ers |
| `ersVm` | `string` | Optional. ERS vm name |
| `image` | `string` | Required. image for app server and ascs server |
| `machineType` | `string` | Required. machine type |
| `secretManagerSecret` | `string` | Required. secret_manager_secret |
| `sharedStorage` | `string` | Optional. Storage location |
| `sid` | `string` | Required. The SAP SID is a three-digit server-specific unique identification code. |
| `vmsMultiplier` | `integer` | Required. vms_multiplier |

### `BackupProperties`

Backup properties.

| Property | Type | Description |
|----------|------|-------------|
| `latestBackupStatus` | `string` | Output only. The state of the latest backup. |
| `latestBackupTime` | `string` | The time when the latest backup was performed. |

### `BigQueryDestination`

Message describing big query destination

| Property | Type | Description |
|----------|------|-------------|
| `createNewResultsTable` | `boolean` | Optional. determine if results will be saved in a new table |
| `destinationDataset` | `string` | Optional. destination dataset to save evaluation results |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `CloudResource`

The resource on GCP

| Property | Type | Description |
|----------|------|-------------|
| `instanceProperties` | `InstanceProperties` | Output only. All instance properties. |
| `kind` | `string` | Output only. |
| `name` | `string` | Output only. resource name Example: compute.googleapis.com/projects/wlm-obs-dev/zones/us-central1... |

### `Command`

* Command specifies the type of command to execute.

| Property | Type | Description |
|----------|------|-------------|
| `agentCommand` | `AgentCommand` | AgentCommand specifies a one-time executable program for the agent to run. |
| `shellCommand` | `ShellCommand` | ShellCommand is invoked via the agent's command line executor. |

### `ComponentHealth`

HealthCondition contains the detailed health check of each component.

| Property | Type | Description |
|----------|------|-------------|
| `component` | `string` | The component of a workload. |
| `componentHealthChecks` | `array<HealthCheck>` | The detailed health checks of the component. |
| `componentHealthType` | `string` | Output only. The type of the component health. |
| `state` | `string` | Output only. The health state of the component. |
| `subComponentsHealth` | `array<ComponentHealth>` | Sub component health. |

### `Database`

Database details

| Property | Type | Description |
|----------|------|-------------|
| `diskType` | `string` | Required. disk_type |
| `floatingIpAddress` | `string` | Optional. only useful for Linux High Availability setup |
| `machineType` | `string` | Required. machine type |
| `secondarySoleTenantNode` | `string` | Optional. the name of a secondary-sole-tenant node/node group |
| `secondarySoleTenantNodeType` | `string` | Optional. the type of a secondary-sole-tenant node/node group e.g. compute.googleapis.com/node-name |
| `secretManagerSecret` | `string` | Required. secret_manager_secret |
| `smt` | `boolean` | Required. whether simultaneous multithreading is enabled or not |
| `soleTenantNode` | `string` | Optional. the name of a primary sole-tenant node/node group |
| `soleTenantNodeType` | `string` | Optional. the type of a primary sole-tenant node/node group e.g. compute.googleapis.com/node-name |
| `tempdbOnSsd` | `boolean` | Required. whether to have TempDB on local SSD |
| `tenancyModel` | `string` | Required. SHARED or SOLE_TENANT |

### `DatabaseDetails`

Message for sap instant details

| Property | Type | Description |
|----------|------|-------------|
| `databaseServiceAccount` | `string` | Database service account - let custoemrs bring their own SA for database |
| `diskType` | `string` | Required. disk_type |
| `image` | `string` | Required. image for database server |
| `instanceId` | `string` | Optional. instance id |
| `machineType` | `string` | Required. machine type |
| `primaryDbVm` | `string` | Optional. primary db vm name |
| `secondaryDbVm` | `string` | Optional. secondary db vm name |
| `secretManagerSecret` | `string` | Required. secret_manager_secret |
| `sid` | `string` | Required. The SID is a three-digit server-specific unique identification code. |

### `DatabaseProperties`

Database Properties.

| Property | Type | Description |
|----------|------|-------------|
| `backupProperties` | `BackupProperties` | Output only. Backup properties. |
| `databaseType` | `string` | Output only. Type of the database. `HANA`, `DB2`, etc. |

### `Deployment`

The Deployment object represents user intent for deploying a specific type of workload.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. [Output only] Create time stamp |
| `description` | `string` | Description of the Deployment |
| `name` | `string` | The name of deployment resource. The format will be 'projects/{project_id}/locations/{location_id... |
| `sapSystemS4Config` | `SapSystemS4Config` | SAP system workload input |
| `serviceAccount` | `string` | User-specified Service Account (SA) credentials to be used for cloud build Format: `projects/{pro... |
| `sqlServerWorkload` | `SqlServerWorkload` | MS SQL workload input |
| `state` | `string` | Output only. Current state of the deployment. |
| `terraformVariables` | `object` | Optional. terraform_variables represents all the Terraform variables for the deployment workload.... |
| `updateTime` | `string` | Output only. [Output only] Update time stamp |
| `workerPool` | `string` | Optional. The user-specified Cloud Build worker pool resource in which the Cloud Build job will e... |
| `workloadType` | `string` | Optional. Workload type of the deployment |

### `DeploymentOutput`

Message for output of deployment resource

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | name of the resource |
| `type` | `string` | type of the resource |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Evaluation`

Message describing Evaluation object

| Property | Type | Description |
|----------|------|-------------|
| `bigQueryDestination` | `BigQueryDestination` | Optional. BigQuery destination |
| `createTime` | `string` | Output only. [Output only] Create time stamp |
| `customRulesBucket` | `string` | The Cloud Storage bucket name for custom rules. |
| `description` | `string` | Description of the Evaluation |
| `evaluationType` | `string` | Evaluation type |
| `kmsKey` | `string` | Optional. Immutable. Customer-managed encryption key name, in the format projects/*/locations/*/k... |
| `labels` | `object` | Labels as key value pairs |
| `name` | `string` | name of resource names have the form 'projects/{project_id}/locations/{location_id}/evaluations/{... |
| `resourceFilter` | `ResourceFilter` | annotations as key value pairs |
| `resourceStatus` | `ResourceStatus` | Output only. [Output only] The updated rule ids if exist. |
| `ruleNames` | `array<string>` | the name of the rule |
| `ruleVersions` | `array<string>` | Output only. [Output only] The updated rule ids if exist. |
| `schedule` | `string` | crontab format schedule for scheduled evaluation, currently only support the following schedule: ... |
| `updateTime` | `string` | Output only. [Output only] Update time stamp |

### `Execution`

Message describing Execution object

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | Output only. [Output only] End time stamp |
| `engine` | `string` | Optional. Engine |
| `evaluationId` | `string` | Output only. [Output only] Evaluation ID |
| `externalDataSources` | `array<ExternalDataSources>` | Optional. External data sources |
| `inventoryTime` | `string` | Output only. [Output only] Inventory time stamp |
| `labels` | `object` | Labels as key value pairs |
| `name` | `string` | The name of execution resource. The format is projects/{project}/locations/{location}/evaluations... |
| `notices` | `array<Notice>` | Output only. Additional information generated by the execution |
| `resultSummary` | `Summary` | Output only. [Output only] Result summary for the execution |
| `ruleResults` | `array<RuleExecutionResult>` | Output only. execution result summary per rule |
| `runType` | `string` | type represent whether the execution executed directly by user or scheduled according evaluation.... |
| `startTime` | `string` | Output only. [Output only] Start time stamp |
| `state` | `string` | Output only. [Output only] State |

### `ExecutionResult`

Message describing the result of an execution

| Property | Type | Description |
|----------|------|-------------|
| `commands` | `array<Command>` | The commands to remediate the violation. |
| `documentationUrl` | `string` | The URL for the documentation of the rule. |
| `resource` | `Resource` | The resource that violates the rule. |
| `rule` | `string` | The rule that is violated in an evaluation. |
| `severity` | `string` | The severity of violation. |
| `type` | `string` | Execution result type of the scanned resource |
| `violationDetails` | `ViolationDetails` | The details of violation in an evaluation result. |
| `violationMessage` | `string` | The violation message of an execution. |

### `ExternalDataSources`

Message for external data sources

| Property | Type | Description |
|----------|------|-------------|
| `assetType` | `string` | Required. The asset type of the external data source. This can be a supported Cloud Asset Invento... |
| `name` | `string` | Optional. Name of external data source. The name will be used inside the rego/sql to refer the ex... |
| `type` | `string` | Required. Type of external data source |
| `uri` | `string` | Required. URI of external data source. example of bq table {project_ID}.{dataset_ID}.{table_ID} |

### `GceInstanceFilter`

Message describing compute engine instance filter

| Property | Type | Description |
|----------|------|-------------|
| `serviceAccounts` | `array<string>` | Service account of compute engine |

### `HealthCheck`

HealthCheck contains the detailed health check of a component based on asource.

| Property | Type | Description |
|----------|------|-------------|
| `message` | `string` | Output only. The message of the health check. |
| `metric` | `string` | Output only. The health check source metric name. |
| `resource` | `CloudResource` | Output only. The resource the check performs on. |
| `source` | `string` | Output only. The source of the health check. |
| `state` | `string` | Output only. The state of the health check. |

### `IAMPermission`

The IAM permission status.

| Property | Type | Description |
|----------|------|-------------|
| `granted` | `boolean` | Output only. Whether the permission is granted. |
| `name` | `string` | Output only. The name of the permission. |

### `Insight`

A presentation of host resource usage where the workload runs.

| Property | Type | Description |
|----------|------|-------------|
| `agentStatus` | `AgentStatus` | The insights data for the agent status. |
| `instanceId` | `string` | Optional. The instance id where the insight is generated from |
| `openShiftValidation` | `OpenShiftValidation` | The insights data for the OpenShift workload validation. |
| `sapDiscovery` | `SapDiscovery` | The insights data for SAP system discovery. This is a copy of SAP System proto and should get upd... |
| `sapValidation` | `SapValidation` | The insights data for the SAP workload validation. |
| `sentTime` | `string` | Output only. [Output only] Create time stamp |
| `sqlserverValidation` | `SqlserverValidation` | The insights data for the sqlserver workload validation. |
| `torsoValidation` | `TorsoValidation` | The insights data for workload validation of torso workloads. |

### `InstanceProperties`

Instance Properties.

| Property | Type | Description |
|----------|------|-------------|
| `instanceNumber` | `string` | Optional. Instance number. |
| `machineType` | `string` | Optional. Instance machine type. |
| `roles` | `array<string>` | Optional. Instance roles. |
| `sapInstanceProperties` | `SapInstanceProperties` | Optional. SAP Instance properties. |
| `status` | `string` | Optional. Instance status. |
| `upcomingMaintenanceEvent` | `UpcomingMaintenanceEvent` | Optional. the next maintenance event on VM |

### `InvalidRule`

Message represent an rule that failed to be validated.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | display name of the invalid rule |
| `gcsUri` | `string` | cloud storage destination of the invalid rule |
| `name` | `string` | name of the invalid rule |
| `valiadtionError` | `string` | The error message of valdating rule formats. |

### `InvalidRulesWrapper`

Message wrappes a list of invalid rules.

| Property | Type | Description |
|----------|------|-------------|
| `invalidRules` | `array<InvalidRule>` | The invalid rules that failed to be validated. |

### `ListActuationsResponse`

The response object from `ListActuations`.

| Property | Type | Description |
|----------|------|-------------|
| `actuations` | `array<Actuation>` | The list of Actuation |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `unreachable` | `array<string>` | Unordered list. Locations that could not be reached. |

### `ListDeploymentsResponse`

Message for response to listing Deployments

| Property | Type | Description |
|----------|------|-------------|
| `deployments` | `array<Deployment>` | The list of Deployment |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `unreachable` | `array<string>` | Unordered list. Locations that could not be reached. |

### `ListDiscoveredProfilesResponse`

List discovered profile Response returns discovered profiles from agents

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Output only. A token identifying a page of results the server should return |
| `unreachable` | `array<string>` | Locations that could not be reached. |
| `workloadProfiles` | `array<WorkloadProfile>` | Output only. The list of workload profiles |

### `ListEvaluationsResponse`

Message for response to listing Evaluations

| Property | Type | Description |
|----------|------|-------------|
| `evaluations` | `array<Evaluation>` | The list of Evaluation |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListExecutionResultsResponse`

Message for response of list execution results

| Property | Type | Description |
|----------|------|-------------|
| `executionResults` | `array<ExecutionResult>` | The versions from the specified publisher. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `ListExecutionsResponse`

Message for response to listing Executions

| Property | Type | Description |
|----------|------|-------------|
| `executions` | `array<Execution>` | The list of Execution |
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

### `ListRulesResponse`

Mesesage of response of list rules

| Property | Type | Description |
|----------|------|-------------|
| `invalidRulesWrapper` | `InvalidRulesWrapper` | A wrapper of the invalid rules that failed to be validated. |
| `rules` | `array<Rule>` | all rules in response |

### `ListScannedResourcesResponse`

Message for response to list scanned resources

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `scannedResources` | `array<ScannedResource>` | All scanned resources in response |

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `LocationDetails`

Message for sap instant details

| Property | Type | Description |
|----------|------|-------------|
| `createCommsFirewall` | `boolean` | Optional. create firewall, if true, create firewall for the deployment. This field provides an op... |
| `customTags` | `array<string>` | Optional. network tags |
| `deploymentDnsEnabled` | `boolean` | Optional. when user skip DNS configuration from UI, deployment_dns_enabled=false otherwise deploy... |
| `dnsZone` | `string` | Optional. dns zone name |
| `dnsZoneNameSuffix` | `string` | Optional. dns_zone_name_suffix |
| `internetAccess` | `string` |  |
| `networkProject` | `string` | Optional. network project |
| `regionName` | `string` | Required. region_name |
| `subnetName` | `string` | Required. subnet_name |
| `vpcName` | `string` | Required. vpc_name |
| `zone1Name` | `string` | Required. zone1_name |
| `zone2Name` | `string` | Optional. zone2_name |

### `Notice`

Message for additional information generated by the execution

| Property | Type | Description |
|----------|------|-------------|
| `message` | `string` | Output only. Message of the notice |

### `OpenShiftValidation`

A presentation of OpenShift workload insight. The schema of OpenShift workloads validation related data.

| Property | Type | Description |
|----------|------|-------------|
| `clusterId` | `string` | Required. The OpenShift cluster ID (e.g. 8371bb05-7cac-4d38-82c0-0f58c4f6f936). |
| `validationDetails` | `object` | Required. The validation details of the OpenShift cluster in JSON format. |

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

### `Pacemaker`

pacemaker configuration

| Property | Type | Description |
|----------|------|-------------|
| `bucketNameNodeCertificates` | `string` | Required. bucket location for node certificates |
| `pacemakerCluster` | `string` | Required. pacemaker cluster name |
| `pacemakerClusterSecret` | `string` | Required. pacemaker cluster secret name |
| `pacemakerClusterUsername` | `string` | Required. pacemaker cluster username |
| `sqlPacemakerSecret` | `string` | Required. sql pacemaker secret name |
| `sqlPacemakerUsername` | `string` | Required. sql pacemaker username |

### `Product`

Contains the details of a product.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Optional. Name of the product. |
| `version` | `string` | Optional. Version of the product. |

### `Resource`

Message represent resource in execution result

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name of the resource. |
| `serviceAccount` | `string` | The service account associated with the resource. |
| `type` | `string` | The type of resource. |

### `ResourceFilter`

Message describing resource filters

| Property | Type | Description |
|----------|------|-------------|
| `gceInstanceFilter` | `GceInstanceFilter` | Filter compute engine resource |
| `inclusionLabels` | `object` | The label used for filter resource |
| `resourceIdPatterns` | `array<string>` | The id pattern for filter resource |
| `scopes` | `array<string>` | The scopes of evaluation resource |

### `ResourceStatus`

Message describing resource status

| Property | Type | Description |
|----------|------|-------------|
| `rulesNewerVersions` | `array<string>` | Historical: Used before 2023-05-22 the new version of rule id if exists |
| `state` | `string` | State of the resource |

### `Rule`

Message represent a rule

| Property | Type | Description |
|----------|------|-------------|
| `assetType` | `string` | The CAI asset type of the rule is evaluating, for joined asset types, it will be the correspondin... |
| `description` | `string` | descrite rule in plain language |
| `displayName` | `string` | the name display in UI |
| `errorMessage` | `string` | the message template for rule |
| `name` | `string` | rule name |
| `primaryCategory` | `string` | the primary category |
| `remediation` | `string` | the remediation for the rule |
| `revisionId` | `string` | Output only. the version of the rule |
| `ruleType` | `string` | The type of the rule. |
| `secondaryCategory` | `string` | the secondary category |
| `severity` | `string` | the severity of the rule |
| `tags` | `array<string>` | List of user-defined tags |
| `uri` | `string` | the docuement url for the rule |

### `RuleExecutionResult`

Message for execution result summary per rule

| Property | Type | Description |
|----------|------|-------------|
| `message` | `string` | Execution message, if any |
| `resultCount` | `string` | Number of violations |
| `rule` | `string` | rule name |
| `scannedResourceCount` | `string` | Number of total scanned resources |
| `state` | `string` | Output only. The execution status |

### `RuleOutput`

The rule output of the violation.

| Property | Type | Description |
|----------|------|-------------|
| `details` | `object` | Output only. Violation details generated by rule. |
| `message` | `string` | Output only. The message generated by rule. |

### `RunEvaluationRequest`

Message for creating a Execution

| Property | Type | Description |
|----------|------|-------------|
| `execution` | `Execution` | Required. The resource being created |
| `executionId` | `string` | Required. Id of the requesting object If auto-generating Id server-side, remove this field and ex... |
| `requestId` | `string` | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you... |

### `SapComponent`

The component of sap workload

| Property | Type | Description |
|----------|------|-------------|
| `databaseProperties` | `DatabaseProperties` | Output only. All instance properties. |
| `haHosts` | `array<string>` | List of host URIs that are part of the HA configuration if present. An empty list indicates the c... |
| `resources` | `array<CloudResource>` | Output only. resources in the component |
| `sid` | `string` | Output only. sid is the sap component identificator |
| `topologyType` | `string` | The detected topology of the component. |

### `SapDiscovery`

The schema of SAP system discovery data.

| Property | Type | Description |
|----------|------|-------------|
| `applicationLayer` | `SapDiscoveryComponent` | Optional. An SAP system may run without an application layer. |
| `databaseLayer` | `SapDiscoveryComponent` | Required. An SAP System must have a database. |
| `metadata` | `SapDiscoveryMetadata` | Optional. The metadata for SAP system discovery data. |
| `projectNumber` | `string` | Optional. The GCP project number that this SapSystem belongs to. |
| `systemId` | `string` | Output only. A combination of database SID, database instance URI and tenant DB name to make a un... |
| `updateTime` | `string` | Required. Unix timestamp this system has been updated last. |
| `useDrReconciliation` | `boolean` | Optional. Whether to use DR reconciliation or not. |
| `workloadProperties` | `SapDiscoveryWorkloadProperties` | Optional. The properties of the workload. |

### `SapDiscoveryComponent`

Message describing the system component.

| Property | Type | Description |
|----------|------|-------------|
| `applicationProperties` | `SapDiscoveryComponentApplicationProperties` | Optional. The component is a SAP application. |
| `databaseProperties` | `SapDiscoveryComponentDatabaseProperties` | Optional. The component is a SAP database. |
| `haHosts` | `array<string>` | Optional. A list of host URIs that are part of the HA configuration if present. An empty list ind... |
| `hostProject` | `string` | Required. Pantheon Project in which the resources reside. |
| `region` | `string` | Optional. The region this component's resources are primarily located in. |
| `replicationSites` | `array<SapDiscoveryComponentReplicationSite>` | Optional. A list of replication sites used in Disaster Recovery (DR) configurations. |
| `resources` | `array<SapDiscoveryResource>` | Optional. The resources in a component. |
| `sid` | `string` | Optional. The SAP identifier, used by the SAP software and helps differentiate systems for custom... |
| `topologyType` | `string` | Optional. The detected topology of the component. |

### `SapDiscoveryComponentApplicationProperties`

A set of properties describing an SAP Application layer.

| Property | Type | Description |
|----------|------|-------------|
| `abap` | `boolean` | Optional. Deprecated: ApplicationType now tells you whether this is ABAP or Java. |
| `appInstanceNumber` | `string` | Optional. Instance number of the SAP application instance. |
| `applicationType` | `string` | Required. Type of the application. Netweaver, etc. |
| `ascsInstanceNumber` | `string` | Optional. Instance number of the ASCS instance. |
| `ascsUri` | `string` | Optional. Resource URI of the recognized ASCS host of the application. |
| `ersInstanceNumber` | `string` | Optional. Instance number of the ERS instance. |
| `kernelVersion` | `string` | Optional. Kernel version for Netweaver running in the system. |
| `nfsUri` | `string` | Optional. Resource URI of the recognized shared NFS of the application. May be empty if the appli... |

### `SapDiscoveryComponentDatabaseProperties`

A set of properties describing an SAP Database layer.

| Property | Type | Description |
|----------|------|-------------|
| `databaseSid` | `string` | Optional. SID of the system database. |
| `databaseType` | `string` | Required. Type of the database. HANA, DB2, etc. |
| `databaseVersion` | `string` | Optional. The version of the database software running in the system. |
| `instanceNumber` | `string` | Optional. Instance number of the SAP instance. |
| `landscapeId` | `string` | Optional. Landscape ID from the HANA nameserver. |
| `primaryInstanceUri` | `string` | Required. URI of the recognized primary instance of the database. |
| `sharedNfsUri` | `string` | Optional. URI of the recognized shared NFS of the database. May be empty if the database has only... |

### `SapDiscoveryComponentReplicationSite`

A replication site used in Disaster Recovery (DR) configurations.

| Property | Type | Description |
|----------|------|-------------|
| `component` | `SapDiscoveryComponent` | Optional. The system component for the site. |
| `sourceSite` | `string` | Optional. The name of the source site from which this one replicates. |

### `SapDiscoveryMetadata`

Message describing SAP discovery system metadata

| Property | Type | Description |
|----------|------|-------------|
| `customerRegion` | `string` | Optional. Customer region string for customer's use. Does not represent GCP region. |
| `definedSystem` | `string` | Optional. Customer defined, something like "E-commerce pre prod" |
| `environmentType` | `string` | Optional. Should be "prod", "QA", "dev", "staging", etc. |
| `sapProduct` | `string` | Optional. This SAP product name |

### `SapDiscoveryResource`

Message describing a resource.

| Property | Type | Description |
|----------|------|-------------|
| `instanceProperties` | `SapDiscoveryResourceInstanceProperties` | Optional. A set of properties only applying to instance type resources. |
| `relatedResources` | `array<string>` | Optional. A list of resource URIs related to this resource. |
| `resourceKind` | `string` | Required. ComputeInstance, ComputeDisk, VPC, Bare Metal server, etc. |
| `resourceType` | `string` | Required. The type of this resource. |
| `resourceUri` | `string` | Required. URI of the resource, includes project, location, and name. |
| `updateTime` | `string` | Required. Unix timestamp of when this resource last had its discovery data updated. |

### `SapDiscoveryResourceInstanceProperties`

A set of properties only present for an instance type resource

| Property | Type | Description |
|----------|------|-------------|
| `appInstances` | `array<SapDiscoveryResourceInstancePropertiesAppInstance>` | Optional. App server instances on the host |
| `clusterInstances` | `array<string>` | Optional. A list of instance URIs that are part of a cluster with this one. |
| `diskMounts` | `array<SapDiscoveryResourceInstancePropertiesDiskMount>` | Optional. Disk mounts on the instance. |
| `instanceNumber` | `string` | Optional. The VM's instance number. |
| `instanceRole` | `string` | Optional. Bitmask of instance role, a resource may have multiple roles at once. |
| `isDrSite` | `boolean` | Optional. Instance is part of a DR site. |
| `osKernelVersion` | `SapDiscoveryResourceInstancePropertiesKernelVersion` | Optional. The kernel version of the instance. |
| `virtualHostname` | `string` | Optional. A virtual hostname of the instance if it has one. |

### `SapDiscoveryResourceInstancePropertiesAppInstance`

Fields to describe an SAP application server instance.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Optional. Instance name of the SAP application instance. |
| `number` | `string` | Optional. Instance number of the SAP application instance. |

### `SapDiscoveryResourceInstancePropertiesDiskMount`

Disk mount on the instance.

| Property | Type | Description |
|----------|------|-------------|
| `diskNames` | `array<string>` | Optional. Names of the disks providing this mount point. |
| `mountPoint` | `string` | Optional. Filesystem mount point. |
| `name` | `string` | Optional. Name of the disk. |

### `SapDiscoveryResourceInstancePropertiesKernelVersion`

KernelVersion encapsulates the kernel version data for the system.

| Property | Type | Description |
|----------|------|-------------|
| `distroKernel` | `SapDiscoveryResourceInstancePropertiesKernelVersionVersion` | Optional. Captures the distro-specific kernel version, the portion of the string following the fi... |
| `osKernel` | `SapDiscoveryResourceInstancePropertiesKernelVersionVersion` | Optional. Captures the OS-specific kernel version, the portion of the string up to the first dash. |
| `rawString` | `string` | Optional. Raw string of the kernel version. |

### `SapDiscoveryResourceInstancePropertiesKernelVersionVersion`

Version is reported as Major.Minor.Build.Patch.

| Property | Type | Description |
|----------|------|-------------|
| `build` | `integer` | Optional. The build version number. |
| `major` | `integer` | Optional. The major version number. |
| `minor` | `integer` | Optional. The minor version number. |
| `patch` | `integer` | Optional. The patch version number. |
| `remainder` | `string` | Optional. A catch-all for any unparsed version components. This is in case the number of points i... |

### `SapDiscoveryWorkloadProperties`

A set of properties describing an SAP workload.

| Property | Type | Description |
|----------|------|-------------|
| `productVersions` | `array<SapDiscoveryWorkloadPropertiesProductVersion>` | Optional. List of SAP Products and their versions running on the system. |
| `softwareComponentVersions` | `array<SapDiscoveryWorkloadPropertiesSoftwareComponentProperties>` | Optional. A list of SAP software components and their versions running on the system. |

### `SapDiscoveryWorkloadPropertiesProductVersion`

A product name and version.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Optional. Name of the product. |
| `version` | `string` | Optional. Version of the product. |

### `SapDiscoveryWorkloadPropertiesSoftwareComponentProperties`

A SAP software component name, version, and type.

| Property | Type | Description |
|----------|------|-------------|
| `extVersion` | `string` | Optional. The component's minor version. |
| `name` | `string` | Optional. Name of the component. |
| `type` | `string` | Optional. The component's type. |
| `version` | `string` | Optional. The component's major version. |

### `SapInstanceProperties`

SAP instance properties.

| Property | Type | Description |
|----------|------|-------------|
| `agentStates` | `AgentStates` | Optional. Sap Instance Agent status. |
| `numbers` | `array<string>` | Optional. SAP Instance numbers. They are from '00' to '99'. |

### `SapSystemS4Config`

Message for sap system workload

| Property | Type | Description |
|----------|------|-------------|
| `allowStoppingForUpdate` | `boolean` |  |
| `ansibleRunnerServiceAccount` | `string` | Ansible runner service account - let custoemrs bring their own SA for Ansible runner |
| `app` | `AppDetails` | instance details |
| `database` | `DatabaseDetails` | database details |
| `deploymentModel` | `string` | Required. two model non-HA and HA supported |
| `environmentType` | `string` | Required. deployment environment |
| `gcpProjectId` | `string` | the project that infrastructure deployed, current only support the same project where the deploym... |
| `location` | `LocationDetails` | database details |
| `mediaBucketName` | `string` | Required. media_bucket_name |
| `sapBootDiskImage` | `string` | Optional. sap_boot_disk_image |
| `scalingMethod` | `string` | Required. support scale up and scale out |
| `version` | `string` | Required. sap hana version |
| `vmPrefix` | `string` | vm_prefix |

### `SapValidation`

A presentation of SAP workload insight. The schema of SAP workloads validation related data.

| Property | Type | Description |
|----------|------|-------------|
| `projectId` | `string` | Required. The project_id of the cloud project that the Insight data comes from. |
| `validationDetails` | `array<SapValidationValidationDetail>` | Optional. A list of SAP validation metrics data. |
| `zone` | `string` | Optional. The zone of the instance that the Insight data comes from. |

### `SapValidationValidationDetail`

Message describing the SAP validation metrics.

| Property | Type | Description |
|----------|------|-------------|
| `details` | `object` | Optional. The pairs of metrics data: field name & field value. |
| `isPresent` | `boolean` | Optional. Was there a SAP system detected for this validation type. |
| `sapValidationType` | `string` | Optional. The SAP system that the validation data is from. |

### `SapWorkload`

The body of sap workload

| Property | Type | Description |
|----------|------|-------------|
| `application` | `SapComponent` | Output only. application component |
| `architecture` | `string` | Output only. The architecture. |
| `database` | `SapComponent` | Output only. database component |
| `metadata` | `object` | Output only. The metadata for SAP workload. |
| `products` | `array<Product>` | Output only. The products on this workload. |

### `ScannedResource`

Message of scanned resource

| Property | Type | Description |
|----------|------|-------------|
| `resource` | `string` | resource name |
| `type` | `string` | resource type |

### `ServiceStates`

The state of the service.

| Property | Type | Description |
|----------|------|-------------|
| `iamPermissions` | `array<IAMPermission>` | Optional. Output only. The IAM permissions for the service. |
| `state` | `string` | Output only. The overall state of the service. |

### `ShellCommand`

* A ShellCommand is invoked via the agent's command line executor

| Property | Type | Description |
|----------|------|-------------|
| `args` | `string` | args is a string of arguments to be passed to the command. |
| `command` | `string` | command is the name of the command to be executed. |
| `timeoutSeconds` | `integer` | Optional. If not specified, the default timeout is 60 seconds. |

### `SqlLocationDetails`

Location and networking details for configuring SQL server workload

| Property | Type | Description |
|----------|------|-------------|
| `dnsZone` | `string` | Optional. create a new DNS Zone when the field is empty, Only show for `Using an existing DNS` Li... |
| `gcpProjectId` | `string` | Required. the project that infrastructure deployed, currently only supports the same project wher... |
| `internetAccess` | `string` | Required. Internet Access |
| `network` | `string` | Required. network name |
| `primaryZone` | `string` | Required. primary zone |
| `region` | `string` | Required. region name |
| `secondaryZone` | `string` | Optional. secondary zone can't be same as primary_zone and is only for High Availability deployme... |
| `subnetwork` | `string` | Required. subnetwork name |
| `tertiaryZone` | `string` | Optional. teriary zone can't be same as primary_zone and secondary zone, and it is only for High ... |

### `SqlServerWorkload`

Message for MS SQL workload

| Property | Type | Description |
|----------|------|-------------|
| `activeDirectory` | `ActiveDirectory` | Required. active directory details |
| `computeEngineServiceAccount` | `string` | Compute engine service account - let customers bring their own SA for Compute engine |
| `database` | `Database` | Required. database details |
| `deploymentModel` | `string` | Required. HIGH_AVAILABILITY or SINGLE_INSTANCE |
| `environmentType` | `string` | Required. deployment environment |
| `fciType` | `string` | Optional. SHARED_DISK or S2D |
| `haType` | `string` | Optional. AOAG or FCI, it is only needed for High Availability deployment mode |
| `isSqlPayg` | `boolean` | Required. SQL licensing type |
| `location` | `SqlLocationDetails` | Required. location details |
| `mediaBucket` | `string` | Required. name of the media storing SQL server installation files |
| `operatingSystemType` | `string` | Required. type of the operating system the SQL server is going to run on top of |
| `osImage` | `string` | Required. the image of the operating system |
| `osImageType` | `string` | Optional. OS image type, it's used to create boot disks for VM instances When either Windows lice... |
| `pacemaker` | `Pacemaker` | Optional. pacemaker configuration, only applicable for Linux HA deployments |
| `sqlServerEdition` | `string` | Optional. SQL Server Edition type, only applicable when Operating System is Linux |
| `sqlServerVersion` | `string` | Optional. 2017 or 2019 or 2022 |
| `vmPrefix` | `string` | Required. should be unique in the project |

### `SqlserverValidation`

A presentation of SQLServer workload insight. The schema of SqlServer workloads validation related data.

| Property | Type | Description |
|----------|------|-------------|
| `agentVersion` | `string` | Optional. The agent version collected this data point |
| `instance` | `string` | Required. The instance_name of the instance that the Insight data comes from. According to https:... |
| `projectId` | `string` | Required. The project_id of the cloud project that the Insight data comes from. |
| `validationDetails` | `array<SqlserverValidationValidationDetail>` | Optional. A list of SqlServer validation metrics data. |

### `SqlserverValidationDetails`

Message containing collected data names and values.

| Property | Type | Description |
|----------|------|-------------|
| `fields` | `object` | Required. Collected data is in format. |

### `SqlserverValidationValidationDetail`

Message describing the Sqlserver validation metrics.

| Property | Type | Description |
|----------|------|-------------|
| `details` | `array<SqlserverValidationDetails>` | Required. Details wraps map that represents collected data names and values. |
| `type` | `string` | Optional. The Sqlserver system that the validation data is from. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `Summary`

Message for execution summary

| Property | Type | Description |
|----------|------|-------------|
| `failures` | `string` | Output only. Number of failures |
| `newFailures` | `string` | Output only. Number of new failures compared to the previous execution |
| `newFixes` | `string` | Output only. Number of new fixes compared to the previous execution |

### `TerraformVariable`

In order to align with Infra Manager dependency, we create the same TerraformVariable message to represent a Terraform input variable, by following Infra Manager's API documentation: https://cloud.google.com/infrastructure-manager/docs/reference/rest A Terraform input variable.

| Property | Type | Description |
|----------|------|-------------|
| `inputValue` | `any` | Optional. Input variable value. |

### `TorsoValidation`

The schema of torso workload validation data.

| Property | Type | Description |
|----------|------|-------------|
| `agentVersion` | `string` | Required. agent_version lists the version of the agent that collected this data. |
| `instanceName` | `string` | Optional. instance_name lists the human readable name of the instance that the data comes from. |
| `projectId` | `string` | Required. project_id lists the human readable cloud project that the data comes from. |
| `validationDetails` | `object` | Required. validation_details contains the pairs of validation data: field name & field value. |
| `workloadType` | `string` | Required. workload_type specifies the type of torso workload. |

### `UpcomingMaintenanceEvent`

Maintenance Event

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | Optional. End time |
| `maintenanceStatus` | `string` | Optional. Maintenance status |
| `onHostMaintenance` | `string` | Optional. Instance maintenance behavior. Could be `MIGRATE` or `TERMINATE`. |
| `startTime` | `string` | Optional. Start time |
| `type` | `string` | Optional. Type |

### `ViolationDetails`

Message describing the violation in an evaluation result.

| Property | Type | Description |
|----------|------|-------------|
| `asset` | `string` | The name of the asset. |
| `observed` | `object` | Details of the violation. |
| `ruleOutput` | `array<RuleOutput>` | Output only. The rule output of the violation. |
| `serviceAccount` | `string` | The service account associated with the resource. |

### `WorkloadProfile`

Workload resource.

| Property | Type | Description |
|----------|------|-------------|
| `labels` | `object` | Optional. such as name, description, version. More example can be found in deployment |
| `name` | `string` | Identifier. name of resource names have the form 'projects/{project_id}/locations/{location}/work... |
| `refreshedTime` | `string` | Required. time when the workload data was refreshed |
| `sapWorkload` | `SapWorkload` | The sap workload content |
| `workloadType` | `string` | Required. The type of the workload |

### `WorkloadProfileHealth`

WorkloadProfileHealth contains the detailed health check of workload.

| Property | Type | Description |
|----------|------|-------------|
| `checkTime` | `string` | The time when the health check was performed. |
| `componentsHealth` | `array<ComponentHealth>` | The detailed condition reports of each component. |
| `state` | `string` | Output only. The health state of the workload. |

### `WriteInsightRequest`

Request for sending the data insights.

| Property | Type | Description |
|----------|------|-------------|
| `agentVersion` | `string` | Optional. The agent version collected this data point. |
| `insight` | `Insight` | Required. The metrics data details. |
| `requestId` | `string` | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you... |

### `WriteInsightResponse`

The response for write insights request.

