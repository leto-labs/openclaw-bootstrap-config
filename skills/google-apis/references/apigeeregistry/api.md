# Apigee Registry API - API Reference

**Version**: `v1` | **Methods**: 101 | **Schemas**: 34

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `apigeeregistry.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. |
| `apigeeregistry.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `apigeeregistry.projects.locations.documents.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `apigeeregistry.projects.locations.documents.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `apigeeregistry.projects.locations.documents.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `apigeeregistry.projects.locations.apis.delete` | DELETE | `v1/{+name}` | Removes a specified API and all of the resources that it owns. |
| `apigeeregistry.projects.locations.apis.get` | GET | `v1/{+name}` | Returns a specified API. |
| `apigeeregistry.projects.locations.apis.list` | GET | `v1/{+parent}/apis` | Returns matching APIs. |
| `apigeeregistry.projects.locations.apis.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `apigeeregistry.projects.locations.apis.create` | POST | `v1/{+parent}/apis` | Creates a specified API. |
| `apigeeregistry.projects.locations.apis.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `apigeeregistry.projects.locations.apis.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `apigeeregistry.projects.locations.apis.patch` | PATCH | `v1/{+name}` | Used to modify a specified API. |
| `apigeeregistry.projects.locations.apis.versions.delete` | DELETE | `v1/{+name}` | Removes a specified version and all of the resources that it owns. |
| `apigeeregistry.projects.locations.apis.versions.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `apigeeregistry.projects.locations.apis.versions.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `apigeeregistry.projects.locations.apis.versions.patch` | PATCH | `v1/{+name}` | Used to modify a specified version. |
| `apigeeregistry.projects.locations.apis.versions.create` | POST | `v1/{+parent}/versions` | Creates a specified version. |
| `apigeeregistry.projects.locations.apis.versions.get` | GET | `v1/{+name}` | Returns a specified version. |
| `apigeeregistry.projects.locations.apis.versions.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `apigeeregistry.projects.locations.apis.versions.list` | GET | `v1/{+parent}/versions` | Returns matching versions. |
| `apigeeregistry.projects.locations.apis.versions.specs.list` | GET | `v1/{+parent}/specs` | Returns matching specs. |
| `apigeeregistry.projects.locations.apis.versions.specs.create` | POST | `v1/{+parent}/specs` | Creates a specified spec. |
| `apigeeregistry.projects.locations.apis.versions.specs.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `apigeeregistry.projects.locations.apis.versions.specs.delete` | DELETE | `v1/{+name}` | Removes a specified spec, all revisions, and all child resources (e.g., artifacts). |
| `apigeeregistry.projects.locations.apis.versions.specs.get` | GET | `v1/{+name}` | Returns a specified spec. |
| `apigeeregistry.projects.locations.apis.versions.specs.rollback` | POST | `v1/{+name}:rollback` | Sets the current revision to a specified prior revision. Note that this creates a new revision wi... |
| `apigeeregistry.projects.locations.apis.versions.specs.patch` | PATCH | `v1/{+name}` | Used to modify a specified spec. |
| `apigeeregistry.projects.locations.apis.versions.specs.listRevisions` | GET | `v1/{+name}:listRevisions` | Lists all revisions of a spec. Revisions are returned in descending order of revision creation time. |
| `apigeeregistry.projects.locations.apis.versions.specs.tagRevision` | POST | `v1/{+name}:tagRevision` | Adds a tag to a specified revision of a spec. |
| `apigeeregistry.projects.locations.apis.versions.specs.getContents` | GET | `v1/{+name}:getContents` | Returns the contents of a specified spec. If specs are stored with GZip compression, the default ... |
| `apigeeregistry.projects.locations.apis.versions.specs.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `apigeeregistry.projects.locations.apis.versions.specs.deleteRevision` | DELETE | `v1/{+name}:deleteRevision` | Deletes a revision of a spec. |
| `apigeeregistry.projects.locations.apis.versions.specs.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `apigeeregistry.projects.locations.apis.versions.specs.artifacts.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `apigeeregistry.projects.locations.apis.versions.specs.artifacts.replaceArtifact` | PUT | `v1/{+name}` | Used to replace a specified artifact. |
| `apigeeregistry.projects.locations.apis.versions.specs.artifacts.getContents` | GET | `v1/{+name}:getContents` | Returns the contents of a specified artifact. If artifacts are stored with GZip compression, the ... |
| `apigeeregistry.projects.locations.apis.versions.specs.artifacts.create` | POST | `v1/{+parent}/artifacts` | Creates a specified artifact. |
| `apigeeregistry.projects.locations.apis.versions.specs.artifacts.list` | GET | `v1/{+parent}/artifacts` | Returns matching artifacts. |
| `apigeeregistry.projects.locations.apis.versions.specs.artifacts.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `apigeeregistry.projects.locations.apis.versions.specs.artifacts.get` | GET | `v1/{+name}` | Returns a specified artifact. |
| `apigeeregistry.projects.locations.apis.versions.specs.artifacts.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `apigeeregistry.projects.locations.apis.versions.specs.artifacts.delete` | DELETE | `v1/{+name}` | Removes a specified artifact. |
| `apigeeregistry.projects.locations.apis.versions.artifacts.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `apigeeregistry.projects.locations.apis.versions.artifacts.getContents` | GET | `v1/{+name}:getContents` | Returns the contents of a specified artifact. If artifacts are stored with GZip compression, the ... |
| `apigeeregistry.projects.locations.apis.versions.artifacts.list` | GET | `v1/{+parent}/artifacts` | Returns matching artifacts. |
| `apigeeregistry.projects.locations.apis.versions.artifacts.delete` | DELETE | `v1/{+name}` | Removes a specified artifact. |
| `apigeeregistry.projects.locations.apis.versions.artifacts.replaceArtifact` | PUT | `v1/{+name}` | Used to replace a specified artifact. |
| `apigeeregistry.projects.locations.apis.versions.artifacts.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `apigeeregistry.projects.locations.apis.versions.artifacts.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `apigeeregistry.projects.locations.apis.versions.artifacts.create` | POST | `v1/{+parent}/artifacts` | Creates a specified artifact. |
| `apigeeregistry.projects.locations.apis.versions.artifacts.get` | GET | `v1/{+name}` | Returns a specified artifact. |
| `apigeeregistry.projects.locations.apis.artifacts.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `apigeeregistry.projects.locations.apis.artifacts.get` | GET | `v1/{+name}` | Returns a specified artifact. |
| `apigeeregistry.projects.locations.apis.artifacts.getContents` | GET | `v1/{+name}:getContents` | Returns the contents of a specified artifact. If artifacts are stored with GZip compression, the ... |
| `apigeeregistry.projects.locations.apis.artifacts.replaceArtifact` | PUT | `v1/{+name}` | Used to replace a specified artifact. |
| `apigeeregistry.projects.locations.apis.artifacts.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `apigeeregistry.projects.locations.apis.artifacts.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `apigeeregistry.projects.locations.apis.artifacts.create` | POST | `v1/{+parent}/artifacts` | Creates a specified artifact. |
| `apigeeregistry.projects.locations.apis.artifacts.list` | GET | `v1/{+parent}/artifacts` | Returns matching artifacts. |
| `apigeeregistry.projects.locations.apis.artifacts.delete` | DELETE | `v1/{+name}` | Removes a specified artifact. |
| `apigeeregistry.projects.locations.apis.deployments.rollback` | POST | `v1/{+name}:rollback` | Sets the current revision to a specified prior revision. Note that this creates a new revision wi... |
| `apigeeregistry.projects.locations.apis.deployments.delete` | DELETE | `v1/{+name}` | Removes a specified deployment, all revisions, and all child resources (e.g., artifacts). |
| `apigeeregistry.projects.locations.apis.deployments.tagRevision` | POST | `v1/{+name}:tagRevision` | Adds a tag to a specified revision of a deployment. |
| `apigeeregistry.projects.locations.apis.deployments.get` | GET | `v1/{+name}` | Returns a specified deployment. |
| `apigeeregistry.projects.locations.apis.deployments.listRevisions` | GET | `v1/{+name}:listRevisions` | Lists all revisions of a deployment. Revisions are returned in descending order of revision creat... |
| `apigeeregistry.projects.locations.apis.deployments.list` | GET | `v1/{+parent}/deployments` | Returns matching deployments. |
| `apigeeregistry.projects.locations.apis.deployments.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `apigeeregistry.projects.locations.apis.deployments.create` | POST | `v1/{+parent}/deployments` | Creates a specified deployment. |
| `apigeeregistry.projects.locations.apis.deployments.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `apigeeregistry.projects.locations.apis.deployments.patch` | PATCH | `v1/{+name}` | Used to modify a specified deployment. |
| `apigeeregistry.projects.locations.apis.deployments.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `apigeeregistry.projects.locations.apis.deployments.deleteRevision` | DELETE | `v1/{+name}:deleteRevision` | Deletes a revision of a deployment. |
| `apigeeregistry.projects.locations.apis.deployments.artifacts.replaceArtifact` | PUT | `v1/{+name}` | Used to replace a specified artifact. |
| `apigeeregistry.projects.locations.apis.deployments.artifacts.get` | GET | `v1/{+name}` | Returns a specified artifact. |
| `apigeeregistry.projects.locations.apis.deployments.artifacts.list` | GET | `v1/{+parent}/artifacts` | Returns matching artifacts. |
| `apigeeregistry.projects.locations.apis.deployments.artifacts.delete` | DELETE | `v1/{+name}` | Removes a specified artifact. |
| `apigeeregistry.projects.locations.apis.deployments.artifacts.getContents` | GET | `v1/{+name}:getContents` | Returns the contents of a specified artifact. If artifacts are stored with GZip compression, the ... |
| `apigeeregistry.projects.locations.apis.deployments.artifacts.create` | POST | `v1/{+parent}/artifacts` | Creates a specified artifact. |
| `apigeeregistry.projects.locations.runtime.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `apigeeregistry.projects.locations.runtime.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `apigeeregistry.projects.locations.runtime.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `apigeeregistry.projects.locations.instances.get` | GET | `v1/{+name}` | Gets details of a single Instance. |
| `apigeeregistry.projects.locations.instances.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `apigeeregistry.projects.locations.instances.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `apigeeregistry.projects.locations.instances.create` | POST | `v1/{+parent}/instances` | Provisions instance resources for the Registry. |
| `apigeeregistry.projects.locations.instances.delete` | DELETE | `v1/{+name}` | Deletes the Registry instance. |
| `apigeeregistry.projects.locations.instances.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `apigeeregistry.projects.locations.artifacts.getContents` | GET | `v1/{+name}:getContents` | Returns the contents of a specified artifact. If artifacts are stored with GZip compression, the ... |
| `apigeeregistry.projects.locations.artifacts.list` | GET | `v1/{+parent}/artifacts` | Returns matching artifacts. |
| `apigeeregistry.projects.locations.artifacts.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `apigeeregistry.projects.locations.artifacts.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `apigeeregistry.projects.locations.artifacts.create` | POST | `v1/{+parent}/artifacts` | Creates a specified artifact. |
| `apigeeregistry.projects.locations.artifacts.delete` | DELETE | `v1/{+name}` | Removes a specified artifact. |
| `apigeeregistry.projects.locations.artifacts.replaceArtifact` | PUT | `v1/{+name}` | Used to replace a specified artifact. |
| `apigeeregistry.projects.locations.artifacts.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `apigeeregistry.projects.locations.artifacts.get` | GET | `v1/{+name}` | Returns a specified artifact. |
| `apigeeregistry.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `apigeeregistry.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `apigeeregistry.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `apigeeregistry.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |

### `apigeeregistry.projects.locations.list`

**GET** `v1/{+name}/locations`

Lists information about the supported locations for this service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource that owns the locations collection, if applicable. |
| `filter` | `string` | query | No | A filter to narrow down results to a preferred subset. The filtering language accepts strings like `"displayName=toky... |
| `pageSize` | `integer` | query | No | The maximum number of results to return. If not set, the service selects a default. |
| `pageToken` | `string` | query | No | A page token received from the `next_page_token` field in the response. Send that page token to receive the subsequen... |

**Response**: `ListLocationsResponse`

```typescript
const res = await apigeeregistry.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await apigeeregistry.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.documents.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await apigeeregistry.documents.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.documents.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await apigeeregistry.documents.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.documents.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await apigeeregistry.documents.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.delete`

**DELETE** `v1/{+name}`

Removes a specified API and all of the resources that it owns.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the API to delete. Format: `projects/*/locations/*/apis/*` |
| `force` | `boolean` | query | No | If set to true, any child resources will also be deleted. (Otherwise, the request will only work if there are no chil... |

**Response**: `Empty`

```typescript
const res = await apigeeregistry.apis.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.get`

**GET** `v1/{+name}`

Returns a specified API.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the API to retrieve. Format: `projects/*/locations/*/apis/*` |

**Response**: `Api`

```typescript
const res = await apigeeregistry.apis.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.list`

**GET** `v1/{+parent}/apis`

Returns matching APIs.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of APIs. Format: `projects/*/locations/*` |
| `filter` | `string` | query | No | An expression that can be used to filter the list. Filters use the Common Expression Language and can refer to all me... |
| `orderBy` | `string` | query | No | A comma-separated list of fields, e.g. "foo,bar" Fields can be sorted in descending order using the "desc" identifier... |
| `pageSize` | `integer` | query | No | The maximum number of APIs to return. The service may return fewer than this value. If unspecified, at most 50 values... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListApis` call. Provide this to retrieve the subsequent page. When paginating... |

**Response**: `ListApisResponse`

```typescript
const res = await apigeeregistry.apis.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await apigeeregistry.apis.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.create`

**POST** `v1/{+parent}/apis`

Creates a specified API.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of APIs. Format: `projects/*/locations/*` |
| `apiId` | `string` | query | No | Required. The ID to use for the API, which will become the final component of the API's resource name. This value sho... |

**Request body**: `Api`

**Response**: `Api`

```typescript
const res = await apigeeregistry.apis.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await apigeeregistry.apis.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await apigeeregistry.apis.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.patch`

**PATCH** `v1/{+name}`

Used to modify a specified API.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name. |
| `allowMissing` | `boolean` | query | No | If set to true, and the API is not found, a new API will be created. In this situation, `update_mask` is ignored. |
| `updateMask` | `string` | query | No | The list of fields to be updated. If omitted, all fields are updated that are set in the request message (fields set ... |

**Request body**: `Api`

**Response**: `Api`

```typescript
const res = await apigeeregistry.apis.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.versions.delete`

**DELETE** `v1/{+name}`

Removes a specified version and all of the resources that it owns.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the version to delete. Format: `projects/*/locations/*/apis/*/versions/*` |
| `force` | `boolean` | query | No | If set to true, any child resources will also be deleted. (Otherwise, the request will only work if there are no chil... |

**Response**: `Empty`

```typescript
const res = await apigeeregistry.versions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.versions.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await apigeeregistry.versions.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.versions.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await apigeeregistry.versions.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.versions.patch`

**PATCH** `v1/{+name}`

Used to modify a specified version.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name. |
| `allowMissing` | `boolean` | query | No | If set to true, and the version is not found, a new version will be created. In this situation, `update_mask` is igno... |
| `updateMask` | `string` | query | No | The list of fields to be updated. If omitted, all fields are updated that are set in the request message (fields set ... |

**Request body**: `ApiVersion`

**Response**: `ApiVersion`

```typescript
const res = await apigeeregistry.versions.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.versions.create`

**POST** `v1/{+parent}/versions`

Creates a specified version.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of versions. Format: `projects/*/locations/*/apis/*` |
| `apiVersionId` | `string` | query | No | Required. The ID to use for the version, which will become the final component of the version's resource name. This v... |

**Request body**: `ApiVersion`

**Response**: `ApiVersion`

```typescript
const res = await apigeeregistry.versions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.versions.get`

**GET** `v1/{+name}`

Returns a specified version.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the version to retrieve. Format: `projects/*/locations/*/apis/*/versions/*` |

**Response**: `ApiVersion`

```typescript
const res = await apigeeregistry.versions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.versions.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await apigeeregistry.versions.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.versions.list`

**GET** `v1/{+parent}/versions`

Returns matching versions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of versions. Format: `projects/*/locations/*/apis/*` |
| `filter` | `string` | query | No | An expression that can be used to filter the list. Filters use the Common Expression Language and can refer to all me... |
| `orderBy` | `string` | query | No | A comma-separated list of fields, e.g. "foo,bar" Fields can be sorted in descending order using the "desc" identifier... |
| `pageSize` | `integer` | query | No | The maximum number of versions to return. The service may return fewer than this value. If unspecified, at most 50 va... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListApiVersions` call. Provide this to retrieve the subsequent page. When pag... |

**Response**: `ListApiVersionsResponse`

```typescript
const res = await apigeeregistry.versions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.versions.specs.list`

**GET** `v1/{+parent}/specs`

Returns matching specs.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of specs. Format: `projects/*/locations/*/apis/*/versions/*` |
| `filter` | `string` | query | No | An expression that can be used to filter the list. Filters use the Common Expression Language and can refer to all me... |
| `orderBy` | `string` | query | No | A comma-separated list of fields, e.g. "foo,bar" Fields can be sorted in descending order using the "desc" identifier... |
| `pageSize` | `integer` | query | No | The maximum number of specs to return. The service may return fewer than this value. If unspecified, at most 50 value... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListApiSpecs` call. Provide this to retrieve the subsequent page. When pagina... |

**Response**: `ListApiSpecsResponse`

```typescript
const res = await apigeeregistry.specs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.versions.specs.create`

**POST** `v1/{+parent}/specs`

Creates a specified spec.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of specs. Format: `projects/*/locations/*/apis/*/versions/*` |
| `apiSpecId` | `string` | query | No | Required. The ID to use for the spec, which will become the final component of the spec's resource name. This value s... |

**Request body**: `ApiSpec`

**Response**: `ApiSpec`

```typescript
const res = await apigeeregistry.specs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.versions.specs.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await apigeeregistry.specs.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.versions.specs.delete`

**DELETE** `v1/{+name}`

Removes a specified spec, all revisions, and all child resources (e.g., artifacts).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the spec to delete. Format: `projects/*/locations/*/apis/*/versions/*/specs/*` |
| `force` | `boolean` | query | No | If set to true, any child resources will also be deleted. (Otherwise, the request will only work if there are no chil... |

**Response**: `Empty`

```typescript
const res = await apigeeregistry.specs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.versions.specs.get`

**GET** `v1/{+name}`

Returns a specified spec.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the spec to retrieve. Format: `projects/*/locations/*/apis/*/versions/*/specs/*` |

**Response**: `ApiSpec`

```typescript
const res = await apigeeregistry.specs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.versions.specs.rollback`

**POST** `v1/{+name}:rollback`

Sets the current revision to a specified prior revision. Note that this creates a new revision with a new revision ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The spec being rolled back. |

**Request body**: `RollbackApiSpecRequest`

**Response**: `ApiSpec`

```typescript
const res = await apigeeregistry.specs.rollback({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.versions.specs.patch`

**PATCH** `v1/{+name}`

Used to modify a specified spec.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name. |
| `allowMissing` | `boolean` | query | No | If set to true, and the spec is not found, a new spec will be created. In this situation, `update_mask` is ignored. |
| `updateMask` | `string` | query | No | The list of fields to be updated. If omitted, all fields are updated that are set in the request message (fields set ... |

**Request body**: `ApiSpec`

**Response**: `ApiSpec`

```typescript
const res = await apigeeregistry.specs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.versions.specs.listRevisions`

**GET** `v1/{+name}:listRevisions`

Lists all revisions of a spec. Revisions are returned in descending order of revision creation time.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the spec to list revisions for. |
| `filter` | `string` | query | No | An expression that can be used to filter the list. Filters use the Common Expression Language and can refer to all me... |
| `pageSize` | `integer` | query | No | The maximum number of revisions to return per page. |
| `pageToken` | `string` | query | No | The page token, received from a previous ListApiSpecRevisions call. Provide this to retrieve the subsequent page. |

**Response**: `ListApiSpecRevisionsResponse`

```typescript
const res = await apigeeregistry.specs.listRevisions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.versions.specs.tagRevision`

**POST** `v1/{+name}:tagRevision`

Adds a tag to a specified revision of a spec.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the spec to be tagged, including the revision ID is optional. If a revision is not specified, i... |

**Request body**: `TagApiSpecRevisionRequest`

**Response**: `ApiSpec`

```typescript
const res = await apigeeregistry.specs.tagRevision({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.versions.specs.getContents`

**GET** `v1/{+name}:getContents`

Returns the contents of a specified spec. If specs are stored with GZip compression, the default behavior is to return the spec uncompressed (the mime_type response field indicates the exact format returned).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the spec whose contents should be retrieved. Format: `projects/*/locations/*/apis/*/versions/*/... |

**Response**: `HttpBody`

```typescript
const res = await apigeeregistry.specs.getContents({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.versions.specs.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await apigeeregistry.specs.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.versions.specs.deleteRevision`

**DELETE** `v1/{+name}:deleteRevision`

Deletes a revision of a spec.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the spec revision to be deleted, with a revision ID explicitly included. Example: `projects/sam... |

**Response**: `ApiSpec`

```typescript
const res = await apigeeregistry.specs.deleteRevision({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.versions.specs.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await apigeeregistry.specs.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.versions.specs.artifacts.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await apigeeregistry.artifacts.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.versions.specs.artifacts.replaceArtifact`

**PUT** `v1/{+name}`

Used to replace a specified artifact.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name. |

**Request body**: `Artifact`

**Response**: `Artifact`

```typescript
const res = await apigeeregistry.artifacts.replaceArtifact({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.versions.specs.artifacts.getContents`

**GET** `v1/{+name}:getContents`

Returns the contents of a specified artifact. If artifacts are stored with GZip compression, the default behavior is to return the artifact uncompressed (the mime_type response field indicates the exact format returned).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the artifact whose contents should be retrieved. Format: `{parent}/artifacts/*` |

**Response**: `HttpBody`

```typescript
const res = await apigeeregistry.artifacts.getContents({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.versions.specs.artifacts.create`

**POST** `v1/{+parent}/artifacts`

Creates a specified artifact.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of artifacts. Format: `{parent}` |
| `artifactId` | `string` | query | No | Required. The ID to use for the artifact, which will become the final component of the artifact's resource name. This... |

**Request body**: `Artifact`

**Response**: `Artifact`

```typescript
const res = await apigeeregistry.artifacts.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.versions.specs.artifacts.list`

**GET** `v1/{+parent}/artifacts`

Returns matching artifacts.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of artifacts. Format: `{parent}` |
| `filter` | `string` | query | No | An expression that can be used to filter the list. Filters use the Common Expression Language and can refer to all me... |
| `orderBy` | `string` | query | No | A comma-separated list of fields, e.g. "foo,bar" Fields can be sorted in descending order using the "desc" identifier... |
| `pageSize` | `integer` | query | No | The maximum number of artifacts to return. The service may return fewer than this value. If unspecified, at most 50 v... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListArtifacts` call. Provide this to retrieve the subsequent page. When pagin... |

**Response**: `ListArtifactsResponse`

```typescript
const res = await apigeeregistry.artifacts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.versions.specs.artifacts.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await apigeeregistry.artifacts.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.versions.specs.artifacts.get`

**GET** `v1/{+name}`

Returns a specified artifact.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the artifact to retrieve. Format: `{parent}/artifacts/*` |

**Response**: `Artifact`

```typescript
const res = await apigeeregistry.artifacts.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.versions.specs.artifacts.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await apigeeregistry.artifacts.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.versions.specs.artifacts.delete`

**DELETE** `v1/{+name}`

Removes a specified artifact.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the artifact to delete. Format: `{parent}/artifacts/*` |

**Response**: `Empty`

```typescript
const res = await apigeeregistry.artifacts.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.versions.artifacts.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await apigeeregistry.artifacts.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.versions.artifacts.getContents`

**GET** `v1/{+name}:getContents`

Returns the contents of a specified artifact. If artifacts are stored with GZip compression, the default behavior is to return the artifact uncompressed (the mime_type response field indicates the exact format returned).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the artifact whose contents should be retrieved. Format: `{parent}/artifacts/*` |

**Response**: `HttpBody`

```typescript
const res = await apigeeregistry.artifacts.getContents({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.versions.artifacts.list`

**GET** `v1/{+parent}/artifacts`

Returns matching artifacts.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of artifacts. Format: `{parent}` |
| `filter` | `string` | query | No | An expression that can be used to filter the list. Filters use the Common Expression Language and can refer to all me... |
| `orderBy` | `string` | query | No | A comma-separated list of fields, e.g. "foo,bar" Fields can be sorted in descending order using the "desc" identifier... |
| `pageSize` | `integer` | query | No | The maximum number of artifacts to return. The service may return fewer than this value. If unspecified, at most 50 v... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListArtifacts` call. Provide this to retrieve the subsequent page. When pagin... |

**Response**: `ListArtifactsResponse`

```typescript
const res = await apigeeregistry.artifacts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.versions.artifacts.delete`

**DELETE** `v1/{+name}`

Removes a specified artifact.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the artifact to delete. Format: `{parent}/artifacts/*` |

**Response**: `Empty`

```typescript
const res = await apigeeregistry.artifacts.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.versions.artifacts.replaceArtifact`

**PUT** `v1/{+name}`

Used to replace a specified artifact.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name. |

**Request body**: `Artifact`

**Response**: `Artifact`

```typescript
const res = await apigeeregistry.artifacts.replaceArtifact({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.versions.artifacts.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await apigeeregistry.artifacts.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.versions.artifacts.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await apigeeregistry.artifacts.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.versions.artifacts.create`

**POST** `v1/{+parent}/artifacts`

Creates a specified artifact.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of artifacts. Format: `{parent}` |
| `artifactId` | `string` | query | No | Required. The ID to use for the artifact, which will become the final component of the artifact's resource name. This... |

**Request body**: `Artifact`

**Response**: `Artifact`

```typescript
const res = await apigeeregistry.artifacts.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.versions.artifacts.get`

**GET** `v1/{+name}`

Returns a specified artifact.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the artifact to retrieve. Format: `{parent}/artifacts/*` |

**Response**: `Artifact`

```typescript
const res = await apigeeregistry.artifacts.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.artifacts.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await apigeeregistry.artifacts.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.artifacts.get`

**GET** `v1/{+name}`

Returns a specified artifact.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the artifact to retrieve. Format: `{parent}/artifacts/*` |

**Response**: `Artifact`

```typescript
const res = await apigeeregistry.artifacts.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.artifacts.getContents`

**GET** `v1/{+name}:getContents`

Returns the contents of a specified artifact. If artifacts are stored with GZip compression, the default behavior is to return the artifact uncompressed (the mime_type response field indicates the exact format returned).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the artifact whose contents should be retrieved. Format: `{parent}/artifacts/*` |

**Response**: `HttpBody`

```typescript
const res = await apigeeregistry.artifacts.getContents({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.artifacts.replaceArtifact`

**PUT** `v1/{+name}`

Used to replace a specified artifact.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name. |

**Request body**: `Artifact`

**Response**: `Artifact`

```typescript
const res = await apigeeregistry.artifacts.replaceArtifact({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.artifacts.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await apigeeregistry.artifacts.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.artifacts.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await apigeeregistry.artifacts.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.artifacts.create`

**POST** `v1/{+parent}/artifacts`

Creates a specified artifact.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of artifacts. Format: `{parent}` |
| `artifactId` | `string` | query | No | Required. The ID to use for the artifact, which will become the final component of the artifact's resource name. This... |

**Request body**: `Artifact`

**Response**: `Artifact`

```typescript
const res = await apigeeregistry.artifacts.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.artifacts.list`

**GET** `v1/{+parent}/artifacts`

Returns matching artifacts.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of artifacts. Format: `{parent}` |
| `filter` | `string` | query | No | An expression that can be used to filter the list. Filters use the Common Expression Language and can refer to all me... |
| `orderBy` | `string` | query | No | A comma-separated list of fields, e.g. "foo,bar" Fields can be sorted in descending order using the "desc" identifier... |
| `pageSize` | `integer` | query | No | The maximum number of artifacts to return. The service may return fewer than this value. If unspecified, at most 50 v... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListArtifacts` call. Provide this to retrieve the subsequent page. When pagin... |

**Response**: `ListArtifactsResponse`

```typescript
const res = await apigeeregistry.artifacts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.artifacts.delete`

**DELETE** `v1/{+name}`

Removes a specified artifact.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the artifact to delete. Format: `{parent}/artifacts/*` |

**Response**: `Empty`

```typescript
const res = await apigeeregistry.artifacts.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.deployments.rollback`

**POST** `v1/{+name}:rollback`

Sets the current revision to a specified prior revision. Note that this creates a new revision with a new revision ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The deployment being rolled back. |

**Request body**: `RollbackApiDeploymentRequest`

**Response**: `ApiDeployment`

```typescript
const res = await apigeeregistry.deployments.rollback({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.deployments.delete`

**DELETE** `v1/{+name}`

Removes a specified deployment, all revisions, and all child resources (e.g., artifacts).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the deployment to delete. Format: `projects/*/locations/*/apis/*/deployments/*` |
| `force` | `boolean` | query | No | If set to true, any child resources will also be deleted. (Otherwise, the request will only work if there are no chil... |

**Response**: `Empty`

```typescript
const res = await apigeeregistry.deployments.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.deployments.tagRevision`

**POST** `v1/{+name}:tagRevision`

Adds a tag to a specified revision of a deployment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the deployment to be tagged, including the revision ID is optional. If a revision is not specif... |

**Request body**: `TagApiDeploymentRevisionRequest`

**Response**: `ApiDeployment`

```typescript
const res = await apigeeregistry.deployments.tagRevision({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.deployments.get`

**GET** `v1/{+name}`

Returns a specified deployment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the deployment to retrieve. Format: `projects/*/locations/*/apis/*/deployments/*` |

**Response**: `ApiDeployment`

```typescript
const res = await apigeeregistry.deployments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.deployments.listRevisions`

**GET** `v1/{+name}:listRevisions`

Lists all revisions of a deployment. Revisions are returned in descending order of revision creation time.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the deployment to list revisions for. |
| `filter` | `string` | query | No | An expression that can be used to filter the list. Filters use the Common Expression Language and can refer to all me... |
| `pageSize` | `integer` | query | No | The maximum number of revisions to return per page. |
| `pageToken` | `string` | query | No | The page token, received from a previous ListApiDeploymentRevisions call. Provide this to retrieve the subsequent page. |

**Response**: `ListApiDeploymentRevisionsResponse`

```typescript
const res = await apigeeregistry.deployments.listRevisions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.deployments.list`

**GET** `v1/{+parent}/deployments`

Returns matching deployments.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of deployments. Format: `projects/*/locations/*/apis/*` |
| `filter` | `string` | query | No | An expression that can be used to filter the list. Filters use the Common Expression Language and can refer to all me... |
| `orderBy` | `string` | query | No | A comma-separated list of fields, e.g. "foo,bar" Fields can be sorted in descending order using the "desc" identifier... |
| `pageSize` | `integer` | query | No | The maximum number of deployments to return. The service may return fewer than this value. If unspecified, at most 50... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListApiDeployments` call. Provide this to retrieve the subsequent page. When ... |

**Response**: `ListApiDeploymentsResponse`

```typescript
const res = await apigeeregistry.deployments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.deployments.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await apigeeregistry.deployments.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.deployments.create`

**POST** `v1/{+parent}/deployments`

Creates a specified deployment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of deployments. Format: `projects/*/locations/*/apis/*` |
| `apiDeploymentId` | `string` | query | No | Required. The ID to use for the deployment, which will become the final component of the deployment's resource name. ... |

**Request body**: `ApiDeployment`

**Response**: `ApiDeployment`

```typescript
const res = await apigeeregistry.deployments.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.deployments.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await apigeeregistry.deployments.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.deployments.patch`

**PATCH** `v1/{+name}`

Used to modify a specified deployment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name. |
| `allowMissing` | `boolean` | query | No | If set to true, and the deployment is not found, a new deployment will be created. In this situation, `update_mask` i... |
| `updateMask` | `string` | query | No | The list of fields to be updated. If omitted, all fields are updated that are set in the request message (fields set ... |

**Request body**: `ApiDeployment`

**Response**: `ApiDeployment`

```typescript
const res = await apigeeregistry.deployments.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.deployments.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await apigeeregistry.deployments.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.deployments.deleteRevision`

**DELETE** `v1/{+name}:deleteRevision`

Deletes a revision of a deployment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the deployment revision to be deleted, with a revision ID explicitly included. Example: `projec... |

**Response**: `ApiDeployment`

```typescript
const res = await apigeeregistry.deployments.deleteRevision({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.deployments.artifacts.replaceArtifact`

**PUT** `v1/{+name}`

Used to replace a specified artifact.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name. |

**Request body**: `Artifact`

**Response**: `Artifact`

```typescript
const res = await apigeeregistry.artifacts.replaceArtifact({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.deployments.artifacts.get`

**GET** `v1/{+name}`

Returns a specified artifact.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the artifact to retrieve. Format: `{parent}/artifacts/*` |

**Response**: `Artifact`

```typescript
const res = await apigeeregistry.artifacts.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.deployments.artifacts.list`

**GET** `v1/{+parent}/artifacts`

Returns matching artifacts.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of artifacts. Format: `{parent}` |
| `filter` | `string` | query | No | An expression that can be used to filter the list. Filters use the Common Expression Language and can refer to all me... |
| `orderBy` | `string` | query | No | A comma-separated list of fields, e.g. "foo,bar" Fields can be sorted in descending order using the "desc" identifier... |
| `pageSize` | `integer` | query | No | The maximum number of artifacts to return. The service may return fewer than this value. If unspecified, at most 50 v... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListArtifacts` call. Provide this to retrieve the subsequent page. When pagin... |

**Response**: `ListArtifactsResponse`

```typescript
const res = await apigeeregistry.artifacts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.deployments.artifacts.delete`

**DELETE** `v1/{+name}`

Removes a specified artifact.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the artifact to delete. Format: `{parent}/artifacts/*` |

**Response**: `Empty`

```typescript
const res = await apigeeregistry.artifacts.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.deployments.artifacts.getContents`

**GET** `v1/{+name}:getContents`

Returns the contents of a specified artifact. If artifacts are stored with GZip compression, the default behavior is to return the artifact uncompressed (the mime_type response field indicates the exact format returned).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the artifact whose contents should be retrieved. Format: `{parent}/artifacts/*` |

**Response**: `HttpBody`

```typescript
const res = await apigeeregistry.artifacts.getContents({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.apis.deployments.artifacts.create`

**POST** `v1/{+parent}/artifacts`

Creates a specified artifact.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of artifacts. Format: `{parent}` |
| `artifactId` | `string` | query | No | Required. The ID to use for the artifact, which will become the final component of the artifact's resource name. This... |

**Request body**: `Artifact`

**Response**: `Artifact`

```typescript
const res = await apigeeregistry.artifacts.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.runtime.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await apigeeregistry.runtime.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.runtime.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await apigeeregistry.runtime.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.runtime.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await apigeeregistry.runtime.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.instances.get`

**GET** `v1/{+name}`

Gets details of a single Instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Instance to retrieve. Format: `projects/*/locations/*/instances/*`. |

**Response**: `Instance`

```typescript
const res = await apigeeregistry.instances.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.instances.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await apigeeregistry.instances.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.instances.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await apigeeregistry.instances.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.instances.create`

**POST** `v1/{+parent}/instances`

Provisions instance resources for the Registry.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource of the Instance, of the form: `projects/*/locations/*` |
| `instanceId` | `string` | query | No | Required. Identifier to assign to the Instance. Must be unique within scope of the parent resource. |

**Request body**: `Instance`

**Response**: `Operation`

```typescript
const res = await apigeeregistry.instances.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.instances.delete`

**DELETE** `v1/{+name}`

Deletes the Registry instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Instance to delete. Format: `projects/*/locations/*/instances/*`. |

**Response**: `Operation`

```typescript
const res = await apigeeregistry.instances.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.instances.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await apigeeregistry.instances.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.artifacts.getContents`

**GET** `v1/{+name}:getContents`

Returns the contents of a specified artifact. If artifacts are stored with GZip compression, the default behavior is to return the artifact uncompressed (the mime_type response field indicates the exact format returned).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the artifact whose contents should be retrieved. Format: `{parent}/artifacts/*` |

**Response**: `HttpBody`

```typescript
const res = await apigeeregistry.artifacts.getContents({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.artifacts.list`

**GET** `v1/{+parent}/artifacts`

Returns matching artifacts.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of artifacts. Format: `{parent}` |
| `filter` | `string` | query | No | An expression that can be used to filter the list. Filters use the Common Expression Language and can refer to all me... |
| `orderBy` | `string` | query | No | A comma-separated list of fields, e.g. "foo,bar" Fields can be sorted in descending order using the "desc" identifier... |
| `pageSize` | `integer` | query | No | The maximum number of artifacts to return. The service may return fewer than this value. If unspecified, at most 50 v... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListArtifacts` call. Provide this to retrieve the subsequent page. When pagin... |

**Response**: `ListArtifactsResponse`

```typescript
const res = await apigeeregistry.artifacts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.artifacts.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await apigeeregistry.artifacts.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.artifacts.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await apigeeregistry.artifacts.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.artifacts.create`

**POST** `v1/{+parent}/artifacts`

Creates a specified artifact.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of artifacts. Format: `{parent}` |
| `artifactId` | `string` | query | No | Required. The ID to use for the artifact, which will become the final component of the artifact's resource name. This... |

**Request body**: `Artifact`

**Response**: `Artifact`

```typescript
const res = await apigeeregistry.artifacts.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.artifacts.delete`

**DELETE** `v1/{+name}`

Removes a specified artifact.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the artifact to delete. Format: `{parent}/artifacts/*` |

**Response**: `Empty`

```typescript
const res = await apigeeregistry.artifacts.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.artifacts.replaceArtifact`

**PUT** `v1/{+name}`

Used to replace a specified artifact.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name. |

**Request body**: `Artifact`

**Response**: `Artifact`

```typescript
const res = await apigeeregistry.artifacts.replaceArtifact({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.artifacts.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await apigeeregistry.artifacts.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.artifacts.get`

**GET** `v1/{+name}`

Returns a specified artifact.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the artifact to retrieve. Format: `{parent}/artifacts/*` |

**Response**: `Artifact`

```typescript
const res = await apigeeregistry.artifacts.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await apigeeregistry.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await apigeeregistry.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await apigeeregistry.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apigeeregistry.projects.locations.operations.list`

**GET** `v1/{+name}/operations`

Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation's parent resource. |
| `filter` | `string` | query | No | The standard list filter. |
| `pageSize` | `integer` | query | No | The standard list page size. |
| `pageToken` | `string` | query | No | The standard list page token. |

**Response**: `ListOperationsResponse`

```typescript
const res = await apigeeregistry.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `Api`

A top-level description of an API. Produced by producers and are commitments to provide services.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Annotations attach non-identifying metadata to resources. Annotation keys and values are less res... |
| `availability` | `string` | A user-definable description of the availability of this service. Format: free-form, but we expec... |
| `createTime` | `string` | Output only. Creation timestamp. |
| `description` | `string` | A detailed description. |
| `displayName` | `string` | Human-meaningful name. |
| `labels` | `object` | Labels attach identifying metadata to resources. Identifying metadata can be used to filter list ... |
| `name` | `string` | Resource name. |
| `recommendedDeployment` | `string` | The recommended deployment of the API. Format: `projects/{project}/locations/{location}/apis/{api... |
| `recommendedVersion` | `string` | The recommended version of the API. Format: `projects/{project}/locations/{location}/apis/{api}/v... |
| `updateTime` | `string` | Output only. Last update timestamp. |

### `ApiDeployment`

Describes a service running at particular address that provides a particular version of an API. ApiDeployments have revisions which correspond to different configurations of a single deployment in time. Revision identifiers should be updated whenever the served API spec or endpoint address changes.

| Property | Type | Description |
|----------|------|-------------|
| `accessGuidance` | `string` | Text briefly describing how to access the endpoint. Changes to this value will not affect the rev... |
| `annotations` | `object` | Annotations attach non-identifying metadata to resources. Annotation keys and values are less res... |
| `apiSpecRevision` | `string` | The full resource name (including revision ID) of the spec of the API being served by the deploym... |
| `createTime` | `string` | Output only. Creation timestamp; when the deployment resource was created. |
| `description` | `string` | A detailed description. |
| `displayName` | `string` | Human-meaningful name. |
| `endpointUri` | `string` | The address where the deployment is serving. Changes to this value will update the revision. |
| `externalChannelUri` | `string` | The address of the external channel of the API (e.g., the Developer Portal). Changes to this valu... |
| `intendedAudience` | `string` | Text briefly identifying the intended audience of the API. Changes to this value will not affect ... |
| `labels` | `object` | Labels attach identifying metadata to resources. Identifying metadata can be used to filter list ... |
| `name` | `string` | Resource name. |
| `revisionCreateTime` | `string` | Output only. Revision creation timestamp; when the represented revision was created. |
| `revisionId` | `string` | Output only. Immutable. The revision ID of the deployment. A new revision is committed whenever t... |
| `revisionUpdateTime` | `string` | Output only. Last update timestamp: when the represented revision was last modified. |

### `ApiSpec`

Describes a version of an API in a structured way. ApiSpecs provide formal descriptions that consumers can use to use a version. ApiSpec resources are intended to be fully-resolved descriptions of an ApiVersion. When specs consist of multiple files, these should be bundled together (e.g., in a zip archive) and stored as a unit. Multiple specs can exist to provide representations in different API description formats. Synchronization of these representations would be provided by tooling and background services.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Annotations attach non-identifying metadata to resources. Annotation keys and values are less res... |
| `contents` | `string` | Input only. The contents of the spec. Provided by API callers when specs are created or updated. ... |
| `createTime` | `string` | Output only. Creation timestamp; when the spec resource was created. |
| `description` | `string` | A detailed description. |
| `filename` | `string` | A possibly-hierarchical name used to refer to the spec from other specs. |
| `hash` | `string` | Output only. A SHA-256 hash of the spec's contents. If the spec is gzipped, this is the hash of t... |
| `labels` | `object` | Labels attach identifying metadata to resources. Identifying metadata can be used to filter list ... |
| `mimeType` | `string` | A style (format) descriptor for this spec that is specified as a [Media Type](https://en.wikipedi... |
| `name` | `string` | Resource name. |
| `revisionCreateTime` | `string` | Output only. Revision creation timestamp; when the represented revision was created. |
| `revisionId` | `string` | Output only. Immutable. The revision ID of the spec. A new revision is committed whenever the spe... |
| `revisionUpdateTime` | `string` | Output only. Last update timestamp: when the represented revision was last modified. |
| `sizeBytes` | `integer` | Output only. The size of the spec file in bytes. If the spec is gzipped, this is the size of the ... |
| `sourceUri` | `string` | The original source URI of the spec (if one exists). This is an external location that can be use... |

### `ApiVersion`

Describes a particular version of an API. ApiVersions are what consumers actually use.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Annotations attach non-identifying metadata to resources. Annotation keys and values are less res... |
| `createTime` | `string` | Output only. Creation timestamp. |
| `description` | `string` | A detailed description. |
| `displayName` | `string` | Human-meaningful name. |
| `labels` | `object` | Labels attach identifying metadata to resources. Identifying metadata can be used to filter list ... |
| `name` | `string` | Resource name. |
| `primarySpec` | `string` | The primary spec for this version. Format: projects/{project}/locations/{location}/apis/{api}/ver... |
| `state` | `string` | A user-definable description of the lifecycle phase of this API version. Format: free-form, but w... |
| `updateTime` | `string` | Output only. Last update timestamp. |

### `Artifact`

Artifacts of resources. Artifacts are unique (single-value) per resource and are used to store metadata that is too large or numerous to be stored directly on the resource. Since artifacts are stored separately from parent resources, they should generally be used for metadata that is needed infrequently, i.e., not for display in primary views of the resource but perhaps displayed or downloaded upon request. The `ListArtifacts` method allows artifacts to be quickly enumerated and checked for presence without downloading their (potentially-large) contents.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Annotations attach non-identifying metadata to resources. Annotation keys and values are less res... |
| `contents` | `string` | Input only. The contents of the artifact. Provided by API callers when artifacts are created or r... |
| `createTime` | `string` | Output only. Creation timestamp. |
| `hash` | `string` | Output only. A SHA-256 hash of the artifact's contents. If the artifact is gzipped, this is the h... |
| `labels` | `object` | Labels attach identifying metadata to resources. Identifying metadata can be used to filter list ... |
| `mimeType` | `string` | A content type specifier for the artifact. Content type specifiers are Media Types (https://en.wi... |
| `name` | `string` | Resource name. |
| `sizeBytes` | `integer` | Output only. The size of the artifact in bytes. If the artifact is gzipped, this is the size of t... |
| `updateTime` | `string` | Output only. Last update timestamp. |

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `Build`

Build information of the Instance if it's in `ACTIVE` state.

| Property | Type | Description |
|----------|------|-------------|
| `commitId` | `string` | Output only. Commit ID of the latest commit in the build. |
| `commitTime` | `string` | Output only. Commit time of the latest commit in the build. |
| `repo` | `string` | Output only. Path of the open source repository: github.com/apigee/registry. |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `Config`

Available configurations to provision an Instance.

| Property | Type | Description |
|----------|------|-------------|
| `cmekKeyName` | `string` | Required. The Customer Managed Encryption Key (CMEK) used for data encryption. The CMEK name shou... |
| `location` | `string` | Output only. The GCP location where the Instance resides. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `HttpBody`

Message that represents an arbitrary HTTP body. It should only be used for payload formats that can't be represented as JSON, such as raw binary or an HTML page. This message can be used both in streaming and non-streaming API methods in the request as well as the response. It can be used as a top-level request field, which is convenient if one wants to extract parameters from either the URL or HTTP template into the request fields and also want access to the raw HTTP body. Example: message GetResourceRequest { // A unique request id. string request_id = 1; // The raw HTTP body is bound to this field. google.api.HttpBody http_body = 2; } service ResourceService { rpc GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); } Example with streaming methods: service CaldavService { rpc GetCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); } Use of this type only changes how the request and response bodies are handled, all other features will continue to work unchanged.

| Property | Type | Description |
|----------|------|-------------|
| `contentType` | `string` | The HTTP Content-Type header value specifying the content type of the body. |
| `data` | `string` | The HTTP request/response body as raw binary. |
| `extensions` | `array<object>` | Application specific response metadata. Must be set in the first response for streaming APIs. |

### `Instance`

An Instance represents the instance resources of the Registry. Currently, only one instance is allowed for each project.

| Property | Type | Description |
|----------|------|-------------|
| `build` | `Build` | Output only. Build info of the Instance if it's in `ACTIVE` state. |
| `config` | `Config` | Required. Config of the Instance. |
| `createTime` | `string` | Output only. Creation timestamp. |
| `name` | `string` | Format: `projects/*/locations/*/instance`. Currently only `locations/global` is supported. |
| `state` | `string` | Output only. The current state of the Instance. |
| `stateMessage` | `string` | Output only. Extra information of Instance.State if the state is `FAILED`. |
| `updateTime` | `string` | Output only. Last update timestamp. |

### `ListApiDeploymentRevisionsResponse`

Response message for ListApiDeploymentRevisionsResponse.

| Property | Type | Description |
|----------|------|-------------|
| `apiDeployments` | `array<ApiDeployment>` | The revisions of the deployment. |
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, the... |

### `ListApiDeploymentsResponse`

Response message for ListApiDeployments.

| Property | Type | Description |
|----------|------|-------------|
| `apiDeployments` | `array<ApiDeployment>` | The deployments from the specified publisher. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `ListApiSpecRevisionsResponse`

Response message for ListApiSpecRevisionsResponse.

| Property | Type | Description |
|----------|------|-------------|
| `apiSpecs` | `array<ApiSpec>` | The revisions of the spec. |
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, the... |

### `ListApiSpecsResponse`

Response message for ListApiSpecs.

| Property | Type | Description |
|----------|------|-------------|
| `apiSpecs` | `array<ApiSpec>` | The specs from the specified publisher. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `ListApiVersionsResponse`

Response message for ListApiVersions.

| Property | Type | Description |
|----------|------|-------------|
| `apiVersions` | `array<ApiVersion>` | The versions from the specified publisher. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `ListApisResponse`

Response message for ListApis.

| Property | Type | Description |
|----------|------|-------------|
| `apis` | `array<Api>` | The APIs from the specified publisher. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `ListArtifactsResponse`

Response message for ListArtifacts.

| Property | Type | Description |
|----------|------|-------------|
| `artifacts` | `array<Artifact>` | The artifacts from the specified publisher. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

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
| `cancellationRequested` | `boolean` | Identifies whether the user has requested cancellation of the operation. Operations that have suc... |
| `createTime` | `string` | The time the operation was created. |
| `endTime` | `string` | The time the operation finished running. |
| `statusMessage` | `string` | Human-readable status of the operation, if any. |
| `target` | `string` | Server-defined resource path for the target of the operation. |
| `verb` | `string` | Name of the verb executed by the operation. |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `RollbackApiDeploymentRequest`

Request message for RollbackApiDeployment.

| Property | Type | Description |
|----------|------|-------------|
| `revisionId` | `string` | Required. The revision ID to roll back to. It must be a revision of the same deployment. Example:... |

### `RollbackApiSpecRequest`

Request message for RollbackApiSpec.

| Property | Type | Description |
|----------|------|-------------|
| `revisionId` | `string` | Required. The revision ID to roll back to. It must be a revision of the same spec. Example: `c7cf... |

### `SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `TagApiDeploymentRevisionRequest`

Request message for TagApiDeploymentRevision.

| Property | Type | Description |
|----------|------|-------------|
| `tag` | `string` | Required. The tag to apply. The tag should be at most 40 characters, and match `a-z{3,39}`. |

### `TagApiSpecRevisionRequest`

Request message for TagApiSpecRevision.

| Property | Type | Description |
|----------|------|-------------|
| `tag` | `string` | Required. The tag to apply. The tag should be at most 40 characters, and match `a-z{3,39}`. |

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

