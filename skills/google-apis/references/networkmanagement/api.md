# Network Management API - API Reference

**Version**: `v1` | **Methods**: 33 | **Schemas**: 71

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `networkmanagement.organizations.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `networkmanagement.organizations.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `networkmanagement.organizations.locations.global.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `networkmanagement.organizations.locations.global.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `networkmanagement.organizations.locations.global.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `networkmanagement.organizations.locations.global.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `networkmanagement.organizations.locations.vpcFlowLogsConfigs.get` | GET | `v1/{+name}` | Gets the details of a specific `VpcFlowLogsConfig`. |
| `networkmanagement.organizations.locations.vpcFlowLogsConfigs.create` | POST | `v1/{+parent}/vpcFlowLogsConfigs` | Creates a new `VpcFlowLogsConfig`. If a configuration with the exact same settings already exists... |
| `networkmanagement.organizations.locations.vpcFlowLogsConfigs.patch` | PATCH | `v1/{+name}` | Updates an existing `VpcFlowLogsConfig`. If a configuration with the exact same settings already ... |
| `networkmanagement.organizations.locations.vpcFlowLogsConfigs.delete` | DELETE | `v1/{+name}` | Deletes a specific `VpcFlowLogsConfig`. |
| `networkmanagement.organizations.locations.vpcFlowLogsConfigs.list` | GET | `v1/{+parent}/vpcFlowLogsConfigs` | Lists all `VpcFlowLogsConfigs` in a given organization. |
| `networkmanagement.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `networkmanagement.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `networkmanagement.projects.locations.vpcFlowLogsConfigs.delete` | DELETE | `v1/{+name}` | Deletes a specific `VpcFlowLogsConfig`. |
| `networkmanagement.projects.locations.vpcFlowLogsConfigs.queryOrgVpcFlowLogsConfigs` | GET | `v1/{+parent}/vpcFlowLogsConfigs:queryOrgVpcFlowLogsConfigs` | QueryOrgVpcFlowLogsConfigs returns a list of all organization-level VPC Flow Logs configurations ... |
| `networkmanagement.projects.locations.vpcFlowLogsConfigs.list` | GET | `v1/{+parent}/vpcFlowLogsConfigs` | Lists all `VpcFlowLogsConfigs` in a given project. |
| `networkmanagement.projects.locations.vpcFlowLogsConfigs.get` | GET | `v1/{+name}` | Gets the details of a specific `VpcFlowLogsConfig`. |
| `networkmanagement.projects.locations.vpcFlowLogsConfigs.create` | POST | `v1/{+parent}/vpcFlowLogsConfigs` | Creates a new `VpcFlowLogsConfig`. If a configuration with the exact same settings already exists... |
| `networkmanagement.projects.locations.vpcFlowLogsConfigs.showEffectiveFlowLogsConfigs` | GET | `v1/{+parent}/vpcFlowLogsConfigs:showEffectiveFlowLogsConfigs` | ShowEffectiveFlowLogsConfigs returns a list of all VPC Flow Logs configurations applicable to a s... |
| `networkmanagement.projects.locations.vpcFlowLogsConfigs.patch` | PATCH | `v1/{+name}` | Updates an existing `VpcFlowLogsConfig`. If a configuration with the exact same settings already ... |
| `networkmanagement.projects.locations.global.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `networkmanagement.projects.locations.global.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `networkmanagement.projects.locations.global.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `networkmanagement.projects.locations.global.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `networkmanagement.projects.locations.global.connectivityTests.rerun` | POST | `v1/{+name}:rerun` | Rerun an existing `ConnectivityTest`. After the user triggers the rerun, the reachability analysi... |
| `networkmanagement.projects.locations.global.connectivityTests.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `networkmanagement.projects.locations.global.connectivityTests.patch` | PATCH | `v1/{+name}` | Updates the configuration of an existing `ConnectivityTest`. After you update a test, the reachab... |
| `networkmanagement.projects.locations.global.connectivityTests.delete` | DELETE | `v1/{+name}` | Deletes a specific `ConnectivityTest`. |
| `networkmanagement.projects.locations.global.connectivityTests.create` | POST | `v1/{+parent}/connectivityTests` | Creates a new Connectivity Test. After you create a test, the reachability analysis is performed ... |
| `networkmanagement.projects.locations.global.connectivityTests.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `networkmanagement.projects.locations.global.connectivityTests.list` | GET | `v1/{+parent}/connectivityTests` | Lists all Connectivity Tests owned by a project. |
| `networkmanagement.projects.locations.global.connectivityTests.get` | GET | `v1/{+name}` | Gets the details of a specific Connectivity Test. |
| `networkmanagement.projects.locations.global.connectivityTests.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |

### `networkmanagement.organizations.locations.list`

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
const res = await networkmanagement.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkmanagement.organizations.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await networkmanagement.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkmanagement.organizations.locations.global.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await networkmanagement.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkmanagement.organizations.locations.global.operations.list`

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
const res = await networkmanagement.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkmanagement.organizations.locations.global.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await networkmanagement.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkmanagement.organizations.locations.global.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await networkmanagement.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkmanagement.organizations.locations.vpcFlowLogsConfigs.get`

**GET** `v1/{+name}`

Gets the details of a specific `VpcFlowLogsConfig`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the VpcFlowLogsConfig, in one of the following formats: - For project-level resources:... |

**Response**: `VpcFlowLogsConfig`

```typescript
const res = await networkmanagement.vpcFlowLogsConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkmanagement.organizations.locations.vpcFlowLogsConfigs.create`

**POST** `v1/{+parent}/vpcFlowLogsConfigs`

Creates a new `VpcFlowLogsConfig`. If a configuration with the exact same settings already exists (even if the ID is different), the creation fails. Notes: 1. Creating a configuration with `state=DISABLED` will fail 2. The following fields are not considered as settings for the purpose of the check mentioned above, therefore - creating another configuration with the same fields but different values for the following fields will fail as well: * name * create_time * update_time * labels * description

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the VpcFlowLogsConfig to create, in one of the following formats: - For project-leve... |
| `vpcFlowLogsConfigId` | `string` | query | No | Required. ID of the `VpcFlowLogsConfig`. |

**Request body**: `VpcFlowLogsConfig`

**Response**: `Operation`

```typescript
const res = await networkmanagement.vpcFlowLogsConfigs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkmanagement.organizations.locations.vpcFlowLogsConfigs.patch`

**PATCH** `v1/{+name}`

Updates an existing `VpcFlowLogsConfig`. If a configuration with the exact same settings already exists (even if the ID is different), the creation fails. Notes: 1. Updating a configuration with `state=DISABLED` will fail 2. The following fields are not considered as settings for the purpose of the check mentioned above, therefore - updating another configuration with the same fields but different values for the following fields will fail as well: * name * create_time * update_time * labels * description

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Unique name of the configuration. The name can have one of the following forms: - For project-level confi... |
| `updateMask` | `string` | query | No | Required. Mask of fields to update. At least one path must be supplied in this field. For example, to change the stat... |

**Request body**: `VpcFlowLogsConfig`

**Response**: `Operation`

```typescript
const res = await networkmanagement.vpcFlowLogsConfigs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkmanagement.organizations.locations.vpcFlowLogsConfigs.delete`

**DELETE** `v1/{+name}`

Deletes a specific `VpcFlowLogsConfig`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the VpcFlowLogsConfig, in one of the following formats: - For a project-level resource... |

**Response**: `Operation`

```typescript
const res = await networkmanagement.vpcFlowLogsConfigs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkmanagement.organizations.locations.vpcFlowLogsConfigs.list`

**GET** `v1/{+parent}/vpcFlowLogsConfigs`

Lists all `VpcFlowLogsConfigs` in a given organization.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the VpcFlowLogsConfig, in one of the following formats: - For project-level resource... |
| `filter` | `string` | query | No | Optional. Lists the `VpcFlowLogsConfigs` that match the filter expression. A filter expression must use the supported... |
| `orderBy` | `string` | query | No | Optional. Field to use to sort the list. |
| `pageSize` | `integer` | query | No | Optional. Number of `VpcFlowLogsConfigs` to return. |
| `pageToken` | `string` | query | No | Optional. Page token from an earlier query, as returned in `next_page_token`. |

**Response**: `ListVpcFlowLogsConfigsResponse`

```typescript
const res = await networkmanagement.vpcFlowLogsConfigs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkmanagement.projects.locations.list`

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
const res = await networkmanagement.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkmanagement.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await networkmanagement.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkmanagement.projects.locations.vpcFlowLogsConfigs.delete`

**DELETE** `v1/{+name}`

Deletes a specific `VpcFlowLogsConfig`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the VpcFlowLogsConfig, in one of the following formats: - For a project-level resource... |

**Response**: `Operation`

```typescript
const res = await networkmanagement.vpcFlowLogsConfigs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkmanagement.projects.locations.vpcFlowLogsConfigs.queryOrgVpcFlowLogsConfigs`

**GET** `v1/{+parent}/vpcFlowLogsConfigs:queryOrgVpcFlowLogsConfigs`

QueryOrgVpcFlowLogsConfigs returns a list of all organization-level VPC Flow Logs configurations applicable to the specified project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the VpcFlowLogsConfig, specified in the following format: `projects/{project_id}/loc... |
| `filter` | `string` | query | No | Optional. Lists the `VpcFlowLogsConfigs` that match the filter expression. A filter expression must use the supported... |
| `pageSize` | `integer` | query | No | Optional. Number of `VpcFlowLogsConfigs` to return. |
| `pageToken` | `string` | query | No | Optional. Page token from an earlier query, as returned in `next_page_token`. |

**Response**: `QueryOrgVpcFlowLogsConfigsResponse`

```typescript
const res = await networkmanagement.vpcFlowLogsConfigs.queryOrgVpcFlowLogsConfigs({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkmanagement.projects.locations.vpcFlowLogsConfigs.list`

**GET** `v1/{+parent}/vpcFlowLogsConfigs`

Lists all `VpcFlowLogsConfigs` in a given project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the VpcFlowLogsConfig, in one of the following formats: - For project-level resource... |
| `filter` | `string` | query | No | Optional. Lists the `VpcFlowLogsConfigs` that match the filter expression. A filter expression must use the supported... |
| `orderBy` | `string` | query | No | Optional. Field to use to sort the list. |
| `pageSize` | `integer` | query | No | Optional. Number of `VpcFlowLogsConfigs` to return. |
| `pageToken` | `string` | query | No | Optional. Page token from an earlier query, as returned in `next_page_token`. |

**Response**: `ListVpcFlowLogsConfigsResponse`

```typescript
const res = await networkmanagement.vpcFlowLogsConfigs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkmanagement.projects.locations.vpcFlowLogsConfigs.get`

**GET** `v1/{+name}`

Gets the details of a specific `VpcFlowLogsConfig`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the VpcFlowLogsConfig, in one of the following formats: - For project-level resources:... |

**Response**: `VpcFlowLogsConfig`

```typescript
const res = await networkmanagement.vpcFlowLogsConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkmanagement.projects.locations.vpcFlowLogsConfigs.create`

**POST** `v1/{+parent}/vpcFlowLogsConfigs`

Creates a new `VpcFlowLogsConfig`. If a configuration with the exact same settings already exists (even if the ID is different), the creation fails. Notes: 1. Creating a configuration with `state=DISABLED` will fail 2. The following fields are not considered as settings for the purpose of the check mentioned above, therefore - creating another configuration with the same fields but different values for the following fields will fail as well: * name * create_time * update_time * labels * description

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the VpcFlowLogsConfig to create, in one of the following formats: - For project-leve... |
| `vpcFlowLogsConfigId` | `string` | query | No | Required. ID of the `VpcFlowLogsConfig`. |

**Request body**: `VpcFlowLogsConfig`

**Response**: `Operation`

```typescript
const res = await networkmanagement.vpcFlowLogsConfigs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkmanagement.projects.locations.vpcFlowLogsConfigs.showEffectiveFlowLogsConfigs`

**GET** `v1/{+parent}/vpcFlowLogsConfigs:showEffectiveFlowLogsConfigs`

ShowEffectiveFlowLogsConfigs returns a list of all VPC Flow Logs configurations applicable to a specified resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the VpcFlowLogsConfig, specified in the following format: `projects/{project_id}/loc... |
| `filter` | `string` | query | No | Optional. Lists the `EffectiveVpcFlowLogsConfigs` that match the filter expression. A filter expression must use the ... |
| `pageSize` | `integer` | query | No | Optional. Number of `EffectiveVpcFlowLogsConfigs` to return. Default is 30. |
| `pageToken` | `string` | query | No | Optional. Page token from an earlier query, as returned in `next_page_token`. |
| `resource` | `string` | query | No | Required. The resource to get the effective VPC Flow Logs configuration for. The resource must belong to the same pro... |

**Response**: `ShowEffectiveFlowLogsConfigsResponse`

```typescript
const res = await networkmanagement.vpcFlowLogsConfigs.showEffectiveFlowLogsConfigs({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkmanagement.projects.locations.vpcFlowLogsConfigs.patch`

**PATCH** `v1/{+name}`

Updates an existing `VpcFlowLogsConfig`. If a configuration with the exact same settings already exists (even if the ID is different), the creation fails. Notes: 1. Updating a configuration with `state=DISABLED` will fail. 2. The following fields are not considered as settings for the purpose of the check mentioned above, therefore - updating another configuration with the same fields but different values for the following fields will fail as well: * name * create_time * update_time * labels * description

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Unique name of the configuration. The name can have one of the following forms: - For project-level confi... |
| `updateMask` | `string` | query | No | Required. Mask of fields to update. At least one path must be supplied in this field. For example, to change the stat... |

**Request body**: `VpcFlowLogsConfig`

**Response**: `Operation`

```typescript
const res = await networkmanagement.vpcFlowLogsConfigs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkmanagement.projects.locations.global.operations.list`

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
const res = await networkmanagement.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkmanagement.projects.locations.global.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await networkmanagement.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkmanagement.projects.locations.global.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await networkmanagement.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkmanagement.projects.locations.global.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await networkmanagement.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkmanagement.projects.locations.global.connectivityTests.rerun`

**POST** `v1/{+name}:rerun`

Rerun an existing `ConnectivityTest`. After the user triggers the rerun, the reachability analysis is performed as part of the long running operation, which completes when the analysis completes. Even though the test configuration remains the same, the reachability result may change due to underlying network configuration changes. If the endpoint specifications in `ConnectivityTest` become invalid (for example, specified resources are deleted in the network, or you lost read permissions to the network configurations of listed projects), then the reachability result returns a value of `UNKNOWN`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Connectivity Test resource name using the form: `projects/{project_id}/locations/global/connectivityTests/{... |

**Request body**: `RerunConnectivityTestRequest`

**Response**: `Operation`

```typescript
const res = await networkmanagement.connectivityTests.rerun({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkmanagement.projects.locations.global.connectivityTests.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await networkmanagement.connectivityTests.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkmanagement.projects.locations.global.connectivityTests.patch`

**PATCH** `v1/{+name}`

Updates the configuration of an existing `ConnectivityTest`. After you update a test, the reachability analysis is performed as part of the long running operation, which completes when the analysis completes. The Reachability state in the test resource is updated with the new result. If the endpoint specifications in `ConnectivityTest` are invalid (for example, they contain non-existent resources in the network, or the user does not have read permissions to the network configurations of listed projects), then the reachability result returns a value of UNKNOWN. If the endpoint specifications in `ConnectivityTest` are incomplete, the reachability result returns a value of `AMBIGUOUS`. See the documentation in `ConnectivityTest` for more details.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Unique name of the resource using the form: `projects/{project_id}/locations/global/connectivityTests/{te... |
| `updateMask` | `string` | query | No | Required. Mask of fields to update. At least one path must be supplied in this field. |

**Request body**: `ConnectivityTest`

**Response**: `Operation`

```typescript
const res = await networkmanagement.connectivityTests.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkmanagement.projects.locations.global.connectivityTests.delete`

**DELETE** `v1/{+name}`

Deletes a specific `ConnectivityTest`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Connectivity Test resource name using the form: `projects/{project_id}/locations/global/connectivityTests/{... |

**Response**: `Operation`

```typescript
const res = await networkmanagement.connectivityTests.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkmanagement.projects.locations.global.connectivityTests.create`

**POST** `v1/{+parent}/connectivityTests`

Creates a new Connectivity Test. After you create a test, the reachability analysis is performed as part of the long running operation, which completes when the analysis completes. If the endpoint specifications in `ConnectivityTest` are invalid (for example, containing non-existent resources in the network, or you don't have read permissions to the network configurations of listed projects), then the reachability result returns a value of `UNKNOWN`. If the endpoint specifications in `ConnectivityTest` are incomplete, the reachability result returns a value of AMBIGUOUS. For more information, see the Connectivity Test documentation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the Connectivity Test to create: `projects/{project_id}/locations/global` |
| `testId` | `string` | query | No | Required. The logical name of the Connectivity Test in your project with the following restrictions: * Must contain o... |

**Request body**: `ConnectivityTest`

**Response**: `Operation`

```typescript
const res = await networkmanagement.connectivityTests.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkmanagement.projects.locations.global.connectivityTests.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await networkmanagement.connectivityTests.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkmanagement.projects.locations.global.connectivityTests.list`

**GET** `v1/{+parent}/connectivityTests`

Lists all Connectivity Tests owned by a project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the Connectivity Tests: `projects/{project_id}/locations/global` |
| `filter` | `string` | query | No | Lists the `ConnectivityTests` that match the filter expression. A filter expression filters the resources listed in t... |
| `orderBy` | `string` | query | No | Field to use to sort the list. |
| `pageSize` | `integer` | query | No | Number of `ConnectivityTests` to return. |
| `pageToken` | `string` | query | No | Page token from an earlier query, as returned in `next_page_token`. |

**Response**: `ListConnectivityTestsResponse`

```typescript
const res = await networkmanagement.connectivityTests.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkmanagement.projects.locations.global.connectivityTests.get`

**GET** `v1/{+name}`

Gets the details of a specific Connectivity Test.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. `ConnectivityTest` resource name using the form: `projects/{project_id}/locations/global/connectivityTests/... |

**Response**: `ConnectivityTest`

```typescript
const res = await networkmanagement.connectivityTests.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkmanagement.projects.locations.global.connectivityTests.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await networkmanagement.connectivityTests.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AbortInfo`

Details of the final state "abort" and associated resource.

| Property | Type | Description |
|----------|------|-------------|
| `cause` | `string` | Causes that the analysis is aborted. |
| `ipAddress` | `string` | IP address that caused the abort. |
| `projectsMissingPermission` | `array<string>` | List of project IDs the user specified in the request but lacks access to. In this case, analysis... |
| `resourceUri` | `string` | URI of the resource that caused the abort. |

### `AppEngineVersionEndpoint`

Wrapper for the App Engine service version attributes.

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` | An [App Engine](https://cloud.google.com/appengine) [service version](https://cloud.google.com/ap... |

### `AppEngineVersionInfo`

For display only. Metadata associated with an App Engine version.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Name of an App Engine version. |
| `environment` | `string` | App Engine execution environment for a version. |
| `runtime` | `string` | Runtime of the App Engine version. |
| `uri` | `string` | URI of an App Engine version. |

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

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `CloudFunctionEndpoint`

Wrapper for Cloud Function attributes.

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` | A [Cloud Function](https://cloud.google.com/functions) name. |

### `CloudFunctionInfo`

For display only. Metadata associated with a Cloud Function.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Name of a Cloud Function. |
| `location` | `string` | Location in which the Cloud Function is deployed. |
| `uri` | `string` | URI of a Cloud Function. |
| `versionId` | `string` | Latest successfully deployed version id of the Cloud Function. |

### `CloudRunRevisionEndpoint`

Wrapper for Cloud Run revision attributes.

| Property | Type | Description |
|----------|------|-------------|
| `serviceUri` | `string` | Output only. The URI of the Cloud Run service that the revision belongs to. The format is: projec... |
| `uri` | `string` | A [Cloud Run](https://cloud.google.com/run) [revision](https://cloud.google.com/run/docs/referenc... |

### `CloudRunRevisionInfo`

For display only. Metadata associated with a Cloud Run revision.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Name of a Cloud Run revision. |
| `location` | `string` | Location in which this revision is deployed. |
| `serviceUri` | `string` | URI of Cloud Run service this revision belongs to. |
| `uri` | `string` | URI of a Cloud Run revision. |

### `CloudSQLInstanceInfo`

For display only. Metadata associated with a Cloud SQL instance.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Name of a Cloud SQL instance. |
| `externalIp` | `string` | External IP address of a Cloud SQL instance. |
| `internalIp` | `string` | Internal IP address of a Cloud SQL instance. |
| `networkUri` | `string` | URI of a Cloud SQL instance network or empty string if the instance does not have one. |
| `region` | `string` | Region in which the Cloud SQL instance is running. |
| `uri` | `string` | URI of a Cloud SQL instance. |

### `ConnectivityTest`

A Connectivity Test for a network reachability analysis.

| Property | Type | Description |
|----------|------|-------------|
| `bypassFirewallChecks` | `boolean` | Whether the analysis should skip firewall checking. Default value is false. |
| `createTime` | `string` | Output only. The time the test was created. |
| `description` | `string` | The user-supplied description of the Connectivity Test. Maximum of 512 characters. |
| `destination` | `Endpoint` | Required. Destination specification of the Connectivity Test. You can use a combination of destin... |
| `displayName` | `string` | Output only. The display name of a Connectivity Test. |
| `labels` | `object` | Resource labels to represent user-provided metadata. |
| `name` | `string` | Identifier. Unique name of the resource using the form: `projects/{project_id}/locations/global/c... |
| `probingDetails` | `ProbingDetails` | Output only. The probing details of this test from the latest run, present for applicable tests o... |
| `protocol` | `string` | IP Protocol of the test. When not provided, "TCP" is assumed. |
| `reachabilityDetails` | `ReachabilityDetails` | Output only. The reachability details of this test from the latest run. The details are updated w... |
| `relatedProjects` | `array<string>` | Other projects that may be relevant for reachability analysis. This is applicable to scenarios wh... |
| `returnReachabilityDetails` | `ReachabilityDetails` | Output only. The reachability details of this test from the latest run for the return path. The d... |
| `roundTrip` | `boolean` | Whether run analysis for the return path from destination to source. Default value is false. |
| `source` | `Endpoint` | Required. Source specification of the Connectivity Test. You can use a combination of source IP a... |
| `updateTime` | `string` | Output only. The time the test's configuration was updated. |

### `DeliverInfo`

Details of the final state "deliver" and associated resource.

| Property | Type | Description |
|----------|------|-------------|
| `googleServiceType` | `string` | Recognized type of a Google Service the packet is delivered to (if applicable). |
| `ipAddress` | `string` | IP address of the target (if applicable). |
| `pscGoogleApiTarget` | `string` | PSC Google API target the packet is delivered to (if applicable). |
| `resourceUri` | `string` | URI of the resource that the packet is delivered to. |
| `storageBucket` | `string` | Name of the Cloud Storage Bucket the packet is delivered to (if applicable). |
| `target` | `string` | Target type where the packet is delivered to. |

### `DirectVpcEgressConnectionInfo`

For display only. Metadata associated with a serverless direct VPC egress connection.

| Property | Type | Description |
|----------|------|-------------|
| `networkUri` | `string` | URI of direct access network. |
| `region` | `string` | Region in which the Direct VPC egress is deployed. |
| `selectedIpAddress` | `string` | Selected starting IP address, from the selected IP range. |
| `selectedIpRange` | `string` | Selected IP range. |
| `subnetworkUri` | `string` | URI of direct access subnetwork. |

### `DropInfo`

Details of the final state "drop" and associated resource.

| Property | Type | Description |
|----------|------|-------------|
| `cause` | `string` | Cause that the packet is dropped. |
| `destinationGeolocationCode` | `string` | Geolocation (region code) of the destination IP address (if relevant). |
| `destinationIp` | `string` | Destination IP address of the dropped packet (if relevant). |
| `region` | `string` | Region of the dropped packet (if relevant). |
| `resourceUri` | `string` | URI of the resource that caused the drop. |
| `sourceGeolocationCode` | `string` | Geolocation (region code) of the source IP address (if relevant). |
| `sourceIp` | `string` | Source IP address of the dropped packet (if relevant). |

### `EdgeLocation`

Representation of a network edge location as per https://cloud.google.com/vpc/docs/edge-locations.

| Property | Type | Description |
|----------|------|-------------|
| `metropolitanArea` | `string` | Name of the metropolitan area. |

### `EffectiveVpcFlowLogsConfig`

A configuration to generate a response for GetEffectiveVpcFlowLogsConfig request.

| Property | Type | Description |
|----------|------|-------------|
| `aggregationInterval` | `string` | The aggregation interval for the logs. Default value is INTERVAL_5_SEC. |
| `crossProjectMetadata` | `string` | Determines whether to include cross project annotations in the logs. This field is available only... |
| `filterExpr` | `string` | Export filter used to define which VPC Flow Logs should be logged. |
| `flowSampling` | `number` | The value of the field must be in (0, 1]. The sampling rate of VPC Flow Logs where 1.0 means all ... |
| `interconnectAttachment` | `string` | Traffic will be logged from the Interconnect Attachment. Format: projects/{project_id}/regions/{r... |
| `metadata` | `string` | Configures whether all, none or a subset of metadata fields should be added to the reported VPC f... |
| `metadataFields` | `array<string>` | Custom metadata fields to include in the reported VPC flow logs. Can only be specified if "metada... |
| `name` | `string` | Unique name of the configuration. The name can have one of the following forms: - For project-lev... |
| `network` | `string` | Traffic will be logged from VMs, VPN tunnels and Interconnect Attachments within the network. For... |
| `scope` | `string` | Specifies the scope of the config (e.g., SUBNET, NETWORK, ORGANIZATION..). |
| `state` | `string` | The state of the VPC Flow Log configuration. Default value is ENABLED. When creating a new config... |
| `subnet` | `string` | Traffic will be logged from VMs within the subnetwork. Format: projects/{project_id}/regions/{reg... |
| `vpnTunnel` | `string` | Traffic will be logged from the VPN Tunnel. Format: projects/{project_id}/regions/{region}/vpnTun... |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Endpoint`

Source or destination of the Connectivity Test.

| Property | Type | Description |
|----------|------|-------------|
| `appEngineVersion` | `AppEngineVersionEndpoint` | An [App Engine](https://cloud.google.com/appengine) [service version](https://cloud.google.com/ap... |
| `cloudFunction` | `CloudFunctionEndpoint` | A [Cloud Function](https://cloud.google.com/functions). Applicable only to source endpoint. |
| `cloudRunRevision` | `CloudRunRevisionEndpoint` | A [Cloud Run](https://cloud.google.com/run) [revision](https://cloud.google.com/run/docs/referenc... |
| `cloudSqlInstance` | `string` | A [Cloud SQL](https://cloud.google.com/sql) instance URI. |
| `forwardingRule` | `string` | A forwarding rule and its corresponding IP address represent the frontend configuration of a Goog... |
| `forwardingRuleTarget` | `string` | Output only. Specifies the type of the target of the forwarding rule. |
| `fqdn` | `string` | DNS endpoint of [Google Kubernetes Engine cluster control plane](https://cloud.google.com/kuberne... |
| `gkeMasterCluster` | `string` | A cluster URI for [Google Kubernetes Engine cluster control plane](https://cloud.google.com/kuber... |
| `gkePod` | `string` | A [GKE Pod](https://cloud.google.com/kubernetes-engine/docs/concepts/pod) URI. |
| `instance` | `string` | A Compute Engine instance URI. |
| `ipAddress` | `string` | The IP address of the endpoint, which can be an external or internal IP. |
| `loadBalancerId` | `string` | Output only. ID of the load balancer the forwarding rule points to. Empty for forwarding rules no... |
| `loadBalancerType` | `string` | Output only. Type of the load balancer the forwarding rule points to. |
| `network` | `string` | A VPC network URI. For source endpoints, used according to the `network_type`. For destination en... |
| `networkType` | `string` | For source endpoints, type of the network where the endpoint is located. Not relevant for destina... |
| `port` | `integer` | The IP protocol port of the endpoint. Only applicable when protocol is TCP or UDP. |
| `projectId` | `string` | For source endpoints, endpoint project ID. Used according to the `network_type`. Not relevant for... |
| `redisCluster` | `string` | A [Redis Cluster](https://cloud.google.com/memorystore/docs/cluster) URI. Applicable only to dest... |
| `redisInstance` | `string` | A [Redis Instance](https://cloud.google.com/memorystore/docs/redis) URI. Applicable only to desti... |

### `EndpointInfo`

For display only. The specification of the endpoints for the test. EndpointInfo is derived from source and destination Endpoint and validated by the backend data plane model.

| Property | Type | Description |
|----------|------|-------------|
| `destinationIp` | `string` | Destination IP address. |
| `destinationNetworkUri` | `string` | URI of the network where this packet is sent to. |
| `destinationPort` | `integer` | Destination port. Only valid when protocol is TCP or UDP. |
| `protocol` | `string` | IP protocol in string format, for example: "TCP", "UDP", "ICMP". |
| `sourceAgentUri` | `string` | URI of the source telemetry agent this packet originates from. |
| `sourceIp` | `string` | Source IP address. |
| `sourceNetworkUri` | `string` | URI of the network where this packet originates from. |
| `sourcePort` | `integer` | Source port. Only valid when protocol is TCP or UDP. |

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `FirewallInfo`

For display only. Metadata associated with a VPC firewall rule, an implied VPC firewall rule, or a firewall policy rule.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` | Possible values: ALLOW, DENY, APPLY_SECURITY_PROFILE_GROUP |
| `direction` | `string` | Possible values: INGRESS, EGRESS |
| `displayName` | `string` | The display name of the firewall rule. This field might be empty for firewall policy rules. |
| `firewallRuleType` | `string` | The firewall rule's type. |
| `networkUri` | `string` | The URI of the VPC network that the firewall rule is associated with. This field is not applicabl... |
| `policy` | `string` | The name of the firewall policy that this rule is associated with. This field is not applicable t... |
| `policyPriority` | `integer` | The priority of the firewall policy that this rule is associated with. This field is not applicab... |
| `policyUri` | `string` | The URI of the firewall policy that this rule is associated with. This field is not applicable to... |
| `priority` | `integer` | The priority of the firewall rule. |
| `targetServiceAccounts` | `array<string>` | The target service accounts specified by the firewall rule. |
| `targetTags` | `array<string>` | The target tags defined by the VPC firewall rule. This field is not applicable to firewall policy... |
| `targetType` | `string` | Target type of the firewall rule. |
| `uri` | `string` | The URI of the firewall rule. This field is not applicable to implied VPC firewall rules. |

### `ForwardInfo`

Details of the final state "forward" and associated resource.

| Property | Type | Description |
|----------|------|-------------|
| `ipAddress` | `string` | IP address of the target (if applicable). |
| `resourceUri` | `string` | URI of the resource that the packet is forwarded to. |
| `target` | `string` | Target type where this packet is forwarded to. |

### `ForwardingRuleInfo`

For display only. Metadata associated with a Compute Engine forwarding rule.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Name of the forwarding rule. |
| `loadBalancerName` | `string` | Name of the load balancer the forwarding rule belongs to. Empty for forwarding rules not related ... |
| `matchedPortRange` | `string` | Port range defined in the forwarding rule that matches the packet. |
| `matchedProtocol` | `string` | Protocol defined in the forwarding rule that matches the packet. |
| `networkUri` | `string` | Network URI. |
| `pscGoogleApiTarget` | `string` | PSC Google API target this forwarding rule targets (if applicable). |
| `pscServiceAttachmentUri` | `string` | URI of the PSC service attachment this forwarding rule targets (if applicable). |
| `region` | `string` | Region of the forwarding rule. Set only for regional forwarding rules. |
| `target` | `string` | Target type of the forwarding rule. |
| `uri` | `string` | URI of the forwarding rule. |
| `vip` | `string` | VIP of the forwarding rule. |

### `GKEMasterInfo`

For display only. Metadata associated with a Google Kubernetes Engine (GKE) cluster master.

| Property | Type | Description |
|----------|------|-------------|
| `clusterNetworkUri` | `string` | URI of a GKE cluster network. |
| `clusterUri` | `string` | URI of a GKE cluster. |
| `dnsEndpoint` | `string` | DNS endpoint of a GKE cluster control plane. |
| `externalIp` | `string` | External IP address of a GKE cluster control plane. |
| `internalIp` | `string` | Internal IP address of a GKE cluster control plane. |

### `GkePodInfo`

For display only. Metadata associated with a Google Kubernetes Engine (GKE) Pod.

| Property | Type | Description |
|----------|------|-------------|
| `ipAddress` | `string` | IP address of a GKE Pod. If the Pod is dual-stack, this is the IP address relevant to the trace. |
| `networkUri` | `string` | URI of the network containing the GKE Pod. |
| `podUri` | `string` | URI of a GKE Pod. For Pods in regional Clusters, the URI format is: `projects/{project}/locations... |

### `GoogleServiceInfo`

For display only. Details of a Google Service sending packets to a VPC network. Although the source IP might be a publicly routable address, some Google Services use special routes within Google production infrastructure to reach Compute Engine Instances. https://cloud.google.com/vpc/docs/routes#special_return_paths

| Property | Type | Description |
|----------|------|-------------|
| `googleServiceType` | `string` | Recognized type of a Google Service. |
| `sourceIp` | `string` | Source IP address. |

### `HybridSubnetInfo`

For display only. Metadata associated with a hybrid subnet.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Name of a hybrid subnet. |
| `region` | `string` | Name of a Google Cloud region where the hybrid subnet is configured. |
| `uri` | `string` | URI of a hybrid subnet. |

### `InstanceInfo`

For display only. Metadata associated with a Compute Engine instance.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Name of a Compute Engine instance. |
| `externalIp` | `string` | External IP address of the network interface. |
| `interface` | `string` | Name of the network interface of a Compute Engine instance. |
| `internalIp` | `string` | Internal IP address of the network interface. |
| `networkTags` | `array<string>` | Network tags configured on the instance. |
| `networkUri` | `string` | URI of a Compute Engine network. |
| `pscNetworkAttachmentUri` | `string` | URI of the PSC network attachment the NIC is attached to (if relevant). |
| `running` | `boolean` | Indicates whether the Compute Engine instance is running. Deprecated: use the `status` field inst... |
| `serviceAccount` | `string` | Service account authorized for the instance. |
| `status` | `string` | The status of the instance. |
| `uri` | `string` | URI of a Compute Engine instance. |

### `InterconnectAttachmentInfo`

For display only. Metadata associated with an Interconnect attachment.

| Property | Type | Description |
|----------|------|-------------|
| `cloudRouterUri` | `string` | URI of the Cloud Router to be used for dynamic routing. |
| `displayName` | `string` | Name of an Interconnect attachment. |
| `interconnectUri` | `string` | URI of the Interconnect where the Interconnect attachment is configured. |
| `l2AttachmentMatchedIpAddress` | `string` | Appliance IP address that was matched for L2_DEDICATED attachments. |
| `region` | `string` | Name of a Google Cloud region where the Interconnect attachment is configured. |
| `type` | `string` | The type of interconnect attachment this is. |
| `uri` | `string` | URI of an Interconnect attachment. |

### `IpMasqueradingSkippedInfo`

For display only. Contains information about why IP masquerading was skipped for the packet.

| Property | Type | Description |
|----------|------|-------------|
| `nonMasqueradeRange` | `string` | The matched non-masquerade IP range. Only set if reason is DESTINATION_IP_IN_CONFIGURED_NON_MASQU... |
| `reason` | `string` | Reason why IP masquerading was not applied. |

### `LatencyDistribution`

Describes measured latency distribution.

| Property | Type | Description |
|----------|------|-------------|
| `latencyPercentiles` | `array<LatencyPercentile>` | Representative latency percentiles. |

### `LatencyPercentile`

Latency percentile rank and value.

| Property | Type | Description |
|----------|------|-------------|
| `latencyMicros` | `string` | percent-th percentile of latency observed, in microseconds. Fraction of percent/100 of samples ha... |
| `percent` | `integer` | Percentage of samples this data point applies to. |

### `ListConnectivityTestsResponse`

Response for the `ListConnectivityTests` method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Page token to fetch the next set of Connectivity Tests. |
| `resources` | `array<ConnectivityTest>` | List of Connectivity Tests. |
| `unreachable` | `array<string>` | Locations that could not be reached (when querying all locations with `-`). |

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

### `ListVpcFlowLogsConfigsResponse`

Response for the `ListVpcFlowLogsConfigs` method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Page token to fetch the next set of configurations. |
| `unreachable` | `array<string>` | Locations that could not be reached (when querying all locations with `-`). |
| `vpcFlowLogsConfigs` | `array<VpcFlowLogsConfig>` | List of VPC Flow Log configurations. |

### `LoadBalancerBackend`

For display only. Metadata associated with a specific load balancer backend.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Name of a Compute Engine instance or network endpoint. |
| `healthCheckAllowingFirewallRules` | `array<string>` | A list of firewall rule URIs allowing probes from health check IP ranges. |
| `healthCheckBlockingFirewallRules` | `array<string>` | A list of firewall rule URIs blocking probes from health check IP ranges. |
| `healthCheckFirewallState` | `string` | State of the health check firewall configuration. |
| `uri` | `string` | URI of a Compute Engine instance or network endpoint. |

### `LoadBalancerBackendInfo`

For display only. Metadata associated with the load balancer backend.

| Property | Type | Description |
|----------|------|-------------|
| `backendBucketUri` | `string` | URI of the backend bucket this backend targets (if applicable). |
| `backendServiceUri` | `string` | URI of the backend service this backend belongs to (if applicable). |
| `healthCheckFirewallsConfigState` | `string` | Output only. Health check firewalls configuration state for the backend. This is a result of the ... |
| `healthCheckUri` | `string` | URI of the health check attached to this backend (if applicable). |
| `instanceGroupUri` | `string` | URI of the instance group this backend belongs to (if applicable). |
| `instanceUri` | `string` | URI of the backend instance (if applicable). Populated for instance group backends, and zonal NEG... |
| `name` | `string` | Display name of the backend. For example, it might be an instance name for the instance group bac... |
| `networkEndpointGroupUri` | `string` | URI of the network endpoint group this backend belongs to (if applicable). |
| `pscGoogleApiTarget` | `string` | PSC Google API target this PSC NEG backend targets (if applicable). |
| `pscServiceAttachmentUri` | `string` | URI of the PSC service attachment this PSC NEG backend targets (if applicable). |

### `LoadBalancerInfo`

For display only. Metadata associated with a load balancer.

| Property | Type | Description |
|----------|------|-------------|
| `backendType` | `string` | Type of load balancer's backend configuration. |
| `backendUri` | `string` | Backend configuration URI. |
| `backends` | `array<LoadBalancerBackend>` | Information for the loadbalancer backends. |
| `healthCheckUri` | `string` | URI of the health check for the load balancer. Deprecated and no longer populated as different lo... |
| `loadBalancerType` | `string` | Type of the load balancer. |

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `NatInfo`

For display only. Metadata associated with NAT.

| Property | Type | Description |
|----------|------|-------------|
| `cloudNatGatewayType` | `string` | Type of Cloud NAT gateway. Only valid when `type` is CLOUD_NAT. |
| `natGatewayName` | `string` | The name of Cloud NAT Gateway. Only valid when type is CLOUD_NAT. |
| `networkUri` | `string` | URI of the network where NAT translation takes place. |
| `newDestinationIp` | `string` | Destination IP address after NAT translation. |
| `newDestinationPort` | `integer` | Destination port after NAT translation. Only valid when protocol is TCP or UDP. |
| `newSourceIp` | `string` | Source IP address after NAT translation. |
| `newSourcePort` | `integer` | Source port after NAT translation. Only valid when protocol is TCP or UDP. |
| `oldDestinationIp` | `string` | Destination IP address before NAT translation. |
| `oldDestinationPort` | `integer` | Destination port before NAT translation. Only valid when protocol is TCP or UDP. |
| `oldSourceIp` | `string` | Source IP address before NAT translation. |
| `oldSourcePort` | `integer` | Source port before NAT translation. Only valid when protocol is TCP or UDP. |
| `protocol` | `string` | IP protocol in string format, for example: "TCP", "UDP", "ICMP". |
| `routerUri` | `string` | Uri of the Cloud Router. Only valid when type is CLOUD_NAT. |
| `type` | `string` | Type of NAT. |

### `NetworkInfo`

For display only. Metadata associated with a Compute Engine network.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Name of a Compute Engine network. |
| `matchedIpRange` | `string` | The IP range of the subnet matching the source IP address of the test. |
| `matchedSubnetUri` | `string` | URI of the subnet matching the source IP address of the test. |
| `region` | `string` | The region of the subnet matching the source IP address of the test. |
| `uri` | `string` | URI of a Compute Engine network. |

### `NgfwPacketInspectionInfo`

For display only. Metadata associated with a layer 7 packet inspection by the firewall.

| Property | Type | Description |
|----------|------|-------------|
| `securityProfileGroupUri` | `string` | URI of the security profile group associated with this firewall packet inspection. |

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

Metadata describing an Operation

| Property | Type | Description |
|----------|------|-------------|
| `apiVersion` | `string` | API version. |
| `cancelRequested` | `boolean` | Specifies if cancellation was requested for the operation. |
| `createTime` | `string` | The time the operation was created. |
| `endTime` | `string` | The time the operation finished running. |
| `statusDetail` | `string` | Human-readable status of the operation, if any. |
| `target` | `string` | Target of the operation - for example projects/project-1/locations/global/connectivityTests/test-1 |
| `verb` | `string` | Name of the verb executed by the operation. |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `auditConfigs` | `array<AuditConfig>` | Specifies cloud audit logging configuration for this policy. |
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `ProbingDetails`

Results of active probing from the last run of the test.

| Property | Type | Description |
|----------|------|-------------|
| `abortCause` | `string` | The reason probing was aborted. |
| `destinationEgressLocation` | `EdgeLocation` | The EdgeLocation from which a packet, destined to the internet, will egress the Google network. T... |
| `edgeResponses` | `array<SingleEdgeResponse>` | Probing results for all edge devices. |
| `endpointInfo` | `EndpointInfo` | The source and destination endpoints derived from the test input and used for active probing. |
| `error` | `Status` | Details about an internal failure or the cancellation of active probing. |
| `probedAllDevices` | `boolean` | Whether all relevant edge devices were probed. |
| `probingLatency` | `LatencyDistribution` | Latency as measured by active probing in one direction: from the source to the destination endpoint. |
| `result` | `string` | The overall result of active probing. |
| `sentProbeCount` | `integer` | Number of probes sent. |
| `successfulProbeCount` | `integer` | Number of probes that reached the destination. |
| `verifyTime` | `string` | The time that reachability was assessed through active probing. |

### `ProxyConnectionInfo`

For display only. Metadata associated with ProxyConnection.

| Property | Type | Description |
|----------|------|-------------|
| `networkUri` | `string` | URI of the network where connection is proxied. |
| `newDestinationIp` | `string` | Destination IP address of a new connection. |
| `newDestinationPort` | `integer` | Destination port of a new connection. Only valid when protocol is TCP or UDP. |
| `newSourceIp` | `string` | Source IP address of a new connection. |
| `newSourcePort` | `integer` | Source port of a new connection. Only valid when protocol is TCP or UDP. |
| `oldDestinationIp` | `string` | Destination IP address of an original connection |
| `oldDestinationPort` | `integer` | Destination port of an original connection. Only valid when protocol is TCP or UDP. |
| `oldSourceIp` | `string` | Source IP address of an original connection. |
| `oldSourcePort` | `integer` | Source port of an original connection. Only valid when protocol is TCP or UDP. |
| `protocol` | `string` | IP protocol in string format, for example: "TCP", "UDP", "ICMP". |
| `subnetUri` | `string` | Uri of proxy subnet. |

### `QueryOrgVpcFlowLogsConfigsResponse`

Response for the `QueryVpcFlowLogsConfigs` method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Page token to fetch the next set of configurations. |
| `unreachable` | `array<string>` | Locations that could not be reached (when querying all locations with `-`). |
| `vpcFlowLogsConfigs` | `array<VpcFlowLogsConfig>` | List of VPC Flow Log configurations. |

### `ReachabilityDetails`

Results of the configuration analysis from the last run of the test.

| Property | Type | Description |
|----------|------|-------------|
| `error` | `Status` | The details of a failure or a cancellation of reachability analysis. |
| `result` | `string` | The overall result of the test's configuration analysis. |
| `traces` | `array<Trace>` | Result may contain a list of traces if a test has multiple possible paths in the network, such as... |
| `verifyTime` | `string` | The time of the configuration analysis. |

### `RedisClusterInfo`

For display only. Metadata associated with a Redis Cluster.

| Property | Type | Description |
|----------|------|-------------|
| `discoveryEndpointIpAddress` | `string` | Discovery endpoint IP address of a Redis Cluster. |
| `displayName` | `string` | Name of a Redis Cluster. |
| `location` | `string` | Name of the region in which the Redis Cluster is defined. For example, "us-central1". |
| `networkUri` | `string` | URI of the network containing the Redis Cluster endpoints in format "projects/{project_id}/global... |
| `secondaryEndpointIpAddress` | `string` | Secondary endpoint IP address of a Redis Cluster. |
| `uri` | `string` | URI of a Redis Cluster in format "projects/{project_id}/locations/{location}/clusters/{cluster_id}" |

### `RedisInstanceInfo`

For display only. Metadata associated with a Cloud Redis Instance.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Name of a Cloud Redis Instance. |
| `networkUri` | `string` | URI of a Cloud Redis Instance network. |
| `primaryEndpointIp` | `string` | Primary endpoint IP address of a Cloud Redis Instance. |
| `readEndpointIp` | `string` | Read endpoint IP address of a Cloud Redis Instance (if applicable). |
| `region` | `string` | Region in which the Cloud Redis Instance is defined. |
| `uri` | `string` | URI of a Cloud Redis Instance. |

### `RerunConnectivityTestRequest`

Request for the `RerunConnectivityTest` method.

### `RouteInfo`

For display only. Metadata associated with a Compute Engine route.

| Property | Type | Description |
|----------|------|-------------|
| `advertisedRouteNextHopUri` | `string` | For ADVERTISED routes, the URI of their next hop, i.e. the URI of the hybrid endpoint (VPN tunnel... |
| `advertisedRouteSourceRouterUri` | `string` | For ADVERTISED dynamic routes, the URI of the Cloud Router that advertised the corresponding IP p... |
| `destIpRange` | `string` | Destination IP range of the route. |
| `destPortRanges` | `array<string>` | Destination port ranges of the route. POLICY_BASED routes only. |
| `displayName` | `string` | Name of a route. |
| `instanceTags` | `array<string>` | Instance tags of the route. |
| `nccHubRouteUri` | `string` | For PEERING_SUBNET and PEERING_DYNAMIC routes that are advertised by NCC Hub, the URI of the corr... |
| `nccHubUri` | `string` | URI of the NCC Hub the route is advertised by. PEERING_SUBNET and PEERING_DYNAMIC routes that are... |
| `nccSpokeUri` | `string` | URI of the destination NCC Spoke. PEERING_SUBNET and PEERING_DYNAMIC routes that are advertised b... |
| `networkUri` | `string` | URI of a VPC network where route is located. |
| `nextHop` | `string` | String type of the next hop of the route (for example, "VPN tunnel"). Deprecated in favor of the ... |
| `nextHopNetworkUri` | `string` | URI of a VPC network where the next hop resource is located. |
| `nextHopType` | `string` | Type of next hop. |
| `nextHopUri` | `string` | URI of the next hop resource. |
| `originatingRouteDisplayName` | `string` | For PEERING_SUBNET, PEERING_STATIC and PEERING_DYNAMIC routes, the name of the originating SUBNET... |
| `originatingRouteUri` | `string` | For PEERING_SUBNET and PEERING_STATIC routes, the URI of the originating SUBNET/STATIC route. |
| `priority` | `integer` | Priority of the route. |
| `protocols` | `array<string>` | Protocols of the route. POLICY_BASED routes only. |
| `region` | `string` | Region of the route. DYNAMIC, PEERING_DYNAMIC, POLICY_BASED and ADVERTISED routes only. If set fo... |
| `routeScope` | `string` | Indicates where route is applicable. Deprecated, routes with NCC_HUB scope are not included in th... |
| `routeType` | `string` | Type of route. |
| `srcIpRange` | `string` | Source IP address range of the route. POLICY_BASED routes only. |
| `srcPortRanges` | `array<string>` | Source port ranges of the route. POLICY_BASED routes only. |
| `uri` | `string` | URI of a route. SUBNET, STATIC, PEERING_SUBNET (only for peering network) and POLICY_BASED routes... |

### `ServerlessExternalConnectionInfo`

For display only. Metadata associated with a serverless public connection.

| Property | Type | Description |
|----------|------|-------------|
| `selectedIpAddress` | `string` | Selected starting IP address, from the Google dynamic address pool. |

### `ServerlessNegInfo`

For display only. Metadata associated with the serverless network endpoint group backend.

| Property | Type | Description |
|----------|------|-------------|
| `negUri` | `string` | URI of the serverless network endpoint group. |

### `SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |
| `updateMask` | `string` | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mas... |

### `ShowEffectiveFlowLogsConfigsResponse`

Response for the `ShowEffectiveFlowLogsConfigs` method.

| Property | Type | Description |
|----------|------|-------------|
| `effectiveFlowLogsConfigs` | `array<EffectiveVpcFlowLogsConfig>` | List of Effective Vpc Flow Logs configurations. |
| `nextPageToken` | `string` | Page token to fetch the next set of configurations. |
| `unreachable` | `array<string>` | Locations that could not be reached (when querying all locations with `-`). |

### `SingleEdgeResponse`

Probing results for a single edge device.

| Property | Type | Description |
|----------|------|-------------|
| `destinationEgressLocation` | `EdgeLocation` | The EdgeLocation from which a packet, destined to the internet, will egress the Google network. T... |
| `destinationRouter` | `string` | Router name in the format '{router}.{metroshard}'. For example: pf01.aaa01, pr02.aaa01. |
| `probingLatency` | `LatencyDistribution` | Latency as measured by active probing in one direction: from the source to the destination endpoint. |
| `result` | `string` | The overall result of active probing for this egress device. |
| `sentProbeCount` | `integer` | Number of probes sent. |
| `successfulProbeCount` | `integer` | Number of probes that reached the destination. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `Step`

A simulated forwarding path is composed of multiple steps. Each step has a well-defined state and an associated configuration.

| Property | Type | Description |
|----------|------|-------------|
| `abort` | `AbortInfo` | Display information of the final state "abort" and reason. |
| `appEngineVersion` | `AppEngineVersionInfo` | Display information of an App Engine service version. |
| `causesDrop` | `boolean` | This is a step that leads to the final state Drop. |
| `cloudFunction` | `CloudFunctionInfo` | Display information of a Cloud Function. |
| `cloudRunRevision` | `CloudRunRevisionInfo` | Display information of a Cloud Run revision. |
| `cloudSqlInstance` | `CloudSQLInstanceInfo` | Display information of a Cloud SQL instance. |
| `deliver` | `DeliverInfo` | Display information of the final state "deliver" and reason. |
| `description` | `string` | A description of the step. Usually this is a summary of the state. |
| `directVpcEgressConnection` | `DirectVpcEgressConnectionInfo` | Display information of a serverless direct VPC egress connection. |
| `drop` | `DropInfo` | Display information of the final state "drop" and reason. |
| `endpoint` | `EndpointInfo` | Display information of the source and destination under analysis. The endpoint information in an ... |
| `firewall` | `FirewallInfo` | Display information of a Compute Engine firewall rule. |
| `forward` | `ForwardInfo` | Display information of the final state "forward" and reason. |
| `forwardingRule` | `ForwardingRuleInfo` | Display information of a Compute Engine forwarding rule. |
| `gkeMaster` | `GKEMasterInfo` | Display information of a Google Kubernetes Engine cluster master. |
| `gkePod` | `GkePodInfo` | Display information of a Google Kubernetes Engine Pod. |
| `googleService` | `GoogleServiceInfo` | Display information of a Google service |
| `hybridSubnet` | `HybridSubnetInfo` | Display information of a hybrid subnet. |
| `instance` | `InstanceInfo` | Display information of a Compute Engine instance. |
| `interconnectAttachment` | `InterconnectAttachmentInfo` | Display information of an interconnect attachment. |
| `ipMasqueradingSkipped` | `IpMasqueradingSkippedInfo` | Display information of the reason why GKE Pod IP masquerading was skipped. |
| `loadBalancer` | `LoadBalancerInfo` | Display information of the load balancers. Deprecated in favor of the `load_balancer_backend_info... |
| `loadBalancerBackendInfo` | `LoadBalancerBackendInfo` | Display information of a specific load balancer backend. |
| `nat` | `NatInfo` | Display information of a NAT. |
| `network` | `NetworkInfo` | Display information of a Google Cloud network. |
| `ngfwPacketInspection` | `NgfwPacketInspectionInfo` | Display information of a layer 7 packet inspection by the firewall. |
| `projectId` | `string` | Project ID that contains the configuration this step is validating. |
| `proxyConnection` | `ProxyConnectionInfo` | Display information of a ProxyConnection. |
| `redisCluster` | `RedisClusterInfo` | Display information of a Redis Cluster. |
| `redisInstance` | `RedisInstanceInfo` | Display information of a Redis Instance. |
| `route` | `RouteInfo` | Display information of a Compute Engine route. |
| `serverlessExternalConnection` | `ServerlessExternalConnectionInfo` | Display information of a serverless public (external) connection. |
| `serverlessNeg` | `ServerlessNegInfo` | Display information of a Serverless network endpoint group backend. Used only for return traces. |
| `state` | `string` | Each step is in one of the pre-defined states. |
| `storageBucket` | `StorageBucketInfo` | Display information of a Storage Bucket. Used only for return traces. |
| `vpcConnector` | `VpcConnectorInfo` | Display information of a VPC connector. |
| `vpnGateway` | `VpnGatewayInfo` | Display information of a Compute Engine VPN gateway. |
| `vpnTunnel` | `VpnTunnelInfo` | Display information of a Compute Engine VPN tunnel. |

### `StorageBucketInfo`

For display only. Metadata associated with Storage Bucket.

| Property | Type | Description |
|----------|------|-------------|
| `bucket` | `string` | Cloud Storage Bucket name. |

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

### `Trace`

Trace represents one simulated packet forwarding path. * Each trace contains multiple ordered steps. * Each step is in a particular state with associated configuration. * State is categorized as final or non-final states. * Each final state has a reason associated. * Each trace must end with a final state (the last step). ``` |---------------------Trace----------------------| Step1(State) Step2(State) --- StepN(State(final)) ```

| Property | Type | Description |
|----------|------|-------------|
| `endpointInfo` | `EndpointInfo` | Derived from the source and destination endpoints definition specified by user request, and valid... |
| `forwardTraceId` | `integer` | ID of trace. For forward traces, this ID is unique for each trace. For return traces, it matches ... |
| `steps` | `array<Step>` | A trace of a test contains multiple steps from the initial state to the final state (delivered, d... |

### `VpcConnectorInfo`

For display only. Metadata associated with a VPC connector.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Name of a VPC connector. |
| `location` | `string` | Location in which the VPC connector is deployed. |
| `uri` | `string` | URI of a VPC connector. |

### `VpcFlowLogsConfig`

A configuration to generate VPC Flow Logs.

| Property | Type | Description |
|----------|------|-------------|
| `aggregationInterval` | `string` | Optional. The aggregation interval for the logs. Default value is INTERVAL_5_SEC. |
| `createTime` | `string` | Output only. The time the config was created. |
| `crossProjectMetadata` | `string` | Optional. Determines whether to include cross project annotations in the logs. This field is avai... |
| `description` | `string` | Optional. The user-supplied description of the VPC Flow Logs configuration. Maximum of 512 charac... |
| `filterExpr` | `string` | Optional. Export filter used to define which VPC Flow Logs should be logged. |
| `flowSampling` | `number` | Optional. The value of the field must be in (0, 1]. The sampling rate of VPC Flow Logs where 1.0 ... |
| `interconnectAttachment` | `string` | Traffic will be logged from the Interconnect Attachment. Format: projects/{project_id}/regions/{r... |
| `labels` | `object` | Optional. Resource labels to represent user-provided metadata. |
| `metadata` | `string` | Optional. Configures whether all, none or a subset of metadata fields should be added to the repo... |
| `metadataFields` | `array<string>` | Optional. Custom metadata fields to include in the reported VPC flow logs. Can only be specified ... |
| `name` | `string` | Identifier. Unique name of the configuration. The name can have one of the following forms: - For... |
| `network` | `string` | Traffic will be logged from VMs, VPN tunnels and Interconnect Attachments within the network. For... |
| `state` | `string` | Optional. The state of the VPC Flow Log configuration. Default value is ENABLED. When creating a ... |
| `subnet` | `string` | Traffic will be logged from VMs within the subnetwork. Format: projects/{project_id}/regions/{reg... |
| `targetResourceState` | `string` | Output only. Describes the state of the configured target resource for diagnostic purposes. |
| `updateTime` | `string` | Output only. The time the config was updated. |
| `vpnTunnel` | `string` | Traffic will be logged from the VPN Tunnel. Format: projects/{project_id}/regions/{region}/vpnTun... |

### `VpnGatewayInfo`

For display only. Metadata associated with a Compute Engine VPN gateway.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Name of a VPN gateway. |
| `ipAddress` | `string` | IP address of the VPN gateway. |
| `networkUri` | `string` | URI of a Compute Engine network where the VPN gateway is configured. |
| `region` | `string` | Name of a Google Cloud region where this VPN gateway is configured. |
| `uri` | `string` | URI of a VPN gateway. |
| `vpnTunnelUri` | `string` | A VPN tunnel that is associated with this VPN gateway. There may be multiple VPN tunnels configur... |

### `VpnTunnelInfo`

For display only. Metadata associated with a Compute Engine VPN tunnel.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Name of a VPN tunnel. |
| `networkUri` | `string` | URI of a Compute Engine network where the VPN tunnel is configured. |
| `region` | `string` | Name of a Google Cloud region where this VPN tunnel is configured. |
| `remoteGateway` | `string` | URI of a VPN gateway at remote end of the tunnel. |
| `remoteGatewayIp` | `string` | Remote VPN gateway's IP address. |
| `routingType` | `string` | Type of the routing policy. |
| `sourceGateway` | `string` | URI of the VPN gateway at local end of the tunnel. |
| `sourceGatewayIp` | `string` | Local VPN gateway's IP address. |
| `uri` | `string` | URI of a VPN tunnel. |

