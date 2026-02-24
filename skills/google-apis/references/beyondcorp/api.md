# BeyondCorp API - API Reference

**Version**: `v1` | **Methods**: 52 | **Schemas**: 79

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `beyondcorp.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `beyondcorp.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `beyondcorp.projects.locations.appGateways.get` | GET | `v1/{+name}` | Gets details of a single AppGateway. |
| `beyondcorp.projects.locations.appGateways.create` | POST | `v1/{+parent}/appGateways` | Creates a new AppGateway in a given project and location. |
| `beyondcorp.projects.locations.appGateways.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `beyondcorp.projects.locations.appGateways.delete` | DELETE | `v1/{+name}` | Deletes a single AppGateway. |
| `beyondcorp.projects.locations.appGateways.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `beyondcorp.projects.locations.appGateways.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `beyondcorp.projects.locations.appGateways.list` | GET | `v1/{+parent}/appGateways` | Lists AppGateways in a given project and location. |
| `beyondcorp.projects.locations.appConnections.delete` | DELETE | `v1/{+name}` | Deletes a single AppConnection. |
| `beyondcorp.projects.locations.appConnections.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `beyondcorp.projects.locations.appConnections.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single AppConnection. |
| `beyondcorp.projects.locations.appConnections.create` | POST | `v1/{+parent}/appConnections` | Creates a new AppConnection in a given project and location. |
| `beyondcorp.projects.locations.appConnections.get` | GET | `v1/{+name}` | Gets details of a single AppConnection. |
| `beyondcorp.projects.locations.appConnections.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `beyondcorp.projects.locations.appConnections.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `beyondcorp.projects.locations.appConnections.resolve` | GET | `v1/{+parent}/appConnections:resolve` | Resolves AppConnections details for a given AppConnector. An internal method called by a connecto... |
| `beyondcorp.projects.locations.appConnections.list` | GET | `v1/{+parent}/appConnections` | Lists AppConnections in a given project and location. |
| `beyondcorp.projects.locations.securityGateways.list` | GET | `v1/{+parent}/securityGateways` | Lists SecurityGateways in a given project and location. |
| `beyondcorp.projects.locations.securityGateways.get` | GET | `v1/{+name}` | Gets details of a single SecurityGateway. |
| `beyondcorp.projects.locations.securityGateways.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `beyondcorp.projects.locations.securityGateways.create` | POST | `v1/{+parent}/securityGateways` | Creates a new Security Gateway in a given project and location. |
| `beyondcorp.projects.locations.securityGateways.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single SecurityGateway. |
| `beyondcorp.projects.locations.securityGateways.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `beyondcorp.projects.locations.securityGateways.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `beyondcorp.projects.locations.securityGateways.delete` | DELETE | `v1/{+name}` | Deletes a single SecurityGateway. |
| `beyondcorp.projects.locations.securityGateways.applications.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `beyondcorp.projects.locations.securityGateways.applications.delete` | DELETE | `v1/{+name}` | Deletes a single application. |
| `beyondcorp.projects.locations.securityGateways.applications.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single Application. |
| `beyondcorp.projects.locations.securityGateways.applications.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `beyondcorp.projects.locations.securityGateways.applications.get` | GET | `v1/{+name}` | Gets details of a single Application. |
| `beyondcorp.projects.locations.securityGateways.applications.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `beyondcorp.projects.locations.securityGateways.applications.list` | GET | `v1/{+parent}/applications` | Lists Applications in a given project and location. |
| `beyondcorp.projects.locations.securityGateways.applications.create` | POST | `v1/{+parent}/applications` | Creates a new Application in a given project and location. |
| `beyondcorp.projects.locations.appConnectors.delete` | DELETE | `v1/{+name}` | Deletes a single AppConnector. |
| `beyondcorp.projects.locations.appConnectors.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `beyondcorp.projects.locations.appConnectors.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single AppConnector. |
| `beyondcorp.projects.locations.appConnectors.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `beyondcorp.projects.locations.appConnectors.reportStatus` | POST | `v1/{+appConnector}:reportStatus` | Report status for a given connector. |
| `beyondcorp.projects.locations.appConnectors.resolveInstanceConfig` | GET | `v1/{+appConnector}:resolveInstanceConfig` | Gets instance configuration for a given AppConnector. An internal method called by a AppConnector... |
| `beyondcorp.projects.locations.appConnectors.create` | POST | `v1/{+parent}/appConnectors` | Creates a new AppConnector in a given project and location. |
| `beyondcorp.projects.locations.appConnectors.list` | GET | `v1/{+parent}/appConnectors` | Lists AppConnectors in a given project and location. |
| `beyondcorp.projects.locations.appConnectors.get` | GET | `v1/{+name}` | Gets details of a single AppConnector. |
| `beyondcorp.projects.locations.appConnectors.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `beyondcorp.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `beyondcorp.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `beyondcorp.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `beyondcorp.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `beyondcorp.organizations.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `beyondcorp.organizations.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `beyondcorp.organizations.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `beyondcorp.organizations.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |

### `beyondcorp.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `GoogleCloudLocationLocation`

```typescript
const res = await beyondcorp.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.list`

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

**Response**: `GoogleCloudLocationListLocationsResponse`

```typescript
const res = await beyondcorp.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.appGateways.get`

**GET** `v1/{+name}`

Gets details of a single AppGateway.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. BeyondCorp AppGateway name using the form: `projects/{project_id}/locations/{location_id}/appGateways/{app_... |

**Response**: `AppGateway`

```typescript
const res = await beyondcorp.appGateways.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.appGateways.create`

**POST** `v1/{+parent}/appGateways`

Creates a new AppGateway in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource project name of the AppGateway location using the form: `projects/{project_id}/locations/{loca... |
| `appGatewayId` | `string` | query | No | Optional. User-settable AppGateway resource ID. * Must start with a letter. * Must contain between 4-63 characters fr... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validates request by executing a dry-run which would not alter the resource in any way. |

**Request body**: `AppGateway`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await beyondcorp.appGateways.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.appGateways.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `GoogleIamV1Policy`

```typescript
const res = await beyondcorp.appGateways.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.appGateways.delete`

**DELETE** `v1/{+name}`

Deletes a single AppGateway.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. BeyondCorp AppGateway name using the form: `projects/{project_id}/locations/{location_id}/appGateways/{app_... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validates request by executing a dry-run which would not alter the resource in any way. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await beyondcorp.appGateways.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.appGateways.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GoogleIamV1SetIamPolicyRequest`

**Response**: `GoogleIamV1Policy`

```typescript
const res = await beyondcorp.appGateways.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.appGateways.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `GoogleIamV1TestIamPermissionsRequest`

**Response**: `GoogleIamV1TestIamPermissionsResponse`

```typescript
const res = await beyondcorp.appGateways.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.appGateways.list`

**GET** `v1/{+parent}/appGateways`

Lists AppGateways in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the AppGateway location using the form: `projects/{project_id}/locations/{location_id}` |
| `filter` | `string` | query | No | Optional. A filter specifying constraints of a list operation. |
| `orderBy` | `string` | query | No | Optional. Specifies the ordering of results. See [Sorting order](https://cloud.google.com/apis/design/design_patterns... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of items to return. If not specified, a default value of 50 will be used by the service.... |
| `pageToken` | `string` | query | No | Optional. The next_page_token value returned from a previous ListAppGatewaysRequest, if any. |

**Response**: `ListAppGatewaysResponse`

```typescript
const res = await beyondcorp.appGateways.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.appConnections.delete`

**DELETE** `v1/{+name}`

Deletes a single AppConnection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. BeyondCorp Connector name using the form: `projects/{project_id}/locations/{location_id}/appConnections/{ap... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validates request by executing a dry-run which would not alter the resource in any way. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await beyondcorp.appConnections.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.appConnections.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GoogleIamV1SetIamPolicyRequest`

**Response**: `GoogleIamV1Policy`

```typescript
const res = await beyondcorp.appConnections.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.appConnections.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single AppConnection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Unique resource name of the AppConnection. The name is ignored when creating a AppConnection. |
| `allowMissing` | `boolean` | query | No | Optional. If set as true, will create the resource if it is not found. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Required. Mask of fields to update. At least one path must be supplied in this field. The elements of the repeated pa... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validates request by executing a dry-run which would not alter the resource in any way. |

**Request body**: `GoogleCloudBeyondcorpAppconnectionsV1AppConnection`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await beyondcorp.appConnections.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.appConnections.create`

**POST** `v1/{+parent}/appConnections`

Creates a new AppConnection in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource project name of the AppConnection location using the form: `projects/{project_id}/locations/{l... |
| `appConnectionId` | `string` | query | No | Optional. User-settable AppConnection resource ID. * Must start with a letter. * Must contain between 4-63 characters... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validates request by executing a dry-run which would not alter the resource in any way. |

**Request body**: `GoogleCloudBeyondcorpAppconnectionsV1AppConnection`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await beyondcorp.appConnections.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.appConnections.get`

**GET** `v1/{+name}`

Gets details of a single AppConnection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. BeyondCorp AppConnection name using the form: `projects/{project_id}/locations/{location_id}/appConnections... |

**Response**: `GoogleCloudBeyondcorpAppconnectionsV1AppConnection`

```typescript
const res = await beyondcorp.appConnections.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.appConnections.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `GoogleIamV1Policy`

```typescript
const res = await beyondcorp.appConnections.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.appConnections.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `GoogleIamV1TestIamPermissionsRequest`

**Response**: `GoogleIamV1TestIamPermissionsResponse`

```typescript
const res = await beyondcorp.appConnections.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.appConnections.resolve`

**GET** `v1/{+parent}/appConnections:resolve`

Resolves AppConnections details for a given AppConnector. An internal method called by a connector to find AppConnections to connect to.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the AppConnection location using the form: `projects/{project_id}/locations/{location_... |
| `appConnectorId` | `string` | query | No | Required. BeyondCorp Connector name of the connector associated with those AppConnections using the form: `projects/{... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of items to return. If not specified, a default value of 50 will be used by the service.... |
| `pageToken` | `string` | query | No | Optional. The next_page_token value returned from a previous ResolveAppConnectionsResponse, if any. |

**Response**: `GoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponse`

```typescript
const res = await beyondcorp.appConnections.resolve({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.appConnections.list`

**GET** `v1/{+parent}/appConnections`

Lists AppConnections in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the AppConnection location using the form: `projects/{project_id}/locations/{location_... |
| `filter` | `string` | query | No | Optional. A filter specifying constraints of a list operation. |
| `orderBy` | `string` | query | No | Optional. Specifies the ordering of results. See [Sorting order](https://cloud.google.com/apis/design/design_patterns... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of items to return. If not specified, a default value of 50 will be used by the service.... |
| `pageToken` | `string` | query | No | Optional. The next_page_token value returned from a previous ListAppConnectionsRequest, if any. |

**Response**: `GoogleCloudBeyondcorpAppconnectionsV1ListAppConnectionsResponse`

```typescript
const res = await beyondcorp.appConnections.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.securityGateways.list`

**GET** `v1/{+parent}/securityGateways`

Lists SecurityGateways in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent location to which the resources belong. `projects/{project_id}/locations/{location_id}/` |
| `filter` | `string` | query | No | Optional. A filter specifying constraints of a list operation. All fields in the SecurityGateway message are supporte... |
| `orderBy` | `string` | query | No | Optional. Specifies the ordering of results. See [Sorting order](https://cloud.google.com/apis/design/design_patterns... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of items to return. If not specified, a default value of 50 will be used by the service.... |
| `pageToken` | `string` | query | No | Optional. The next_page_token value returned from a previous ListSecurityGatewayRequest, if any. |

**Response**: `GoogleCloudBeyondcorpSecuritygatewaysV1ListSecurityGatewaysResponse`

```typescript
const res = await beyondcorp.securityGateways.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.securityGateways.get`

**GET** `v1/{+name}`

Gets details of a single SecurityGateway.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the PartnerTenant using the form: `projects/{project_id}/locations/{location_id}/secur... |

**Response**: `GoogleCloudBeyondcorpSecuritygatewaysV1SecurityGateway`

```typescript
const res = await beyondcorp.securityGateways.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.securityGateways.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GoogleIamV1SetIamPolicyRequest`

**Response**: `GoogleIamV1Policy`

```typescript
const res = await beyondcorp.securityGateways.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.securityGateways.create`

**POST** `v1/{+parent}/securityGateways`

Creates a new Security Gateway in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource project name of the SecurityGateway location using the form: `projects/{project_id}/locations/... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `securityGatewayId` | `string` | query | No | Optional. User-settable SecurityGateway resource ID. * Must start with a letter. * Must contain between 4-63 characte... |

**Request body**: `GoogleCloudBeyondcorpSecuritygatewaysV1SecurityGateway`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await beyondcorp.securityGateways.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.securityGateways.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single SecurityGateway.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Name of the resource. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Optional. Mutable fields include: display_name, hubs. |

**Request body**: `GoogleCloudBeyondcorpSecuritygatewaysV1SecurityGateway`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await beyondcorp.securityGateways.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.securityGateways.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `GoogleIamV1TestIamPermissionsRequest`

**Response**: `GoogleIamV1TestIamPermissionsResponse`

```typescript
const res = await beyondcorp.securityGateways.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.securityGateways.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `GoogleIamV1Policy`

```typescript
const res = await beyondcorp.securityGateways.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.securityGateways.delete`

**DELETE** `v1/{+name}`

Deletes a single SecurityGateway.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. BeyondCorp SecurityGateway name using the form: `projects/{project_id}/locations/{location_id}/securityGate... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validates request by executing a dry-run which would not alter the resource in any way. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await beyondcorp.securityGateways.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.securityGateways.applications.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GoogleIamV1SetIamPolicyRequest`

**Response**: `GoogleIamV1Policy`

```typescript
const res = await beyondcorp.applications.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.securityGateways.applications.delete`

**DELETE** `v1/{+name}`

Deletes a single application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validates request by executing a dry-run which would not alter the resource in any way. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await beyondcorp.applications.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.securityGateways.applications.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single Application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Name of the resource. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Optional. Mutable fields include: display_name. |

**Request body**: `GoogleCloudBeyondcorpSecuritygatewaysV1Application`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await beyondcorp.applications.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.securityGateways.applications.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `GoogleIamV1TestIamPermissionsRequest`

**Response**: `GoogleIamV1TestIamPermissionsResponse`

```typescript
const res = await beyondcorp.applications.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.securityGateways.applications.get`

**GET** `v1/{+name}`

Gets details of a single Application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Application using the form: `projects/{project_id}/locations/global/securityGatewa... |

**Response**: `GoogleCloudBeyondcorpSecuritygatewaysV1Application`

```typescript
const res = await beyondcorp.applications.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.securityGateways.applications.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `GoogleIamV1Policy`

```typescript
const res = await beyondcorp.applications.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.securityGateways.applications.list`

**GET** `v1/{+parent}/applications`

Lists Applications in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent location to which the resources belong. `projects/{project_id}/locations/global/securityGateways... |
| `filter` | `string` | query | No | Optional. A filter specifying constraints of a list operation. All fields in the Application message are supported. F... |
| `orderBy` | `string` | query | No | Optional. Specifies the ordering of results. See [Sorting order](https://cloud.google.com/apis/design/design_patterns... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of items to return. If not specified, a default value of 50 will be used by the service.... |
| `pageToken` | `string` | query | No | Optional. The next_page_token value returned from a previous ListApplicationsRequest, if any. |

**Response**: `GoogleCloudBeyondcorpSecuritygatewaysV1ListApplicationsResponse`

```typescript
const res = await beyondcorp.applications.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.securityGateways.applications.create`

**POST** `v1/{+parent}/applications`

Creates a new Application in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the parent SecurityGateway using the form: `projects/{project_id}/locations/global/sec... |
| `applicationId` | `string` | query | No | Optional. User-settable Application resource ID. * Must start with a letter. * Must contain between 4-63 characters f... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `GoogleCloudBeyondcorpSecuritygatewaysV1Application`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await beyondcorp.applications.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.appConnectors.delete`

**DELETE** `v1/{+name}`

Deletes a single AppConnector.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. BeyondCorp AppConnector name using the form: `projects/{project_id}/locations/{location_id}/appConnectors/{... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validates request by executing a dry-run which would not alter the resource in any way. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await beyondcorp.appConnectors.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.appConnectors.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GoogleIamV1SetIamPolicyRequest`

**Response**: `GoogleIamV1Policy`

```typescript
const res = await beyondcorp.appConnectors.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.appConnectors.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single AppConnector.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Unique resource name of the AppConnector. The name is ignored when creating a AppConnector. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Required. Mask of fields to update. At least one path must be supplied in this field. The elements of the repeated pa... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validates request by executing a dry-run which would not alter the resource in any way. |

**Request body**: `GoogleCloudBeyondcorpAppconnectorsV1AppConnector`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await beyondcorp.appConnectors.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.appConnectors.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `GoogleIamV1TestIamPermissionsRequest`

**Response**: `GoogleIamV1TestIamPermissionsResponse`

```typescript
const res = await beyondcorp.appConnectors.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.appConnectors.reportStatus`

**POST** `v1/{+appConnector}:reportStatus`

Report status for a given connector.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appConnector` | `string` | path | Yes | Required. BeyondCorp Connector name using the form: `projects/{project_id}/locations/{location_id}/connectors/{connec... |

**Request body**: `GoogleCloudBeyondcorpAppconnectorsV1ReportStatusRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await beyondcorp.appConnectors.reportStatus({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.appConnectors.resolveInstanceConfig`

**GET** `v1/{+appConnector}:resolveInstanceConfig`

Gets instance configuration for a given AppConnector. An internal method called by a AppConnector to get its container config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `appConnector` | `string` | path | Yes | Required. BeyondCorp AppConnector name using the form: `projects/{project_id}/locations/{location_id}/appConnectors/{... |

**Response**: `GoogleCloudBeyondcorpAppconnectorsV1ResolveInstanceConfigResponse`

```typescript
const res = await beyondcorp.appConnectors.resolveInstanceConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.appConnectors.create`

**POST** `v1/{+parent}/appConnectors`

Creates a new AppConnector in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource project name of the AppConnector location using the form: `projects/{project_id}/locations/{lo... |
| `appConnectorId` | `string` | query | No | Optional. User-settable AppConnector resource ID. * Must start with a letter. * Must contain between 4-63 characters ... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validates request by executing a dry-run which would not alter the resource in any way. |

**Request body**: `GoogleCloudBeyondcorpAppconnectorsV1AppConnector`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await beyondcorp.appConnectors.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.appConnectors.list`

**GET** `v1/{+parent}/appConnectors`

Lists AppConnectors in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the AppConnector location using the form: `projects/{project_id}/locations/{location_id}` |
| `filter` | `string` | query | No | Optional. A filter specifying constraints of a list operation. |
| `orderBy` | `string` | query | No | Optional. Specifies the ordering of results. See [Sorting order](https://cloud.google.com/apis/design/design_patterns... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of items to return. If not specified, a default value of 50 will be used by the service.... |
| `pageToken` | `string` | query | No | Optional. The next_page_token value returned from a previous ListAppConnectorsRequest, if any. |

**Response**: `GoogleCloudBeyondcorpAppconnectorsV1ListAppConnectorsResponse`

```typescript
const res = await beyondcorp.appConnectors.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.appConnectors.get`

**GET** `v1/{+name}`

Gets details of a single AppConnector.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. BeyondCorp AppConnector name using the form: `projects/{project_id}/locations/{location_id}/appConnectors/{... |

**Response**: `GoogleCloudBeyondcorpAppconnectorsV1AppConnector`

```typescript
const res = await beyondcorp.appConnectors.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.appConnectors.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `GoogleIamV1Policy`

```typescript
const res = await beyondcorp.appConnectors.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await beyondcorp.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.operations.list`

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

**Response**: `GoogleLongrunningListOperationsResponse`

```typescript
const res = await beyondcorp.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await beyondcorp.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `GoogleLongrunningCancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await beyondcorp.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.organizations.locations.operations.list`

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

**Response**: `GoogleLongrunningListOperationsResponse`

```typescript
const res = await beyondcorp.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.organizations.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await beyondcorp.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.organizations.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `GoogleLongrunningCancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await beyondcorp.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `beyondcorp.organizations.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await beyondcorp.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AllocatedConnection`

Allocated connection of the AppGateway.

| Property | Type | Description |
|----------|------|-------------|
| `ingressPort` | `integer` | Required. The ingress port of an allocated connection |
| `pscUri` | `string` | Required. The PSC uri of an allocated connection |

### `AppGateway`

A BeyondCorp AppGateway resource represents a BeyondCorp protected AppGateway to a remote application. It creates all the necessary GCP components needed for creating a BeyondCorp protected AppGateway. Multiple connectors can be authorised for a single AppGateway.

| Property | Type | Description |
|----------|------|-------------|
| `allocatedConnections` | `array<AllocatedConnection>` | Output only. A list of connections allocated for the Gateway |
| `createTime` | `string` | Output only. Timestamp when the resource was created. |
| `displayName` | `string` | Optional. An arbitrary user-provided name for the AppGateway. Cannot exceed 64 characters. |
| `hostType` | `string` | Required. The type of hosting used by the AppGateway. |
| `labels` | `object` | Optional. Resource labels to represent user provided metadata. |
| `name` | `string` | Required. Unique resource name of the AppGateway. The name is ignored when creating an AppGateway. |
| `satisfiesPzi` | `boolean` | Output only. Reserved for future use. |
| `satisfiesPzs` | `boolean` | Output only. Reserved for future use. |
| `state` | `string` | Output only. The current state of the AppGateway. |
| `type` | `string` | Required. The type of network connectivity used by the AppGateway. |
| `uid` | `string` | Output only. A unique identifier for the instance generated by the system. |
| `updateTime` | `string` | Output only. Timestamp when the resource was last modified. |
| `uri` | `string` | Output only. Server-defined URI for this resource. |

### `AppGatewayOperationMetadata`

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

### `CloudSecurityZerotrustApplinkAppConnectorProtoConnectionConfig`

ConnectionConfig represents a Connection Configuration object.

| Property | Type | Description |
|----------|------|-------------|
| `applicationEndpoint` | `string` | application_endpoint is the endpoint of the application the form of host:port. For example, "loca... |
| `applicationName` | `string` | application_name represents the given name of the application the connection is connecting with. |
| `gateway` | `array<CloudSecurityZerotrustApplinkAppConnectorProtoGateway>` | gateway lists all instances running a gateway in GCP. They all connect to a connector on the host. |
| `name` | `string` | name is the unique ID for each connection. TODO(b/190732451) returns connection name from user-sp... |
| `project` | `string` | project represents the consumer project the connection belongs to. |
| `tunnelsPerGateway` | `integer` | tunnels_per_gateway reflects the number of tunnels between a connector and a gateway. |
| `userPort` | `integer` | user_port specifies the reserved port on gateways for user connections. |

### `CloudSecurityZerotrustApplinkAppConnectorProtoConnectorDetails`

ConnectorDetails reflects the details of a connector.

### `CloudSecurityZerotrustApplinkAppConnectorProtoGateway`

Gateway represents a GCE VM Instance endpoint for use by IAP TCP.

| Property | Type | Description |
|----------|------|-------------|
| `interface` | `string` | interface specifies the network interface of the gateway to connect to. |
| `name` | `string` | name is the name of an instance running a gateway. It is the unique ID for a gateway. All gateway... |
| `port` | `integer` | port specifies the port of the gateway for tunnel connections from the connectors. |
| `project` | `string` | project is the tenant project the gateway belongs to. Different from the project in the connectio... |
| `selfLink` | `string` | self_link is the gateway URL in the form https://www.googleapis.com/compute/${version}/projects/$... |
| `zone` | `string` | zone represents the zone the instance belongs. It is derived from the gateway URL. For example, z... |

### `CloudSecurityZerotrustApplinkLogagentProtoLogAgentDetails`

LogAgentDetails reflects the details of a log agent.

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `GoogleCloudBeyondcorpAppconnectionsV1AppConnection`

A BeyondCorp AppConnection resource represents a BeyondCorp protected AppConnection to a remote application. It creates all the necessary GCP components needed for creating a BeyondCorp protected AppConnection. Multiple connectors can be authorised for a single AppConnection.

| Property | Type | Description |
|----------|------|-------------|
| `applicationEndpoint` | `GoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint` | Required. Address of the remote application endpoint for the BeyondCorp AppConnection. |
| `connectors` | `array<string>` | Optional. List of [google.cloud.beyondcorp.v1main.Connector.name] that are authorised to be assoc... |
| `createTime` | `string` | Output only. Timestamp when the resource was created. |
| `displayName` | `string` | Optional. An arbitrary user-provided name for the AppConnection. Cannot exceed 64 characters. |
| `gateway` | `GoogleCloudBeyondcorpAppconnectionsV1AppConnectionGateway` | Optional. Gateway used by the AppConnection. |
| `labels` | `object` | Optional. Resource labels to represent user provided metadata. |
| `name` | `string` | Required. Unique resource name of the AppConnection. The name is ignored when creating a AppConne... |
| `satisfiesPzi` | `boolean` | Output only. Reserved for future use. |
| `satisfiesPzs` | `boolean` | Output only. Reserved for future use. |
| `state` | `string` | Output only. The current state of the AppConnection. |
| `type` | `string` | Required. The type of network connectivity used by the AppConnection. |
| `uid` | `string` | Output only. A unique identifier for the instance generated by the system. |
| `updateTime` | `string` | Output only. Timestamp when the resource was last modified. |

### `GoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint`

ApplicationEndpoint represents a remote application endpoint.

| Property | Type | Description |
|----------|------|-------------|
| `host` | `string` | Required. Hostname or IP address of the remote application endpoint. |
| `port` | `integer` | Required. Port of the remote application endpoint. |

### `GoogleCloudBeyondcorpAppconnectionsV1AppConnectionGateway`

Gateway represents a user facing component that serves as an entrance to enable connectivity.

| Property | Type | Description |
|----------|------|-------------|
| `appGateway` | `string` | Required. AppGateway name in following format: `projects/{project_id}/locations/{location_id}/app... |
| `ingressPort` | `integer` | Output only. Ingress port reserved on the gateways for this AppConnection, if not specified or ze... |
| `l7psc` | `string` | Output only. L7 private service connection for this resource. |
| `type` | `string` | Required. The type of hosting used by the gateway. |
| `uri` | `string` | Output only. Server-defined URI for this resource. |

### `GoogleCloudBeyondcorpAppconnectionsV1AppConnectionOperationMetadata`

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

### `GoogleCloudBeyondcorpAppconnectionsV1ListAppConnectionsResponse`

Response message for BeyondCorp.ListAppConnections.

| Property | Type | Description |
|----------|------|-------------|
| `appConnections` | `array<GoogleCloudBeyondcorpAppconnectionsV1AppConnection>` | A list of BeyondCorp AppConnections in the project. |
| `nextPageToken` | `string` | A token to retrieve the next page of results, or empty if there are no more results in the list. |
| `unreachable` | `array<string>` | A list of locations that could not be reached. |

### `GoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponse`

Response message for BeyondCorp.ResolveAppConnections.

| Property | Type | Description |
|----------|------|-------------|
| `appConnectionDetails` | `array<GoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponseAppConnectionDetails>` | A list of BeyondCorp AppConnections with details in the project. |
| `nextPageToken` | `string` | A token to retrieve the next page of results, or empty if there are no more results in the list. |
| `unreachable` | `array<string>` | A list of locations that could not be reached. |

### `GoogleCloudBeyondcorpAppconnectionsV1ResolveAppConnectionsResponseAppConnectionDetails`

Details of the AppConnection.

| Property | Type | Description |
|----------|------|-------------|
| `appConnection` | `GoogleCloudBeyondcorpAppconnectionsV1AppConnection` | A BeyondCorp AppConnection in the project. |
| `recentMigVms` | `array<string>` | If type=GCP_REGIONAL_MIG, contains most recent VM instances, like `https://www.googleapis.com/com... |

### `GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionOperationMetadata`

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

### `GoogleCloudBeyondcorpAppconnectorsV1AppConnector`

A BeyondCorp connector resource that represents an application facing component deployed proximal to and with direct access to the application instances. It is used to establish connectivity between the remote enterprise environment and GCP. It initiates connections to the applications and can proxy the data from users over the connection.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Timestamp when the resource was created. |
| `displayName` | `string` | Optional. An arbitrary user-provided name for the AppConnector. Cannot exceed 64 characters. |
| `labels` | `object` | Optional. Resource labels to represent user provided metadata. |
| `name` | `string` | Required. Unique resource name of the AppConnector. The name is ignored when creating a AppConnec... |
| `principalInfo` | `GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfo` | Required. Principal information about the Identity of the AppConnector. |
| `resourceInfo` | `GoogleCloudBeyondcorpAppconnectorsV1ResourceInfo` | Optional. Resource info of the connector. |
| `state` | `string` | Output only. The current state of the AppConnector. |
| `uid` | `string` | Output only. A unique identifier for the instance generated by the system. |
| `updateTime` | `string` | Output only. Timestamp when the resource was last modified. |

### `GoogleCloudBeyondcorpAppconnectorsV1AppConnectorInstanceConfig`

AppConnectorInstanceConfig defines the instance config of a AppConnector.

| Property | Type | Description |
|----------|------|-------------|
| `imageConfig` | `GoogleCloudBeyondcorpAppconnectorsV1ImageConfig` | ImageConfig defines the GCR images to run for the remote agent's control plane. |
| `instanceConfig` | `object` | The SLM instance agent configuration. |
| `notificationConfig` | `GoogleCloudBeyondcorpAppconnectorsV1NotificationConfig` | NotificationConfig defines the notification mechanism that the remote instance should subscribe t... |
| `sequenceNumber` | `string` | Required. A monotonically increasing number generated and maintained by the API provider. Every t... |

### `GoogleCloudBeyondcorpAppconnectorsV1AppConnectorOperationMetadata`

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

### `GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfo`

PrincipalInfo represents an Identity oneof.

| Property | Type | Description |
|----------|------|-------------|
| `serviceAccount` | `GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccount` | A GCP service account. |

### `GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfoServiceAccount`

ServiceAccount represents a GCP service account.

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | Email address of the service account. |

### `GoogleCloudBeyondcorpAppconnectorsV1ContainerHealthDetails`

ContainerHealthDetails reflects the health details of a container.

| Property | Type | Description |
|----------|------|-------------|
| `currentConfigVersion` | `string` | The version of the current config. |
| `errorMsg` | `string` | The latest error message. |
| `expectedConfigVersion` | `string` | The version of the expected config. |
| `extendedStatus` | `object` | The extended status. Such as ExitCode, StartedAt, FinishedAt, etc. |

### `GoogleCloudBeyondcorpAppconnectorsV1ImageConfig`

ImageConfig defines the control plane images to run.

| Property | Type | Description |
|----------|------|-------------|
| `stableImage` | `string` | The stable image that the remote agent will fallback to if the target image fails. Format would b... |
| `targetImage` | `string` | The initial image the remote agent will attempt to run for the control plane. Format would be a g... |

### `GoogleCloudBeyondcorpAppconnectorsV1ListAppConnectorsResponse`

Response message for BeyondCorp.ListAppConnectors.

| Property | Type | Description |
|----------|------|-------------|
| `appConnectors` | `array<GoogleCloudBeyondcorpAppconnectorsV1AppConnector>` | A list of BeyondCorp AppConnectors in the project. |
| `nextPageToken` | `string` | A token to retrieve the next page of results, or empty if there are no more results in the list. |
| `unreachable` | `array<string>` | A list of locations that could not be reached. |

### `GoogleCloudBeyondcorpAppconnectorsV1NotificationConfig`

NotificationConfig defines the mechanisms to notify instance agent.

| Property | Type | Description |
|----------|------|-------------|
| `pubsubNotification` | `GoogleCloudBeyondcorpAppconnectorsV1NotificationConfigCloudPubSubNotificationConfig` | Cloud Pub/Sub Configuration to receive notifications. |

### `GoogleCloudBeyondcorpAppconnectorsV1NotificationConfigCloudPubSubNotificationConfig`

The configuration for Pub/Sub messaging for the AppConnector.

| Property | Type | Description |
|----------|------|-------------|
| `pubsubSubscription` | `string` | The Pub/Sub subscription the AppConnector uses to receive notifications. |

### `GoogleCloudBeyondcorpAppconnectorsV1RemoteAgentDetails`

RemoteAgentDetails reflects the details of a remote agent.

### `GoogleCloudBeyondcorpAppconnectorsV1ReportStatusRequest`

Request report the connector status.

| Property | Type | Description |
|----------|------|-------------|
| `requestId` | `string` | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you... |
| `resourceInfo` | `GoogleCloudBeyondcorpAppconnectorsV1ResourceInfo` | Required. Resource info of the connector. |
| `validateOnly` | `boolean` | Optional. If set, validates request by executing a dry-run which would not alter the resource in ... |

### `GoogleCloudBeyondcorpAppconnectorsV1ResolveInstanceConfigResponse`

Response message for BeyondCorp.ResolveInstanceConfig.

| Property | Type | Description |
|----------|------|-------------|
| `instanceConfig` | `GoogleCloudBeyondcorpAppconnectorsV1AppConnectorInstanceConfig` | AppConnectorInstanceConfig. |

### `GoogleCloudBeyondcorpAppconnectorsV1ResourceInfo`

ResourceInfo represents the information/status of an app connector resource. Such as: - remote_agent - container - runtime - appgateway - appconnector - appconnection - tunnel - logagent

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | Required. Unique Id for the resource. |
| `resource` | `object` | Specific details for the resource. This is for internal use only. |
| `status` | `string` | Overall health status. Overall status is derived based on the status of each sub level resources. |
| `sub` | `array<GoogleCloudBeyondcorpAppconnectorsV1ResourceInfo>` | List of Info for the sub level resources. |
| `time` | `string` | The timestamp to collect the info. It is suggested to be set by the topmost level resource only. |

### `GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorOperationMetadata`

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

### `GoogleCloudBeyondcorpAppconnectorsV1alphaContainerHealthDetails`

ContainerHealthDetails reflects the health details of a container.

| Property | Type | Description |
|----------|------|-------------|
| `currentConfigVersion` | `string` | The version of the current config. |
| `errorMsg` | `string` | The latest error message. |
| `expectedConfigVersion` | `string` | The version of the expected config. |
| `extendedStatus` | `object` | The extended status. Such as ExitCode, StartedAt, FinishedAt, etc. |

### `GoogleCloudBeyondcorpAppconnectorsV1alphaRemoteAgentDetails`

RemoteAgentDetails reflects the details of a remote agent.

### `GoogleCloudBeyondcorpAppgatewaysV1alphaAppGatewayOperationMetadata`

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

### `GoogleCloudBeyondcorpConnectionsV1alphaConnectionOperationMetadata`

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

### `GoogleCloudBeyondcorpConnectorsV1alphaConnectorOperationMetadata`

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

### `GoogleCloudBeyondcorpConnectorsV1alphaContainerHealthDetails`

ContainerHealthDetails reflects the health details of a container.

| Property | Type | Description |
|----------|------|-------------|
| `currentConfigVersion` | `string` | The version of the current config. |
| `errorMsg` | `string` | The latest error message. |
| `expectedConfigVersion` | `string` | The version of the expected config. |
| `extendedStatus` | `object` | The extended status. Such as ExitCode, StartedAt, FinishedAt, etc. |

### `GoogleCloudBeyondcorpConnectorsV1alphaRemoteAgentDetails`

RemoteAgentDetails reflects the details of a remote agent.

### `GoogleCloudBeyondcorpPartnerservicesV1alphaPartnerServiceOperationMetadata`

Represents the metadata of the long-running operation.

| Property | Type | Description |
|----------|------|-------------|
| `apiVersion` | `string` | Output only. API version used to start the operation. |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `requestedCancellation` | `boolean` | Output only. Identifies whether the caller has requested cancellation of the operation. Operation... |
| `statusMessage` | `string` | Output only. Human-readable status of the operation, if any. |
| `target` | `string` | Output only. Server-defined resource path for the target of the operation. |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `GoogleCloudBeyondcorpPartnerservicesV1mainPartnerServiceOperationMetadata`

Represents the metadata of the long-running operation.

| Property | Type | Description |
|----------|------|-------------|
| `apiVersion` | `string` | Output only. API version used to start the operation. |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `requestedCancellation` | `boolean` | Output only. Identifies whether the caller has requested cancellation of the operation. Operation... |
| `statusMessage` | `string` | Output only. Human-readable status of the operation, if any. |
| `target` | `string` | Output only. Server-defined resource path for the target of the operation. |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `GoogleCloudBeyondcorpSecuritygatewaysV1Application`

The information about an application resource.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Timestamp when the resource was created. |
| `displayName` | `string` | Optional. An arbitrary user-provided name for the application resource. Cannot exceed 64 characters. |
| `endpointMatchers` | `array<GoogleCloudBeyondcorpSecuritygatewaysV1EndpointMatcher>` | Optional. An array of conditions to match the application's network endpoint. Each element in the... |
| `name` | `string` | Identifier. Name of the resource. |
| `schema` | `string` | Optional. Type of the external application. |
| `updateTime` | `string` | Output only. Timestamp when the resource was last modified. |
| `upstreams` | `array<GoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstream>` | Optional. Which upstream resources to forward traffic to. |

### `GoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstream`

Which upstream resource to forward traffic to.

| Property | Type | Description |
|----------|------|-------------|
| `egressPolicy` | `GoogleCloudBeyondcorpSecuritygatewaysV1EgressPolicy` | Optional. Routing policy information. |
| `external` | `GoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstreamExternal` | List of the external endpoints to forward traffic to. |
| `network` | `GoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstreamNetwork` | Network to forward traffic to. |
| `proxyProtocol` | `GoogleCloudBeyondcorpSecuritygatewaysV1ProxyProtocolConfig` | Optional. Enables proxy protocol configuration for the upstream. |

### `GoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstreamExternal`

Endpoints to forward traffic to.

| Property | Type | Description |
|----------|------|-------------|
| `endpoints` | `array<GoogleCloudBeyondcorpSecuritygatewaysV1Endpoint>` | Required. List of the endpoints to forward traffic to. |

### `GoogleCloudBeyondcorpSecuritygatewaysV1ApplicationUpstreamNetwork`

Network to forward traffic to.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. Network name is of the format: `projects/{project}/global/networks/{network} |

### `GoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeaders`

Contextual headers configuration.

| Property | Type | Description |
|----------|------|-------------|
| `deviceInfo` | `GoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedDeviceInfo` | Optional. The device information configuration. |
| `groupInfo` | `GoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedGroupInfo` | Optional. Group details. |
| `outputType` | `string` | Optional. Default output type for all enabled headers. |
| `userInfo` | `GoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedUserInfo` | Optional. User details. |

### `GoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedDeviceInfo`

The delegated device information configuration.

| Property | Type | Description |
|----------|------|-------------|
| `outputType` | `string` | Optional. The output type details for the delegated device. |

### `GoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedGroupInfo`

The delegated group configuration details.

| Property | Type | Description |
|----------|------|-------------|
| `outputType` | `string` | Optional. The output type of the delegated group information. |

### `GoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeadersDelegatedUserInfo`

The configuration information for the delegated user.

| Property | Type | Description |
|----------|------|-------------|
| `outputType` | `string` | Optional. The delegated user's information. |

### `GoogleCloudBeyondcorpSecuritygatewaysV1EgressPolicy`

Routing policy information.

| Property | Type | Description |
|----------|------|-------------|
| `regions` | `array<string>` | Required. List of the regions where the application sends traffic. |

### `GoogleCloudBeyondcorpSecuritygatewaysV1Endpoint`

Internet Gateway endpoint to forward traffic to.

| Property | Type | Description |
|----------|------|-------------|
| `hostname` | `string` | Required. Hostname of the endpoint. |
| `port` | `integer` | Required. Port of the endpoint. |

### `GoogleCloudBeyondcorpSecuritygatewaysV1EndpointMatcher`

EndpointMatcher contains the information of the endpoint that will match the application.

| Property | Type | Description |
|----------|------|-------------|
| `hostname` | `string` | Required. Hostname of the application. |
| `ports` | `array<integer>` | Required. The ports of the application. |

### `GoogleCloudBeyondcorpSecuritygatewaysV1Hub`

The Hub message contains information pertaining to the regional data path deployments.

| Property | Type | Description |
|----------|------|-------------|
| `internetGateway` | `GoogleCloudBeyondcorpSecuritygatewaysV1InternetGateway` | Optional. Internet Gateway configuration. |

### `GoogleCloudBeyondcorpSecuritygatewaysV1InternetGateway`

Represents the Internet Gateway configuration.

| Property | Type | Description |
|----------|------|-------------|
| `assignedIps` | `array<string>` | Output only. List of IP addresses assigned to the Cloud NAT. |

### `GoogleCloudBeyondcorpSecuritygatewaysV1ListApplicationsResponse`

Message for response to listing Applications.

| Property | Type | Description |
|----------|------|-------------|
| `applications` | `array<GoogleCloudBeyondcorpSecuritygatewaysV1Application>` | A list of BeyondCorp Application in the project. |
| `nextPageToken` | `string` | A token to retrieve the next page of results, or empty if there are no more results in the list. |
| `unreachable` | `array<string>` | A list of locations that could not be reached. |

### `GoogleCloudBeyondcorpSecuritygatewaysV1ListSecurityGatewaysResponse`

Message for response to listing SecurityGateways.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token to retrieve the next page of results, or empty if there are no more results in the list. |
| `securityGateways` | `array<GoogleCloudBeyondcorpSecuritygatewaysV1SecurityGateway>` | A list of BeyondCorp SecurityGateway in the project. |
| `unreachable` | `array<string>` | A list of locations that could not be reached. |

### `GoogleCloudBeyondcorpSecuritygatewaysV1ProxyProtocolConfig`

The configuration for the proxy.

| Property | Type | Description |
|----------|------|-------------|
| `allowedClientHeaders` | `array<string>` | Optional. List of the allowed client header names. |
| `clientIp` | `boolean` | Optional. Client IP configuration. The client IP address is included if true. |
| `contextualHeaders` | `GoogleCloudBeyondcorpSecuritygatewaysV1ContextualHeaders` | Optional. Configuration for the contextual headers. |
| `gatewayIdentity` | `string` | Optional. The security gateway identity configuration. |
| `metadataHeaders` | `object` | Optional. Custom resource specific headers along with the values. The names should conform to RFC... |

### `GoogleCloudBeyondcorpSecuritygatewaysV1SecurityGateway`

The information about a security gateway resource.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Timestamp when the resource was created. |
| `delegatingServiceAccount` | `string` | Output only. Service account used for operations that involve resources in consumer projects. |
| `displayName` | `string` | Optional. An arbitrary user-provided name for the SecurityGateway. Cannot exceed 64 characters. |
| `externalIps` | `array<string>` | Output only. IP addresses that will be used for establishing connection to the endpoints. |
| `hubs` | `object` | Optional. Map of Hubs that represents regional data path deployment with GCP region as a key. |
| `name` | `string` | Identifier. Name of the resource. |
| `proxyProtocolConfig` | `GoogleCloudBeyondcorpSecuritygatewaysV1ProxyProtocolConfig` | Optional. Shared proxy configuration for all apps. |
| `serviceDiscovery` | `GoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscovery` | Optional. Settings related to the Service Discovery. |
| `state` | `string` | Output only. The operational state of the SecurityGateway. |
| `updateTime` | `string` | Output only. Timestamp when the resource was last modified. |

### `GoogleCloudBeyondcorpSecuritygatewaysV1SecurityGatewayOperationMetadata`

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

### `GoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscovery`

Settings related to the Service Discovery.

| Property | Type | Description |
|----------|------|-------------|
| `apiGateway` | `GoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscoveryApiGateway` | Required. External API configuration. |

### `GoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscoveryApiGateway`

If Service Discovery is done through API, defines its settings.

| Property | Type | Description |
|----------|------|-------------|
| `resourceOverride` | `GoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscoveryApiGatewayOperationDescriptor` | Required. Enables fetching resource model updates to alter service behavior per Chrome profile. |

### `GoogleCloudBeyondcorpSecuritygatewaysV1ServiceDiscoveryApiGatewayOperationDescriptor`

API operation descriptor.

| Property | Type | Description |
|----------|------|-------------|
| `path` | `string` | Required. Contains the URI path fragment where HTTP request is sent. |

### `GoogleCloudBeyondcorpSecuritygatewaysV1alphaSecurityGatewayOperationMetadata`

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

### `GoogleCloudLocationListLocationsResponse`

The response message for Locations.ListLocations.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<GoogleCloudLocationLocation>` | A list of locations that matches the specified filter in the request. |
| `nextPageToken` | `string` | The standard List next-page token. |

### `GoogleCloudLocationLocation`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `GoogleIamV1AuditConfig`

Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both `allServices` and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { "audit_configs": [ { "service": "allServices", "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" }, { "log_type": "ADMIN_READ" } ] }, { "service": "sampleservice.googleapis.com", "audit_log_configs": [ { "log_type": "DATA_READ" }, { "log_type": "DATA_WRITE", "exempted_members": [ "user:aliya@example.com" ] } ] } ] } For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com` from DATA_WRITE logging.

| Property | Type | Description |
|----------|------|-------------|
| `auditLogConfigs` | `array<GoogleIamV1AuditLogConfig>` | The configuration for logging of each type of permission. |
| `service` | `string` | Specifies a service that will be enabled for audit logging. For example, `storage.googleapis.com`... |

### `GoogleIamV1AuditLogConfig`

Provides the configuration for logging a type of permissions. Example: { "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.

| Property | Type | Description |
|----------|------|-------------|
| `exemptedMembers` | `array<string>` | Specifies the identities that do not cause logging for this type of permission. Follows the same ... |
| `logType` | `string` | The log type that this config enables. |

### `GoogleIamV1Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `GoogleTypeExpr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `GoogleIamV1Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `auditConfigs` | `array<GoogleIamV1AuditConfig>` | Specifies cloud audit logging configuration for this policy. |
| `bindings` | `array<GoogleIamV1Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `GoogleIamV1SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `GoogleIamV1Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |
| `updateMask` | `string` | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mas... |

### `GoogleIamV1TestIamPermissionsRequest`

Request message for `TestIamPermissions` method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | The set of permissions to check for the `resource`. Permissions with wildcards (such as `*` or `s... |

### `GoogleIamV1TestIamPermissionsResponse`

Response message for `TestIamPermissions` method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | A subset of `TestPermissionsRequest.permissions` that the caller is allowed. |

### `GoogleLongrunningCancelOperationRequest`

The request message for Operations.CancelOperation.

### `GoogleLongrunningListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<GoogleLongrunningOperation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `GoogleLongrunningOperation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `GoogleRpcStatus` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `GoogleRpcStatus`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `GoogleTypeExpr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `ListAppGatewaysResponse`

Response message for BeyondCorp.ListAppGateways.

| Property | Type | Description |
|----------|------|-------------|
| `appGateways` | `array<AppGateway>` | A list of BeyondCorp AppGateways in the project. |
| `nextPageToken` | `string` | A token to retrieve the next page of results, or empty if there are no more results in the list. |
| `unreachable` | `array<string>` | A list of locations that could not be reached. |

### `Tunnelv1ProtoTunnelerError`

TunnelerError is an error proto for errors returned by the connection manager.

| Property | Type | Description |
|----------|------|-------------|
| `err` | `string` | Original raw error |
| `retryable` | `boolean` | retryable isn't used for now, but we may want to reuse it in the future. |

### `Tunnelv1ProtoTunnelerInfo`

TunnelerInfo contains metadata about tunneler launched by connection manager.

| Property | Type | Description |
|----------|------|-------------|
| `backoffRetryCount` | `integer` | backoff_retry_count stores the number of times the tunneler has been retried by tunManager for cu... |
| `id` | `string` | id is the unique id of a tunneler. |
| `latestErr` | `Tunnelv1ProtoTunnelerError` | latest_err stores the Error for the latest tunneler failure. Gets reset everytime the tunneler is... |
| `latestRetryTime` | `string` | latest_retry_time stores the time when the tunneler was last restarted. |
| `totalRetryCount` | `integer` | total_retry_count stores the total number of times the tunneler has been retried by tunManager. |

