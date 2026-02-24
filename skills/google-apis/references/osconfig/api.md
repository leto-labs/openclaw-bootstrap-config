# OS Config API - API Reference

**Version**: `v2` | **Methods**: 27 | **Schemas**: 52

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `osconfig.projects.locations.operations.list` | GET | `v2/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `osconfig.projects.locations.operations.get` | GET | `v2/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `osconfig.projects.locations.operations.delete` | DELETE | `v2/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `osconfig.projects.locations.operations.cancel` | POST | `v2/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `osconfig.projects.locations.global.policyOrchestrators.create` | POST | `v2/{+parent}/policyOrchestrators` | Creates a new policy orchestrator under the given project resource. `name` field of the given orc... |
| `osconfig.projects.locations.global.policyOrchestrators.list` | GET | `v2/{+parent}/policyOrchestrators` | Lists the policy orchestrators under the given parent project resource. |
| `osconfig.projects.locations.global.policyOrchestrators.get` | GET | `v2/{+name}` | Retrieves an existing policy orchestrator, parented by a project. |
| `osconfig.projects.locations.global.policyOrchestrators.patch` | PATCH | `v2/{+name}` | Updates an existing policy orchestrator, parented by a project. |
| `osconfig.projects.locations.global.policyOrchestrators.delete` | DELETE | `v2/{+name}` | Deletes an existing policy orchestrator resource, parented by a project. |
| `osconfig.folders.locations.operations.list` | GET | `v2/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `osconfig.folders.locations.operations.get` | GET | `v2/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `osconfig.folders.locations.operations.delete` | DELETE | `v2/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `osconfig.folders.locations.operations.cancel` | POST | `v2/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `osconfig.folders.locations.global.policyOrchestrators.create` | POST | `v2/{+parent}/policyOrchestrators` | Creates a new policy orchestrator under the given folder resource. `name` field of the given orch... |
| `osconfig.folders.locations.global.policyOrchestrators.list` | GET | `v2/{+parent}/policyOrchestrators` | Lists the policy orchestrators under the given parent folder resource. |
| `osconfig.folders.locations.global.policyOrchestrators.get` | GET | `v2/{+name}` | Retrieves an existing policy orchestrator, parented by a folder. |
| `osconfig.folders.locations.global.policyOrchestrators.patch` | PATCH | `v2/{+name}` | Updates an existing policy orchestrator, parented by a folder. |
| `osconfig.folders.locations.global.policyOrchestrators.delete` | DELETE | `v2/{+name}` | Deletes an existing policy orchestrator resource, parented by a folder. |
| `osconfig.organizations.locations.operations.list` | GET | `v2/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `osconfig.organizations.locations.operations.get` | GET | `v2/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `osconfig.organizations.locations.operations.delete` | DELETE | `v2/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `osconfig.organizations.locations.operations.cancel` | POST | `v2/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `osconfig.organizations.locations.global.policyOrchestrators.create` | POST | `v2/{+parent}/policyOrchestrators` | Creates a new policy orchestrator under the given organizations resource. `name` field of the giv... |
| `osconfig.organizations.locations.global.policyOrchestrators.list` | GET | `v2/{+parent}/policyOrchestrators` | Lists the policy orchestrators under the given parent organization resource. |
| `osconfig.organizations.locations.global.policyOrchestrators.get` | GET | `v2/{+name}` | Retrieves an existing policy orchestrator, parented by an organization. |
| `osconfig.organizations.locations.global.policyOrchestrators.patch` | PATCH | `v2/{+name}` | Updates an existing policy orchestrator, parented by an organization. |
| `osconfig.organizations.locations.global.policyOrchestrators.delete` | DELETE | `v2/{+name}` | Deletes an existing policy orchestrator resource, parented by an organization. |

### `osconfig.projects.locations.operations.list`

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
const res = await osconfig.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `osconfig.projects.locations.operations.get`

**GET** `v2/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await osconfig.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `osconfig.projects.locations.operations.delete`

**DELETE** `v2/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await osconfig.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `osconfig.projects.locations.operations.cancel`

**POST** `v2/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await osconfig.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `osconfig.projects.locations.global.policyOrchestrators.create`

**POST** `v2/{+parent}/policyOrchestrators`

Creates a new policy orchestrator under the given project resource. `name` field of the given orchestrator are ignored and instead replaced by a product of `parent` and `policy_orchestrator_id`. Orchestrator state field might be only set to `ACTIVE`, `STOPPED` or omitted (in which case, the created resource will be in `ACTIVE` state anyway).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name in the form of: * `organizations/{organization_id}/locations/global` * `folders/{f... |
| `policyOrchestratorId` | `string` | query | No | Required. The logical identifier of the policy orchestrator, with the following restrictions: * Must contain only low... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `GoogleCloudOsconfigV2__PolicyOrchestrator`

**Response**: `Operation`

```typescript
const res = await osconfig.policyOrchestrators.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `osconfig.projects.locations.global.policyOrchestrators.list`

**GET** `v2/{+parent}/policyOrchestrators`

Lists the policy orchestrators under the given parent project resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name. |
| `filter` | `string` | query | No | Optional. Filtering results |
| `orderBy` | `string` | query | No | Optional. Hint for how to order the results |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `GoogleCloudOsconfigV2__ListPolicyOrchestratorsResponse`

```typescript
const res = await osconfig.policyOrchestrators.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `osconfig.projects.locations.global.policyOrchestrators.get`

**GET** `v2/{+name}`

Retrieves an existing policy orchestrator, parented by a project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name. |

**Response**: `GoogleCloudOsconfigV2__PolicyOrchestrator`

```typescript
const res = await osconfig.policyOrchestrators.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `osconfig.projects.locations.global.policyOrchestrators.patch`

**PATCH** `v2/{+name}`

Updates an existing policy orchestrator, parented by a project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Identifier. In form of * `organizations/{organization_id}/locations/global/policyOrchestrators/{orchestrat... |
| `updateMask` | `string` | query | No | Optional. The list of fields to merge into the existing policy orchestrator. A special ["*"] field mask can be used t... |

**Request body**: `GoogleCloudOsconfigV2__PolicyOrchestrator`

**Response**: `Operation`

```typescript
const res = await osconfig.policyOrchestrators.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `osconfig.projects.locations.global.policyOrchestrators.delete`

**DELETE** `v2/{+name}`

Deletes an existing policy orchestrator resource, parented by a project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource to be deleted. |
| `etag` | `string` | query | No | Optional. The current etag of the policy orchestrator. If an etag is provided and does not match the current etag of ... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `Operation`

```typescript
const res = await osconfig.policyOrchestrators.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `osconfig.folders.locations.operations.list`

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
const res = await osconfig.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `osconfig.folders.locations.operations.get`

**GET** `v2/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await osconfig.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `osconfig.folders.locations.operations.delete`

**DELETE** `v2/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await osconfig.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `osconfig.folders.locations.operations.cancel`

**POST** `v2/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await osconfig.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `osconfig.folders.locations.global.policyOrchestrators.create`

**POST** `v2/{+parent}/policyOrchestrators`

Creates a new policy orchestrator under the given folder resource. `name` field of the given orchestrator are ignored and instead replaced by a product of `parent` and `policy_orchestrator_id`. Orchestrator state field might be only set to `ACTIVE`, `STOPPED` or omitted (in which case, the created resource will be in `ACTIVE` state anyway).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name in the form of: * `organizations/{organization_id}/locations/global` * `folders/{f... |
| `policyOrchestratorId` | `string` | query | No | Required. The logical identifier of the policy orchestrator, with the following restrictions: * Must contain only low... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `GoogleCloudOsconfigV2__PolicyOrchestrator`

**Response**: `Operation`

```typescript
const res = await osconfig.policyOrchestrators.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `osconfig.folders.locations.global.policyOrchestrators.list`

**GET** `v2/{+parent}/policyOrchestrators`

Lists the policy orchestrators under the given parent folder resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name. |
| `filter` | `string` | query | No | Optional. Filtering results |
| `orderBy` | `string` | query | No | Optional. Hint for how to order the results |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `GoogleCloudOsconfigV2__ListPolicyOrchestratorsResponse`

```typescript
const res = await osconfig.policyOrchestrators.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `osconfig.folders.locations.global.policyOrchestrators.get`

**GET** `v2/{+name}`

Retrieves an existing policy orchestrator, parented by a folder.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name. |

**Response**: `GoogleCloudOsconfigV2__PolicyOrchestrator`

```typescript
const res = await osconfig.policyOrchestrators.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `osconfig.folders.locations.global.policyOrchestrators.patch`

**PATCH** `v2/{+name}`

Updates an existing policy orchestrator, parented by a folder.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Identifier. In form of * `organizations/{organization_id}/locations/global/policyOrchestrators/{orchestrat... |
| `updateMask` | `string` | query | No | Optional. The list of fields to merge into the existing policy orchestrator. A special ["*"] field mask can be used t... |

**Request body**: `GoogleCloudOsconfigV2__PolicyOrchestrator`

**Response**: `Operation`

```typescript
const res = await osconfig.policyOrchestrators.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `osconfig.folders.locations.global.policyOrchestrators.delete`

**DELETE** `v2/{+name}`

Deletes an existing policy orchestrator resource, parented by a folder.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource to be deleted. |
| `etag` | `string` | query | No | Optional. The current etag of the policy orchestrator. If an etag is provided and does not match the current etag of ... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `Operation`

```typescript
const res = await osconfig.policyOrchestrators.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `osconfig.organizations.locations.operations.list`

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
const res = await osconfig.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `osconfig.organizations.locations.operations.get`

**GET** `v2/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await osconfig.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `osconfig.organizations.locations.operations.delete`

**DELETE** `v2/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await osconfig.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `osconfig.organizations.locations.operations.cancel`

**POST** `v2/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await osconfig.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `osconfig.organizations.locations.global.policyOrchestrators.create`

**POST** `v2/{+parent}/policyOrchestrators`

Creates a new policy orchestrator under the given organizations resource. `name` field of the given orchestrator are ignored and instead replaced by a product of `parent` and `policy_orchestrator_id`. Orchestrator state field might be only set to `ACTIVE`, `STOPPED` or omitted (in which case, the created resource will be in `ACTIVE` state anyway).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name in the form of: * `organizations/{organization_id}/locations/global` * `folders/{f... |
| `policyOrchestratorId` | `string` | query | No | Required. The logical identifier of the policy orchestrator, with the following restrictions: * Must contain only low... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `GoogleCloudOsconfigV2__PolicyOrchestrator`

**Response**: `Operation`

```typescript
const res = await osconfig.policyOrchestrators.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `osconfig.organizations.locations.global.policyOrchestrators.list`

**GET** `v2/{+parent}/policyOrchestrators`

Lists the policy orchestrators under the given parent organization resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name. |
| `filter` | `string` | query | No | Optional. Filtering results |
| `orderBy` | `string` | query | No | Optional. Hint for how to order the results |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `GoogleCloudOsconfigV2__ListPolicyOrchestratorsResponse`

```typescript
const res = await osconfig.policyOrchestrators.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `osconfig.organizations.locations.global.policyOrchestrators.get`

**GET** `v2/{+name}`

Retrieves an existing policy orchestrator, parented by an organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name. |

**Response**: `GoogleCloudOsconfigV2__PolicyOrchestrator`

```typescript
const res = await osconfig.policyOrchestrators.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `osconfig.organizations.locations.global.policyOrchestrators.patch`

**PATCH** `v2/{+name}`

Updates an existing policy orchestrator, parented by an organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Identifier. In form of * `organizations/{organization_id}/locations/global/policyOrchestrators/{orchestrat... |
| `updateMask` | `string` | query | No | Optional. The list of fields to merge into the existing policy orchestrator. A special ["*"] field mask can be used t... |

**Request body**: `GoogleCloudOsconfigV2__PolicyOrchestrator`

**Response**: `Operation`

```typescript
const res = await osconfig.policyOrchestrators.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `osconfig.organizations.locations.global.policyOrchestrators.delete`

**DELETE** `v2/{+name}`

Deletes an existing policy orchestrator resource, parented by an organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource to be deleted. |
| `etag` | `string` | query | No | Optional. The current etag of the policy orchestrator. If an etag is provided and does not match the current etag of ... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `Operation`

```typescript
const res = await osconfig.policyOrchestrators.delete({
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

### `FixedOrPercent`

Message encapsulating a value that can be either absolute ("fixed") or relative ("percent") to a value.

| Property | Type | Description |
|----------|------|-------------|
| `fixed` | `integer` | Specifies a fixed value. |
| `percent` | `integer` | Specifies the relative value defined as a percentage, which will be multiplied by a reference value. |

### `GoogleCloudOsconfigCommonV1__OperationMetadata`

Represents the metadata of a generic long-running operation.

| Property | Type | Description |
|----------|------|-------------|
| `apiVersion` | `string` | Output only. API version used to start the operation. |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `requestedCancellation` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. Operations ... |
| `statusMessage` | `string` | Output only. Human-readable status of the operation, if any. |
| `target` | `string` | Output only. Server-defined resource path for the target of the operation. |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `GoogleCloudOsconfigCommonV1alpha__OperationMetadata`

Represents the metadata of a generic long-running operation.

| Property | Type | Description |
|----------|------|-------------|
| `apiVersion` | `string` | Output only. API version used to start the operation. |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `requestedCancellation` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. Operations ... |
| `statusMessage` | `string` | Output only. Human-readable status of the operation, if any. |
| `target` | `string` | Output only. Server-defined resource path for the target of the operation. |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `GoogleCloudOsconfigCommonV1main__OperationMetadata`

Represents the metadata of a generic long-running operation.

| Property | Type | Description |
|----------|------|-------------|
| `apiVersion` | `string` | Output only. API version used to start the operation. |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `requestedCancellation` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. Operations ... |
| `statusMessage` | `string` | Output only. Human-readable status of the operation, if any. |
| `target` | `string` | Output only. Server-defined resource path for the target of the operation. |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `GoogleCloudOsconfigV1__OSPolicyAssignmentOperationMetadata`

OS policy assignment operation metadata provided by OS policy assignment API methods that return long running operations.

| Property | Type | Description |
|----------|------|-------------|
| `apiMethod` | `string` | The OS policy assignment API method. |
| `osPolicyAssignment` | `string` | Reference to the `OSPolicyAssignment` API resource. Format: `projects/{project_number}/locations/... |
| `rolloutStartTime` | `string` | Rollout start time |
| `rolloutState` | `string` | State of the rollout |
| `rolloutUpdateTime` | `string` | Rollout update time |

### `GoogleCloudOsconfigV2_OrchestrationScope_LocationSelector`

Selector containing locations in scope.

| Property | Type | Description |
|----------|------|-------------|
| `includedLocations` | `array<string>` | Optional. Names of the locations in scope. Format: `us-central1-a` |

### `GoogleCloudOsconfigV2_OrchestrationScope_ResourceHierarchySelector`

Selector containing Cloud Resource Manager resource hierarchy nodes.

| Property | Type | Description |
|----------|------|-------------|
| `includedFolders` | `array<string>` | Optional. Names of the folders in scope. Format: `folders/{folder_id}` |
| `includedProjects` | `array<string>` | Optional. Names of the projects in scope. Format: `projects/{project_number}` |

### `GoogleCloudOsconfigV2_OrchestrationScope_Selector`

Selector for the resources in scope of orchestration.

| Property | Type | Description |
|----------|------|-------------|
| `locationSelector` | `GoogleCloudOsconfigV2_OrchestrationScope_LocationSelector` | Selector for selecting locations. |
| `resourceHierarchySelector` | `GoogleCloudOsconfigV2_OrchestrationScope_ResourceHierarchySelector` | Selector for selecting resource hierarchy. |

### `GoogleCloudOsconfigV2_PolicyOrchestrator_IterationState`

Describes the state of a single iteration of the orchestrator.

| Property | Type | Description |
|----------|------|-------------|
| `error` | `Status` | Output only. Error thrown in the wave iteration. |
| `failedActions` | `string` | Output only. Number of orchestration actions which failed so far. For more details, query the Clo... |
| `finishTime` | `string` | Output only. Finish time of the wave iteration. |
| `iterationId` | `string` | Output only. Unique identifier of the iteration. |
| `performedActions` | `string` | Output only. Overall number of actions done by the orchestrator so far. |
| `progress` | `number` | Output only. An estimated percentage of the progress. Number between 0 and 100. |
| `startTime` | `string` | Output only. Start time of the wave iteration. |
| `state` | `string` | Output only. State of the iteration. |

### `GoogleCloudOsconfigV2_PolicyOrchestrator_OrchestrationState`

Describes the state of the orchestration process.

| Property | Type | Description |
|----------|------|-------------|
| `currentIterationState` | `GoogleCloudOsconfigV2_PolicyOrchestrator_IterationState` | Output only. Current Wave iteration state. |
| `previousIterationState` | `GoogleCloudOsconfigV2_PolicyOrchestrator_IterationState` | Output only. Previous Wave iteration state. |

### `GoogleCloudOsconfigV2__ListPolicyOrchestratorsResponse`

Response for the list policy orchestrator resources.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `policyOrchestrators` | `array<GoogleCloudOsconfigV2__PolicyOrchestrator>` | The policy orchestrators for the specified parent resource. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `GoogleCloudOsconfigV2__OperationMetadata`

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

### `GoogleCloudOsconfigV2__OrchestratedResource`

Represents a resource that is being orchestrated by the policy orchestrator.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | Optional. ID of the resource to be used while generating set of affected resources. For UPSERT ac... |
| `osPolicyAssignmentV1Payload` | `OSPolicyAssignment` | Optional. OSPolicyAssignment resource to be created, updated or deleted. Name field is ignored an... |

### `GoogleCloudOsconfigV2__OrchestrationScope`

Defines a set of selectors which drive which resources are in scope of policy orchestration.

| Property | Type | Description |
|----------|------|-------------|
| `selectors` | `array<GoogleCloudOsconfigV2_OrchestrationScope_Selector>` | Optional. Selectors of the orchestration scope. There is a logical AND between each selector defi... |

### `GoogleCloudOsconfigV2__PolicyOrchestrator`

PolicyOrchestrator helps managing project+zone level policy resources (e.g. OS Policy Assignments), by providing tools to create, update and delete them across projects and locations, at scale. Policy orchestrator functions as an endless loop. Each iteration orchestrator computes a set of resources that should be affected, then progressively applies changes to them. If for some reason this set of resources changes over time (e.g. new projects are added), the future loop iterations will address that. Orchestrator can either upsert or delete policy resources. For more details, see the description of the `action`, and `orchestrated_resource` fields. Note that policy orchestrator do not "manage" the resources it creates. Every iteration is independent and only minimal history of past actions is retained (apart from Cloud Logging). If orchestrator gets deleted, it does not affect the resources it created in the past. Those will remain where they were. Same applies if projects are removed from the orchestrator's scope.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` | Required. Action to be done by the orchestrator in `projects/{project_id}/zones/{zone_id}` locati... |
| `createTime` | `string` | Output only. Timestamp when the policy orchestrator resource was created. |
| `description` | `string` | Optional. Freeform text describing the purpose of the resource. |
| `etag` | `string` | Output only. This checksum is computed by the server based on the value of other fields, and may ... |
| `labels` | `object` | Optional. Labels as key value pairs |
| `name` | `string` | Immutable. Identifier. In form of * `organizations/{organization_id}/locations/global/policyOrche... |
| `orchestratedResource` | `GoogleCloudOsconfigV2__OrchestratedResource` | Required. Resource to be orchestrated by the policy orchestrator. |
| `orchestrationScope` | `GoogleCloudOsconfigV2__OrchestrationScope` | Optional. Defines scope for the orchestration, in context of the enclosing PolicyOrchestrator res... |
| `orchestrationState` | `GoogleCloudOsconfigV2_PolicyOrchestrator_OrchestrationState` | Output only. State of the orchestration. |
| `reconciling` | `boolean` | Output only. Set to true, if the there are ongoing changes being applied by the orchestrator. |
| `state` | `string` | Optional. State of the orchestrator. Can be updated to change orchestrator behaviour. Allowed val... |
| `updateTime` | `string` | Output only. Timestamp when the policy orchestrator resource was last modified. |

### `GoogleCloudOsconfigV2beta__OperationMetadata`

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

### `ListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<Operation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `MessageSet`

This is proto2's version of MessageSet. DEPRECATED: DO NOT USE FOR NEW FIELDS. If you are using editions or proto2, please make your own extendable messages for your use case. If you are using proto3, please use `Any` instead. MessageSet was the implementation of extensions for proto1. When proto2 was introduced, extensions were implemented as a first-class feature. This schema for MessageSet was meant to be a "bridge" solution to migrate MessageSet-bearing messages from proto1 to proto2. This schema has been open-sourced only to facilitate the migration of Google products with MessageSet-bearing messages to open-source environments.

### `OSPolicy`

An OS policy defines the desired state configuration for a VM.

| Property | Type | Description |
|----------|------|-------------|
| `allowNoResourceGroupMatch` | `boolean` | This flag determines the OS policy compliance status when none of the resource groups within the ... |
| `description` | `string` | Policy description. Length of the description is limited to 1024 characters. |
| `id` | `string` | Required. The id of the OS policy with the following restrictions: * Must contain only lowercase ... |
| `mode` | `string` | Required. Policy mode |
| `resourceGroups` | `array<OSPolicyResourceGroup>` | Required. List of resource groups for the policy. For a particular VM, resource groups are evalua... |

### `OSPolicyAssignment`

OS policy assignment is an API resource that is used to apply a set of OS policies to a dynamically targeted group of Compute Engine VM instances. An OS policy is used to define the desired state configuration for a Compute Engine VM instance through a set of configuration resources that provide capabilities such as installing or removing software packages, or executing a script. For more information about the OS policy resource definitions and examples, see [OS policy and OS policy assignment](https://cloud.google.com/compute/docs/os-configuration-management/working-with-os-policies).

| Property | Type | Description |
|----------|------|-------------|
| `baseline` | `boolean` | Output only. Indicates that this revision has been successfully rolled out in this zone and new V... |
| `deleted` | `boolean` | Output only. Indicates that this revision deletes the OS policy assignment. |
| `description` | `string` | OS policy assignment description. Length of the description is limited to 1024 characters. |
| `etag` | `string` | The etag for this OS policy assignment. If this is provided on update, it must match the server's... |
| `instanceFilter` | `OSPolicyAssignmentInstanceFilter` | Required. Filter to select VMs. |
| `name` | `string` | Resource name. Format: `projects/{project_number}/locations/{location}/osPolicyAssignments/{os_po... |
| `osPolicies` | `array<OSPolicy>` | Required. List of OS policies to be applied to the VMs. |
| `reconciling` | `boolean` | Output only. Indicates that reconciliation is in progress for the revision. This value is `true` ... |
| `revisionCreateTime` | `string` | Output only. The timestamp that the revision was created. |
| `revisionId` | `string` | Output only. The assignment revision ID A new revision is committed whenever a rollout is trigger... |
| `rollout` | `OSPolicyAssignmentRollout` | Required. Rollout to deploy the OS policy assignment. A rollout is triggered in the following sit... |
| `rolloutState` | `string` | Output only. OS policy assignment rollout state |
| `uid` | `string` | Output only. Server generated unique id for the OS policy assignment resource. |

### `OSPolicyAssignmentInstanceFilter`

Filters to select target VMs for an assignment. If more than one filter criteria is specified below, a VM will be selected if and only if it satisfies all of them.

| Property | Type | Description |
|----------|------|-------------|
| `all` | `boolean` | Target all VMs in the project. If true, no other criteria is permitted. |
| `exclusionLabels` | `array<OSPolicyAssignmentLabelSet>` | List of label sets used for VM exclusion. If the list has more than one label set, the VM is excl... |
| `inclusionLabels` | `array<OSPolicyAssignmentLabelSet>` | List of label sets used for VM inclusion. If the list has more than one `LabelSet`, the VM is inc... |
| `inventories` | `array<OSPolicyAssignmentInstanceFilterInventory>` | List of inventories to select VMs. A VM is selected if its inventory data matches at least one of... |

### `OSPolicyAssignmentInstanceFilterInventory`

VM inventory details.

| Property | Type | Description |
|----------|------|-------------|
| `osShortName` | `string` | Required. The OS short name |
| `osVersion` | `string` | The OS version Prefix matches are supported if asterisk(*) is provided as the last character. For... |

### `OSPolicyAssignmentLabelSet`

Message representing label set. * A label is a key value pair set for a VM. * A LabelSet is a set of labels. * Labels within a LabelSet are ANDed. In other words, a LabelSet is applicable for a VM only if it matches all the labels in the LabelSet. * Example: A LabelSet with 2 labels: `env=prod` and `type=webserver` will only be applicable for those VMs with both labels present.

| Property | Type | Description |
|----------|------|-------------|
| `labels` | `object` | Labels are identified by key/value pairs in this map. A VM should contain all the key/value pairs... |

### `OSPolicyAssignmentOperationMetadata`

OS policy assignment operation metadata provided by OS policy assignment API methods that return long running operations.

| Property | Type | Description |
|----------|------|-------------|
| `apiMethod` | `string` | The OS policy assignment API method. |
| `osPolicyAssignment` | `string` | Reference to the `OSPolicyAssignment` API resource. Format: `projects/{project_number}/locations/... |
| `rolloutStartTime` | `string` | Rollout start time |
| `rolloutState` | `string` | State of the rollout |
| `rolloutUpdateTime` | `string` | Rollout update time |

### `OSPolicyAssignmentRollout`

Message to configure the rollout at the zonal level for the OS policy assignment.

| Property | Type | Description |
|----------|------|-------------|
| `disruptionBudget` | `FixedOrPercent` | Required. The maximum number (or percentage) of VMs per zone to disrupt at any given moment. |
| `minWaitDuration` | `string` | Required. This determines the minimum duration of time to wait after the configuration changes ar... |

### `OSPolicyInventoryFilter`

Filtering criteria to select VMs based on inventory details.

| Property | Type | Description |
|----------|------|-------------|
| `osShortName` | `string` | Required. The OS short name |
| `osVersion` | `string` | The OS version Prefix matches are supported if asterisk(*) is provided as the last character. For... |

### `OSPolicyResource`

An OS policy resource is used to define the desired state configuration and provides a specific functionality like installing/removing packages, executing a script etc. The system ensures that resources are always in their desired state by taking necessary actions if they have drifted from their desired state.

| Property | Type | Description |
|----------|------|-------------|
| `exec` | `OSPolicyResourceExecResource` | Exec resource |
| `file` | `OSPolicyResourceFileResource` | File resource |
| `id` | `string` | Required. The id of the resource with the following restrictions: * Must contain only lowercase l... |
| `pkg` | `OSPolicyResourcePackageResource` | Package resource |
| `repository` | `OSPolicyResourceRepositoryResource` | Package repository resource |

### `OSPolicyResourceExecResource`

A resource that allows executing scripts on the VM. The `ExecResource` has 2 stages: `validate` and `enforce` and both stages accept a script as an argument to execute. When the `ExecResource` is applied by the agent, it first executes the script in the `validate` stage. The `validate` stage can signal that the `ExecResource` is already in the desired state by returning an exit code of `100`. If the `ExecResource` is not in the desired state, it should return an exit code of `101`. Any other exit code returned by this stage is considered an error. If the `ExecResource` is not in the desired state based on the exit code from the `validate` stage, the agent proceeds to execute the script from the `enforce` stage. If the `ExecResource` is already in the desired state, the `enforce` stage will not be run. Similar to `validate` stage, the `enforce` stage should return an exit code of `100` to indicate that the resource in now in its desired state. Any other exit code is considered an error. NOTE: An exit code of `100` was chosen over `0` (and `101` vs `1`) to have an explicit indicator of `in desired state`, `not in desired state` and errors. Because, for example, Powershell will always return an exit code of `0` unless an `exit` statement is provided in the script. So, for reasons of consistency and being explicit, exit codes `100` and `101` were chosen.

| Property | Type | Description |
|----------|------|-------------|
| `enforce` | `OSPolicyResourceExecResourceExec` | What to run to bring this resource into the desired state. An exit code of 100 indicates "success... |
| `validate` | `OSPolicyResourceExecResourceExec` | Required. What to run to validate this resource is in the desired state. An exit code of 100 indi... |

### `OSPolicyResourceExecResourceExec`

A file or script to execute.

| Property | Type | Description |
|----------|------|-------------|
| `args` | `array<string>` | Optional arguments to pass to the source during execution. |
| `file` | `OSPolicyResourceFile` | A remote or local file. |
| `interpreter` | `string` | Required. The script interpreter to use. |
| `outputFilePath` | `string` | Only recorded for enforce Exec. Path to an output file (that is created by this Exec) whose conte... |
| `script` | `string` | An inline script. The size of the script is limited to 32KiB. |

### `OSPolicyResourceFile`

A remote or local file.

| Property | Type | Description |
|----------|------|-------------|
| `allowInsecure` | `boolean` | Defaults to false. When false, files are subject to validations based on the file type: Remote: A... |
| `gcs` | `OSPolicyResourceFileGcs` | A Cloud Storage object. |
| `localPath` | `string` | A local path within the VM to use. |
| `remote` | `OSPolicyResourceFileRemote` | A generic remote file. |

### `OSPolicyResourceFileGcs`

Specifies a file available as a Cloud Storage Object.

| Property | Type | Description |
|----------|------|-------------|
| `bucket` | `string` | Required. Bucket of the Cloud Storage object. |
| `generation` | `string` | Generation number of the Cloud Storage object. |
| `object` | `string` | Required. Name of the Cloud Storage object. |

### `OSPolicyResourceFileRemote`

Specifies a file available via some URI.

| Property | Type | Description |
|----------|------|-------------|
| `sha256Checksum` | `string` | SHA256 checksum of the remote file. |
| `uri` | `string` | Required. URI from which to fetch the object. It should contain both the protocol and path follow... |

### `OSPolicyResourceFileResource`

A resource that manages the state of a file.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | A a file with this content. The size of the content is limited to 32KiB. |
| `file` | `OSPolicyResourceFile` | A remote or local source. |
| `path` | `string` | Required. The absolute path of the file within the VM. |
| `permissions` | `string` | Consists of three octal digits which represent, in order, the permissions of the owner, group, an... |
| `state` | `string` | Required. Desired state of the file. |

### `OSPolicyResourceGroup`

Resource groups provide a mechanism to group OS policy resources. Resource groups enable OS policy authors to create a single OS policy to be applied to VMs running different operating Systems. When the OS policy is applied to a target VM, the appropriate resource group within the OS policy is selected based on the `OSFilter` specified within the resource group.

| Property | Type | Description |
|----------|------|-------------|
| `inventoryFilters` | `array<OSPolicyInventoryFilter>` | List of inventory filters for the resource group. The resources in this resource group are applie... |
| `resources` | `array<OSPolicyResource>` | Required. List of resources configured for this resource group. The resources are executed in the... |

### `OSPolicyResourcePackageResource`

A resource that manages a system package.

| Property | Type | Description |
|----------|------|-------------|
| `apt` | `OSPolicyResourcePackageResourceAPT` | A package managed by Apt. |
| `deb` | `OSPolicyResourcePackageResourceDeb` | A deb package file. |
| `desiredState` | `string` | Required. The desired state the agent should maintain for this package. |
| `googet` | `OSPolicyResourcePackageResourceGooGet` | A package managed by GooGet. |
| `msi` | `OSPolicyResourcePackageResourceMSI` | An MSI package. |
| `rpm` | `OSPolicyResourcePackageResourceRPM` | An rpm package file. |
| `yum` | `OSPolicyResourcePackageResourceYUM` | A package managed by YUM. |
| `zypper` | `OSPolicyResourcePackageResourceZypper` | A package managed by Zypper. |

### `OSPolicyResourcePackageResourceAPT`

A package managed by APT. - install: `apt-get update && apt-get -y install [name]` - remove: `apt-get -y remove [name]`

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. Package name. |

### `OSPolicyResourcePackageResourceDeb`

A deb package file. dpkg packages only support INSTALLED state.

| Property | Type | Description |
|----------|------|-------------|
| `pullDeps` | `boolean` | Whether dependencies should also be installed. - install when false: `dpkg -i package` - install ... |
| `source` | `OSPolicyResourceFile` | Required. A deb package. |

### `OSPolicyResourcePackageResourceGooGet`

A package managed by GooGet. - install: `googet -noconfirm install package` - remove: `googet -noconfirm remove package`

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. Package name. |

### `OSPolicyResourcePackageResourceMSI`

An MSI package. MSI packages only support INSTALLED state.

| Property | Type | Description |
|----------|------|-------------|
| `properties` | `array<string>` | Additional properties to use during installation. This should be in the format of Property=Settin... |
| `source` | `OSPolicyResourceFile` | Required. The MSI package. |

### `OSPolicyResourcePackageResourceRPM`

An RPM package file. RPM packages only support INSTALLED state.

| Property | Type | Description |
|----------|------|-------------|
| `pullDeps` | `boolean` | Whether dependencies should also be installed. - install when false: `rpm --upgrade --replacepkgs... |
| `source` | `OSPolicyResourceFile` | Required. An rpm package. |

### `OSPolicyResourcePackageResourceYUM`

A package managed by YUM. - install: `yum -y install package` - remove: `yum -y remove package`

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. Package name. |

### `OSPolicyResourcePackageResourceZypper`

A package managed by Zypper. - install: `zypper -y install package` - remove: `zypper -y rm package`

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. Package name. |

### `OSPolicyResourceRepositoryResource`

A resource that manages a package repository.

| Property | Type | Description |
|----------|------|-------------|
| `apt` | `OSPolicyResourceRepositoryResourceAptRepository` | An Apt Repository. |
| `goo` | `OSPolicyResourceRepositoryResourceGooRepository` | A Goo Repository. |
| `yum` | `OSPolicyResourceRepositoryResourceYumRepository` | A Yum Repository. |
| `zypper` | `OSPolicyResourceRepositoryResourceZypperRepository` | A Zypper Repository. |

### `OSPolicyResourceRepositoryResourceAptRepository`

Represents a single apt package repository. These will be added to a repo file that will be managed at `/etc/apt/sources.list.d/google_osconfig.list`.

| Property | Type | Description |
|----------|------|-------------|
| `archiveType` | `string` | Required. Type of archive files in this repository. |
| `components` | `array<string>` | Required. List of components for this repository. Must contain at least one item. |
| `distribution` | `string` | Required. Distribution of this repository. |
| `gpgKey` | `string` | URI of the key file for this repository. The agent maintains a keyring at `/etc/apt/trusted.gpg.d... |
| `uri` | `string` | Required. URI for this repository. |

### `OSPolicyResourceRepositoryResourceGooRepository`

Represents a Goo package repository. These are added to a repo file that is managed at `C:/ProgramData/GooGet/repos/google_osconfig.repo`.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. The name of the repository. |
| `url` | `string` | Required. The url of the repository. |

### `OSPolicyResourceRepositoryResourceYumRepository`

Represents a single yum package repository. These are added to a repo file that is managed at `/etc/yum.repos.d/google_osconfig.repo`.

| Property | Type | Description |
|----------|------|-------------|
| `baseUrl` | `string` | Required. The location of the repository directory. |
| `displayName` | `string` | The display name of the repository. |
| `gpgKeys` | `array<string>` | URIs of GPG keys. |
| `id` | `string` | Required. A one word, unique name for this repository. This is the `repo id` in the yum config fi... |

### `OSPolicyResourceRepositoryResourceZypperRepository`

Represents a single zypper package repository. These are added to a repo file that is managed at `/etc/zypp/repos.d/google_osconfig.repo`.

| Property | Type | Description |
|----------|------|-------------|
| `baseUrl` | `string` | Required. The location of the repository directory. |
| `displayName` | `string` | The display name of the repository. |
| `gpgKeys` | `array<string>` | URIs of GPG keys. |
| `id` | `string` | Required. A one word, unique name for this repository. This is the `repo id` in the zypper config... |

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `StatusProto`

Wire-format for a Status object

| Property | Type | Description |
|----------|------|-------------|
| `canonicalCode` | `integer` | copybara:strip_begin(b/383363683) copybara:strip_end_and_replace optional int32 canonical_code = 6; |
| `code` | `integer` | Numeric code drawn from the space specified below. Often, this is the canonical error space, and ... |
| `message` | `string` | Detail message copybara:strip_begin(b/383363683) copybara:strip_end_and_replace optional string m... |
| `messageSet` | `MessageSet` | message_set associates an arbitrary proto message with the status. copybara:strip_begin(b/3833636... |
| `space` | `string` | copybara:strip_begin(b/383363683) Space to which this status belongs copybara:strip_end_and_repla... |

