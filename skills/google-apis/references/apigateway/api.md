# API Gateway API - API Reference

**Version**: `v1` | **Methods**: 30 | **Schemas**: 26

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `apigateway.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `apigateway.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `apigateway.projects.locations.gateways.delete` | DELETE | `v1/{+name}` | Deletes a single Gateway. |
| `apigateway.projects.locations.gateways.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `apigateway.projects.locations.gateways.list` | GET | `v1/{+parent}/gateways` | Lists Gateways in a given project and location. |
| `apigateway.projects.locations.gateways.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single Gateway. |
| `apigateway.projects.locations.gateways.create` | POST | `v1/{+parent}/gateways` | Creates a new Gateway in a given project and location. |
| `apigateway.projects.locations.gateways.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `apigateway.projects.locations.gateways.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `apigateway.projects.locations.gateways.get` | GET | `v1/{+name}` | Gets details of a single Gateway. |
| `apigateway.projects.locations.apis.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `apigateway.projects.locations.apis.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `apigateway.projects.locations.apis.create` | POST | `v1/{+parent}/apis` | Creates a new Api in a given project and location. |
| `apigateway.projects.locations.apis.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `apigateway.projects.locations.apis.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single Api. |
| `apigateway.projects.locations.apis.list` | GET | `v1/{+parent}/apis` | Lists Apis in a given project and location. |
| `apigateway.projects.locations.apis.delete` | DELETE | `v1/{+name}` | Deletes a single Api. |
| `apigateway.projects.locations.apis.get` | GET | `v1/{+name}` | Gets details of a single Api. |
| `apigateway.projects.locations.apis.configs.delete` | DELETE | `v1/{+name}` | Deletes a single ApiConfig. |
| `apigateway.projects.locations.apis.configs.get` | GET | `v1/{+name}` | Gets details of a single ApiConfig. |
| `apigateway.projects.locations.apis.configs.create` | POST | `v1/{+parent}/configs` | Creates a new ApiConfig in a given project and location. |
| `apigateway.projects.locations.apis.configs.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single ApiConfig. |
| `apigateway.projects.locations.apis.configs.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `apigateway.projects.locations.apis.configs.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `apigateway.projects.locations.apis.configs.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `apigateway.projects.locations.apis.configs.list` | GET | `v1/{+parent}/configs` | Lists ApiConfigs in a given project and location. |
| `apigateway.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `apigateway.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `apigateway.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `apigateway.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |

### `apigateway.projects.locations.list`

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

**Response**: `ApigatewayListLocationsResponse`

```typescript
const res = await apigateway.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigateway.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `ApigatewayLocation`

```typescript
const res = await apigateway.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigateway.projects.locations.gateways.delete`

**DELETE** `v1/{+name}`

Deletes a single Gateway.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the form: `projects/*/locations/*/gateways/*` |

**Response**: `ApigatewayOperation`

```typescript
const res = await apigateway.gateways.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigateway.projects.locations.gateways.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `ApigatewayTestIamPermissionsRequest`

**Response**: `ApigatewayTestIamPermissionsResponse`

```typescript
const res = await apigateway.gateways.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigateway.projects.locations.gateways.list`

**GET** `v1/{+parent}/gateways`

Lists Gateways in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource of the Gateway, of the form: `projects/*/locations/*` |
| `filter` | `string` | query | No | Filter. |
| `orderBy` | `string` | query | No | Order by parameters. |
| `pageSize` | `integer` | query | No | Page size. |
| `pageToken` | `string` | query | No | Page token. |

**Response**: `ApigatewayListGatewaysResponse`

```typescript
const res = await apigateway.gateways.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigateway.projects.locations.gateways.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single Gateway.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Resource name of the Gateway. Format: projects/{project}/locations/{location}/gateways/{gateway} |
| `updateMask` | `string` | query | No | Field mask is used to specify the fields to be overwritten in the Gateway resource by the update. The fields specifie... |

**Request body**: `ApigatewayGateway`

**Response**: `ApigatewayOperation`

```typescript
const res = await apigateway.gateways.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigateway.projects.locations.gateways.create`

**POST** `v1/{+parent}/gateways`

Creates a new Gateway in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource of the Gateway, of the form: `projects/*/locations/*` |
| `gatewayId` | `string` | query | No | Required. Identifier to assign to the Gateway. Must be unique within scope of the parent resource. |

**Request body**: `ApigatewayGateway`

**Response**: `ApigatewayOperation`

```typescript
const res = await apigateway.gateways.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigateway.projects.locations.gateways.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `ApigatewayPolicy`

```typescript
const res = await apigateway.gateways.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigateway.projects.locations.gateways.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `ApigatewaySetIamPolicyRequest`

**Response**: `ApigatewayPolicy`

```typescript
const res = await apigateway.gateways.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigateway.projects.locations.gateways.get`

**GET** `v1/{+name}`

Gets details of a single Gateway.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the form: `projects/*/locations/*/gateways/*` |

**Response**: `ApigatewayGateway`

```typescript
const res = await apigateway.gateways.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigateway.projects.locations.apis.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `ApigatewayPolicy`

```typescript
const res = await apigateway.apis.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigateway.projects.locations.apis.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `ApigatewayTestIamPermissionsRequest`

**Response**: `ApigatewayTestIamPermissionsResponse`

```typescript
const res = await apigateway.apis.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigateway.projects.locations.apis.create`

**POST** `v1/{+parent}/apis`

Creates a new Api in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource of the API, of the form: `projects/*/locations/global` |
| `apiId` | `string` | query | No | Required. Identifier to assign to the API. Must be unique within scope of the parent resource. |

**Request body**: `ApigatewayApi`

**Response**: `ApigatewayOperation`

```typescript
const res = await apigateway.apis.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigateway.projects.locations.apis.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `ApigatewaySetIamPolicyRequest`

**Response**: `ApigatewayPolicy`

```typescript
const res = await apigateway.apis.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigateway.projects.locations.apis.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single Api.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Resource name of the API. Format: projects/{project}/locations/global/apis/{api} |
| `updateMask` | `string` | query | No | Field mask is used to specify the fields to be overwritten in the Api resource by the update. The fields specified in... |

**Request body**: `ApigatewayApi`

**Response**: `ApigatewayOperation`

```typescript
const res = await apigateway.apis.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigateway.projects.locations.apis.list`

**GET** `v1/{+parent}/apis`

Lists Apis in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource of the API, of the form: `projects/*/locations/global` |
| `filter` | `string` | query | No | Filter. |
| `orderBy` | `string` | query | No | Order by parameters. |
| `pageSize` | `integer` | query | No | Page size. |
| `pageToken` | `string` | query | No | Page token. |

**Response**: `ApigatewayListApisResponse`

```typescript
const res = await apigateway.apis.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigateway.projects.locations.apis.delete`

**DELETE** `v1/{+name}`

Deletes a single Api.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the form: `projects/*/locations/global/apis/*` |

**Response**: `ApigatewayOperation`

```typescript
const res = await apigateway.apis.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigateway.projects.locations.apis.get`

**GET** `v1/{+name}`

Gets details of a single Api.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the form: `projects/*/locations/global/apis/*` |

**Response**: `ApigatewayApi`

```typescript
const res = await apigateway.apis.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigateway.projects.locations.apis.configs.delete`

**DELETE** `v1/{+name}`

Deletes a single ApiConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the form: `projects/*/locations/global/apis/*/configs/*` |

**Response**: `ApigatewayOperation`

```typescript
const res = await apigateway.configs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigateway.projects.locations.apis.configs.get`

**GET** `v1/{+name}`

Gets details of a single ApiConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the form: `projects/*/locations/global/apis/*/configs/*` |
| `view` | `string` | query | No | Specifies which fields of the API Config are returned in the response. Defaults to `BASIC` view. |

**Response**: `ApigatewayApiConfig`

```typescript
const res = await apigateway.configs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigateway.projects.locations.apis.configs.create`

**POST** `v1/{+parent}/configs`

Creates a new ApiConfig in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource of the API Config, of the form: `projects/*/locations/global/apis/*` |
| `apiConfigId` | `string` | query | No | Required. Identifier to assign to the API Config. Must be unique within scope of the parent resource. |

**Request body**: `ApigatewayApiConfig`

**Response**: `ApigatewayOperation`

```typescript
const res = await apigateway.configs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigateway.projects.locations.apis.configs.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single ApiConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Resource name of the API Config. Format: projects/{project}/locations/global/apis/{api}/configs/{api_con... |
| `updateMask` | `string` | query | No | Field mask is used to specify the fields to be overwritten in the ApiConfig resource by the update. The fields specif... |

**Request body**: `ApigatewayApiConfig`

**Response**: `ApigatewayOperation`

```typescript
const res = await apigateway.configs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigateway.projects.locations.apis.configs.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `ApigatewayPolicy`

```typescript
const res = await apigateway.configs.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigateway.projects.locations.apis.configs.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `ApigatewaySetIamPolicyRequest`

**Response**: `ApigatewayPolicy`

```typescript
const res = await apigateway.configs.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigateway.projects.locations.apis.configs.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `ApigatewayTestIamPermissionsRequest`

**Response**: `ApigatewayTestIamPermissionsResponse`

```typescript
const res = await apigateway.configs.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigateway.projects.locations.apis.configs.list`

**GET** `v1/{+parent}/configs`

Lists ApiConfigs in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource of the API Config, of the form: `projects/*/locations/global/apis/*` |
| `filter` | `string` | query | No | Filter. |
| `orderBy` | `string` | query | No | Order by parameters. |
| `pageSize` | `integer` | query | No | Page size. |
| `pageToken` | `string` | query | No | Page token. |

**Response**: `ApigatewayListApiConfigsResponse`

```typescript
const res = await apigateway.configs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigateway.projects.locations.operations.list`

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

**Response**: `ApigatewayListOperationsResponse`

```typescript
const res = await apigateway.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigateway.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `ApigatewayCancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await apigateway.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigateway.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `ApigatewayOperation`

```typescript
const res = await apigateway.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigateway.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await apigateway.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `ApigatewayApi`

An API that can be served by one or more Gateways.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Created time. |
| `displayName` | `string` | Optional. Display name. |
| `labels` | `object` | Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on la... |
| `managedService` | `string` | Optional. Immutable. The name of a Google Managed Service ( https://cloud.google.com/service-infr... |
| `name` | `string` | Output only. Resource name of the API. Format: projects/{project}/locations/global/apis/{api} |
| `state` | `string` | Output only. State of the API. |
| `updateTime` | `string` | Output only. Updated time. |

### `ApigatewayApiConfig`

An API Configuration is a combination of settings for both the Managed Service and Gateways serving this API Config.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Created time. |
| `displayName` | `string` | Optional. Display name. |
| `gatewayServiceAccount` | `string` | Immutable. The Google Cloud IAM Service Account that Gateways serving this config should use to a... |
| `grpcServices` | `array<ApigatewayApiConfigGrpcServiceDefinition>` | Optional. gRPC service definition files. If specified, openapi_documents must not be included. |
| `labels` | `object` | Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on la... |
| `managedServiceConfigs` | `array<ApigatewayApiConfigFile>` | Optional. Service Configuration files. At least one must be included when using gRPC service defi... |
| `name` | `string` | Output only. Resource name of the API Config. Format: projects/{project}/locations/global/apis/{a... |
| `openapiDocuments` | `array<ApigatewayApiConfigOpenApiDocument>` | Optional. OpenAPI specification documents. If specified, grpc_services and managed_service_config... |
| `serviceConfigId` | `string` | Output only. The ID of the associated Service Config ( https://cloud.google.com/service-infrastru... |
| `state` | `string` | Output only. State of the API Config. |
| `updateTime` | `string` | Output only. Updated time. |

### `ApigatewayApiConfigFile`

A lightweight description of a file.

| Property | Type | Description |
|----------|------|-------------|
| `contents` | `string` | The bytes that constitute the file. |
| `path` | `string` | The file path (full or relative path). This is typically the path of the file when it is uploaded. |

### `ApigatewayApiConfigGrpcServiceDefinition`

A gRPC service definition.

| Property | Type | Description |
|----------|------|-------------|
| `fileDescriptorSet` | `ApigatewayApiConfigFile` | Input only. File descriptor set, generated by protoc. To generate, use protoc with imports and so... |
| `source` | `array<ApigatewayApiConfigFile>` | Optional. Uncompiled proto files associated with the descriptor set, used for display purposes (s... |

### `ApigatewayApiConfigOpenApiDocument`

An OpenAPI Specification Document describing an API.

| Property | Type | Description |
|----------|------|-------------|
| `document` | `ApigatewayApiConfigFile` | The OpenAPI Specification document file. |

### `ApigatewayAuditConfig`

Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both `allServices` and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { "audit_configs": [ { "service": "allServices", "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" }, { "log_type": "ADMIN_READ" } ] }, { "service": "sampleservice.googleapis.com", "audit_log_configs": [ { "log_type": "DATA_READ" }, { "log_type": "DATA_WRITE", "exempted_members": [ "user:aliya@example.com" ] } ] } ] } For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com` from DATA_WRITE logging.

| Property | Type | Description |
|----------|------|-------------|
| `auditLogConfigs` | `array<ApigatewayAuditLogConfig>` | The configuration for logging of each type of permission. |
| `service` | `string` | Specifies a service that will be enabled for audit logging. For example, `storage.googleapis.com`... |

### `ApigatewayAuditLogConfig`

Provides the configuration for logging a type of permissions. Example: { "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.

| Property | Type | Description |
|----------|------|-------------|
| `exemptedMembers` | `array<string>` | Specifies the identities that do not cause logging for this type of permission. Follows the same ... |
| `logType` | `string` | The log type that this config enables. |

### `ApigatewayBinding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `ApigatewayExpr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `ApigatewayCancelOperationRequest`

The request message for Operations.CancelOperation.

### `ApigatewayExpr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `ApigatewayGateway`

A Gateway is an API-aware HTTP proxy. It performs API-Method and/or API-Consumer specific actions based on an API Config such as authentication, policy enforcement, and backend selection.

| Property | Type | Description |
|----------|------|-------------|
| `apiConfig` | `string` | Required. Resource name of the API Config for this Gateway. Format: projects/{project}/locations/... |
| `createTime` | `string` | Output only. Created time. |
| `defaultHostname` | `string` | Output only. The default API Gateway host name of the form `{gateway_id}-{hash}.{region_code}.gat... |
| `displayName` | `string` | Optional. Display name. |
| `labels` | `object` | Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on la... |
| `name` | `string` | Output only. Resource name of the Gateway. Format: projects/{project}/locations/{location}/gatewa... |
| `state` | `string` | Output only. The current state of the Gateway. |
| `updateTime` | `string` | Output only. Updated time. |

### `ApigatewayListApiConfigsResponse`

Response message for ApiGatewayService.ListApiConfigs

| Property | Type | Description |
|----------|------|-------------|
| `apiConfigs` | `array<ApigatewayApiConfig>` | API Configs. |
| `nextPageToken` | `string` | Next page token. |
| `unreachableLocations` | `array<string>` | Locations that could not be reached. |

### `ApigatewayListApisResponse`

Response message for ApiGatewayService.ListApis

| Property | Type | Description |
|----------|------|-------------|
| `apis` | `array<ApigatewayApi>` | APIs. |
| `nextPageToken` | `string` | Next page token. |
| `unreachableLocations` | `array<string>` | Locations that could not be reached. |

### `ApigatewayListGatewaysResponse`

Response message for ApiGatewayService.ListGateways

| Property | Type | Description |
|----------|------|-------------|
| `gateways` | `array<ApigatewayGateway>` | Gateways. |
| `nextPageToken` | `string` | Next page token. |
| `unreachableLocations` | `array<string>` | Locations that could not be reached. |

### `ApigatewayListLocationsResponse`

The response message for Locations.ListLocations.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<ApigatewayLocation>` | A list of locations that matches the specified filter in the request. |
| `nextPageToken` | `string` | The standard List next-page token. |

### `ApigatewayListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<ApigatewayOperation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `ApigatewayLocation`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `ApigatewayOperation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `ApigatewayStatus` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `ApigatewayOperationMetadata`

Represents the metadata of the long-running operation.

| Property | Type | Description |
|----------|------|-------------|
| `apiVersion` | `string` | Output only. API version used to start the operation. |
| `createTime` | `string` | Output only. The time the operation was created. |
| `diagnostics` | `array<ApigatewayOperationMetadataDiagnostic>` | Output only. Diagnostics generated during processing of configuration source files. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `requestedCancellation` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. Operations ... |
| `statusMessage` | `string` | Output only. Human-readable status of the operation, if any. |
| `target` | `string` | Output only. Server-defined resource path for the target of the operation. |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `ApigatewayOperationMetadataDiagnostic`

Diagnostic information from configuration processing.

| Property | Type | Description |
|----------|------|-------------|
| `location` | `string` | Location of the diagnostic. |
| `message` | `string` | The diagnostic message. |

### `ApigatewayPolicy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `auditConfigs` | `array<ApigatewayAuditConfig>` | Specifies cloud audit logging configuration for this policy. |
| `bindings` | `array<ApigatewayBinding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `ApigatewaySetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `ApigatewayPolicy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |
| `updateMask` | `string` | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mas... |

### `ApigatewayStatus`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `ApigatewayTestIamPermissionsRequest`

Request message for `TestIamPermissions` method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | The set of permissions to check for the `resource`. Permissions with wildcards (such as `*` or `s... |

### `ApigatewayTestIamPermissionsResponse`

Response message for `TestIamPermissions` method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | A subset of `TestPermissionsRequest.permissions` that the caller is allowed. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

