# Cloud Workstations API - API Reference

**Version**: `v1` | **Methods**: 32 | **Schemas**: 48

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `workstations.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `workstations.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `workstations.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `workstations.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `workstations.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `workstations.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `workstations.projects.locations.workstationClusters.list` | GET | `v1/{+parent}/workstationClusters` | Returns all workstation clusters in the specified location. |
| `workstations.projects.locations.workstationClusters.patch` | PATCH | `v1/{+name}` | Updates an existing workstation cluster. |
| `workstations.projects.locations.workstationClusters.get` | GET | `v1/{+name}` | Returns the requested workstation cluster. |
| `workstations.projects.locations.workstationClusters.delete` | DELETE | `v1/{+name}` | Deletes the specified workstation cluster. |
| `workstations.projects.locations.workstationClusters.create` | POST | `v1/{+parent}/workstationClusters` | Creates a new workstation cluster. |
| `workstations.projects.locations.workstationClusters.workstationConfigs.delete` | DELETE | `v1/{+name}` | Deletes the specified workstation configuration. |
| `workstations.projects.locations.workstationClusters.workstationConfigs.patch` | PATCH | `v1/{+name}` | Updates an existing workstation configuration. |
| `workstations.projects.locations.workstationClusters.workstationConfigs.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `workstations.projects.locations.workstationClusters.workstationConfigs.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `workstations.projects.locations.workstationClusters.workstationConfigs.list` | GET | `v1/{+parent}/workstationConfigs` | Returns all workstation configurations in the specified cluster. |
| `workstations.projects.locations.workstationClusters.workstationConfigs.listUsable` | GET | `v1/{+parent}/workstationConfigs:listUsable` | Returns all workstation configurations in the specified cluster on which the caller has the "work... |
| `workstations.projects.locations.workstationClusters.workstationConfigs.create` | POST | `v1/{+parent}/workstationConfigs` | Creates a new workstation configuration. |
| `workstations.projects.locations.workstationClusters.workstationConfigs.get` | GET | `v1/{+name}` | Returns the requested workstation configuration. |
| `workstations.projects.locations.workstationClusters.workstationConfigs.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `workstations.projects.locations.workstationClusters.workstationConfigs.workstations.list` | GET | `v1/{+parent}/workstations` | Returns all Workstations using the specified workstation configuration. |
| `workstations.projects.locations.workstationClusters.workstationConfigs.workstations.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `workstations.projects.locations.workstationClusters.workstationConfigs.workstations.delete` | DELETE | `v1/{+name}` | Deletes the specified workstation. |
| `workstations.projects.locations.workstationClusters.workstationConfigs.workstations.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `workstations.projects.locations.workstationClusters.workstationConfigs.workstations.get` | GET | `v1/{+name}` | Returns the requested workstation. |
| `workstations.projects.locations.workstationClusters.workstationConfigs.workstations.stop` | POST | `v1/{+name}:stop` | Stops running a workstation, reducing costs. |
| `workstations.projects.locations.workstationClusters.workstationConfigs.workstations.listUsable` | GET | `v1/{+parent}/workstations:listUsable` | Returns all workstations using the specified workstation configuration on which the caller has th... |
| `workstations.projects.locations.workstationClusters.workstationConfigs.workstations.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `workstations.projects.locations.workstationClusters.workstationConfigs.workstations.generateAccessToken` | POST | `v1/{+workstation}:generateAccessToken` | Returns a short-lived credential that can be used to send authenticated and authorized traffic to... |
| `workstations.projects.locations.workstationClusters.workstationConfigs.workstations.patch` | PATCH | `v1/{+name}` | Updates an existing workstation. |
| `workstations.projects.locations.workstationClusters.workstationConfigs.workstations.start` | POST | `v1/{+name}:start` | Starts running a workstation so that users can connect to it. |
| `workstations.projects.locations.workstationClusters.workstationConfigs.workstations.create` | POST | `v1/{+parent}/workstations` | Creates a new workstation. |

### `workstations.projects.locations.list`

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
const res = await workstations.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workstations.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await workstations.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workstations.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await workstations.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workstations.projects.locations.operations.list`

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
const res = await workstations.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workstations.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await workstations.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workstations.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await workstations.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workstations.projects.locations.workstationClusters.list`

**GET** `v1/{+parent}/workstationClusters`

Returns all workstation clusters in the specified location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. |
| `filter` | `string` | query | No | Optional. Filter the WorkstationClusters to be listed. Possible filters are described in https://google.aip.dev/160. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of items to return. |
| `pageToken` | `string` | query | No | Optional. next_page_token value returned from a previous List request, if any. |

**Response**: `ListWorkstationClustersResponse`

```typescript
const res = await workstations.workstationClusters.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workstations.projects.locations.workstationClusters.patch`

**PATCH** `v1/{+name}`

Updates an existing workstation cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Full name of this workstation cluster. |
| `allowMissing` | `boolean` | query | No | Optional. If set, and the workstation cluster is not found, a new workstation cluster will be created. In this situat... |
| `updateMask` | `string` | query | No | Required. Mask that specifies which fields in the workstation cluster should be updated. |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request and preview the review, but do not actually apply it. |

**Request body**: `WorkstationCluster`

**Response**: `Operation`

```typescript
const res = await workstations.workstationClusters.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workstations.projects.locations.workstationClusters.get`

**GET** `v1/{+name}`

Returns the requested workstation cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the requested resource. |

**Response**: `WorkstationCluster`

```typescript
const res = await workstations.workstationClusters.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workstations.projects.locations.workstationClusters.delete`

**DELETE** `v1/{+name}`

Deletes the specified workstation cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the workstation cluster to delete. |
| `etag` | `string` | query | No | Optional. If set, the request will be rejected if the latest version of the workstation cluster on the server does no... |
| `force` | `boolean` | query | No | Optional. If set, any workstation configurations and workstations in the workstation cluster are also deleted. Otherw... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request and preview the review, but do not apply it. |

**Response**: `Operation`

```typescript
const res = await workstations.workstationClusters.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workstations.projects.locations.workstationClusters.create`

**POST** `v1/{+parent}/workstationClusters`

Creates a new workstation cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request and preview the review, but do not actually apply it. |
| `workstationClusterId` | `string` | query | No | Required. ID to use for the workstation cluster. |

**Request body**: `WorkstationCluster`

**Response**: `Operation`

```typescript
const res = await workstations.workstationClusters.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workstations.projects.locations.workstationClusters.workstationConfigs.delete`

**DELETE** `v1/{+name}`

Deletes the specified workstation configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the workstation configuration to delete. |
| `etag` | `string` | query | No | Optional. If set, the request is rejected if the latest version of the workstation configuration on the server does n... |
| `force` | `boolean` | query | No | Optional. If set, any workstations in the workstation configuration are also deleted. Otherwise, the request works on... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request and preview the review, but do not actually apply it. |

**Response**: `Operation`

```typescript
const res = await workstations.workstationConfigs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workstations.projects.locations.workstationClusters.workstationConfigs.patch`

**PATCH** `v1/{+name}`

Updates an existing workstation configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Full name of this workstation configuration. |
| `allowMissing` | `boolean` | query | No | Optional. If set and the workstation configuration is not found, a new workstation configuration will be created. In ... |
| `updateMask` | `string` | query | No | Required. Mask specifying which fields in the workstation configuration should be updated. |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request and preview the review, but do not actually apply it. |

**Request body**: `WorkstationConfig`

**Response**: `Operation`

```typescript
const res = await workstations.workstationConfigs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workstations.projects.locations.workstationClusters.workstationConfigs.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await workstations.workstationConfigs.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workstations.projects.locations.workstationClusters.workstationConfigs.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await workstations.workstationConfigs.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workstations.projects.locations.workstationClusters.workstationConfigs.list`

**GET** `v1/{+parent}/workstationConfigs`

Returns all workstation configurations in the specified cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. |
| `filter` | `string` | query | No | Optional. Filter the WorkstationConfigs to be listed. Possible filters are described in https://google.aip.dev/160. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of items to return. |
| `pageToken` | `string` | query | No | Optional. next_page_token value returned from a previous List request, if any. |

**Response**: `ListWorkstationConfigsResponse`

```typescript
const res = await workstations.workstationConfigs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workstations.projects.locations.workstationClusters.workstationConfigs.listUsable`

**GET** `v1/{+parent}/workstationConfigs:listUsable`

Returns all workstation configurations in the specified cluster on which the caller has the "workstations.workstation.create" permission.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of items to return. |
| `pageToken` | `string` | query | No | Optional. next_page_token value returned from a previous List request, if any. |

**Response**: `ListUsableWorkstationConfigsResponse`

```typescript
const res = await workstations.workstationConfigs.listUsable({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workstations.projects.locations.workstationClusters.workstationConfigs.create`

**POST** `v1/{+parent}/workstationConfigs`

Creates a new workstation configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request and preview the review, but do not actually apply it. |
| `workstationConfigId` | `string` | query | No | Required. ID to use for the workstation configuration. |

**Request body**: `WorkstationConfig`

**Response**: `Operation`

```typescript
const res = await workstations.workstationConfigs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workstations.projects.locations.workstationClusters.workstationConfigs.get`

**GET** `v1/{+name}`

Returns the requested workstation configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the requested resource. |

**Response**: `WorkstationConfig`

```typescript
const res = await workstations.workstationConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workstations.projects.locations.workstationClusters.workstationConfigs.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await workstations.workstationConfigs.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workstations.projects.locations.workstationClusters.workstationConfigs.workstations.list`

**GET** `v1/{+parent}/workstations`

Returns all Workstations using the specified workstation configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. |
| `filter` | `string` | query | No | Optional. Filter the Workstations to be listed. Possible filters are described in https://google.aip.dev/160. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of items to return. |
| `pageToken` | `string` | query | No | Optional. next_page_token value returned from a previous List request, if any. |

**Response**: `ListWorkstationsResponse`

```typescript
const res = await workstations.workstations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workstations.projects.locations.workstationClusters.workstationConfigs.workstations.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await workstations.workstations.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workstations.projects.locations.workstationClusters.workstationConfigs.workstations.delete`

**DELETE** `v1/{+name}`

Deletes the specified workstation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the workstation to delete. |
| `etag` | `string` | query | No | Optional. If set, the request will be rejected if the latest version of the workstation on the server does not have t... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request and preview the review, but do not actually apply it. |

**Response**: `Operation`

```typescript
const res = await workstations.workstations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workstations.projects.locations.workstationClusters.workstationConfigs.workstations.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await workstations.workstations.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workstations.projects.locations.workstationClusters.workstationConfigs.workstations.get`

**GET** `v1/{+name}`

Returns the requested workstation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the requested resource. |

**Response**: `Workstation`

```typescript
const res = await workstations.workstations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workstations.projects.locations.workstationClusters.workstationConfigs.workstations.stop`

**POST** `v1/{+name}:stop`

Stops running a workstation, reducing costs.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the workstation to stop. |

**Request body**: `StopWorkstationRequest`

**Response**: `Operation`

```typescript
const res = await workstations.workstations.stop({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workstations.projects.locations.workstationClusters.workstationConfigs.workstations.listUsable`

**GET** `v1/{+parent}/workstations:listUsable`

Returns all workstations using the specified workstation configuration on which the caller has the "workstations.workstations.use" permission.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of items to return. |
| `pageToken` | `string` | query | No | Optional. next_page_token value returned from a previous List request, if any. |

**Response**: `ListUsableWorkstationsResponse`

```typescript
const res = await workstations.workstations.listUsable({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workstations.projects.locations.workstationClusters.workstationConfigs.workstations.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await workstations.workstations.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workstations.projects.locations.workstationClusters.workstationConfigs.workstations.generateAccessToken`

**POST** `v1/{+workstation}:generateAccessToken`

Returns a short-lived credential that can be used to send authenticated and authorized traffic to a workstation. Once generated this token cannot be revoked and is good for the lifetime of the token.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `workstation` | `string` | path | Yes | Required. Name of the workstation for which the access token should be generated. |

**Request body**: `GenerateAccessTokenRequest`

**Response**: `GenerateAccessTokenResponse`

```typescript
const res = await workstations.workstations.generateAccessToken({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workstations.projects.locations.workstationClusters.workstationConfigs.workstations.patch`

**PATCH** `v1/{+name}`

Updates an existing workstation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Full name of this workstation. |
| `allowMissing` | `boolean` | query | No | Optional. If set and the workstation configuration is not found, a new workstation configuration is created. In this ... |
| `updateMask` | `string` | query | No | Required. Mask specifying which fields in the workstation configuration should be updated. |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request and preview the review, but do not actually apply it. |

**Request body**: `Workstation`

**Response**: `Operation`

```typescript
const res = await workstations.workstations.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workstations.projects.locations.workstationClusters.workstationConfigs.workstations.start`

**POST** `v1/{+name}:start`

Starts running a workstation so that users can connect to it.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the workstation to start. |

**Request body**: `StartWorkstationRequest`

**Response**: `Operation`

```typescript
const res = await workstations.workstations.start({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workstations.projects.locations.workstationClusters.workstationConfigs.workstations.create`

**POST** `v1/{+parent}/workstations`

Creates a new workstation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource name. |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request and preview the review, but do not actually apply it. |
| `workstationId` | `string` | query | No | Required. ID to use for the workstation. |

**Request body**: `Workstation`

**Response**: `Operation`

```typescript
const res = await workstations.workstations.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `Accelerator`

An accelerator card attached to the instance.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `integer` | Optional. Number of accelerator cards exposed to the instance. |
| `type` | `string` | Optional. Type of accelerator resource to attach to the instance, for example, `"nvidia-tesla-p10... |

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

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `BoostConfig`

A boost configuration is a set of resources that a workstation can use to increase its performance. If you specify a boost configuration, upon startup, workstation users can choose to use a VM provisioned under the boost config by passing the boost config ID in the start request. If the workstation user does not provide a boost config ID in the start request, the system will choose a VM from the pool provisioned under the default config.

| Property | Type | Description |
|----------|------|-------------|
| `accelerators` | `array<Accelerator>` | Optional. A list of the type and count of accelerator cards attached to the boost instance. Defau... |
| `bootDiskSizeGb` | `integer` | Optional. The size of the boot disk for the VM in gigabytes (GB). The minimum boot disk size is `... |
| `enableNestedVirtualization` | `boolean` | Optional. Whether to enable nested virtualization on boosted Cloud Workstations VMs running using... |
| `id` | `string` | Required. The ID to be used for the boost configuration. |
| `machineType` | `string` | Optional. The type of machine that boosted VM instances will use—for example, `e2-standard-4`. Fo... |
| `poolSize` | `integer` | Optional. The number of boost VMs that the system should keep idle so that workstations can be bo... |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `Container`

A Docker container.

| Property | Type | Description |
|----------|------|-------------|
| `args` | `array<string>` | Optional. Arguments passed to the entrypoint. |
| `command` | `array<string>` | Optional. If set, overrides the default ENTRYPOINT specified by the image. |
| `env` | `object` | Optional. Environment variables passed to the container's entrypoint. |
| `image` | `string` | Optional. A Docker container image that defines a custom environment. Cloud Workstations provides... |
| `runAsUser` | `integer` | Optional. If set, overrides the USER specified in the image with the given uid. |
| `workingDir` | `string` | Optional. If set, overrides the default DIR specified by the image. |

### `CustomerEncryptionKey`

A customer-managed encryption key (CMEK) for the Compute Engine resources of the associated workstation configuration. Specify the name of your Cloud KMS encryption key and the default service account. We recommend that you use a separate service account and follow [Cloud KMS best practices](https://cloud.google.com/kms/docs/separation-of-duties).

| Property | Type | Description |
|----------|------|-------------|
| `kmsKey` | `string` | Immutable. The name of the Google Cloud KMS encryption key. For example, `"projects/PROJECT_ID/lo... |
| `kmsKeyServiceAccount` | `string` | Immutable. The service account to use with the specified KMS key. We recommend that you use a sep... |

### `DomainConfig`

Configuration options for a custom domain.

| Property | Type | Description |
|----------|------|-------------|
| `domain` | `string` | Immutable. Domain used by Workstations for HTTP ingress. |

### `EphemeralDirectory`

An ephemeral directory which won't persist across workstation sessions. It is freshly created on every workstation start operation.

| Property | Type | Description |
|----------|------|-------------|
| `gcePd` | `GcePersistentDisk` | An EphemeralDirectory backed by a Compute Engine persistent disk. |
| `mountPath` | `string` | Required. Location of this directory in the running workstation. |

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `GatewayConfig`

Configuration options for Cluster HTTP Gateway.

| Property | Type | Description |
|----------|------|-------------|
| `http2Enabled` | `boolean` | Optional. Whether HTTP/2 is enabled for this workstation cluster. Defaults to false. |

### `GceConfidentialInstanceConfig`

A set of Compute Engine Confidential VM instance options.

| Property | Type | Description |
|----------|------|-------------|
| `enableConfidentialCompute` | `boolean` | Optional. Whether the instance has confidential compute enabled. |

### `GceHyperdiskBalancedHighAvailability`

A Persistent Directory backed by a Compute Engine [Hyperdisk Balanced High Availability Disk](https://cloud.google.com/compute/docs/disks/hd-types/hyperdisk-balanced-ha). This is a high-availability block storage solution that offers a balance between performance and cost for most general-purpose workloads.

| Property | Type | Description |
|----------|------|-------------|
| `archiveTimeout` | `string` | Optional. Number of seconds to wait after initially creating or subsequently shutting down the wo... |
| `reclaimPolicy` | `string` | Optional. Whether the persistent disk should be deleted when the workstation is deleted. Valid va... |
| `sizeGb` | `integer` | Optional. The GB capacity of a persistent home directory for each workstation created with this c... |
| `sourceSnapshot` | `string` | Optional. Name of the snapshot to use as the source for the disk. If set, size_gb must be empty. ... |

### `GceInstance`

A runtime using a Compute Engine instance.

| Property | Type | Description |
|----------|------|-------------|
| `accelerators` | `array<Accelerator>` | Optional. A list of the type and count of accelerator cards attached to the instance. |
| `boostConfigs` | `array<BoostConfig>` | Optional. A list of the boost configurations that workstations created using this workstation con... |
| `bootDiskSizeGb` | `integer` | Optional. The size of the boot disk for the VM in gigabytes (GB). The minimum boot disk size is `... |
| `confidentialInstanceConfig` | `GceConfidentialInstanceConfig` | Optional. A set of Compute Engine Confidential VM instance options. |
| `disablePublicIpAddresses` | `boolean` | Optional. When set to true, disables public IP addresses for VMs. If you disable public IP addres... |
| `disableSsh` | `boolean` | Optional. Whether to disable SSH access to the VM. |
| `enableNestedVirtualization` | `boolean` | Optional. Whether to enable nested virtualization on Cloud Workstations VMs created using this wo... |
| `instanceMetadata` | `object` | Optional. Custom metadata to apply to Compute Engine instances. |
| `machineType` | `string` | Optional. The type of machine to use for VM instances—for example, `"e2-standard-4"`. For more in... |
| `poolSize` | `integer` | Optional. The number of VMs that the system should keep idle so that new workstations can be star... |
| `pooledInstances` | `integer` | Output only. Number of instances currently available in the pool for faster workstation startup. |
| `serviceAccount` | `string` | Optional. The email address of the service account for Cloud Workstations VMs created with this c... |
| `serviceAccountScopes` | `array<string>` | Optional. Scopes to grant to the service_account. When specified, users of workstations under thi... |
| `shieldedInstanceConfig` | `GceShieldedInstanceConfig` | Optional. A set of Compute Engine Shielded instance options. |
| `startupScriptUri` | `string` | Optional. Link to the startup script stored in Cloud Storage. This script will be run on the host... |
| `tags` | `array<string>` | Optional. Network tags to add to the Compute Engine VMs backing the workstations. This option app... |
| `vmTags` | `object` | Optional. Resource manager tags to be bound to this instance. Tag keys and values have the same d... |

### `GceInstanceHost`

The Compute Engine instance host.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | Optional. Output only. The ID of the Compute Engine instance. |
| `name` | `string` | Optional. Output only. The name of the Compute Engine instance. |
| `zone` | `string` | Optional. Output only. The zone of the Compute Engine instance. |

### `GcePersistentDisk`

An EphemeralDirectory is backed by a Compute Engine persistent disk.

| Property | Type | Description |
|----------|------|-------------|
| `diskType` | `string` | Optional. Type of the disk to use. Defaults to `"pd-standard"`. |
| `readOnly` | `boolean` | Optional. Whether the disk is read only. If true, the disk may be shared by multiple VMs and sour... |
| `sourceImage` | `string` | Optional. Name of the disk image to use as the source for the disk. Must be empty if source_snaps... |
| `sourceSnapshot` | `string` | Optional. Name of the snapshot to use as the source for the disk. Must be empty if source_image i... |

### `GceRegionalPersistentDisk`

A Persistent Directory backed by a Compute Engine regional persistent disk. The persistent_directories field is repeated, but it may contain only one entry. It creates a [persistent disk](https://cloud.google.com/compute/docs/disks/persistent-disks) that mounts to the workstation VM at `/home` when the session starts and detaches when the session ends. If this field is empty, workstations created with this configuration do not have a persistent home directory.

| Property | Type | Description |
|----------|------|-------------|
| `diskType` | `string` | Optional. The [type of the persistent disk](https://cloud.google.com/compute/docs/disks#disk-type... |
| `fsType` | `string` | Optional. Type of file system that the disk should be formatted with. The workstation image must ... |
| `reclaimPolicy` | `string` | Optional. Whether the persistent disk should be deleted when the workstation is deleted. Valid va... |
| `sizeGb` | `integer` | Optional. The GB capacity of a persistent home directory for each workstation created with this c... |
| `sourceSnapshot` | `string` | Optional. Name of the snapshot to use as the source for the disk. If set, size_gb and fs_type mus... |

### `GceShieldedInstanceConfig`

A set of Compute Engine Shielded instance options.

| Property | Type | Description |
|----------|------|-------------|
| `enableIntegrityMonitoring` | `boolean` | Optional. Whether the instance has integrity monitoring enabled. |
| `enableSecureBoot` | `boolean` | Optional. Whether the instance has Secure Boot enabled. |
| `enableVtpm` | `boolean` | Optional. Whether the instance has the vTPM enabled. |

### `GenerateAccessTokenRequest`

Request message for GenerateAccessToken.

| Property | Type | Description |
|----------|------|-------------|
| `expireTime` | `string` | Desired expiration time of the access token. This value must be at most 24 hours in the future. I... |
| `port` | `integer` | Optional. Port for which the access token should be generated. If specified, the generated access... |
| `ttl` | `string` | Desired lifetime duration of the access token. This value must be at most 24 hours. If a value is... |

### `GenerateAccessTokenResponse`

Response message for GenerateAccessToken.

| Property | Type | Description |
|----------|------|-------------|
| `accessToken` | `string` | The generated bearer access token. To use this token, include it in an Authorization header of an... |
| `expireTime` | `string` | Time at which the generated token will expire. |

### `GoogleProtobufEmpty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Host`

Runtime host for a workstation.

| Property | Type | Description |
|----------|------|-------------|
| `gceInstance` | `GceInstance` | Specifies a Compute Engine instance as the host. |

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

### `ListUsableWorkstationConfigsResponse`

Response message for ListUsableWorkstationConfigs.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |
| `unreachable` | `array<string>` | Unreachable resources. |
| `workstationConfigs` | `array<WorkstationConfig>` | The requested configs. |

### `ListUsableWorkstationsResponse`

Response message for ListUsableWorkstations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |
| `unreachable` | `array<string>` | Unreachable resources. |
| `workstations` | `array<Workstation>` | The requested workstations. |

### `ListWorkstationClustersResponse`

Response message for ListWorkstationClusters.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |
| `unreachable` | `array<string>` | Unreachable resources. |
| `workstationClusters` | `array<WorkstationCluster>` | The requested workstation clusters. |

### `ListWorkstationConfigsResponse`

Response message for ListWorkstationConfigs.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |
| `unreachable` | `array<string>` | Unreachable resources. |
| `workstationConfigs` | `array<WorkstationConfig>` | The requested configs. |

### `ListWorkstationsResponse`

Response message for ListWorkstations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Optional. Token to retrieve the next page of results, or empty if there are no more results in th... |
| `unreachable` | `array<string>` | Optional. Unreachable resources. |
| `workstations` | `array<Workstation>` | The requested workstations. |

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

Metadata for long-running operations.

| Property | Type | Description |
|----------|------|-------------|
| `apiVersion` | `string` | Output only. API version used to start the operation. |
| `createTime` | `string` | Output only. Time that the operation was created. |
| `endTime` | `string` | Output only. Time that the operation finished running. |
| `requestedCancellation` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. |
| `statusMessage` | `string` | Output only. Human-readable status of the operation, if any. |
| `target` | `string` | Output only. Server-defined resource path for the target of the operation. |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `PersistentDirectory`

A directory to persist across workstation sessions. Updates to this field will not update existing workstations and will only take effect on new workstations.

| Property | Type | Description |
|----------|------|-------------|
| `gceHd` | `GceHyperdiskBalancedHighAvailability` | A PersistentDirectory backed by a Compute Engine hyperdisk high availability disk. |
| `gcePd` | `GceRegionalPersistentDisk` | A PersistentDirectory backed by a Compute Engine persistent disk. |
| `mountPath` | `string` | Optional. Location of this directory in the running workstation. |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `auditConfigs` | `array<AuditConfig>` | Specifies cloud audit logging configuration for this policy. |
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `PortRange`

A PortRange defines a range of ports. Both first and last are inclusive. To specify a single port, both first and last should be the same.

| Property | Type | Description |
|----------|------|-------------|
| `first` | `integer` | Required. Starting port number for the current range of ports. Valid ports are 22, 80, and ports ... |
| `last` | `integer` | Required. Ending port number for the current range of ports. Valid ports are 22, 80, and ports wi... |

### `PrivateClusterConfig`

Configuration options for private workstation clusters.

| Property | Type | Description |
|----------|------|-------------|
| `allowedProjects` | `array<string>` | Optional. Additional projects that are allowed to attach to the workstation cluster's service att... |
| `clusterHostname` | `string` | Output only. Hostname for the workstation cluster. This field will be populated only when private... |
| `enablePrivateEndpoint` | `boolean` | Immutable. Whether Workstations endpoint is private. |
| `serviceAttachmentUri` | `string` | Output only. Service attachment URI for the workstation cluster. The service attachment is create... |

### `ReadinessCheck`

A readiness check to be performed on a workstation.

| Property | Type | Description |
|----------|------|-------------|
| `path` | `string` | Optional. Path to which the request should be sent. |
| `port` | `integer` | Optional. Port to which the request should be sent. |

### `RuntimeHost`

Runtime host for the workstation.

| Property | Type | Description |
|----------|------|-------------|
| `gceInstanceHost` | `GceInstanceHost` | Specifies a Compute Engine instance as the host. |

### `SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |
| `updateMask` | `string` | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mas... |

### `StartWorkstationRequest`

Request message for StartWorkstation.

| Property | Type | Description |
|----------|------|-------------|
| `boostConfig` | `string` | Optional. If set, the workstation starts using the boost configuration with the specified ID. |
| `etag` | `string` | Optional. If set, the request will be rejected if the latest version of the workstation on the se... |
| `validateOnly` | `boolean` | Optional. If set, validate the request and preview the review, but do not actually apply it. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `StopWorkstationRequest`

Request message for StopWorkstation.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Optional. If set, the request will be rejected if the latest version of the workstation on the se... |
| `validateOnly` | `boolean` | Optional. If set, validate the request and preview the review, but do not actually apply it. |

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

### `Workstation`

A single instance of a developer workstation with its own persistent storage.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. Client-specified annotations. |
| `createTime` | `string` | Output only. Time when this workstation was created. |
| `deleteTime` | `string` | Output only. Time when this workstation was soft-deleted. |
| `displayName` | `string` | Optional. Human-readable name for this workstation. |
| `env` | `object` | Optional. Environment variables passed to the workstation container's entrypoint. |
| `etag` | `string` | Optional. Checksum computed by the server. May be sent on update and delete requests to make sure... |
| `host` | `string` | Output only. Host to which clients can send HTTPS traffic that will be received by the workstatio... |
| `kmsKey` | `string` | Output only. The name of the Google Cloud KMS encryption key used to encrypt this workstation. Th... |
| `labels` | `object` | Optional. [Labels](https://cloud.google.com/workstations/docs/label-resources) that are applied t... |
| `name` | `string` | Identifier. Full name of this workstation. |
| `reconciling` | `boolean` | Output only. Indicates whether this workstation is currently being updated to match its intended ... |
| `runtimeHost` | `RuntimeHost` | Optional. Output only. Runtime host for the workstation when in STATE_RUNNING. |
| `sourceWorkstation` | `string` | Optional. The source workstation from which this workstation's persistent directories were cloned... |
| `startTime` | `string` | Output only. Time when this workstation was most recently successfully started, regardless of the... |
| `state` | `string` | Output only. Current state of the workstation. |
| `uid` | `string` | Output only. A system-assigned unique identifier for this workstation. |
| `updateTime` | `string` | Output only. Time when this workstation was most recently updated. |

### `WorkstationCluster`

A workstation cluster resource in the Cloud Workstations API. Defines a group of workstations in a particular region and the VPC network they're attached to.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. Client-specified annotations. |
| `conditions` | `array<Status>` | Output only. Status conditions describing the workstation cluster's current state. |
| `controlPlaneIp` | `string` | Output only. The private IP address of the control plane for this workstation cluster. Workstatio... |
| `createTime` | `string` | Output only. Time when this workstation cluster was created. |
| `degraded` | `boolean` | Output only. Whether this workstation cluster is in degraded mode, in which case it may require u... |
| `deleteTime` | `string` | Output only. Time when this workstation cluster was soft-deleted. |
| `displayName` | `string` | Optional. Human-readable name for this workstation cluster. |
| `domainConfig` | `DomainConfig` | Optional. Configuration options for a custom domain. |
| `etag` | `string` | Optional. Checksum computed by the server. May be sent on update and delete requests to make sure... |
| `gatewayConfig` | `GatewayConfig` | Optional. Configuration options for Cluster HTTP Gateway. |
| `labels` | `object` | Optional. [Labels](https://cloud.google.com/workstations/docs/label-resources) that are applied t... |
| `name` | `string` | Identifier. Full name of this workstation cluster. |
| `network` | `string` | Immutable. Name of the Compute Engine network in which instances associated with this workstation... |
| `privateClusterConfig` | `PrivateClusterConfig` | Optional. Configuration for private workstation cluster. |
| `reconciling` | `boolean` | Output only. Indicates whether this workstation cluster is currently being updated to match its i... |
| `subnetwork` | `string` | Immutable. Name of the Compute Engine subnetwork in which instances associated with this workstat... |
| `tags` | `object` | Optional. Input only. Immutable. Tag keys/values directly bound to this resource. For example: "1... |
| `uid` | `string` | Output only. A system-assigned unique identifier for this workstation cluster. |
| `updateTime` | `string` | Output only. Time when this workstation cluster was most recently updated. |

### `WorkstationConfig`

A workstation configuration resource in the Cloud Workstations API. Workstation configurations act as templates for workstations. The workstation configuration defines details such as the workstation virtual machine (VM) instance type, persistent storage, container image defining environment, which IDE or Code Editor to use, and more. Administrators and platform teams can also use [Identity and Access Management (IAM)](https://cloud.google.com/iam/docs/overview) rules to grant access to teams or to individual developers.

| Property | Type | Description |
|----------|------|-------------|
| `allowedPorts` | `array<PortRange>` | Optional. A list of PortRanges specifying single ports or ranges of ports that are externally acc... |
| `annotations` | `object` | Optional. Client-specified annotations. |
| `conditions` | `array<Status>` | Output only. Status conditions describing the workstation configuration's current state. |
| `container` | `Container` | Optional. Container that runs upon startup for each workstation using this workstation configurat... |
| `createTime` | `string` | Output only. Time when this workstation configuration was created. |
| `degraded` | `boolean` | Output only. Whether this workstation configuration is in degraded mode, in which case it may req... |
| `deleteTime` | `string` | Output only. Time when this workstation configuration was soft-deleted. |
| `disableTcpConnections` | `boolean` | Optional. Disables support for plain TCP connections in the workstation. By default the service s... |
| `displayName` | `string` | Optional. Human-readable name for this workstation configuration. |
| `enableAuditAgent` | `boolean` | Optional. Whether to enable Linux `auditd` logging on the workstation. When enabled, a service_ac... |
| `encryptionKey` | `CustomerEncryptionKey` | Immutable. Encrypts resources of this workstation configuration using a customer-managed encrypti... |
| `ephemeralDirectories` | `array<EphemeralDirectory>` | Optional. Ephemeral directories which won't persist across workstation sessions. |
| `etag` | `string` | Optional. Checksum computed by the server. May be sent on update and delete requests to make sure... |
| `grantWorkstationAdminRoleOnCreate` | `boolean` | Optional. Grant creator of a workstation `roles/workstations.policyAdmin` role along with `roles/... |
| `host` | `Host` | Optional. Runtime host for the workstation. |
| `idleTimeout` | `string` | Optional. Number of seconds to wait before automatically stopping a workstation after it last rec... |
| `labels` | `object` | Optional. [Labels](https://cloud.google.com/workstations/docs/label-resources) that are applied t... |
| `maxUsableWorkstations` | `integer` | Optional. Maximum number of workstations under this configuration a user can have `workstations.w... |
| `name` | `string` | Identifier. Full name of this workstation configuration. |
| `persistentDirectories` | `array<PersistentDirectory>` | Optional. Directories to persist across workstation sessions. |
| `readinessChecks` | `array<ReadinessCheck>` | Optional. Readiness checks to perform when starting a workstation using this workstation configur... |
| `reconciling` | `boolean` | Output only. Indicates whether this workstation configuration is currently being updated to match... |
| `replicaZones` | `array<string>` | Optional. Immutable. Specifies the zones used to replicate the VM and disk resources within the r... |
| `runningTimeout` | `string` | Optional. Number of seconds that a workstation can run until it is automatically shut down. We re... |
| `uid` | `string` | Output only. A system-assigned unique identifier for this workstation configuration. |
| `updateTime` | `string` | Output only. Time when this workstation configuration was most recently updated. |

