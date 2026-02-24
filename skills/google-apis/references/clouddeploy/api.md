# Cloud Deploy API - API Reference

**Version**: `v1` | **Methods**: 61 | **Schemas**: 168

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `clouddeploy.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `clouddeploy.projects.locations.getConfig` | GET | `v1/{+name}` | Gets the configuration for a location. |
| `clouddeploy.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `clouddeploy.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `clouddeploy.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `clouddeploy.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `clouddeploy.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `clouddeploy.projects.locations.customTargetTypes.list` | GET | `v1/{+parent}/customTargetTypes` | Lists CustomTargetTypes in a given project and location. |
| `clouddeploy.projects.locations.customTargetTypes.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `clouddeploy.projects.locations.customTargetTypes.get` | GET | `v1/{+name}` | Gets details of a single CustomTargetType. |
| `clouddeploy.projects.locations.customTargetTypes.create` | POST | `v1/{+parent}/customTargetTypes` | Creates a new CustomTargetType in a given project and location. |
| `clouddeploy.projects.locations.customTargetTypes.patch` | PATCH | `v1/{+name}` | Updates a single CustomTargetType. |
| `clouddeploy.projects.locations.customTargetTypes.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `clouddeploy.projects.locations.customTargetTypes.delete` | DELETE | `v1/{+name}` | Deletes a single CustomTargetType. |
| `clouddeploy.projects.locations.deliveryPipelines.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single DeliveryPipeline. |
| `clouddeploy.projects.locations.deliveryPipelines.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `clouddeploy.projects.locations.deliveryPipelines.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `clouddeploy.projects.locations.deliveryPipelines.delete` | DELETE | `v1/{+name}` | Deletes a single DeliveryPipeline. |
| `clouddeploy.projects.locations.deliveryPipelines.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `clouddeploy.projects.locations.deliveryPipelines.list` | GET | `v1/{+parent}/deliveryPipelines` | Lists DeliveryPipelines in a given project and location. |
| `clouddeploy.projects.locations.deliveryPipelines.get` | GET | `v1/{+name}` | Gets details of a single DeliveryPipeline. |
| `clouddeploy.projects.locations.deliveryPipelines.rollbackTarget` | POST | `v1/{+name}:rollbackTarget` | Creates a `Rollout` to roll back the specified target. |
| `clouddeploy.projects.locations.deliveryPipelines.create` | POST | `v1/{+parent}/deliveryPipelines` | Creates a new DeliveryPipeline in a given project and location. |
| `clouddeploy.projects.locations.deliveryPipelines.automations.get` | GET | `v1/{+name}` | Gets details of a single Automation. |
| `clouddeploy.projects.locations.deliveryPipelines.automations.delete` | DELETE | `v1/{+name}` | Deletes a single Automation resource. |
| `clouddeploy.projects.locations.deliveryPipelines.automations.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single Automation resource. |
| `clouddeploy.projects.locations.deliveryPipelines.automations.create` | POST | `v1/{+parent}/automations` | Creates a new Automation in a given project and location. |
| `clouddeploy.projects.locations.deliveryPipelines.automations.list` | GET | `v1/{+parent}/automations` | Lists Automations in a given project and location. |
| `clouddeploy.projects.locations.deliveryPipelines.releases.list` | GET | `v1/{+parent}/releases` | Lists Releases in a given project and location. |
| `clouddeploy.projects.locations.deliveryPipelines.releases.create` | POST | `v1/{+parent}/releases` | Creates a new Release in a given project and location. |
| `clouddeploy.projects.locations.deliveryPipelines.releases.abandon` | POST | `v1/{+name}:abandon` | Abandons a Release in the Delivery Pipeline. |
| `clouddeploy.projects.locations.deliveryPipelines.releases.get` | GET | `v1/{+name}` | Gets details of a single Release. |
| `clouddeploy.projects.locations.deliveryPipelines.releases.rollouts.get` | GET | `v1/{+name}` | Gets details of a single Rollout. |
| `clouddeploy.projects.locations.deliveryPipelines.releases.rollouts.ignoreJob` | POST | `v1/{+rollout}:ignoreJob` | Ignores the specified Job in a Rollout. |
| `clouddeploy.projects.locations.deliveryPipelines.releases.rollouts.approve` | POST | `v1/{+name}:approve` | Approves a Rollout. |
| `clouddeploy.projects.locations.deliveryPipelines.releases.rollouts.cancel` | POST | `v1/{+name}:cancel` | Cancels a Rollout in a given project and location. |
| `clouddeploy.projects.locations.deliveryPipelines.releases.rollouts.retryJob` | POST | `v1/{+rollout}:retryJob` | Retries the specified Job in a Rollout. |
| `clouddeploy.projects.locations.deliveryPipelines.releases.rollouts.list` | GET | `v1/{+parent}/rollouts` | Lists Rollouts in a given project and location. |
| `clouddeploy.projects.locations.deliveryPipelines.releases.rollouts.advance` | POST | `v1/{+name}:advance` | Advances a Rollout in a given project and location. |
| `clouddeploy.projects.locations.deliveryPipelines.releases.rollouts.create` | POST | `v1/{+parent}/rollouts` | Creates a new Rollout in a given project and location. |
| `clouddeploy.projects.locations.deliveryPipelines.releases.rollouts.jobRuns.get` | GET | `v1/{+name}` | Gets details of a single JobRun. |
| `clouddeploy.projects.locations.deliveryPipelines.releases.rollouts.jobRuns.terminate` | POST | `v1/{+name}:terminate` | Terminates a Job Run in a given project and location. |
| `clouddeploy.projects.locations.deliveryPipelines.releases.rollouts.jobRuns.list` | GET | `v1/{+parent}/jobRuns` | Lists JobRuns in a given project and location. |
| `clouddeploy.projects.locations.deliveryPipelines.automationRuns.list` | GET | `v1/{+parent}/automationRuns` | Lists AutomationRuns in a given project and location. |
| `clouddeploy.projects.locations.deliveryPipelines.automationRuns.cancel` | POST | `v1/{+name}:cancel` | Cancels an AutomationRun. The `state` of the `AutomationRun` after cancelling is `CANCELLED`. `Ca... |
| `clouddeploy.projects.locations.deliveryPipelines.automationRuns.get` | GET | `v1/{+name}` | Gets details of a single AutomationRun. |
| `clouddeploy.projects.locations.targets.list` | GET | `v1/{+parent}/targets` | Lists Targets in a given project and location. |
| `clouddeploy.projects.locations.targets.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single Target. |
| `clouddeploy.projects.locations.targets.create` | POST | `v1/{+parent}/targets` | Creates a new Target in a given project and location. |
| `clouddeploy.projects.locations.targets.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `clouddeploy.projects.locations.targets.delete` | DELETE | `v1/{+name}` | Deletes a single Target. |
| `clouddeploy.projects.locations.targets.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `clouddeploy.projects.locations.targets.get` | GET | `v1/{+name}` | Gets details of a single Target. |
| `clouddeploy.projects.locations.targets.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `clouddeploy.projects.locations.deployPolicies.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `clouddeploy.projects.locations.deployPolicies.delete` | DELETE | `v1/{+name}` | Deletes a single DeployPolicy. |
| `clouddeploy.projects.locations.deployPolicies.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `clouddeploy.projects.locations.deployPolicies.create` | POST | `v1/{+parent}/deployPolicies` | Creates a new DeployPolicy in a given project and location. |
| `clouddeploy.projects.locations.deployPolicies.list` | GET | `v1/{+parent}/deployPolicies` | Lists DeployPolicies in a given project and location. |
| `clouddeploy.projects.locations.deployPolicies.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single DeployPolicy. |
| `clouddeploy.projects.locations.deployPolicies.get` | GET | `v1/{+name}` | Gets details of a single DeployPolicy. |

### `clouddeploy.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await clouddeploy.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.getConfig`

**GET** `v1/{+name}`

Gets the configuration for a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of requested configuration. |

**Response**: `Config`

```typescript
const res = await clouddeploy.locations.getConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.list`

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
const res = await clouddeploy.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await clouddeploy.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await clouddeploy.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await clouddeploy.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.operations.list`

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
const res = await clouddeploy.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.customTargetTypes.list`

**GET** `v1/{+parent}/customTargetTypes`

Lists CustomTargetTypes in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent that owns this collection of custom target types. Format must be `projects/{project_id}/location... |
| `filter` | `string` | query | No | Optional. Filter custom target types to be returned. See https://google.aip.dev/160 for more details. |
| `orderBy` | `string` | query | No | Optional. Field to sort by. See https://google.aip.dev/132#ordering for more details. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of `CustomTargetType` objects to return. The service may return fewer than this value. I... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListCustomTargetTypes` call. Provide this to retrieve the subsequen... |

**Response**: `ListCustomTargetTypesResponse`

```typescript
const res = await clouddeploy.customTargetTypes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.customTargetTypes.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await clouddeploy.customTargetTypes.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.customTargetTypes.get`

**GET** `v1/{+name}`

Gets details of a single CustomTargetType.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the `CustomTargetType`. Format must be `projects/{project_id}/locations/{location_name}/customTarge... |

**Response**: `CustomTargetType`

```typescript
const res = await clouddeploy.customTargetTypes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.customTargetTypes.create`

**POST** `v1/{+parent}/customTargetTypes`

Creates a new CustomTargetType in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent collection in which the `CustomTargetType` must be created. The format is `projects/{project_id}... |
| `customTargetTypeId` | `string` | query | No | Required. ID of the `CustomTargetType`. |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `validateOnly` | `boolean` | query | No | Optional. If set to true, the request is validated and the user is provided with an expected result, but no actual ch... |

**Request body**: `CustomTargetType`

**Response**: `Operation`

```typescript
const res = await clouddeploy.customTargetTypes.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.customTargetTypes.patch`

**PATCH** `v1/{+name}`

Updates a single CustomTargetType.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Name of the `CustomTargetType`. Format is `projects/{project}/locations/{location}/customTargetTypes/{cus... |
| `allowMissing` | `boolean` | query | No | Optional. If set to true, updating a `CustomTargetType` that does not exist will result in the creation of a new `Cus... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten by the update in the `CustomTargetType` resource... |
| `validateOnly` | `boolean` | query | No | Optional. If set to true, the request is validated and the user is provided with an expected result, but no actual ch... |

**Request body**: `CustomTargetType`

**Response**: `Operation`

```typescript
const res = await clouddeploy.customTargetTypes.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.customTargetTypes.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await clouddeploy.customTargetTypes.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.customTargetTypes.delete`

**DELETE** `v1/{+name}`

Deletes a single CustomTargetType.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the `CustomTargetType` to delete. Format must be `projects/{project_id}/locations/{location_nam... |
| `allowMissing` | `boolean` | query | No | Optional. If set to true, then deleting an already deleted or non-existing `CustomTargetType` will succeed. |
| `etag` | `string` | query | No | Optional. This checksum is computed by the server based on the value of other fields, and may be sent on update and d... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `validateOnly` | `boolean` | query | No | Optional. If set to true, the request is validated but no actual change is made. |

**Response**: `Operation`

```typescript
const res = await clouddeploy.customTargetTypes.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.deliveryPipelines.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single DeliveryPipeline.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Name of the `DeliveryPipeline`. Format is `projects/{project}/locations/{location}/deliveryPipelines/{del... |
| `allowMissing` | `boolean` | query | No | Optional. If set to true, updating a `DeliveryPipeline` that does not exist will result in the creation of a new `Del... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten by the update in the `DeliveryPipeline` resource... |
| `validateOnly` | `boolean` | query | No | Optional. If set to true, the request is validated and the user is provided with an expected result, but no actual ch... |

**Request body**: `DeliveryPipeline`

**Response**: `Operation`

```typescript
const res = await clouddeploy.deliveryPipelines.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.deliveryPipelines.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await clouddeploy.deliveryPipelines.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.deliveryPipelines.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await clouddeploy.deliveryPipelines.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.deliveryPipelines.delete`

**DELETE** `v1/{+name}`

Deletes a single DeliveryPipeline.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the `DeliveryPipeline` to delete. The format is `projects/{project_id}/locations/{location_name... |
| `allowMissing` | `boolean` | query | No | Optional. If set to true, then deleting an already deleted or non-existing `DeliveryPipeline` will succeed. |
| `etag` | `string` | query | No | Optional. This checksum is computed by the server based on the value of other fields, and may be sent on update and d... |
| `force` | `boolean` | query | No | Optional. If set to true, all child resources under this pipeline will also be deleted. Otherwise, the request will o... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request and preview the review, but do not actually post it. |

**Response**: `Operation`

```typescript
const res = await clouddeploy.deliveryPipelines.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.deliveryPipelines.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await clouddeploy.deliveryPipelines.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.deliveryPipelines.list`

**GET** `v1/{+parent}/deliveryPipelines`

Lists DeliveryPipelines in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of pipelines. Format must be `projects/{project_id}/locations/{locat... |
| `filter` | `string` | query | No | Filter pipelines to be returned. See https://google.aip.dev/160 for more details. |
| `orderBy` | `string` | query | No | Field to sort by. See https://google.aip.dev/132#ordering for more details. |
| `pageSize` | `integer` | query | No | The maximum number of pipelines to return. The service may return fewer than this value. If unspecified, at most 50 p... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListDeliveryPipelines` call. Provide this to retrieve the subsequent page. Wh... |

**Response**: `ListDeliveryPipelinesResponse`

```typescript
const res = await clouddeploy.deliveryPipelines.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.deliveryPipelines.get`

**GET** `v1/{+name}`

Gets details of a single DeliveryPipeline.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the `DeliveryPipeline`. Format must be `projects/{project_id}/locations/{location_name}/deliveryPip... |

**Response**: `DeliveryPipeline`

```typescript
const res = await clouddeploy.deliveryPipelines.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.deliveryPipelines.rollbackTarget`

**POST** `v1/{+name}:rollbackTarget`

Creates a `Rollout` to roll back the specified target.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The `DeliveryPipeline` for which the rollback `Rollout` must be created. The format is `projects/{project_i... |

**Request body**: `RollbackTargetRequest`

**Response**: `RollbackTargetResponse`

```typescript
const res = await clouddeploy.deliveryPipelines.rollbackTarget({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.deliveryPipelines.create`

**POST** `v1/{+parent}/deliveryPipelines`

Creates a new DeliveryPipeline in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent collection in which the `DeliveryPipeline` must be created. The format is `projects/{project_id}... |
| `deliveryPipelineId` | `string` | query | No | Required. ID of the `DeliveryPipeline`. |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `validateOnly` | `boolean` | query | No | Optional. If set to true, the request is validated and the user is provided with an expected result, but no actual ch... |

**Request body**: `DeliveryPipeline`

**Response**: `Operation`

```typescript
const res = await clouddeploy.deliveryPipelines.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.deliveryPipelines.automations.get`

**GET** `v1/{+name}`

Gets details of a single Automation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the `Automation`. Format must be `projects/{project_id}/locations/{location_name}/deliveryPipelines... |

**Response**: `Automation`

```typescript
const res = await clouddeploy.automations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.deliveryPipelines.automations.delete`

**DELETE** `v1/{+name}`

Deletes a single Automation resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the `Automation` to delete. The format is `projects/{project_id}/locations/{location_name}/deli... |
| `allowMissing` | `boolean` | query | No | Optional. If set to true, then deleting an already deleted or non-existing `Automation` will succeed. |
| `etag` | `string` | query | No | Optional. The weak etag of the request. This checksum is computed by the server based on the value of other fields, a... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request and verify whether the resource exists, but do not actually post it. |

**Response**: `Operation`

```typescript
const res = await clouddeploy.automations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.deliveryPipelines.automations.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single Automation resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Name of the `Automation`. Format is `projects/{project}/locations/{location}/deliveryPipelines/{delivery... |
| `allowMissing` | `boolean` | query | No | Optional. If set to true, updating a `Automation` that does not exist will result in the creation of a new `Automation`. |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten by the update in the `Automation` resource. The ... |
| `validateOnly` | `boolean` | query | No | Optional. If set to true, the request is validated and the user is provided with an expected result, but no actual ch... |

**Request body**: `Automation`

**Response**: `Operation`

```typescript
const res = await clouddeploy.automations.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.deliveryPipelines.automations.create`

**POST** `v1/{+parent}/automations`

Creates a new Automation in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent collection in which the `Automation` must be created. The format is `projects/{project_id}/locat... |
| `automationId` | `string` | query | No | Required. ID of the `Automation`. |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `validateOnly` | `boolean` | query | No | Optional. If set to true, the request is validated and the user is provided with an expected result, but no actual ch... |

**Request body**: `Automation`

**Response**: `Operation`

```typescript
const res = await clouddeploy.automations.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.deliveryPipelines.automations.list`

**GET** `v1/{+parent}/automations`

Lists Automations in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent `Delivery Pipeline`, which owns this collection of automations. Format must be `projects/{projec... |
| `filter` | `string` | query | No | Filter automations to be returned. All fields can be used in the filter. |
| `orderBy` | `string` | query | No | Field to sort by. |
| `pageSize` | `integer` | query | No | The maximum number of automations to return. The service may return fewer than this value. If unspecified, at most 50... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListAutomations` call. Provide this to retrieve the subsequent page. When pag... |

**Response**: `ListAutomationsResponse`

```typescript
const res = await clouddeploy.automations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.deliveryPipelines.releases.list`

**GET** `v1/{+parent}/releases`

Lists Releases in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The `DeliveryPipeline` which owns this collection of `Release` objects. |
| `filter` | `string` | query | No | Optional. Filter releases to be returned. See https://google.aip.dev/160 for more details. |
| `orderBy` | `string` | query | No | Optional. Field to sort by. See https://google.aip.dev/132#ordering for more details. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of `Release` objects to return. The service may return fewer than this value. If unspeci... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListReleases` call. Provide this to retrieve the subsequent page. W... |

**Response**: `ListReleasesResponse`

```typescript
const res = await clouddeploy.releases.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.deliveryPipelines.releases.create`

**POST** `v1/{+parent}/releases`

Creates a new Release in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent collection in which the `Release` is created. The format is `projects/{project_id}/locations/{lo... |
| `overrideDeployPolicy` | `string` | query | No | Optional. Deploy policies to override. Format is `projects/{project}/locations/{location}/deployPolicies/{deployPolic... |
| `releaseId` | `string` | query | No | Required. ID of the `Release`. |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `validateOnly` | `boolean` | query | No | Optional. If set to true, the request is validated and the user is provided with an expected result, but no actual ch... |

**Request body**: `Release`

**Response**: `Operation`

```typescript
const res = await clouddeploy.releases.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.deliveryPipelines.releases.abandon`

**POST** `v1/{+name}:abandon`

Abandons a Release in the Delivery Pipeline.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the Release. Format is `projects/{project}/locations/{location}/deliveryPipelines/{deliveryPipeline... |

**Request body**: `AbandonReleaseRequest`

**Response**: `AbandonReleaseResponse`

```typescript
const res = await clouddeploy.releases.abandon({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.deliveryPipelines.releases.get`

**GET** `v1/{+name}`

Gets details of a single Release.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the `Release`. Format must be `projects/{project_id}/locations/{location_name}/deliveryPipelines/{p... |

**Response**: `Release`

```typescript
const res = await clouddeploy.releases.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.deliveryPipelines.releases.rollouts.get`

**GET** `v1/{+name}`

Gets details of a single Rollout.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the `Rollout`. Format must be `projects/{project_id}/locations/{location_name}/deliveryPipelines/{p... |

**Response**: `Rollout`

```typescript
const res = await clouddeploy.rollouts.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.deliveryPipelines.releases.rollouts.ignoreJob`

**POST** `v1/{+rollout}:ignoreJob`

Ignores the specified Job in a Rollout.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `rollout` | `string` | path | Yes | Required. Name of the Rollout. Format is `projects/{project}/locations/{location}/deliveryPipelines/{deliveryPipeline... |

**Request body**: `IgnoreJobRequest`

**Response**: `IgnoreJobResponse`

```typescript
const res = await clouddeploy.rollouts.ignoreJob({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.deliveryPipelines.releases.rollouts.approve`

**POST** `v1/{+name}:approve`

Approves a Rollout.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the Rollout. Format is `projects/{project}/locations/{location}/deliveryPipelines/{deliveryPipeline... |

**Request body**: `ApproveRolloutRequest`

**Response**: `ApproveRolloutResponse`

```typescript
const res = await clouddeploy.rollouts.approve({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.deliveryPipelines.releases.rollouts.cancel`

**POST** `v1/{+name}:cancel`

Cancels a Rollout in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the Rollout. Format is `projects/{project}/locations/{location}/deliveryPipelines/{deliveryPipeline... |

**Request body**: `CancelRolloutRequest`

**Response**: `CancelRolloutResponse`

```typescript
const res = await clouddeploy.rollouts.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.deliveryPipelines.releases.rollouts.retryJob`

**POST** `v1/{+rollout}:retryJob`

Retries the specified Job in a Rollout.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `rollout` | `string` | path | Yes | Required. Name of the Rollout. Format is `projects/{project}/locations/{location}/deliveryPipelines/{deliveryPipeline... |

**Request body**: `RetryJobRequest`

**Response**: `RetryJobResponse`

```typescript
const res = await clouddeploy.rollouts.retryJob({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.deliveryPipelines.releases.rollouts.list`

**GET** `v1/{+parent}/rollouts`

Lists Rollouts in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The `Release` which owns this collection of `Rollout` objects. |
| `filter` | `string` | query | No | Optional. Filter rollouts to be returned. See https://google.aip.dev/160 for more details. |
| `orderBy` | `string` | query | No | Optional. Field to sort by. See https://google.aip.dev/132#ordering for more details. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of `Rollout` objects to return. The service may return fewer than this value. If unspeci... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListRollouts` call. Provide this to retrieve the subsequent page. W... |

**Response**: `ListRolloutsResponse`

```typescript
const res = await clouddeploy.rollouts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.deliveryPipelines.releases.rollouts.advance`

**POST** `v1/{+name}:advance`

Advances a Rollout in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the Rollout. Format is `projects/{project}/locations/{location}/deliveryPipelines/{deliveryPipeline... |

**Request body**: `AdvanceRolloutRequest`

**Response**: `AdvanceRolloutResponse`

```typescript
const res = await clouddeploy.rollouts.advance({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.deliveryPipelines.releases.rollouts.create`

**POST** `v1/{+parent}/rollouts`

Creates a new Rollout in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent collection in which the `Rollout` must be created. The format is `projects/{project_id}/location... |
| `overrideDeployPolicy` | `string` | query | No | Optional. Deploy policies to override. Format is `projects/{project}/locations/{location}/deployPolicies/{deployPolic... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `rolloutId` | `string` | query | No | Required. ID of the `Rollout`. |
| `startingPhaseId` | `string` | query | No | Optional. The starting phase ID for the `Rollout`. If empty the `Rollout` will start at the first phase. |
| `validateOnly` | `boolean` | query | No | Optional. If set to true, the request is validated and the user is provided with an expected result, but no actual ch... |

**Request body**: `Rollout`

**Response**: `Operation`

```typescript
const res = await clouddeploy.rollouts.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.deliveryPipelines.releases.rollouts.jobRuns.get`

**GET** `v1/{+name}`

Gets details of a single JobRun.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the `JobRun`. Format must be `projects/{project_id}/locations/{location_name}/deliveryPipelines/{pi... |

**Response**: `JobRun`

```typescript
const res = await clouddeploy.jobRuns.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.deliveryPipelines.releases.rollouts.jobRuns.terminate`

**POST** `v1/{+name}:terminate`

Terminates a Job Run in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the `JobRun`. Format must be `projects/{project}/locations/{location}/deliveryPipelines/{deliveryPi... |

**Request body**: `TerminateJobRunRequest`

**Response**: `TerminateJobRunResponse`

```typescript
const res = await clouddeploy.jobRuns.terminate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.deliveryPipelines.releases.rollouts.jobRuns.list`

**GET** `v1/{+parent}/jobRuns`

Lists JobRuns in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The `Rollout` which owns this collection of `JobRun` objects. |
| `filter` | `string` | query | No | Optional. Filter results to be returned. See https://google.aip.dev/160 for more details. |
| `orderBy` | `string` | query | No | Optional. Field to sort by. See https://google.aip.dev/132#ordering for more details. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of `JobRun` objects to return. The service may return fewer than this value. If unspecif... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListJobRuns` call. Provide this to retrieve the subsequent page. Wh... |

**Response**: `ListJobRunsResponse`

```typescript
const res = await clouddeploy.jobRuns.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.deliveryPipelines.automationRuns.list`

**GET** `v1/{+parent}/automationRuns`

Lists AutomationRuns in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent `Delivery Pipeline`, which owns this collection of automationRuns. Format must be `projects/{pro... |
| `filter` | `string` | query | No | Filter automationRuns to be returned. All fields can be used in the filter. |
| `orderBy` | `string` | query | No | Field to sort by. |
| `pageSize` | `integer` | query | No | The maximum number of automationRuns to return. The service may return fewer than this value. If unspecified, at most... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListAutomationRuns` call. Provide this to retrieve the subsequent page. When ... |

**Response**: `ListAutomationRunsResponse`

```typescript
const res = await clouddeploy.automationRuns.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.deliveryPipelines.automationRuns.cancel`

**POST** `v1/{+name}:cancel`

Cancels an AutomationRun. The `state` of the `AutomationRun` after cancelling is `CANCELLED`. `CancelAutomationRun` can be called on AutomationRun in the state `IN_PROGRESS` and `PENDING`; AutomationRun in a different state returns an `FAILED_PRECONDITION` error.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the `AutomationRun`. Format is `projects/{project}/locations/{location}/deliveryPipelines/{delivery... |

**Request body**: `CancelAutomationRunRequest`

**Response**: `CancelAutomationRunResponse`

```typescript
const res = await clouddeploy.automationRuns.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.deliveryPipelines.automationRuns.get`

**GET** `v1/{+name}`

Gets details of a single AutomationRun.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the `AutomationRun`. Format must be `projects/{project}/locations/{location}/deliveryPipelines/{del... |

**Response**: `AutomationRun`

```typescript
const res = await clouddeploy.automationRuns.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.targets.list`

**GET** `v1/{+parent}/targets`

Lists Targets in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of targets. Format must be `projects/{project_id}/locations/{locatio... |
| `filter` | `string` | query | No | Optional. Filter targets to be returned. See https://google.aip.dev/160 for more details. |
| `orderBy` | `string` | query | No | Optional. Field to sort by. See https://google.aip.dev/132#ordering for more details. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of `Target` objects to return. The service may return fewer than this value. If unspecif... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListTargets` call. Provide this to retrieve the subsequent page. Wh... |

**Response**: `ListTargetsResponse`

```typescript
const res = await clouddeploy.targets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.targets.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single Target.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Name of the `Target`. Format is `projects/{project}/locations/{location}/targets/{target}`. The `target` ... |
| `allowMissing` | `boolean` | query | No | Optional. If set to true, updating a `Target` that does not exist will result in the creation of a new `Target`. |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten by the update in the `Target` resource. The fiel... |
| `validateOnly` | `boolean` | query | No | Optional. If set to true, the request is validated and the user is provided with an expected result, but no actual ch... |

**Request body**: `Target`

**Response**: `Operation`

```typescript
const res = await clouddeploy.targets.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.targets.create`

**POST** `v1/{+parent}/targets`

Creates a new Target in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent collection in which the `Target` must be created. The format is `projects/{project_id}/locations... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `targetId` | `string` | query | No | Required. ID of the `Target`. |
| `validateOnly` | `boolean` | query | No | Optional. If set to true, the request is validated and the user is provided with an expected result, but no actual ch... |

**Request body**: `Target`

**Response**: `Operation`

```typescript
const res = await clouddeploy.targets.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.targets.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await clouddeploy.targets.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.targets.delete`

**DELETE** `v1/{+name}`

Deletes a single Target.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the `Target` to delete. The format is `projects/{project_id}/locations/{location_name}/targets/... |
| `allowMissing` | `boolean` | query | No | Optional. If set to true, then deleting an already deleted or non-existing `Target` will succeed. |
| `etag` | `string` | query | No | Optional. This checksum is computed by the server based on the value of other fields, and may be sent on update and d... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request and preview the review, but do not actually post it. |

**Response**: `Operation`

```typescript
const res = await clouddeploy.targets.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.targets.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await clouddeploy.targets.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.targets.get`

**GET** `v1/{+name}`

Gets details of a single Target.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the `Target`. Format must be `projects/{project_id}/locations/{location_name}/targets/{target_name}`. |

**Response**: `Target`

```typescript
const res = await clouddeploy.targets.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.targets.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await clouddeploy.targets.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.deployPolicies.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await clouddeploy.deployPolicies.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.deployPolicies.delete`

**DELETE** `v1/{+name}`

Deletes a single DeployPolicy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the `DeployPolicy` to delete. The format is `projects/{project_id}/locations/{location_name}/de... |
| `allowMissing` | `boolean` | query | No | Optional. If set to true, then deleting an already deleted or non-existing `DeployPolicy` will succeed. |
| `etag` | `string` | query | No | Optional. This checksum is computed by the server based on the value of other fields, and may be sent on update and d... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request and preview the review, but do not actually post it. |

**Response**: `Operation`

```typescript
const res = await clouddeploy.deployPolicies.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.deployPolicies.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await clouddeploy.deployPolicies.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.deployPolicies.create`

**POST** `v1/{+parent}/deployPolicies`

Creates a new DeployPolicy in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent collection in which the `DeployPolicy` must be created. The format is `projects/{project_id}/loc... |
| `deployPolicyId` | `string` | query | No | Required. ID of the `DeployPolicy`. |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `validateOnly` | `boolean` | query | No | Optional. If set to true, the request is validated and the user is provided with an expected result, but no actual ch... |

**Request body**: `DeployPolicy`

**Response**: `Operation`

```typescript
const res = await clouddeploy.deployPolicies.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.deployPolicies.list`

**GET** `v1/{+parent}/deployPolicies`

Lists DeployPolicies in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of deploy policies. Format must be `projects/{project_id}/locations/... |
| `filter` | `string` | query | No | Filter deploy policies to be returned. See https://google.aip.dev/160 for more details. All fields can be used in the... |
| `orderBy` | `string` | query | No | Field to sort by. See https://google.aip.dev/132#ordering for more details. |
| `pageSize` | `integer` | query | No | The maximum number of deploy policies to return. The service may return fewer than this value. If unspecified, at mos... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListDeployPolicies` call. Provide this to retrieve the subsequent page. When ... |

**Response**: `ListDeployPoliciesResponse`

```typescript
const res = await clouddeploy.deployPolicies.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.deployPolicies.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single DeployPolicy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Name of the `DeployPolicy`. Format is `projects/{project}/locations/{location}/deployPolicies/{deployPol... |
| `allowMissing` | `boolean` | query | No | Optional. If set to true, updating a `DeployPolicy` that does not exist will result in the creation of a new `DeployP... |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten by the update in the `DeployPolicy` resource. Th... |
| `validateOnly` | `boolean` | query | No | Optional. If set to true, the request is validated and the user is provided with an expected result, but no actual ch... |

**Request body**: `DeployPolicy`

**Response**: `Operation`

```typescript
const res = await clouddeploy.deployPolicies.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `clouddeploy.projects.locations.deployPolicies.get`

**GET** `v1/{+name}`

Gets details of a single DeployPolicy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the `DeployPolicy`. Format must be `projects/{project_id}/locations/{location_name}/deployPolicies/... |

**Response**: `DeployPolicy`

```typescript
const res = await clouddeploy.deployPolicies.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AbandonReleaseRequest`

The request object used by `AbandonRelease`.

### `AbandonReleaseResponse`

The response object for `AbandonRelease`.

### `AdvanceChildRolloutJob`

An advanceChildRollout Job.

### `AdvanceChildRolloutJobRun`

AdvanceChildRolloutJobRun contains information specific to a advanceChildRollout `JobRun`.

| Property | Type | Description |
|----------|------|-------------|
| `rollout` | `string` | Output only. Name of the `ChildRollout`. Format is `projects/{project}/locations/{location}/deliv... |
| `rolloutPhaseId` | `string` | Output only. the ID of the ChildRollout's Phase. |

### `AdvanceRolloutOperation`

Contains the information of an automated advance-rollout operation.

| Property | Type | Description |
|----------|------|-------------|
| `destinationPhase` | `string` | Output only. The phase the rollout will be advanced to. |
| `rollout` | `string` | Output only. The name of the rollout that initiates the `AutomationRun`. |
| `sourcePhase` | `string` | Output only. The phase of a deployment that initiated the operation. |
| `wait` | `string` | Output only. How long the operation will be paused. |

### `AdvanceRolloutRequest`

The request object used by `AdvanceRollout`.

| Property | Type | Description |
|----------|------|-------------|
| `overrideDeployPolicy` | `array<string>` | Optional. Deploy policies to override. Format is `projects/{project}/locations/{location}/deployP... |
| `phaseId` | `string` | Required. The phase ID to advance the `Rollout` to. |

### `AdvanceRolloutResponse`

The response object from `AdvanceRollout`.

### `AdvanceRolloutRule`

The `AdvanceRollout` automation rule will automatically advance a successful Rollout to the next phase.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `AutomationRuleCondition` | Output only. Information around the state of the Automation rule. |
| `id` | `string` | Required. ID of the rule. This id must be unique in the `Automation` resource to which this rule ... |
| `sourcePhases` | `array<string>` | Optional. Proceeds only after phase name matched any one in the list. This value must consist of ... |
| `wait` | `string` | Optional. How long to wait after a rollout is finished. |

### `AnthosCluster`

Information specifying an Anthos Cluster.

| Property | Type | Description |
|----------|------|-------------|
| `membership` | `string` | Optional. Membership of the GKE Hub-registered cluster to which to apply the Skaffold configurati... |

### `ApproveRolloutRequest`

The request object used by `ApproveRollout`.

| Property | Type | Description |
|----------|------|-------------|
| `approved` | `boolean` | Required. True = approve; false = reject |
| `overrideDeployPolicy` | `array<string>` | Optional. Deploy policies to override. Format is `projects/{project}/locations/{location}/deployP... |

### `ApproveRolloutResponse`

The response object from `ApproveRollout`.

### `AssociatedEntities`

Information about entities associated with a `Target`.

| Property | Type | Description |
|----------|------|-------------|
| `anthosClusters` | `array<AnthosCluster>` | Optional. Information specifying Anthos clusters as associated entities. |
| `gkeClusters` | `array<GkeCluster>` | Optional. Information specifying GKE clusters as associated entities. |

### `AuditConfig`

Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both `allServices` and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { "audit_configs": [ { "service": "allServices", "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" }, { "log_type": "ADMIN_READ" } ] }, { "service": "sampleservice.googleapis.com", "audit_log_configs": [ { "log_type": "DATA_READ" }, { "log_type": "DATA_WRITE", "exempted_members": [ "user:aliya@example.com" ] } ] } ] } For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com` from DATA_WRITE logging.

| Property | Type | Description |
|----------|------|-------------|
| `auditLogConfigs` | `array<AuditLogConfig>` | The configuration for logging of each type of permission. |
| `service` | `string` | Specifies a service that will be enabled for audit logging. For example, `storage.googleapis.com`... |

### `AuditLogConfig`

Provides the configuration for logging a type of permissions. Example: { "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.

| Property | Type | Description |
|----------|------|-------------|
| `exemptedMembers` | `array<string>` | Specifies the identities that do not cause logging for this type of permission. Follows the same ... |
| `logType` | `string` | The log type that this config enables. |

### `Automation`

An `Automation` resource in the Cloud Deploy API. An `Automation` enables the automation of manually driven actions for a Delivery Pipeline, which includes Release promotion among Targets, Rollout repair and Rollout deployment strategy advancement. The intention of Automation is to reduce manual intervention in the continuous delivery process.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. User annotations. These attributes can only be set and used by the user, and not by Clo... |
| `createTime` | `string` | Output only. Time at which the automation was created. |
| `description` | `string` | Optional. Description of the `Automation`. Max length is 255 characters. |
| `etag` | `string` | Optional. The weak etag of the `Automation` resource. This checksum is computed by the server bas... |
| `labels` | `object` | Optional. Labels are attributes that can be set and used by both the user and by Cloud Deploy. La... |
| `name` | `string` | Output only. Name of the `Automation`. Format is `projects/{project}/locations/{location}/deliver... |
| `rules` | `array<AutomationRule>` | Required. List of Automation rules associated with the Automation resource. Must have at least on... |
| `selector` | `AutomationResourceSelector` | Required. Selected resources to which the automation will be applied. |
| `serviceAccount` | `string` | Required. Email address of the user-managed IAM service account that creates Cloud Deploy release... |
| `suspended` | `boolean` | Optional. When Suspended, automation is deactivated from execution. |
| `uid` | `string` | Output only. Unique identifier of the `Automation`. |
| `updateTime` | `string` | Output only. Time at which the automation was updated. |

### `AutomationEvent`

Payload proto for "clouddeploy.googleapis.com/automation" Platform Log event that describes the Automation related events.

| Property | Type | Description |
|----------|------|-------------|
| `automation` | `string` | The name of the `AutomationRun`. |
| `message` | `string` | Debug message for when there is an update on the AutomationRun. Provides further details about th... |
| `pipelineUid` | `string` | Unique identifier of the `DeliveryPipeline`. |
| `type` | `string` | Type of this notification, e.g. for a Pub/Sub failure. |

### `AutomationResourceSelector`

AutomationResourceSelector contains the information to select the resources to which an Automation is going to be applied.

| Property | Type | Description |
|----------|------|-------------|
| `targets` | `array<TargetAttribute>` | Optional. Contains attributes about a target. |

### `AutomationRolloutMetadata`

AutomationRolloutMetadata contains Automation-related actions that were performed on a rollout.

| Property | Type | Description |
|----------|------|-------------|
| `advanceAutomationRuns` | `array<string>` | Output only. The names of the AutomationRuns initiated by an advance rollout rule. |
| `promoteAutomationRun` | `string` | Output only. The name of the AutomationRun initiated by a promote release rule. |
| `repairAutomationRuns` | `array<string>` | Output only. The names of the AutomationRuns initiated by a repair rollout rule. |

### `AutomationRule`

`AutomationRule` defines the automation activities.

| Property | Type | Description |
|----------|------|-------------|
| `advanceRolloutRule` | `AdvanceRolloutRule` | Optional. The `AdvanceRolloutRule` will automatically advance a successful Rollout. |
| `promoteReleaseRule` | `PromoteReleaseRule` | Optional. `PromoteReleaseRule` will automatically promote a release from the current target to a ... |
| `repairRolloutRule` | `RepairRolloutRule` | Optional. The `RepairRolloutRule` will automatically repair a failed rollout. |
| `timedPromoteReleaseRule` | `TimedPromoteReleaseRule` | Optional. The `TimedPromoteReleaseRule` will automatically promote a release from the current tar... |

### `AutomationRuleCondition`

`AutomationRuleCondition` contains conditions relevant to an `Automation` rule.

| Property | Type | Description |
|----------|------|-------------|
| `targetsPresentCondition` | `TargetsPresentCondition` | Optional. Details around targets enumerated in the rule. |
| `timedPromoteReleaseCondition` | `TimedPromoteReleaseCondition` | Optional. TimedPromoteReleaseCondition contains rule conditions specific to a an Automation with ... |

### `AutomationRun`

An `AutomationRun` resource in the Cloud Deploy API. An `AutomationRun` represents an execution instance of an automation rule.

| Property | Type | Description |
|----------|------|-------------|
| `advanceRolloutOperation` | `AdvanceRolloutOperation` | Output only. Advances a rollout to the next phase. |
| `automationId` | `string` | Output only. The ID of the automation that initiated the operation. |
| `automationSnapshot` | `Automation` | Output only. Snapshot of the Automation taken at AutomationRun creation time. |
| `createTime` | `string` | Output only. Time at which the `AutomationRun` was created. |
| `etag` | `string` | Output only. The weak etag of the `AutomationRun` resource. This checksum is computed by the serv... |
| `expireTime` | `string` | Output only. Time the `AutomationRun` expires. An `AutomationRun` expires after 14 days from its ... |
| `name` | `string` | Output only. Name of the `AutomationRun`. Format is `projects/{project}/locations/{location}/deli... |
| `policyViolation` | `PolicyViolation` | Output only. Contains information about what policies prevented the `AutomationRun` from proceeding. |
| `promoteReleaseOperation` | `PromoteReleaseOperation` | Output only. Promotes a release to a specified 'Target'. |
| `repairRolloutOperation` | `RepairRolloutOperation` | Output only. Repairs a failed 'Rollout'. |
| `ruleId` | `string` | Output only. The ID of the automation rule that initiated the operation. |
| `serviceAccount` | `string` | Output only. Email address of the user-managed IAM service account that performs the operations a... |
| `state` | `string` | Output only. Current state of the `AutomationRun`. |
| `stateDescription` | `string` | Output only. Explains the current state of the `AutomationRun`. Present only when an explanation ... |
| `targetId` | `string` | Output only. The ID of the source target that initiates the `AutomationRun`. The value of this fi... |
| `timedPromoteReleaseOperation` | `TimedPromoteReleaseOperation` | Output only. Promotes a release to a specified 'Target' as defined in a Timed Promote Release rule. |
| `uid` | `string` | Output only. Unique identifier of the `AutomationRun`. |
| `updateTime` | `string` | Output only. Time at which the automationRun was updated. |
| `waitUntilTime` | `string` | Output only. Earliest time the `AutomationRun` will attempt to resume. Wait-time is configured by... |

### `AutomationRunEvent`

Payload proto for "clouddeploy.googleapis.com/automation_run" Platform Log event that describes the AutomationRun related events.

| Property | Type | Description |
|----------|------|-------------|
| `automationId` | `string` | Identifier of the `Automation`. |
| `automationRun` | `string` | The name of the `AutomationRun`. |
| `destinationTargetId` | `string` | ID of the `Target` to which the `AutomationRun` is created. |
| `message` | `string` | Debug message for when there is an update on the AutomationRun. Provides further details about th... |
| `pipelineUid` | `string` | Unique identifier of the `DeliveryPipeline`. |
| `ruleId` | `string` | Identifier of the `Automation` rule. |
| `type` | `string` | Type of this notification, e.g. for a Pub/Sub failure. |

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `BuildArtifact`

Description of an a image to use during Skaffold rendering.

| Property | Type | Description |
|----------|------|-------------|
| `image` | `string` | Optional. Image name in Skaffold configuration. |
| `tag` | `string` | Optional. Image tag to use. This will generally be the full path to an image, such as "gcr.io/my-... |

### `Canary`

Canary represents the canary deployment strategy.

| Property | Type | Description |
|----------|------|-------------|
| `canaryDeployment` | `CanaryDeployment` | Optional. Configures the progressive based deployment for a Target. |
| `customCanaryDeployment` | `CustomCanaryDeployment` | Optional. Configures the progressive based deployment for a Target, but allows customizing at the... |
| `runtimeConfig` | `RuntimeConfig` | Optional. Runtime specific configurations for the deployment strategy. The runtime configuration ... |

### `CanaryDeployment`

CanaryDeployment represents the canary deployment configuration

| Property | Type | Description |
|----------|------|-------------|
| `percentages` | `array<integer>` | Required. The percentage based deployments that will occur as a part of a `Rollout`. List is expe... |
| `postdeploy` | `Postdeploy` | Optional. Configuration for the postdeploy job of the last phase. If this is not configured, ther... |
| `predeploy` | `Predeploy` | Optional. Configuration for the predeploy job of the first phase. If this is not configured, ther... |
| `verify` | `boolean` | Optional. Whether to run verify tests after each percentage deployment via `skaffold verify`. |

### `CancelAutomationRunRequest`

The request object used by `CancelAutomationRun`.

### `CancelAutomationRunResponse`

The response object from `CancelAutomationRun`.

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `CancelRolloutRequest`

The request object used by `CancelRollout`.

| Property | Type | Description |
|----------|------|-------------|
| `overrideDeployPolicy` | `array<string>` | Optional. Deploy policies to override. Format is `projects/{project}/locations/{location}/deployP... |

### `CancelRolloutResponse`

The response object from `CancelRollout`.

### `ChildRolloutJobs`

ChildRollouts job composition

| Property | Type | Description |
|----------|------|-------------|
| `advanceRolloutJobs` | `array<Job>` | Output only. List of AdvanceChildRolloutJobs |
| `createRolloutJobs` | `array<Job>` | Output only. List of CreateChildRolloutJobs |

### `CloudRunConfig`

CloudRunConfig contains the Cloud Run runtime configuration.

| Property | Type | Description |
|----------|------|-------------|
| `automaticTrafficControl` | `boolean` | Optional. Whether Cloud Deploy should update the traffic stanza in a Cloud Run Service on the use... |
| `canaryRevisionTags` | `array<string>` | Optional. A list of tags that are added to the canary revision while the canary phase is in progr... |
| `priorRevisionTags` | `array<string>` | Optional. A list of tags that are added to the prior revision while the canary phase is in progress. |
| `stableRevisionTags` | `array<string>` | Optional. A list of tags that are added to the final stable revision when the stable phase is app... |

### `CloudRunLocation`

Information specifying where to deploy a Cloud Run Service.

| Property | Type | Description |
|----------|------|-------------|
| `location` | `string` | Required. The location for the Cloud Run Service. Format must be `projects/{project}/locations/{l... |

### `CloudRunMetadata`

CloudRunMetadata contains information from a Cloud Run deployment.

| Property | Type | Description |
|----------|------|-------------|
| `job` | `string` | Output only. The name of the Cloud Run job that is associated with a `Rollout`. Format is `projec... |
| `revision` | `string` | Output only. The Cloud Run Revision id associated with a `Rollout`. |
| `service` | `string` | Output only. The name of the Cloud Run Service that is associated with a `Rollout`. Format is `pr... |
| `serviceUrls` | `array<string>` | Output only. The Cloud Run Service urls that are associated with a `Rollout`. |
| `workerPool` | `string` | Output only. The Cloud Run worker pool associated with a `Rollout`. Format is `projects/{project}... |

### `CloudRunRenderMetadata`

CloudRunRenderMetadata contains Cloud Run information associated with a `Release` render.

| Property | Type | Description |
|----------|------|-------------|
| `service` | `string` | Output only. The name of the Cloud Run Service in the rendered manifest. Format is `projects/{pro... |
| `workerPool` | `string` | Output only. The name of the Cloud Run Worker Pool in the rendered manifest. Format is `projects/... |

### `Config`

Service-wide configuration.

| Property | Type | Description |
|----------|------|-------------|
| `defaultSkaffoldVersion` | `string` | Default Skaffold version that is assigned when a Release is created without specifying a Skaffold... |
| `defaultToolVersions` | `ToolVersions` | Output only. Default tool versions. These tool versions are assigned when a Release is created wi... |
| `name` | `string` | Name of the configuration. |
| `supportedVersions` | `array<SkaffoldVersion>` | All supported versions of Skaffold. |

### `CreateChildRolloutJob`

A createChildRollout Job.

### `CreateChildRolloutJobRun`

CreateChildRolloutJobRun contains information specific to a createChildRollout `JobRun`.

| Property | Type | Description |
|----------|------|-------------|
| `rollout` | `string` | Output only. Name of the `ChildRollout`. Format is `projects/{project}/locations/{location}/deliv... |
| `rolloutPhaseId` | `string` | Output only. The ID of the childRollout Phase initiated by this JobRun. |

### `CustomCanaryDeployment`

CustomCanaryDeployment represents the custom canary deployment configuration.

| Property | Type | Description |
|----------|------|-------------|
| `phaseConfigs` | `array<PhaseConfig>` | Required. Configuration for each phase in the canary deployment in the order executed. |

### `CustomMetadata`

CustomMetadata contains information from a user-defined operation.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `object` | Output only. Key-value pairs provided by the user-defined operation. |

### `CustomTarget`

Information specifying a Custom Target.

| Property | Type | Description |
|----------|------|-------------|
| `customTargetType` | `string` | Required. The name of the CustomTargetType. Format must be `projects/{project}/locations/{locatio... |

### `CustomTargetDeployMetadata`

CustomTargetDeployMetadata contains information from a Custom Target deploy operation.

| Property | Type | Description |
|----------|------|-------------|
| `skipMessage` | `string` | Output only. Skip message provided in the results of a custom deploy operation. |

### `CustomTargetSkaffoldActions`

CustomTargetSkaffoldActions represents the `CustomTargetType` configuration using Skaffold custom actions.

| Property | Type | Description |
|----------|------|-------------|
| `deployAction` | `string` | Required. The Skaffold custom action responsible for deploy operations. |
| `includeSkaffoldModules` | `array<SkaffoldModules>` | Optional. List of Skaffold modules Cloud Deploy will include in the Skaffold Config as required b... |
| `renderAction` | `string` | Optional. The Skaffold custom action responsible for render operations. If not provided then Clou... |

### `CustomTargetType`

A `CustomTargetType` resource in the Cloud Deploy API. A `CustomTargetType` defines a type of custom target that can be referenced in a `Target` in order to facilitate deploying to other systems besides the supported runtimes.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. User annotations. These attributes can only be set and used by the user, and not by Clo... |
| `createTime` | `string` | Output only. Time at which the `CustomTargetType` was created. |
| `customActions` | `CustomTargetSkaffoldActions` | Optional. Configures render and deploy for the `CustomTargetType` using Skaffold custom actions. |
| `customTargetTypeId` | `string` | Output only. Resource id of the `CustomTargetType`. |
| `description` | `string` | Optional. Description of the `CustomTargetType`. Max length is 255 characters. |
| `etag` | `string` | Optional. This checksum is computed by the server based on the value of other fields, and may be ... |
| `labels` | `object` | Optional. Labels are attributes that can be set and used by both the user and by Cloud Deploy. La... |
| `name` | `string` | Identifier. Name of the `CustomTargetType`. Format is `projects/{project}/locations/{location}/cu... |
| `uid` | `string` | Output only. Unique identifier of the `CustomTargetType`. |
| `updateTime` | `string` | Output only. Most recent time at which the `CustomTargetType` was updated. |

### `CustomTargetTypeNotificationEvent`

Payload proto for "clouddeploy.googleapis.com/customtargettype_notification" Platform Log event that describes the failure to send a custom target type status change Pub/Sub notification.

| Property | Type | Description |
|----------|------|-------------|
| `customTargetType` | `string` | The name of the `CustomTargetType`. |
| `customTargetTypeUid` | `string` | Unique identifier of the `CustomTargetType`. |
| `message` | `string` | Debug message for when a notification fails to send. |
| `type` | `string` | Type of this notification, e.g. for a Pub/Sub failure. |

### `Date`

Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by ... |
| `month` | `integer` | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `year` | `integer` | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

### `DefaultPool`

Execution using the default Cloud Build pool.

| Property | Type | Description |
|----------|------|-------------|
| `artifactStorage` | `string` | Optional. Cloud Storage location where execution outputs should be stored. This can either be a b... |
| `serviceAccount` | `string` | Optional. Google service account to use for execution. If unspecified, the project execution serv... |

### `DeliveryPipeline`

A `DeliveryPipeline` resource in the Cloud Deploy API. A `DeliveryPipeline` defines a pipeline through which a Skaffold configuration can progress.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. User annotations. These attributes can only be set and used by the user, and not by Clo... |
| `condition` | `PipelineCondition` | Output only. Information around the state of the Delivery Pipeline. |
| `createTime` | `string` | Output only. Time at which the pipeline was created. |
| `description` | `string` | Optional. Description of the `DeliveryPipeline`. Max length is 255 characters. |
| `etag` | `string` | This checksum is computed by the server based on the value of other fields, and may be sent on up... |
| `labels` | `object` | Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must ... |
| `name` | `string` | Identifier. Name of the `DeliveryPipeline`. Format is `projects/{project}/locations/{location}/de... |
| `serialPipeline` | `SerialPipeline` | Optional. SerialPipeline defines a sequential set of stages for a `DeliveryPipeline`. |
| `suspended` | `boolean` | Optional. When suspended, no new releases or rollouts can be created, but in-progress ones will c... |
| `uid` | `string` | Output only. Unique identifier of the `DeliveryPipeline`. |
| `updateTime` | `string` | Output only. Most recent time at which the pipeline was updated. |

### `DeliveryPipelineAttribute`

Contains criteria for selecting DeliveryPipelines.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | Optional. ID of the `DeliveryPipeline`. The value of this field could be one of the following: * ... |
| `labels` | `object` | DeliveryPipeline labels. |

### `DeliveryPipelineNotificationEvent`

Payload proto for "clouddeploy.googleapis.com/deliverypipeline_notification" Platform Log event that describes the failure to send delivery pipeline status change Pub/Sub notification.

| Property | Type | Description |
|----------|------|-------------|
| `deliveryPipeline` | `string` | The name of the `Delivery Pipeline`. |
| `message` | `string` | Debug message for when a notification fails to send. |
| `pipelineUid` | `string` | Unique identifier of the `DeliveryPipeline`. |
| `type` | `string` | Type of this notification, e.g. for a Pub/Sub failure. |

### `DeployArtifact`

The artifacts produced by a deploy operation.

| Property | Type | Description |
|----------|------|-------------|
| `artifactUri` | `string` | Output only. URI of a directory containing the artifacts. All paths are relative to this location. |
| `manifestPaths` | `array<string>` | Output only. File paths of the manifests applied during the deploy operation relative to the URI. |

### `DeployJob`

A deploy Job.

### `DeployJobRun`

DeployJobRun contains information specific to a deploy `JobRun`.

| Property | Type | Description |
|----------|------|-------------|
| `artifact` | `DeployArtifact` | Output only. The artifact of a deploy job run, if available. |
| `build` | `string` | Output only. The resource name of the Cloud Build `Build` object that is used to deploy. Format i... |
| `failureCause` | `string` | Output only. The reason the deploy failed. This will always be unspecified while the deploy is in... |
| `failureMessage` | `string` | Output only. Additional information about the deploy failure, if available. |
| `metadata` | `DeployJobRunMetadata` | Output only. Metadata containing information about the deploy job run. |

### `DeployJobRunMetadata`

DeployJobRunMetadata surfaces information associated with a `DeployJobRun` to the user.

| Property | Type | Description |
|----------|------|-------------|
| `cloudRun` | `CloudRunMetadata` | Output only. The name of the Cloud Run Service that is associated with a `DeployJobRun`. |
| `custom` | `CustomMetadata` | Output only. Custom metadata provided by user-defined deploy operation. |
| `customTarget` | `CustomTargetDeployMetadata` | Output only. Custom Target metadata associated with a `DeployJobRun`. |

### `DeployParameters`

DeployParameters contains deploy parameters information.

| Property | Type | Description |
|----------|------|-------------|
| `matchTargetLabels` | `object` | Optional. Deploy parameters are applied to targets with match labels. If unspecified, deploy para... |
| `values` | `object` | Required. Values are deploy parameters in key-value pairs. |

### `DeployPolicy`

A `DeployPolicy` resource in the Cloud Deploy API. A `DeployPolicy` inhibits manual or automation-driven actions within a Delivery Pipeline or Target.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. User annotations. These attributes can only be set and used by the user, and not by Clo... |
| `createTime` | `string` | Output only. Time at which the deploy policy was created. |
| `description` | `string` | Optional. Description of the `DeployPolicy`. Max length is 255 characters. |
| `etag` | `string` | The weak etag of the `DeployPolicy` resource. This checksum is computed by the server based on th... |
| `labels` | `object` | Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must ... |
| `name` | `string` | Output only. Name of the `DeployPolicy`. Format is `projects/{project}/locations/{location}/deplo... |
| `rules` | `array<PolicyRule>` | Required. Rules to apply. At least one rule must be present. |
| `selectors` | `array<DeployPolicyResourceSelector>` | Required. Selected resources to which the policy will be applied. At least one selector is requir... |
| `suspended` | `boolean` | Optional. When suspended, the policy will not prevent actions from occurring, even if the action ... |
| `uid` | `string` | Output only. Unique identifier of the `DeployPolicy`. |
| `updateTime` | `string` | Output only. Most recent time at which the deploy policy was updated. |

### `DeployPolicyEvaluationEvent`

Payload proto for "clouddeploy.googleapis.com/deploypolicy_evaluation" Platform Log event that describes the deploy policy evaluation event.

| Property | Type | Description |
|----------|------|-------------|
| `allowed` | `boolean` | Whether the request is allowed. Allowed is set as true if: (1) the request complies with the poli... |
| `deliveryPipeline` | `string` | The name of the `Delivery Pipeline`. |
| `deployPolicy` | `string` | The name of the `DeployPolicy`. |
| `deployPolicyUid` | `string` | Unique identifier of the `DeployPolicy`. |
| `invoker` | `string` | What invoked the action (e.g. a user or automation). |
| `message` | `string` | Debug message for when a deploy policy event occurs. |
| `overrides` | `array<string>` | Things that could have overridden the policy verdict. Overrides together with verdict decide whet... |
| `pipelineUid` | `string` | Unique identifier of the `Delivery Pipeline`. |
| `rule` | `string` | Rule id. |
| `ruleType` | `string` | Rule type (e.g. Restrict Rollouts). |
| `target` | `string` | The name of the `Target`. This is an optional field, as a `Target` may not always be applicable t... |
| `targetUid` | `string` | Unique identifier of the `Target`. This is an optional field, as a `Target` may not always be app... |
| `verdict` | `string` | The policy verdict of the request. |

### `DeployPolicyNotificationEvent`

Payload proto for "clouddeploy.googleapis.com/deploypolicy_notification". Platform Log event that describes the failure to send a pub/sub notification when there is a DeployPolicy status change.

| Property | Type | Description |
|----------|------|-------------|
| `deployPolicy` | `string` | The name of the `DeployPolicy`. |
| `deployPolicyUid` | `string` | Unique identifier of the deploy policy. |
| `message` | `string` | Debug message for when a deploy policy fails to send a pub/sub notification. |
| `type` | `string` | Type of this notification, e.g. for a Pub/Sub failure. |

### `DeployPolicyResourceSelector`

Contains information on the resources to select for a deploy policy. Attributes provided must all match the resource in order for policy restrictions to apply. For example, if delivery pipelines attributes given are an id "prod" and labels "foo: bar", a delivery pipeline resource must match both that id and have that label in order to be subject to the policy.

| Property | Type | Description |
|----------|------|-------------|
| `deliveryPipeline` | `DeliveryPipelineAttribute` | Optional. Contains attributes about a delivery pipeline. |
| `target` | `TargetAttribute` | Optional. Contains attributes about a target. |

### `DeploymentJobs`

Deployment job composition.

| Property | Type | Description |
|----------|------|-------------|
| `deployJob` | `Job` | Output only. The deploy Job. This is the deploy job in the phase. |
| `postdeployJob` | `Job` | Output only. The postdeploy Job, which is the last job on the phase. |
| `predeployJob` | `Job` | Output only. The predeploy Job, which is the first job on the phase. |
| `verifyJob` | `Job` | Output only. The verify Job. Runs after a deploy if the deploy succeeds. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `ExecutionConfig`

Configuration of the environment to use when calling Skaffold.

| Property | Type | Description |
|----------|------|-------------|
| `artifactStorage` | `string` | Optional. Cloud Storage location in which to store execution outputs. This can either be a bucket... |
| `defaultPool` | `DefaultPool` | Optional. Use default Cloud Build pool. |
| `executionTimeout` | `string` | Optional. Execution timeout for a Cloud Build Execution. This must be between 10m and 24h in seco... |
| `privatePool` | `PrivatePool` | Optional. Use private Cloud Build pool. |
| `serviceAccount` | `string` | Optional. Google service account to use for execution. If unspecified, the project execution serv... |
| `usages` | `array<string>` | Required. Usages when this configuration should be applied. |
| `verbose` | `boolean` | Optional. If true, additional logging will be enabled when running builds in this execution envir... |
| `workerPool` | `string` | Optional. The resource name of the `WorkerPool`, with the format `projects/{project}/locations/{l... |

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `GatewayServiceMesh`

Information about the Kubernetes Gateway API service mesh configuration.

| Property | Type | Description |
|----------|------|-------------|
| `deployment` | `string` | Required. Name of the Kubernetes Deployment whose traffic is managed by the specified HTTPRoute a... |
| `httpRoute` | `string` | Required. Name of the Gateway API HTTPRoute. |
| `podSelectorLabel` | `string` | Optional. The label to use when selecting Pods for the Deployment and Service resources. This lab... |
| `routeDestinations` | `RouteDestinations` | Optional. Route destinations allow configuring the Gateway API HTTPRoute to be deployed to additi... |
| `routeUpdateWaitTime` | `string` | Optional. The time to wait for route updates to propagate. The maximum configurable time is 3 hou... |
| `service` | `string` | Required. Name of the Kubernetes Service. |
| `stableCutbackDuration` | `string` | Optional. The amount of time to migrate traffic back from the canary Service to the original Serv... |

### `GkeCluster`

Information specifying a GKE Cluster.

| Property | Type | Description |
|----------|------|-------------|
| `cluster` | `string` | Optional. Information specifying a GKE Cluster. Format is `projects/{project_id}/locations/{locat... |
| `dnsEndpoint` | `boolean` | Optional. If set, the cluster will be accessed using the DNS endpoint. Note that both `dns_endpoi... |
| `internalIp` | `boolean` | Optional. If true, `cluster` is accessed using the private IP address of the control plane endpoi... |
| `proxyUrl` | `string` | Optional. If set, used to configure a [proxy](https://kubernetes.io/docs/concepts/configuration/o... |

### `IgnoreJobRequest`

The request object used by `IgnoreJob`.

| Property | Type | Description |
|----------|------|-------------|
| `jobId` | `string` | Required. The job ID for the Job to ignore. |
| `overrideDeployPolicy` | `array<string>` | Optional. Deploy policies to override. Format is `projects/{project}/locations/{location}/deployP... |
| `phaseId` | `string` | Required. The phase ID the Job to ignore belongs to. |

### `IgnoreJobResponse`

The response object from `IgnoreJob`.

### `Job`

Job represents an operation for a `Rollout`.

| Property | Type | Description |
|----------|------|-------------|
| `advanceChildRolloutJob` | `AdvanceChildRolloutJob` | Output only. An advanceChildRollout Job. |
| `createChildRolloutJob` | `CreateChildRolloutJob` | Output only. A createChildRollout Job. |
| `deployJob` | `DeployJob` | Output only. A deploy Job. |
| `id` | `string` | Output only. The ID of the Job. |
| `jobRun` | `string` | Output only. The name of the `JobRun` responsible for the most recent invocation of this Job. |
| `postdeployJob` | `PostdeployJob` | Output only. A postdeploy Job. |
| `predeployJob` | `PredeployJob` | Output only. A predeploy Job. |
| `skipMessage` | `string` | Output only. Additional information on why the Job was skipped, if available. |
| `state` | `string` | Output only. The current state of the Job. |
| `verifyJob` | `VerifyJob` | Output only. A verify Job. |

### `JobRun`

A `JobRun` resource in the Cloud Deploy API. A `JobRun` contains information of a single `Rollout` job evaluation.

| Property | Type | Description |
|----------|------|-------------|
| `advanceChildRolloutJobRun` | `AdvanceChildRolloutJobRun` | Output only. Information specific to an advanceChildRollout `JobRun` |
| `createChildRolloutJobRun` | `CreateChildRolloutJobRun` | Output only. Information specific to a createChildRollout `JobRun`. |
| `createTime` | `string` | Output only. Time at which the `JobRun` was created. |
| `deployJobRun` | `DeployJobRun` | Output only. Information specific to a deploy `JobRun`. |
| `endTime` | `string` | Output only. Time at which the `JobRun` ended. |
| `etag` | `string` | Output only. This checksum is computed by the server based on the value of other fields, and may ... |
| `jobId` | `string` | Output only. ID of the `Rollout` job this `JobRun` corresponds to. |
| `name` | `string` | Output only. Name of the `JobRun`. Format is `projects/{project}/locations/{location}/deliveryPip... |
| `phaseId` | `string` | Output only. ID of the `Rollout` phase this `JobRun` belongs in. |
| `postdeployJobRun` | `PostdeployJobRun` | Output only. Information specific to a postdeploy `JobRun`. |
| `predeployJobRun` | `PredeployJobRun` | Output only. Information specific to a predeploy `JobRun`. |
| `startTime` | `string` | Output only. Time at which the `JobRun` was started. |
| `state` | `string` | Output only. The current state of the `JobRun`. |
| `uid` | `string` | Output only. Unique identifier of the `JobRun`. |
| `verifyJobRun` | `VerifyJobRun` | Output only. Information specific to a verify `JobRun`. |

### `JobRunNotificationEvent`

Payload proto for "clouddeploy.googleapis.com/jobrun_notification" Platform Log event that describes the failure to send JobRun resource update Pub/Sub notification.

| Property | Type | Description |
|----------|------|-------------|
| `jobRun` | `string` | The name of the `JobRun`. |
| `message` | `string` | Debug message for when a notification fails to send. |
| `pipelineUid` | `string` | Unique identifier of the `DeliveryPipeline`. |
| `release` | `string` | The name of the `Release`. |
| `releaseUid` | `string` | Unique identifier of the `Release`. |
| `rollout` | `string` | The name of the `Rollout`. |
| `rolloutUid` | `string` | Unique identifier of the `Rollout`. |
| `targetId` | `string` | ID of the `Target`. |
| `type` | `string` | Type of this notification, e.g. for a Pub/Sub failure. |

### `KubernetesConfig`

KubernetesConfig contains the Kubernetes runtime configuration.

| Property | Type | Description |
|----------|------|-------------|
| `gatewayServiceMesh` | `GatewayServiceMesh` | Optional. Kubernetes Gateway API service mesh configuration. |
| `serviceNetworking` | `ServiceNetworking` | Optional. Kubernetes Service networking configuration. |

### `ListAutomationRunsResponse`

The response object from `ListAutomationRuns`.

| Property | Type | Description |
|----------|------|-------------|
| `automationRuns` | `array<AutomationRun>` | The `AutomationRuns` objects. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListAutomationsResponse`

The response object from `ListAutomations`.

| Property | Type | Description |
|----------|------|-------------|
| `automations` | `array<Automation>` | The `Automation` objects. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListCustomTargetTypesResponse`

The response object from `ListCustomTargetTypes.`

| Property | Type | Description |
|----------|------|-------------|
| `customTargetTypes` | `array<CustomTargetType>` | The `CustomTargetType` objects. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListDeliveryPipelinesResponse`

The response object from `ListDeliveryPipelines`.

| Property | Type | Description |
|----------|------|-------------|
| `deliveryPipelines` | `array<DeliveryPipeline>` | The `DeliveryPipeline` objects. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListDeployPoliciesResponse`

The response object from `ListDeployPolicies`.

| Property | Type | Description |
|----------|------|-------------|
| `deployPolicies` | `array<DeployPolicy>` | The `DeployPolicy` objects. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListJobRunsResponse`

ListJobRunsResponse is the response object returned by `ListJobRuns`.

| Property | Type | Description |
|----------|------|-------------|
| `jobRuns` | `array<JobRun>` | The `JobRun` objects. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `unreachable` | `array<string>` | Locations that could not be reached |

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

### `ListReleasesResponse`

The response object from `ListReleases`.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `releases` | `array<Release>` | The `Release` objects. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListRolloutsResponse`

ListRolloutsResponse is the response object returned by `ListRollouts`.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `rollouts` | `array<Rollout>` | The `Rollout` objects. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListTargetsResponse`

The response object from `ListTargets`.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `targets` | `array<Target>` | The `Target` objects. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `Metadata`

Metadata includes information associated with a `Rollout`.

| Property | Type | Description |
|----------|------|-------------|
| `automation` | `AutomationRolloutMetadata` | Output only. AutomationRolloutMetadata contains the information about the interactions between Au... |
| `cloudRun` | `CloudRunMetadata` | Output only. The name of the Cloud Run Service that is associated with a `Rollout`. |
| `custom` | `CustomMetadata` | Output only. Custom metadata provided by user-defined `Rollout` operations. |

### `MultiTarget`

Information specifying a multiTarget.

| Property | Type | Description |
|----------|------|-------------|
| `targetIds` | `array<string>` | Required. The target_ids of this multiTarget. |

### `OneTimeWindow`

One-time window within which actions are restricted. For example, blocking actions over New Year's Eve from December 31st at 5pm to January 1st at 9am.

| Property | Type | Description |
|----------|------|-------------|
| `endDate` | `Date` | Required. End date. |
| `endTime` | `TimeOfDay` | Required. End time (exclusive). You may use 24:00 for the end of the day. |
| `startDate` | `Date` | Required. Start date. |
| `startTime` | `TimeOfDay` | Required. Start time (inclusive). Use 00:00 for the beginning of the day. |

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

### `Phase`

Phase represents a collection of jobs that are logically grouped together for a `Rollout`.

| Property | Type | Description |
|----------|------|-------------|
| `childRolloutJobs` | `ChildRolloutJobs` | Output only. ChildRollout job composition. |
| `deploymentJobs` | `DeploymentJobs` | Output only. Deployment job composition. |
| `id` | `string` | Output only. The ID of the Phase. |
| `skipMessage` | `string` | Output only. Additional information on why the Phase was skipped, if available. |
| `state` | `string` | Output only. Current state of the Phase. |

### `PhaseArtifact`

Contains the paths to the artifacts, relative to the URI, for a phase.

| Property | Type | Description |
|----------|------|-------------|
| `jobManifestsPath` | `string` | Output only. File path of the directory of rendered job manifests relative to the URI. This is on... |
| `manifestPath` | `string` | Output only. File path of the rendered manifest relative to the URI. |
| `skaffoldConfigPath` | `string` | Output only. File path of the resolved Skaffold configuration relative to the URI. |

### `PhaseConfig`

PhaseConfig represents the configuration for a phase in the custom canary deployment.

| Property | Type | Description |
|----------|------|-------------|
| `percentage` | `integer` | Required. Percentage deployment for the phase. |
| `phaseId` | `string` | Required. The ID to assign to the `Rollout` phase. This value must consist of lower-case letters,... |
| `postdeploy` | `Postdeploy` | Optional. Configuration for the postdeploy job of this phase. If this is not configured, there wi... |
| `predeploy` | `Predeploy` | Optional. Configuration for the predeploy job of this phase. If this is not configured, there wil... |
| `profiles` | `array<string>` | Optional. Skaffold profiles to use when rendering the manifest for this phase. These are in addit... |
| `verify` | `boolean` | Optional. Whether to run verify tests after the deployment via `skaffold verify`. |

### `PipelineCondition`

PipelineCondition contains all conditions relevant to a Delivery Pipeline.

| Property | Type | Description |
|----------|------|-------------|
| `pipelineReadyCondition` | `PipelineReadyCondition` | Details around the Pipeline's overall status. |
| `targetsPresentCondition` | `TargetsPresentCondition` | Details around targets enumerated in the pipeline. |
| `targetsTypeCondition` | `TargetsTypeCondition` | Details on the whether the targets enumerated in the pipeline are of the same type. |

### `PipelineReadyCondition`

PipelineReadyCondition contains information around the status of the Pipeline.

| Property | Type | Description |
|----------|------|-------------|
| `status` | `boolean` | True if the Pipeline is in a valid state. Otherwise at least one condition in `PipelineCondition`... |
| `updateTime` | `string` | Last time the condition was updated. |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `auditConfigs` | `array<AuditConfig>` | Specifies cloud audit logging configuration for this policy. |
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `PolicyRule`

Deploy Policy rule.

| Property | Type | Description |
|----------|------|-------------|
| `rolloutRestriction` | `RolloutRestriction` | Optional. Rollout restrictions. |

### `PolicyViolation`

Returned from an action if one or more policies were violated, and therefore the action was prevented. Contains information about what policies were violated and why.

| Property | Type | Description |
|----------|------|-------------|
| `policyViolationDetails` | `array<PolicyViolationDetails>` | Policy violation details. |

### `PolicyViolationDetails`

Policy violation details.

| Property | Type | Description |
|----------|------|-------------|
| `failureMessage` | `string` | User readable message about why the request violated a policy. This is not intended for machine p... |
| `policy` | `string` | Name of the policy that was violated. Policy resource will be in the format of `projects/{project... |
| `ruleId` | `string` | Id of the rule that triggered the policy violation. |

### `Postdeploy`

Postdeploy contains the postdeploy job configuration information.

| Property | Type | Description |
|----------|------|-------------|
| `actions` | `array<string>` | Optional. A sequence of Skaffold custom actions to invoke during execution of the postdeploy job. |

### `PostdeployJob`

A postdeploy Job.

| Property | Type | Description |
|----------|------|-------------|
| `actions` | `array<string>` | Output only. The custom actions that the postdeploy Job executes. |

### `PostdeployJobRun`

PostdeployJobRun contains information specific to a postdeploy `JobRun`.

| Property | Type | Description |
|----------|------|-------------|
| `build` | `string` | Output only. The resource name of the Cloud Build `Build` object that is used to execute the cust... |
| `failureCause` | `string` | Output only. The reason the postdeploy failed. This will always be unspecified while the postdepl... |
| `failureMessage` | `string` | Output only. Additional information about the postdeploy failure, if available. |

### `Predeploy`

Predeploy contains the predeploy job configuration information.

| Property | Type | Description |
|----------|------|-------------|
| `actions` | `array<string>` | Optional. A sequence of Skaffold custom actions to invoke during execution of the predeploy job. |

### `PredeployJob`

A predeploy Job.

| Property | Type | Description |
|----------|------|-------------|
| `actions` | `array<string>` | Output only. The custom actions that the predeploy Job executes. |

### `PredeployJobRun`

PredeployJobRun contains information specific to a predeploy `JobRun`.

| Property | Type | Description |
|----------|------|-------------|
| `build` | `string` | Output only. The resource name of the Cloud Build `Build` object that is used to execute the cust... |
| `failureCause` | `string` | Output only. The reason the predeploy failed. This will always be unspecified while the predeploy... |
| `failureMessage` | `string` | Output only. Additional information about the predeploy failure, if available. |

### `PrivatePool`

Execution using a private Cloud Build pool.

| Property | Type | Description |
|----------|------|-------------|
| `artifactStorage` | `string` | Optional. Cloud Storage location where execution outputs should be stored. This can either be a b... |
| `serviceAccount` | `string` | Optional. Google service account to use for execution. If unspecified, the project execution serv... |
| `workerPool` | `string` | Required. Resource name of the Cloud Build worker pool to use. The format is `projects/{project}/... |

### `PromoteReleaseOperation`

Contains the information of an automated promote-release operation.

| Property | Type | Description |
|----------|------|-------------|
| `phase` | `string` | Output only. The starting phase of the rollout created by this operation. |
| `rollout` | `string` | Output only. The name of the rollout that initiates the `AutomationRun`. |
| `targetId` | `string` | Output only. The ID of the target that represents the promotion stage to which the release will b... |
| `wait` | `string` | Output only. How long the operation will be paused. |

### `PromoteReleaseRule`

The `PromoteRelease` rule will automatically promote a release from the current target to a specified target.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `AutomationRuleCondition` | Output only. Information around the state of the Automation rule. |
| `destinationPhase` | `string` | Optional. The starting phase of the rollout created by this operation. Default to the first phase. |
| `destinationTargetId` | `string` | Optional. The ID of the stage in the pipeline to which this `Release` is deploying. If unspecifie... |
| `id` | `string` | Required. ID of the rule. This id must be unique in the `Automation` resource to which this rule ... |
| `wait` | `string` | Optional. How long the release need to be paused until being promoted to the next target. |

### `Release`

A `Release` resource in the Cloud Deploy API. A `Release` defines a specific Skaffold configuration instance that can be deployed.

| Property | Type | Description |
|----------|------|-------------|
| `abandoned` | `boolean` | Output only. Indicates whether this is an abandoned release. |
| `annotations` | `object` | Optional. User annotations. These attributes can only be set and used by the user, and not by Clo... |
| `buildArtifacts` | `array<BuildArtifact>` | Optional. List of artifacts to pass through to Skaffold command. |
| `condition` | `ReleaseCondition` | Output only. Information around the state of the Release. |
| `createTime` | `string` | Output only. Time at which the `Release` was created. |
| `customTargetTypeSnapshots` | `array<CustomTargetType>` | Output only. Snapshot of the custom target types referenced by the targets taken at release creat... |
| `deliveryPipelineSnapshot` | `DeliveryPipeline` | Output only. Snapshot of the parent pipeline taken at release creation time. |
| `deployParameters` | `object` | Optional. The deploy parameters to use for all targets in this release. |
| `description` | `string` | Optional. Description of the `Release`. Max length is 255 characters. |
| `etag` | `string` | This checksum is computed by the server based on the value of other fields, and may be sent on up... |
| `labels` | `object` | Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must ... |
| `name` | `string` | Identifier. Name of the `Release`. Format is `projects/{project}/locations/{location}/deliveryPip... |
| `renderEndTime` | `string` | Output only. Time at which the render completed. |
| `renderStartTime` | `string` | Output only. Time at which the render began. |
| `renderState` | `string` | Output only. Current state of the render operation. |
| `skaffoldConfigPath` | `string` | Optional. Filepath of the Skaffold config inside of the config URI. |
| `skaffoldConfigUri` | `string` | Optional. Cloud Storage URI of tar.gz archive containing Skaffold configuration. |
| `skaffoldVersion` | `string` | Optional. The Skaffold version to use when operating on this release, such as "1.20.0". Not all v... |
| `targetArtifacts` | `object` | Output only. Map from target ID to the target artifacts created during the render operation. |
| `targetRenders` | `object` | Output only. Map from target ID to details of the render operation for that target. |
| `targetSnapshots` | `array<Target>` | Output only. Snapshot of the targets taken at release creation time. |
| `toolVersions` | `ToolVersions` | Optional. The tool versions to use for this release and all subsequent operations involving this ... |
| `uid` | `string` | Output only. Unique identifier of the `Release`. |

### `ReleaseCondition`

ReleaseCondition contains all conditions relevant to a Release.

| Property | Type | Description |
|----------|------|-------------|
| `dockerVersionSupportedCondition` | `ToolVersionSupportedCondition` | Output only. Details around the support state of the release's Docker version. |
| `helmVersionSupportedCondition` | `ToolVersionSupportedCondition` | Output only. Details around the support state of the release's Helm version. |
| `kptVersionSupportedCondition` | `ToolVersionSupportedCondition` | Output only. Details around the support state of the release's kpt version. |
| `kubectlVersionSupportedCondition` | `ToolVersionSupportedCondition` | Output only. Details around the support state of the release's Kubectl version. |
| `kustomizeVersionSupportedCondition` | `ToolVersionSupportedCondition` | Output only. Details around the support state of the release's Kustomize version. |
| `releaseReadyCondition` | `ReleaseReadyCondition` | Details around the Releases's overall status. |
| `skaffoldSupportedCondition` | `SkaffoldSupportedCondition` | Details around the support state of the release's Skaffold version. |
| `skaffoldVersionSupportedCondition` | `ToolVersionSupportedCondition` | Output only. Details around the support state of the release's Skaffold version. |

### `ReleaseNotificationEvent`

Payload proto for "clouddeploy.googleapis.com/release_notification" Platform Log event that describes the failure to send release status change Pub/Sub notification.

| Property | Type | Description |
|----------|------|-------------|
| `message` | `string` | Debug message for when a notification fails to send. |
| `pipelineUid` | `string` | Unique identifier of the `DeliveryPipeline`. |
| `release` | `string` | The name of the `Release`. |
| `releaseUid` | `string` | Unique identifier of the `Release`. |
| `type` | `string` | Type of this notification, e.g. for a Pub/Sub failure. |

### `ReleaseReadyCondition`

ReleaseReadyCondition contains information around the status of the Release. If a release is not ready, you cannot create a rollout with the release.

| Property | Type | Description |
|----------|------|-------------|
| `status` | `boolean` | True if the Release is in a valid state. Otherwise at least one condition in `ReleaseCondition` i... |

### `ReleaseRenderEvent`

Payload proto for "clouddeploy.googleapis.com/release_render" Platform Log event that describes the render status change.

| Property | Type | Description |
|----------|------|-------------|
| `message` | `string` | Debug message for when a render transition occurs. Provides further details as rendering progress... |
| `pipelineUid` | `string` | Unique identifier of the `DeliveryPipeline`. |
| `release` | `string` | The name of the release. release_uid is not in this log message because we write some of these lo... |
| `releaseRenderState` | `string` | The state of the release render. |
| `type` | `string` | Type of this notification, e.g. for a release render state change event. |

### `RenderMetadata`

RenderMetadata includes information associated with a `Release` render.

| Property | Type | Description |
|----------|------|-------------|
| `cloudRun` | `CloudRunRenderMetadata` | Output only. Metadata associated with rendering for Cloud Run. |
| `custom` | `CustomMetadata` | Output only. Custom metadata provided by user-defined render operation. |

### `RepairPhase`

RepairPhase tracks the repair attempts that have been made for each `RepairPhaseConfig` specified in the `Automation` resource.

| Property | Type | Description |
|----------|------|-------------|
| `retry` | `RetryPhase` | Output only. Records of the retry attempts for retry repair mode. |
| `rollback` | `RollbackAttempt` | Output only. Rollback attempt for rollback repair mode . |

### `RepairPhaseConfig`

Configuration of the repair phase.

| Property | Type | Description |
|----------|------|-------------|
| `retry` | `Retry` | Optional. Retries a failed job. |
| `rollback` | `Rollback` | Optional. Rolls back a `Rollout`. |

### `RepairRolloutOperation`

Contains the information for an automated `repair rollout` operation.

| Property | Type | Description |
|----------|------|-------------|
| `currentRepairPhaseIndex` | `string` | Output only. The index of the current repair action in the repair sequence. |
| `jobId` | `string` | Output only. The job ID for the Job to repair. |
| `phaseId` | `string` | Output only. The phase ID of the phase that includes the job being repaired. |
| `repairPhases` | `array<RepairPhase>` | Output only. Records of the repair attempts. Each repair phase may have multiple retry attempts o... |
| `rollout` | `string` | Output only. The name of the rollout that initiates the `AutomationRun`. |

### `RepairRolloutRule`

The `RepairRolloutRule` automation rule will automatically repair a failed `Rollout`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `AutomationRuleCondition` | Output only. Information around the state of the 'Automation' rule. |
| `id` | `string` | Required. ID of the rule. This id must be unique in the `Automation` resource to which this rule ... |
| `jobs` | `array<string>` | Optional. Jobs to repair. Proceeds only after job name matched any one in the list, or for all jo... |
| `phases` | `array<string>` | Optional. Phases within which jobs are subject to automatic repair actions on failure. Proceeds o... |
| `repairPhases` | `array<RepairPhaseConfig>` | Required. Defines the types of automatic repair phases for failed jobs. |

### `Retry`

Retries the failed job.

| Property | Type | Description |
|----------|------|-------------|
| `attempts` | `string` | Required. Total number of retries. Retry is skipped if set to 0; The minimum value is 1, and the ... |
| `backoffMode` | `string` | Optional. The pattern of how wait time will be increased. Default is linear. Backoff mode will be... |
| `wait` | `string` | Optional. How long to wait for the first retry. Default is 0, and the maximum value is 14d. |

### `RetryAttempt`

RetryAttempt represents an action of retrying the failed Cloud Deploy job.

| Property | Type | Description |
|----------|------|-------------|
| `attempt` | `string` | Output only. The index of this retry attempt. |
| `state` | `string` | Output only. Valid state of this retry action. |
| `stateDesc` | `string` | Output only. Description of the state of the Retry. |
| `wait` | `string` | Output only. How long the operation will be paused. |

### `RetryJobRequest`

RetryJobRequest is the request object used by `RetryJob`.

| Property | Type | Description |
|----------|------|-------------|
| `jobId` | `string` | Required. The job ID for the Job to retry. |
| `overrideDeployPolicy` | `array<string>` | Optional. Deploy policies to override. Format is `projects/{project}/locations/{location}/deployP... |
| `phaseId` | `string` | Required. The phase ID the Job to retry belongs to. |

### `RetryJobResponse`

The response object from 'RetryJob'.

### `RetryPhase`

RetryPhase contains the retry attempts and the metadata for initiating a new attempt.

| Property | Type | Description |
|----------|------|-------------|
| `attempts` | `array<RetryAttempt>` | Output only. Detail of a retry action. |
| `backoffMode` | `string` | Output only. The pattern of how the wait time of the retry attempt is calculated. |
| `totalAttempts` | `string` | Output only. The number of attempts that have been made. |

### `Rollback`

Rolls back a `Rollout`.

| Property | Type | Description |
|----------|------|-------------|
| `destinationPhase` | `string` | Optional. The starting phase ID for the `Rollout`. If unspecified, the `Rollout` will start in th... |
| `disableRollbackIfRolloutPending` | `boolean` | Optional. If pending rollout exists on the target, the rollback operation will be aborted. |

### `RollbackAttempt`

RollbackAttempt represents an action of rolling back a Cloud Deploy 'Target'.

| Property | Type | Description |
|----------|------|-------------|
| `destinationPhase` | `string` | Output only. The phase to which the rollout will be rolled back to. |
| `disableRollbackIfRolloutPending` | `boolean` | Output only. If active rollout exists on the target, abort this rollback. |
| `rolloutId` | `string` | Output only. ID of the rollback `Rollout` to create. |
| `state` | `string` | Output only. Valid state of this rollback action. |
| `stateDesc` | `string` | Output only. Description of the state of the Rollback. |

### `RollbackTargetConfig`

Configs for the Rollback rollout.

| Property | Type | Description |
|----------|------|-------------|
| `rollout` | `Rollout` | Optional. The rollback `Rollout` to create. |
| `startingPhaseId` | `string` | Optional. The starting phase ID for the `Rollout`. If unspecified, the `Rollout` will start in th... |

### `RollbackTargetRequest`

The request object for `RollbackTarget`.

| Property | Type | Description |
|----------|------|-------------|
| `overrideDeployPolicy` | `array<string>` | Optional. Deploy policies to override. Format is `projects/{project}/locations/{location}/deployP... |
| `releaseId` | `string` | Optional. ID of the `Release` to roll back to. If this isn't specified, the previous successful `... |
| `rollbackConfig` | `RollbackTargetConfig` | Optional. Configs for the rollback `Rollout`. |
| `rolloutId` | `string` | Required. ID of the rollback `Rollout` to create. |
| `rolloutToRollBack` | `string` | Optional. If provided, this must be the latest `Rollout` that is on the `Target`. |
| `targetId` | `string` | Required. ID of the `Target` that is being rolled back. |
| `validateOnly` | `boolean` | Optional. If set to true, the request is validated and the user is provided with a `RollbackTarge... |

### `RollbackTargetResponse`

The response object from `RollbackTarget`.

| Property | Type | Description |
|----------|------|-------------|
| `rollbackConfig` | `RollbackTargetConfig` | The config of the rollback `Rollout` created or will be created. |

### `Rollout`

A `Rollout` resource in the Cloud Deploy API. A `Rollout` contains information around a specific deployment to a `Target`.

| Property | Type | Description |
|----------|------|-------------|
| `activeRepairAutomationRun` | `string` | Output only. The AutomationRun actively repairing the rollout. |
| `annotations` | `object` | Optional. User annotations. These attributes can only be set and used by the user, and not by Clo... |
| `approvalState` | `string` | Output only. Approval state of the `Rollout`. |
| `approveTime` | `string` | Output only. Time at which the `Rollout` was approved. |
| `controllerRollout` | `string` | Output only. Name of the `ControllerRollout`. Format is `projects/{project}/locations/{location}/... |
| `createTime` | `string` | Output only. Time at which the `Rollout` was created. |
| `deployEndTime` | `string` | Output only. Time at which the `Rollout` finished deploying. |
| `deployFailureCause` | `string` | Output only. The reason this rollout failed. This will always be unspecified while the rollout is... |
| `deployStartTime` | `string` | Output only. Time at which the `Rollout` started deploying. |
| `deployingBuild` | `string` | Output only. The resource name of the Cloud Build `Build` object that is used to deploy the Rollo... |
| `description` | `string` | Optional. Description of the `Rollout` for user purposes. Max length is 255 characters. |
| `enqueueTime` | `string` | Output only. Time at which the `Rollout` was enqueued. |
| `etag` | `string` | This checksum is computed by the server based on the value of other fields, and may be sent on up... |
| `failureReason` | `string` | Output only. Additional information about the rollout failure, if available. |
| `labels` | `object` | Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must ... |
| `metadata` | `Metadata` | Output only. Metadata contains information about the rollout. |
| `name` | `string` | Identifier. Name of the `Rollout`. Format is `projects/{project}/locations/{location}/deliveryPip... |
| `phases` | `array<Phase>` | Output only. The phases that represent the workflows of this `Rollout`. |
| `rollbackOfRollout` | `string` | Output only. Name of the `Rollout` that is rolled back by this `Rollout`. Empty if this `Rollout`... |
| `rolledBackByRollouts` | `array<string>` | Output only. Names of `Rollouts` that rolled back this `Rollout`. |
| `state` | `string` | Output only. Current state of the `Rollout`. |
| `targetId` | `string` | Required. The ID of Target to which this `Rollout` is deploying. |
| `uid` | `string` | Output only. Unique identifier of the `Rollout`. |

### `RolloutNotificationEvent`

Payload proto for "clouddeploy.googleapis.com/rollout_notification" Platform Log event that describes the failure to send rollout status change Pub/Sub notification.

| Property | Type | Description |
|----------|------|-------------|
| `message` | `string` | Debug message for when a notification fails to send. |
| `pipelineUid` | `string` | Unique identifier of the `DeliveryPipeline`. |
| `release` | `string` | The name of the `Release`. |
| `releaseUid` | `string` | Unique identifier of the `Release`. |
| `rollout` | `string` | The name of the `Rollout`. |
| `rolloutUid` | `string` | Unique identifier of the `Rollout`. |
| `targetId` | `string` | ID of the `Target` that the rollout is deployed to. |
| `type` | `string` | Type of this notification, e.g. for a Pub/Sub failure. |

### `RolloutRestriction`

Rollout restrictions.

| Property | Type | Description |
|----------|------|-------------|
| `actions` | `array<string>` | Optional. Rollout actions to be restricted as part of the policy. If left empty, all actions will... |
| `id` | `string` | Required. Restriction rule ID. Required and must be unique within a DeployPolicy. The format is `... |
| `invokers` | `array<string>` | Optional. What invoked the action. If left empty, all invoker types will be restricted. |
| `timeWindows` | `TimeWindows` | Required. Time window within which actions are restricted. |

### `RolloutUpdateEvent`

Payload proto for "clouddeploy.googleapis.com/rollout_update" Platform Log event that describes the rollout update event.

| Property | Type | Description |
|----------|------|-------------|
| `message` | `string` | Debug message for when a rollout update event occurs. |
| `pipelineUid` | `string` | Unique identifier of the pipeline. |
| `release` | `string` | The name of the `Release`. |
| `releaseUid` | `string` | Unique identifier of the release. |
| `rollout` | `string` | The name of the rollout. rollout_uid is not in this log message because we write some of these lo... |
| `rolloutUpdateType` | `string` | The type of the rollout update. |
| `targetId` | `string` | ID of the target. |
| `type` | `string` | Type of this notification, e.g. for a rollout update event. |

### `RouteDestinations`

Information about route destinations for the Gateway API service mesh.

| Property | Type | Description |
|----------|------|-------------|
| `destinationIds` | `array<string>` | Required. The clusters where the Gateway API HTTPRoute resource will be deployed to. Valid entrie... |
| `propagateService` | `boolean` | Optional. Whether to propagate the Kubernetes Service to the route destination clusters. The Serv... |

### `RuntimeConfig`

RuntimeConfig contains the runtime specific configurations for a deployment strategy.

| Property | Type | Description |
|----------|------|-------------|
| `cloudRun` | `CloudRunConfig` | Optional. Cloud Run runtime configuration. |
| `kubernetes` | `KubernetesConfig` | Optional. Kubernetes runtime configuration. |

### `SerialPipeline`

SerialPipeline defines a sequential set of stages for a `DeliveryPipeline`.

| Property | Type | Description |
|----------|------|-------------|
| `stages` | `array<Stage>` | Optional. Each stage specifies configuration for a `Target`. The ordering of this list defines th... |

### `ServiceNetworking`

Information about the Kubernetes Service networking configuration.

| Property | Type | Description |
|----------|------|-------------|
| `deployment` | `string` | Required. Name of the Kubernetes Deployment whose traffic is managed by the specified Service. |
| `disablePodOverprovisioning` | `boolean` | Optional. Whether to disable Pod overprovisioning. If Pod overprovisioning is disabled then Cloud... |
| `podSelectorLabel` | `string` | Optional. The label to use when selecting Pods for the Deployment resource. This label must alrea... |
| `service` | `string` | Required. Name of the Kubernetes Service. |

### `SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |
| `updateMask` | `string` | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mas... |

### `SkaffoldGCBRepoSource`

Cloud Build V2 Repository containing Skaffold Configs.

| Property | Type | Description |
|----------|------|-------------|
| `path` | `string` | Optional. Relative path from the repository root to the Skaffold Config file. |
| `ref` | `string` | Optional. Branch or tag to use when cloning the repository. |
| `repository` | `string` | Required. Name of the Cloud Build V2 Repository. Format is projects/{project}/locations/{location... |

### `SkaffoldGCSSource`

Cloud Storage bucket containing Skaffold Config modules.

| Property | Type | Description |
|----------|------|-------------|
| `path` | `string` | Optional. Relative path from the source to the Skaffold file. |
| `source` | `string` | Required. Cloud Storage source paths to copy recursively. For example, providing "gs://my-bucket/... |

### `SkaffoldGitSource`

Git repository containing Skaffold Config modules.

| Property | Type | Description |
|----------|------|-------------|
| `path` | `string` | Optional. Relative path from the repository root to the Skaffold file. |
| `ref` | `string` | Optional. Git branch or tag to use when cloning the repository. |
| `repo` | `string` | Required. Git repository the package should be cloned from. |

### `SkaffoldModules`

Skaffold Config modules and their remote source.

| Property | Type | Description |
|----------|------|-------------|
| `configs` | `array<string>` | Optional. The Skaffold Config modules to use from the specified source. |
| `git` | `SkaffoldGitSource` | Optional. Remote git repository containing the Skaffold Config modules. |
| `googleCloudBuildRepo` | `SkaffoldGCBRepoSource` | Optional. Cloud Build V2 repository containing the Skaffold Config modules. |
| `googleCloudStorage` | `SkaffoldGCSSource` | Optional. Cloud Storage bucket containing the Skaffold Config modules. |

### `SkaffoldSupportedCondition`

SkaffoldSupportedCondition contains information about when support for the release's version of Skaffold ends.

| Property | Type | Description |
|----------|------|-------------|
| `maintenanceModeTime` | `string` | The time at which this release's version of Skaffold will enter maintenance mode. |
| `skaffoldSupportState` | `string` | The Skaffold support state for this release's version of Skaffold. |
| `status` | `boolean` | True if the version of Skaffold used by this release is supported. |
| `supportExpirationTime` | `string` | The time at which this release's version of Skaffold will no longer be supported. |

### `SkaffoldVersion`

Details of a supported Skaffold version.

| Property | Type | Description |
|----------|------|-------------|
| `maintenanceModeTime` | `string` | The time at which this version of Skaffold will enter maintenance mode. |
| `supportEndDate` | `Date` | Date when this version is expected to no longer be supported. |
| `supportExpirationTime` | `string` | The time at which this version of Skaffold will no longer be supported. |
| `version` | `string` | Release version number. For example, "1.20.3". |

### `Stage`

Stage specifies a location to which to deploy.

| Property | Type | Description |
|----------|------|-------------|
| `deployParameters` | `array<DeployParameters>` | Optional. The deploy parameters to use for the target in this stage. |
| `profiles` | `array<string>` | Optional. Skaffold profiles to use when rendering the manifest for this stage's `Target`. |
| `strategy` | `Strategy` | Optional. The strategy to use for a `Rollout` to this stage. |
| `targetId` | `string` | Optional. The target_id to which this stage points. This field refers exclusively to the last seg... |

### `Standard`

Standard represents the standard deployment strategy.

| Property | Type | Description |
|----------|------|-------------|
| `postdeploy` | `Postdeploy` | Optional. Configuration for the postdeploy job. If this is not configured, the postdeploy job wil... |
| `predeploy` | `Predeploy` | Optional. Configuration for the predeploy job. If this is not configured, the predeploy job will ... |
| `verify` | `boolean` | Optional. Whether to verify a deployment via `skaffold verify`. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `Strategy`

Strategy contains deployment strategy information.

| Property | Type | Description |
|----------|------|-------------|
| `canary` | `Canary` | Optional. Canary deployment strategy provides progressive percentage based deployments to a Target. |
| `standard` | `Standard` | Optional. Standard deployment strategy executes a single deploy and allows verifying the deployment. |

### `Target`

A `Target` resource in the Cloud Deploy API. A `Target` defines a location to which a Skaffold configuration can be deployed.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. User annotations. These attributes can only be set and used by the user, and not by Clo... |
| `anthosCluster` | `AnthosCluster` | Optional. Information specifying an Anthos Cluster. |
| `associatedEntities` | `object` | Optional. Map of entity IDs to their associated entities. Associated entities allows specifying p... |
| `createTime` | `string` | Output only. Time at which the `Target` was created. |
| `customTarget` | `CustomTarget` | Optional. Information specifying a Custom Target. |
| `deployParameters` | `object` | Optional. The deploy parameters to use for this target. |
| `description` | `string` | Optional. Description of the `Target`. Max length is 255 characters. |
| `etag` | `string` | Optional. This checksum is computed by the server based on the value of other fields, and may be ... |
| `executionConfigs` | `array<ExecutionConfig>` | Optional. Configurations for all execution that relates to this `Target`. Each `ExecutionEnvironm... |
| `gke` | `GkeCluster` | Optional. Information specifying a GKE Cluster. |
| `labels` | `object` | Optional. Labels are attributes that can be set and used by both the user and by Cloud Deploy. La... |
| `multiTarget` | `MultiTarget` | Optional. Information specifying a multiTarget. |
| `name` | `string` | Identifier. Name of the `Target`. Format is `projects/{project}/locations/{location}/targets/{tar... |
| `requireApproval` | `boolean` | Optional. Whether or not the `Target` requires approval. |
| `run` | `CloudRunLocation` | Optional. Information specifying a Cloud Run deployment target. |
| `targetId` | `string` | Output only. Resource id of the `Target`. |
| `uid` | `string` | Output only. Unique identifier of the `Target`. |
| `updateTime` | `string` | Output only. Most recent time at which the `Target` was updated. |

### `TargetArtifact`

The artifacts produced by a target render operation.

| Property | Type | Description |
|----------|------|-------------|
| `artifactUri` | `string` | Output only. URI of a directory containing the artifacts. This contains deployment configuration ... |
| `manifestPath` | `string` | Output only. File path of the rendered manifest relative to the URI for the stable phase. |
| `phaseArtifacts` | `object` | Output only. Map from the phase ID to the phase artifacts for the `Target`. |
| `skaffoldConfigPath` | `string` | Output only. File path of the resolved Skaffold configuration for the stable phase, relative to t... |

### `TargetAttribute`

Contains criteria for selecting Targets. This could be used to select targets for a Deploy Policy or for an Automation.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | Optional. ID of the `Target`. The value of this field could be one of the following: * The last s... |
| `labels` | `object` | Target labels. |

### `TargetNotificationEvent`

Payload proto for "clouddeploy.googleapis.com/target_notification" Platform Log event that describes the failure to send target status change Pub/Sub notification.

| Property | Type | Description |
|----------|------|-------------|
| `message` | `string` | Debug message for when a notification fails to send. |
| `target` | `string` | The name of the `Target`. |
| `type` | `string` | Type of this notification, e.g. for a Pub/Sub failure. |

### `TargetRender`

Details of rendering for a single target.

| Property | Type | Description |
|----------|------|-------------|
| `failureCause` | `string` | Output only. Reason this render failed. This will always be unspecified while the render in progr... |
| `failureMessage` | `string` | Output only. Additional information about the render failure, if available. |
| `metadata` | `RenderMetadata` | Output only. Metadata related to the `Release` render for this Target. |
| `renderingBuild` | `string` | Output only. The resource name of the Cloud Build `Build` object that is used to render the manif... |
| `renderingState` | `string` | Output only. Current state of the render operation for this Target. |

### `Targets`

The targets involved in a single timed promotion.

| Property | Type | Description |
|----------|------|-------------|
| `destinationTargetId` | `string` | Optional. The destination target ID. |
| `sourceTargetId` | `string` | Optional. The source target ID. |

### `TargetsPresentCondition`

`TargetsPresentCondition` contains information on any Targets referenced in the Delivery Pipeline that do not actually exist.

| Property | Type | Description |
|----------|------|-------------|
| `missingTargets` | `array<string>` | The list of Target names that do not exist. For example, `projects/{project_id}/locations/{locati... |
| `status` | `boolean` | True if there aren't any missing Targets. |
| `updateTime` | `string` | Last time the condition was updated. |

### `TargetsTypeCondition`

TargetsTypeCondition contains information on whether the Targets defined in the Delivery Pipeline are of the same type.

| Property | Type | Description |
|----------|------|-------------|
| `errorDetails` | `string` | Human readable error message. |
| `status` | `boolean` | True if the targets are all a comparable type. For example this is true if all targets are GKE cl... |

### `TerminateJobRunRequest`

The request object used by `TerminateJobRun`.

| Property | Type | Description |
|----------|------|-------------|
| `overrideDeployPolicy` | `array<string>` | Optional. Deploy policies to override. Format is `projects/{project}/locations/{location}/deployP... |

### `TerminateJobRunResponse`

The response object from `TerminateJobRun`.

### `TestIamPermissionsRequest`

Request message for `TestIamPermissions` method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | The set of permissions to check for the `resource`. Permissions with wildcards (such as `*` or `s... |

### `TestIamPermissionsResponse`

Response message for `TestIamPermissions` method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | A subset of `TestPermissionsRequest.permissions` that the caller is allowed. |

### `TimeOfDay`

Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and `google.protobuf.Timestamp`.

| Property | Type | Description |
|----------|------|-------------|
| `hours` | `integer` | Hours of a day in 24 hour format. Must be greater than or equal to 0 and typically must be less t... |
| `minutes` | `integer` | Minutes of an hour. Must be greater than or equal to 0 and less than or equal to 59. |
| `nanos` | `integer` | Fractions of seconds, in nanoseconds. Must be greater than or equal to 0 and less than or equal t... |
| `seconds` | `integer` | Seconds of a minute. Must be greater than or equal to 0 and typically must be less than or equal ... |

### `TimeWindows`

Time windows within which actions are restricted. See the [documentation](https://cloud.google.com/deploy/docs/deploy-policy#dates_times) for more information on how to configure dates/times.

| Property | Type | Description |
|----------|------|-------------|
| `oneTimeWindows` | `array<OneTimeWindow>` | Optional. One-time windows within which actions are restricted. |
| `timeZone` | `string` | Required. The time zone in IANA format [IANA Time Zone Database](https://www.iana.org/time-zones)... |
| `weeklyWindows` | `array<WeeklyWindow>` | Optional. Recurring weekly windows within which actions are restricted. |

### `TimedPromoteReleaseCondition`

`TimedPromoteReleaseCondition` contains conditions specific to an Automation with a Timed Promote Release rule defined.

| Property | Type | Description |
|----------|------|-------------|
| `nextPromotionTime` | `string` | Output only. When the next scheduled promotion(s) will occur. |
| `targetsList` | `array<Targets>` | Output only. A list of targets involved in the upcoming timed promotion(s). |

### `TimedPromoteReleaseOperation`

Contains the information of an automated timed promote-release operation.

| Property | Type | Description |
|----------|------|-------------|
| `phase` | `string` | Output only. The starting phase of the rollout created by this operation. |
| `release` | `string` | Output only. The name of the release to be promoted. |
| `targetId` | `string` | Output only. The ID of the target that represents the promotion stage to which the release will b... |

### `TimedPromoteReleaseRule`

The `TimedPromoteReleaseRule` will automatically promote a release from the current target(s) to the specified target(s) on a configured schedule.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `AutomationRuleCondition` | Output only. Information around the state of the Automation rule. |
| `destinationPhase` | `string` | Optional. The starting phase of the rollout created by this rule. Default to the first phase. |
| `destinationTargetId` | `string` | Optional. The ID of the stage in the pipeline to which this `Release` is deploying. If unspecifie... |
| `id` | `string` | Required. ID of the rule. This ID must be unique in the `Automation` resource to which this rule ... |
| `schedule` | `string` | Required. Schedule in crontab format. e.g. "0 9 * * 1" for every Monday at 9am. |
| `timeZone` | `string` | Required. The time zone in IANA format [IANA Time Zone Database](https://www.iana.org/time-zones)... |

### `ToolVersionSupportedCondition`

ToolVersionSupportedCondition contains information about when support for the release's version of a tool ends.

| Property | Type | Description |
|----------|------|-------------|
| `maintenanceModeTime` | `string` | Output only. The time at which this release's version of the tool will enter maintenance mode. |
| `status` | `boolean` | Output only. True if the version of Tool used by this release is supported. |
| `supportExpirationTime` | `string` | Output only. The time at which this release's version of the tool will no longer be supported. |
| `toolVersionSupportState` | `string` | Output only. The tool support state for this release's version of the tool. |

### `ToolVersions`

Details of ToolVersions for the release.

| Property | Type | Description |
|----------|------|-------------|
| `docker` | `string` | Optional. The Docker version to use for Cloud Deploy operations. |
| `helm` | `string` | Optional. The Helm version to use for Cloud Deploy operations. |
| `kpt` | `string` | Optional. The kpt version to use for Cloud Deploy operations. |
| `kubectl` | `string` | Optional. The Kubectl version to use for Cloud Deploy operations. |
| `kustomize` | `string` | Optional. The Kustomize version to use for Cloud Deploy operations. |
| `skaffold` | `string` | Optional. The Skaffold version to use for Cloud Deploy operations. |

### `VerifyJob`

A verify Job.

### `VerifyJobRun`

VerifyJobRun contains information specific to a verify `JobRun`.

| Property | Type | Description |
|----------|------|-------------|
| `artifactUri` | `string` | Output only. URI of a directory containing the verify artifacts. This contains the Skaffold event... |
| `build` | `string` | Output only. The resource name of the Cloud Build `Build` object that is used to verify. Format i... |
| `eventLogPath` | `string` | Output only. File path of the Skaffold event log relative to the artifact URI. |
| `failureCause` | `string` | Output only. The reason the verify failed. This will always be unspecified while the verify is in... |
| `failureMessage` | `string` | Output only. Additional information about the verify failure, if available. |

### `WeeklyWindow`

Weekly windows. For example, blocking actions every Saturday and Sunday. Another example would be blocking actions every weekday from 5pm to midnight.

| Property | Type | Description |
|----------|------|-------------|
| `daysOfWeek` | `array<string>` | Optional. Days of week. If left empty, all days of the week will be included. |
| `endTime` | `TimeOfDay` | Optional. End time (exclusive). Use 24:00 to indicate midnight. If you specify end_time you must ... |
| `startTime` | `TimeOfDay` | Optional. Start time (inclusive). Use 00:00 for the beginning of the day. If you specify start_ti... |

