# Eventarc API - API Reference

**Version**: `v1` | **Methods**: 66 | **Schemas**: 62

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `eventarc.projects.locations.getGoogleChannelConfig` | GET | `v1/{+name}` | Get a GoogleChannelConfig. The name of the GoogleChannelConfig in the response is ALWAYS coded wi... |
| `eventarc.projects.locations.updateGoogleChannelConfig` | PATCH | `v1/{+name}` | Update a single GoogleChannelConfig |
| `eventarc.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `eventarc.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `eventarc.projects.locations.pipelines.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `eventarc.projects.locations.pipelines.delete` | DELETE | `v1/{+name}` | Delete a single pipeline. |
| `eventarc.projects.locations.pipelines.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `eventarc.projects.locations.pipelines.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `eventarc.projects.locations.pipelines.list` | GET | `v1/{+parent}/pipelines` | List pipelines. |
| `eventarc.projects.locations.pipelines.create` | POST | `v1/{+parent}/pipelines` | Create a new Pipeline in a particular project and location. |
| `eventarc.projects.locations.pipelines.patch` | PATCH | `v1/{+name}` | Update a single pipeline. |
| `eventarc.projects.locations.pipelines.get` | GET | `v1/{+name}` | Get a single Pipeline. |
| `eventarc.projects.locations.enrollments.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `eventarc.projects.locations.enrollments.get` | GET | `v1/{+name}` | Get a single Enrollment. |
| `eventarc.projects.locations.enrollments.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `eventarc.projects.locations.enrollments.delete` | DELETE | `v1/{+name}` | Delete a single Enrollment. |
| `eventarc.projects.locations.enrollments.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `eventarc.projects.locations.enrollments.create` | POST | `v1/{+parent}/enrollments` | Create a new Enrollment in a particular project and location. |
| `eventarc.projects.locations.enrollments.list` | GET | `v1/{+parent}/enrollments` | List Enrollments. |
| `eventarc.projects.locations.enrollments.patch` | PATCH | `v1/{+name}` | Update a single Enrollment. |
| `eventarc.projects.locations.googleApiSources.create` | POST | `v1/{+parent}/googleApiSources` | Create a new GoogleApiSource in a particular project and location. |
| `eventarc.projects.locations.googleApiSources.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `eventarc.projects.locations.googleApiSources.get` | GET | `v1/{+name}` | Get a single GoogleApiSource. |
| `eventarc.projects.locations.googleApiSources.patch` | PATCH | `v1/{+name}` | Update a single GoogleApiSource. |
| `eventarc.projects.locations.googleApiSources.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `eventarc.projects.locations.googleApiSources.list` | GET | `v1/{+parent}/googleApiSources` | List GoogleApiSources. |
| `eventarc.projects.locations.googleApiSources.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `eventarc.projects.locations.googleApiSources.delete` | DELETE | `v1/{+name}` | Delete a single GoogleApiSource. |
| `eventarc.projects.locations.messageBuses.list` | GET | `v1/{+parent}/messageBuses` | List message buses. |
| `eventarc.projects.locations.messageBuses.get` | GET | `v1/{+name}` | Get a single MessageBus. |
| `eventarc.projects.locations.messageBuses.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `eventarc.projects.locations.messageBuses.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `eventarc.projects.locations.messageBuses.delete` | DELETE | `v1/{+name}` | Delete a single message bus. |
| `eventarc.projects.locations.messageBuses.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `eventarc.projects.locations.messageBuses.create` | POST | `v1/{+parent}/messageBuses` | Create a new MessageBus in a particular project and location. |
| `eventarc.projects.locations.messageBuses.patch` | PATCH | `v1/{+name}` | Update a single message bus. |
| `eventarc.projects.locations.messageBuses.listEnrollments` | GET | `v1/{+parent}:listEnrollments` | List message bus enrollments. |
| `eventarc.projects.locations.channelConnections.create` | POST | `v1/{+parent}/channelConnections` | Create a new ChannelConnection in a particular project and location. |
| `eventarc.projects.locations.channelConnections.delete` | DELETE | `v1/{+name}` | Delete a single ChannelConnection. |
| `eventarc.projects.locations.channelConnections.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `eventarc.projects.locations.channelConnections.get` | GET | `v1/{+name}` | Get a single ChannelConnection. |
| `eventarc.projects.locations.channelConnections.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `eventarc.projects.locations.channelConnections.list` | GET | `v1/{+parent}/channelConnections` | List channel connections. |
| `eventarc.projects.locations.channelConnections.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `eventarc.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `eventarc.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `eventarc.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `eventarc.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `eventarc.projects.locations.providers.get` | GET | `v1/{+name}` | Get a single Provider. |
| `eventarc.projects.locations.providers.list` | GET | `v1/{+parent}/providers` | List providers. |
| `eventarc.projects.locations.channels.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `eventarc.projects.locations.channels.create` | POST | `v1/{+parent}/channels` | Create a new channel in a particular project and location. |
| `eventarc.projects.locations.channels.patch` | PATCH | `v1/{+name}` | Update a single channel. |
| `eventarc.projects.locations.channels.list` | GET | `v1/{+parent}/channels` | List channels. |
| `eventarc.projects.locations.channels.delete` | DELETE | `v1/{+name}` | Delete a single channel. |
| `eventarc.projects.locations.channels.get` | GET | `v1/{+name}` | Get a single Channel. |
| `eventarc.projects.locations.channels.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `eventarc.projects.locations.channels.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `eventarc.projects.locations.triggers.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `eventarc.projects.locations.triggers.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `eventarc.projects.locations.triggers.list` | GET | `v1/{+parent}/triggers` | List triggers. |
| `eventarc.projects.locations.triggers.get` | GET | `v1/{+name}` | Get a single trigger. |
| `eventarc.projects.locations.triggers.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `eventarc.projects.locations.triggers.patch` | PATCH | `v1/{+name}` | Update a single trigger. |
| `eventarc.projects.locations.triggers.delete` | DELETE | `v1/{+name}` | Delete a single trigger. |
| `eventarc.projects.locations.triggers.create` | POST | `v1/{+parent}/triggers` | Create a new trigger in a particular project and location. |

### `eventarc.projects.locations.getGoogleChannelConfig`

**GET** `v1/{+name}`

Get a GoogleChannelConfig. The name of the GoogleChannelConfig in the response is ALWAYS coded with projectID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the config to get. |

**Response**: `GoogleChannelConfig`

```typescript
const res = await eventarc.locations.getGoogleChannelConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.updateGoogleChannelConfig`

**PATCH** `v1/{+name}`

Update a single GoogleChannelConfig

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the config. Must be in the format of, `projects/{project}/locations/{location}/googleC... |
| `updateMask` | `string` | query | No | The fields to be updated; only fields explicitly provided are updated. If no field mask is provided, all provided fie... |

**Request body**: `GoogleChannelConfig`

**Response**: `GoogleChannelConfig`

```typescript
const res = await eventarc.locations.updateGoogleChannelConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await eventarc.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.list`

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
const res = await eventarc.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.pipelines.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await eventarc.pipelines.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.pipelines.delete`

**DELETE** `v1/{+name}`

Delete a single pipeline.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Pipeline to be deleted. |
| `allowMissing` | `boolean` | query | No | Optional. If set to true, and the Pipeline is not found, the request will succeed but no action will be taken on the ... |
| `etag` | `string` | query | No | Optional. If provided, the Pipeline will only be deleted if the etag matches the current etag on the resource. |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request and preview the review, but do not post it. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await eventarc.pipelines.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.pipelines.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await eventarc.pipelines.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.pipelines.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await eventarc.pipelines.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.pipelines.list`

**GET** `v1/{+parent}/pipelines`

List pipelines.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent collection to list pipelines on. |
| `filter` | `string` | query | No | Optional. The filter field that the list request will filter on. Possible filters are described in https://google.aip... |
| `orderBy` | `string` | query | No | Optional. The sorting order of the resources returned. Value should be a comma-separated list of fields. The default ... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return on each page. Note: The service may send fewer. |
| `pageToken` | `string` | query | No | Optional. The page token; provide the value from the `next_page_token` field in a previous call to retrieve the subse... |

**Response**: `ListPipelinesResponse`

```typescript
const res = await eventarc.pipelines.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.pipelines.create`

**POST** `v1/{+parent}/pipelines`

Create a new Pipeline in a particular project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent collection in which to add this pipeline. |
| `pipelineId` | `string` | query | No | Required. The user-provided ID to be assigned to the Pipeline. It should match the format `^[a-z]([a-z0-9-]{0,61}[a-z... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request and preview the review, but do not post it. |

**Request body**: `Pipeline`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await eventarc.pipelines.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.pipelines.patch`

**PATCH** `v1/{+name}`

Update a single pipeline.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the Pipeline. Must be unique within the location of the project and must be in `proj... |
| `allowMissing` | `boolean` | query | No | Optional. If set to true, and the Pipeline is not found, a new Pipeline will be created. In this situation, `update_m... |
| `updateMask` | `string` | query | No | Optional. The fields to be updated; only fields explicitly provided are updated. If no field mask is provided, all pr... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request and preview the review, but do not post it. |

**Request body**: `Pipeline`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await eventarc.pipelines.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.pipelines.get`

**GET** `v1/{+name}`

Get a single Pipeline.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the pipeline to get. |

**Response**: `Pipeline`

```typescript
const res = await eventarc.pipelines.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.enrollments.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await eventarc.enrollments.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.enrollments.get`

**GET** `v1/{+name}`

Get a single Enrollment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Enrollment to get. |

**Response**: `Enrollment`

```typescript
const res = await eventarc.enrollments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.enrollments.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await eventarc.enrollments.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.enrollments.delete`

**DELETE** `v1/{+name}`

Delete a single Enrollment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Enrollment to be deleted. |
| `allowMissing` | `boolean` | query | No | Optional. If set to true, and the Enrollment is not found, the request will succeed but no action will be taken on th... |
| `etag` | `string` | query | No | Optional. If provided, the Enrollment will only be deleted if the etag matches the current etag on the resource. |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request and preview the review, but do not post it. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await eventarc.enrollments.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.enrollments.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await eventarc.enrollments.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.enrollments.create`

**POST** `v1/{+parent}/enrollments`

Create a new Enrollment in a particular project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent collection in which to add this enrollment. |
| `enrollmentId` | `string` | query | No | Required. The user-provided ID to be assigned to the Enrollment. It should match the format `^[a-z]([a-z0-9-]{0,61}[a... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request and preview the review, but do not post it. |

**Request body**: `Enrollment`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await eventarc.enrollments.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.enrollments.list`

**GET** `v1/{+parent}/enrollments`

List Enrollments.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent collection to list triggers on. |
| `filter` | `string` | query | No | Optional. The filter field that the list request will filter on. Possible filtersare described in https://google.aip.... |
| `orderBy` | `string` | query | No | Optional. The sorting order of the resources returned. Value should be a comma-separated list of fields. The default ... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return on each page. Note: The service may send fewer. |
| `pageToken` | `string` | query | No | Optional. The page token; provide the value from the `next_page_token` field in a previous call to retrieve the subse... |

**Response**: `ListEnrollmentsResponse`

```typescript
const res = await eventarc.enrollments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.enrollments.patch`

**PATCH** `v1/{+name}`

Update a single Enrollment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Resource name of the form projects/{project}/locations/{location}/enrollments/{enrollment} |
| `allowMissing` | `boolean` | query | No | Optional. If set to true, and the Enrollment is not found, a new Enrollment will be created. In this situation, `upda... |
| `updateMask` | `string` | query | No | Optional. The fields to be updated; only fields explicitly provided are updated. If no field mask is provided, all pr... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request and preview the review, but do not post it. |

**Request body**: `Enrollment`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await eventarc.enrollments.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.googleApiSources.create`

**POST** `v1/{+parent}/googleApiSources`

Create a new GoogleApiSource in a particular project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent collection in which to add this google api source. |
| `googleApiSourceId` | `string` | query | No | Required. The user-provided ID to be assigned to the GoogleApiSource. It should match the format `^[a-z]([a-z0-9-]{0,... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request and preview the review, but do not post it. |

**Request body**: `GoogleApiSource`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await eventarc.googleApiSources.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.googleApiSources.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await eventarc.googleApiSources.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.googleApiSources.get`

**GET** `v1/{+name}`

Get a single GoogleApiSource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the google api source to get. |

**Response**: `GoogleApiSource`

```typescript
const res = await eventarc.googleApiSources.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.googleApiSources.patch`

**PATCH** `v1/{+name}`

Update a single GoogleApiSource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Resource name of the form projects/{project}/locations/{location}/googleApiSources/{google_api_source} |
| `allowMissing` | `boolean` | query | No | Optional. If set to true, and the GoogleApiSource is not found, a new GoogleApiSource will be created. In this situat... |
| `updateMask` | `string` | query | No | Optional. The fields to be updated; only fields explicitly provided are updated. If no field mask is provided, all pr... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request and preview the review, but do not post it. |

**Request body**: `GoogleApiSource`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await eventarc.googleApiSources.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.googleApiSources.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await eventarc.googleApiSources.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.googleApiSources.list`

**GET** `v1/{+parent}/googleApiSources`

List GoogleApiSources.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent collection to list GoogleApiSources on. |
| `filter` | `string` | query | No | Optional. The filter field that the list request will filter on. Possible filtersare described in https://google.aip.... |
| `orderBy` | `string` | query | No | Optional. The sorting order of the resources returned. Value should be a comma-separated list of fields. The default ... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return on each page. Note: The service may send fewer. |
| `pageToken` | `string` | query | No | Optional. The page token; provide the value from the `next_page_token` field in a previous call to retrieve the subse... |

**Response**: `ListGoogleApiSourcesResponse`

```typescript
const res = await eventarc.googleApiSources.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.googleApiSources.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await eventarc.googleApiSources.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.googleApiSources.delete`

**DELETE** `v1/{+name}`

Delete a single GoogleApiSource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the GoogleApiSource to be deleted. |
| `allowMissing` | `boolean` | query | No | Optional. If set to true, and the MessageBus is not found, the request will succeed but no action will be taken on th... |
| `etag` | `string` | query | No | Optional. If provided, the MessageBus will only be deleted if the etag matches the current etag on the resource. |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request and preview the review, but do not post it. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await eventarc.googleApiSources.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.messageBuses.list`

**GET** `v1/{+parent}/messageBuses`

List message buses.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent collection to list message buses on. |
| `filter` | `string` | query | No | Optional. The filter field that the list request will filter on. Possible filtersare described in https://google.aip.... |
| `orderBy` | `string` | query | No | Optional. The sorting order of the resources returned. Value should be a comma-separated list of fields. The default ... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return on each page. Note: The service may send fewer. |
| `pageToken` | `string` | query | No | Optional. The page token; provide the value from the `next_page_token` field in a previous call to retrieve the subse... |

**Response**: `ListMessageBusesResponse`

```typescript
const res = await eventarc.messageBuses.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.messageBuses.get`

**GET** `v1/{+name}`

Get a single MessageBus.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the message bus to get. |

**Response**: `MessageBus`

```typescript
const res = await eventarc.messageBuses.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.messageBuses.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await eventarc.messageBuses.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.messageBuses.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await eventarc.messageBuses.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.messageBuses.delete`

**DELETE** `v1/{+name}`

Delete a single message bus.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the MessageBus to be deleted. |
| `allowMissing` | `boolean` | query | No | Optional. If set to true, and the MessageBus is not found, the request will succeed but no action will be taken on th... |
| `etag` | `string` | query | No | Optional. If provided, the MessageBus will only be deleted if the etag matches the current etag on the resource. |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request and preview the review, but do not post it. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await eventarc.messageBuses.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.messageBuses.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await eventarc.messageBuses.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.messageBuses.create`

**POST** `v1/{+parent}/messageBuses`

Create a new MessageBus in a particular project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent collection in which to add this message bus. |
| `messageBusId` | `string` | query | No | Required. The user-provided ID to be assigned to the MessageBus. It should match the format `^[a-z]([a-z0-9-]{0,61}[a... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request and preview the review, but do not post it. |

**Request body**: `MessageBus`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await eventarc.messageBuses.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.messageBuses.patch`

**PATCH** `v1/{+name}`

Update a single message bus.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Resource name of the form projects/{project}/locations/{location}/messageBuses/{message_bus} |
| `allowMissing` | `boolean` | query | No | Optional. If set to true, and the MessageBus is not found, a new MessageBus will be created. In this situation, `upda... |
| `updateMask` | `string` | query | No | Optional. The fields to be updated; only fields explicitly provided are updated. If no field mask is provided, all pr... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request and preview the review, but do not post it. |

**Request body**: `MessageBus`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await eventarc.messageBuses.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.messageBuses.listEnrollments`

**GET** `v1/{+parent}:listEnrollments`

List message bus enrollments.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent message bus to list enrollments on. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return on each page. Note: The service may send fewer. |
| `pageToken` | `string` | query | No | Optional. The page token; provide the value from the `next_page_token` field in a previous call to retrieve the subse... |

**Response**: `ListMessageBusEnrollmentsResponse`

```typescript
const res = await eventarc.messageBuses.listEnrollments({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.channelConnections.create`

**POST** `v1/{+parent}/channelConnections`

Create a new ChannelConnection in a particular project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent collection in which to add this channel connection. |
| `channelConnectionId` | `string` | query | No | Required. The user-provided ID to be assigned to the channel connection. |

**Request body**: `ChannelConnection`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await eventarc.channelConnections.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.channelConnections.delete`

**DELETE** `v1/{+name}`

Delete a single ChannelConnection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the channel connection to delete. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await eventarc.channelConnections.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.channelConnections.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await eventarc.channelConnections.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.channelConnections.get`

**GET** `v1/{+name}`

Get a single ChannelConnection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the channel connection to get. |

**Response**: `ChannelConnection`

```typescript
const res = await eventarc.channelConnections.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.channelConnections.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await eventarc.channelConnections.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.channelConnections.list`

**GET** `v1/{+parent}/channelConnections`

List channel connections.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent collection from which to list channel connections. |
| `pageSize` | `integer` | query | No | The maximum number of channel connections to return on each page. Note: The service may send fewer responses. |
| `pageToken` | `string` | query | No | The page token; provide the value from the `next_page_token` field in a previous `ListChannelConnections` call to ret... |

**Response**: `ListChannelConnectionsResponse`

```typescript
const res = await eventarc.channelConnections.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.channelConnections.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await eventarc.channelConnections.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await eventarc.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.operations.list`

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
const res = await eventarc.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `GoogleLongrunningCancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await eventarc.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await eventarc.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.providers.get`

**GET** `v1/{+name}`

Get a single Provider.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the provider to get. |

**Response**: `Provider`

```typescript
const res = await eventarc.providers.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.providers.list`

**GET** `v1/{+parent}/providers`

List providers.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent of the provider to get. |
| `filter` | `string` | query | No | The filter field that the list request will filter on. |
| `orderBy` | `string` | query | No | The sorting order of the resources returned. Value should be a comma-separated list of fields. The default sorting od... |
| `pageSize` | `integer` | query | No | The maximum number of providers to return on each page. |
| `pageToken` | `string` | query | No | The page token; provide the value from the `next_page_token` field in a previous `ListProviders` call to retrieve the... |

**Response**: `ListProvidersResponse`

```typescript
const res = await eventarc.providers.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.channels.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await eventarc.channels.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.channels.create`

**POST** `v1/{+parent}/channels`

Create a new channel in a particular project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent collection in which to add this channel. |
| `channelId` | `string` | query | No | Required. The user-provided ID to be assigned to the channel. |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request and preview the review, but do not post it. |

**Request body**: `Channel`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await eventarc.channels.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.channels.patch`

**PATCH** `v1/{+name}`

Update a single channel.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the channel. Must be unique within the location on the project and must be in `project... |
| `updateMask` | `string` | query | No | The fields to be updated; only fields explicitly provided are updated. If no field mask is provided, all provided fie... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request and preview the review, but do not post it. |

**Request body**: `Channel`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await eventarc.channels.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.channels.list`

**GET** `v1/{+parent}/channels`

List channels.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent collection to list channels on. |
| `orderBy` | `string` | query | No | The sorting order of the resources returned. Value should be a comma-separated list of fields. The default sorting or... |
| `pageSize` | `integer` | query | No | The maximum number of channels to return on each page. Note: The service may send fewer. |
| `pageToken` | `string` | query | No | The page token; provide the value from the `next_page_token` field in a previous `ListChannels` call to retrieve the ... |

**Response**: `ListChannelsResponse`

```typescript
const res = await eventarc.channels.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.channels.delete`

**DELETE** `v1/{+name}`

Delete a single channel.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the channel to be deleted. |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request and preview the review, but do not post it. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await eventarc.channels.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.channels.get`

**GET** `v1/{+name}`

Get a single Channel.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the channel to get. |

**Response**: `Channel`

```typescript
const res = await eventarc.channels.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.channels.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await eventarc.channels.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.channels.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await eventarc.channels.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.triggers.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await eventarc.triggers.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.triggers.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await eventarc.triggers.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.triggers.list`

**GET** `v1/{+parent}/triggers`

List triggers.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent collection to list triggers on. |
| `filter` | `string` | query | No | Filter field. Used to filter the Triggers to be listed. Possible filters are described in https://google.aip.dev/160.... |
| `orderBy` | `string` | query | No | The sorting order of the resources returned. Value should be a comma-separated list of fields. The default sorting or... |
| `pageSize` | `integer` | query | No | The maximum number of triggers to return on each page. Note: The service may send fewer. |
| `pageToken` | `string` | query | No | The page token; provide the value from the `next_page_token` field in a previous `ListTriggers` call to retrieve the ... |

**Response**: `ListTriggersResponse`

```typescript
const res = await eventarc.triggers.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.triggers.get`

**GET** `v1/{+name}`

Get a single trigger.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the trigger to get. |

**Response**: `Trigger`

```typescript
const res = await eventarc.triggers.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.triggers.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await eventarc.triggers.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.triggers.patch`

**PATCH** `v1/{+name}`

Update a single trigger.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the trigger. Must be unique within the location of the project and must be in `project... |
| `allowMissing` | `boolean` | query | No | If set to true, and the trigger is not found, a new trigger will be created. In this situation, `update_mask` is igno... |
| `updateMask` | `string` | query | No | The fields to be updated; only fields explicitly provided are updated. If no field mask is provided, all provided fie... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request and preview the review, but do not post it. |

**Request body**: `Trigger`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await eventarc.triggers.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.triggers.delete`

**DELETE** `v1/{+name}`

Delete a single trigger.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the trigger to be deleted. |
| `allowMissing` | `boolean` | query | No | If set to true, and the trigger is not found, the request will succeed but no action will be taken on the server. |
| `etag` | `string` | query | No | If provided, the trigger will only be deleted if the etag matches the current etag on the resource. |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request and preview the review, but do not post it. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await eventarc.triggers.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `eventarc.projects.locations.triggers.create`

**POST** `v1/{+parent}/triggers`

Create a new trigger in a particular project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent collection in which to add this trigger. |
| `triggerId` | `string` | query | No | Required. The user-provided ID to be assigned to the trigger. |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request and preview the review, but do not post it. |

**Request body**: `Trigger`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await eventarc.triggers.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

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

### `Channel`

A representation of the Channel resource. A Channel is a resource on which event providers publish their events. The published events are delivered through the transport associated with the channel. Note that a channel is associated with exactly one event provider.

| Property | Type | Description |
|----------|------|-------------|
| `activationToken` | `string` | Output only. The activation token for the channel. The token must be used by the provider to regi... |
| `createTime` | `string` | Output only. The creation time. |
| `cryptoKeyName` | `string` | Optional. Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt their e... |
| `labels` | `object` | Optional. Resource labels. |
| `name` | `string` | Required. The resource name of the channel. Must be unique within the location on the project and... |
| `provider` | `string` | The name of the event provider (e.g. Eventarc SaaS partner) associated with the channel. This pro... |
| `pubsubTopic` | `string` | Output only. The name of the Pub/Sub topic created and managed by Eventarc system as a transport ... |
| `satisfiesPzs` | `boolean` | Output only. Whether or not this Channel satisfies the requirements of physical zone separation |
| `state` | `string` | Output only. The state of a Channel. |
| `uid` | `string` | Output only. Server assigned unique identifier for the channel. The value is a UUID4 string and g... |
| `updateTime` | `string` | Output only. The last-modified time. |

### `ChannelConnection`

A representation of the ChannelConnection resource. A ChannelConnection is a resource which event providers create during the activation process to establish a connection between the provider and the subscriber channel.

| Property | Type | Description |
|----------|------|-------------|
| `activationToken` | `string` | Input only. Activation token for the channel. The token will be used during the creation of Chann... |
| `channel` | `string` | Required. The name of the connected subscriber Channel. This is a weak reference to avoid cross p... |
| `createTime` | `string` | Output only. The creation time. |
| `labels` | `object` | Optional. Resource labels. |
| `name` | `string` | Required. The name of the connection. |
| `uid` | `string` | Output only. Server assigned ID of the resource. The server guarantees uniqueness and immutabilit... |
| `updateTime` | `string` | Output only. The last-modified time. |

### `CloudRun`

Represents a Cloud Run destination.

| Property | Type | Description |
|----------|------|-------------|
| `path` | `string` | Optional. The relative path on the Cloud Run service the events should be sent to. The value must... |
| `region` | `string` | Required. The region the Cloud Run service is deployed in. |
| `service` | `string` | Required. The name of the Cloud Run service being addressed. See https://cloud.google.com/run/doc... |

### `Destination`

Represents a target of an invocation over HTTP.

| Property | Type | Description |
|----------|------|-------------|
| `cloudFunction` | `string` | The Cloud Function resource name. Cloud Functions V1 and V2 are supported. Format: `projects/{pro... |
| `cloudRun` | `CloudRun` | Cloud Run fully-managed resource that receives the events. The resource should be in the same pro... |
| `gke` | `GKE` | A GKE service capable of receiving events. The service should be running in the same project as t... |
| `httpEndpoint` | `HttpEndpoint` | An HTTP endpoint destination described by an URI. |
| `networkConfig` | `NetworkConfig` | Optional. Network config is used to configure how Eventarc resolves and connect to a destination.... |
| `workflow` | `string` | The resource name of the Workflow whose Executions are triggered by the events. The Workflow reso... |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Enrollment`

An enrollment represents a subscription for messages on a particular message bus. It defines a matching criteria for messages on the bus and the subscriber endpoint where matched messages should be delivered.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. Resource annotations. |
| `celMatch` | `string` | Required. A CEL expression identifying which messages this enrollment applies to. |
| `createTime` | `string` | Output only. The creation time. |
| `destination` | `string` | Required. Destination is the Pipeline that the Enrollment is delivering to. It must point to the ... |
| `displayName` | `string` | Optional. Resource display name. |
| `etag` | `string` | Output only. This checksum is computed by the server based on the value of other fields, and migh... |
| `labels` | `object` | Optional. Resource labels. |
| `messageBus` | `string` | Required. Immutable. Resource name of the message bus identifying the source of the messages. It ... |
| `name` | `string` | Identifier. Resource name of the form projects/{project}/locations/{location}/enrollments/{enroll... |
| `uid` | `string` | Output only. Server assigned unique identifier for the channel. The value is a UUID4 string and g... |
| `updateTime` | `string` | Output only. The last-modified time. |

### `EventFilter`

Filters events based on exact matches on the CloudEvents attributes.

| Property | Type | Description |
|----------|------|-------------|
| `attribute` | `string` | Required. The name of a CloudEvents attribute. Currently, only a subset of attributes are support... |
| `operator` | `string` | Optional. The operator used for matching the events with the value of the filter. If not specifie... |
| `value` | `string` | Required. The value for the attribute. |

### `EventType`

A representation of the event type resource.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Output only. Human friendly description of what the event type is about. For example "Bucket crea... |
| `eventSchemaUri` | `string` | Output only. URI for the event schema. For example "https://github.com/googleapis/google-cloudeve... |
| `filteringAttributes` | `array<FilteringAttribute>` | Output only. Filtering attributes for the event type. |
| `type` | `string` | Output only. The full name of the event type (for example, "google.cloud.storage.object.v1.finali... |

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `FilteringAttribute`

A representation of the FilteringAttribute resource. Filtering attributes are per event type.

| Property | Type | Description |
|----------|------|-------------|
| `attribute` | `string` | Output only. Attribute used for filtering the event type. |
| `description` | `string` | Output only. Description of the purpose of the attribute. |
| `pathPatternSupported` | `boolean` | Output only. If true, the attribute accepts matching expressions in the Eventarc PathPattern format. |
| `required` | `boolean` | Output only. If true, the triggers for this provider should always specify a filter on these attr... |

### `GKE`

Represents a GKE destination.

| Property | Type | Description |
|----------|------|-------------|
| `cluster` | `string` | Required. The name of the cluster the GKE service is running in. The cluster must be running in t... |
| `location` | `string` | Required. The name of the Google Compute Engine in which the cluster resides, which can either be... |
| `namespace` | `string` | Required. The namespace the GKE service is running in. |
| `path` | `string` | Optional. The relative path on the GKE service the events should be sent to. The value must confo... |
| `service` | `string` | Required. Name of the GKE service. |

### `GoogleApiSource`

A GoogleApiSource represents a subscription of 1P events from a MessageBus.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. Resource annotations. |
| `createTime` | `string` | Output only. The creation time. |
| `cryptoKeyName` | `string` | Optional. Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt their e... |
| `destination` | `string` | Required. Destination is the message bus that the GoogleApiSource is delivering to. It must be po... |
| `displayName` | `string` | Optional. Resource display name. |
| `etag` | `string` | Output only. This checksum is computed by the server based on the value of other fields, and migh... |
| `labels` | `object` | Optional. Resource labels. |
| `loggingConfig` | `LoggingConfig` | Optional. Config to control Platform logging for the GoogleApiSource. |
| `name` | `string` | Identifier. Resource name of the form projects/{project}/locations/{location}/googleApiSources/{g... |
| `organizationSubscription` | `OrganizationSubscription` | Optional. Config to enable subscribing to events from all projects in the GoogleApiSource's org. |
| `projectSubscriptions` | `ProjectSubscriptions` | Optional. Config to enable subscribing to all events from a list of projects. All the projects mu... |
| `uid` | `string` | Output only. Server assigned unique identifier for the channel. The value is a UUID4 string and g... |
| `updateTime` | `string` | Output only. The last-modified time. |

### `GoogleChannelConfig`

A GoogleChannelConfig is a resource that stores the custom settings respected by Eventarc first-party triggers in the matching region. Once configured, first-party event data will be protected using the specified custom managed encryption key instead of Google-managed encryption keys.

| Property | Type | Description |
|----------|------|-------------|
| `cryptoKeyName` | `string` | Optional. Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt their e... |
| `labels` | `object` | Optional. Resource labels. |
| `name` | `string` | Required. The resource name of the config. Must be in the format of, `projects/{project}/location... |
| `updateTime` | `string` | Output only. The last-modified time. |

### `GoogleCloudEventarcV1PipelineDestination`

Represents a target of an invocation over HTTP.

| Property | Type | Description |
|----------|------|-------------|
| `authenticationConfig` | `GoogleCloudEventarcV1PipelineDestinationAuthenticationConfig` | Optional. An authentication config used to authenticate message requests, such that destinations ... |
| `httpEndpoint` | `GoogleCloudEventarcV1PipelineDestinationHttpEndpoint` | Optional. An HTTP endpoint destination described by an URI. If a DNS FQDN is provided as the endp... |
| `messageBus` | `string` | Optional. The resource name of the Message Bus to which events should be published. The Message B... |
| `networkConfig` | `GoogleCloudEventarcV1PipelineDestinationNetworkConfig` | Optional. Network config is used to configure how Pipeline resolves and connects to a destination. |
| `outputPayloadFormat` | `GoogleCloudEventarcV1PipelineMessagePayloadFormat` | Optional. The message format before it is delivered to the destination. If not set, the message w... |
| `topic` | `string` | Optional. The resource name of the Pub/Sub topic to which events should be published. Format: `pr... |
| `workflow` | `string` | Optional. The resource name of the Workflow whose Executions are triggered by the events. The Wor... |

### `GoogleCloudEventarcV1PipelineDestinationAuthenticationConfig`

Represents a config used to authenticate message requests.

| Property | Type | Description |
|----------|------|-------------|
| `googleOidc` | `GoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOidcToken` | Optional. This authenticate method will apply Google OIDC tokens signed by a Google Cloud service... |
| `oauthToken` | `GoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOAuthToken` | Optional. If specified, an [OAuth token](https://developers.google.com/identity/protocols/OAuth2)... |

### `GoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOAuthToken`

Contains information needed for generating an [OAuth token](https://developers.google.com/identity/protocols/OAuth2). This type of authorization should generally only be used when calling Google APIs hosted on *.googleapis.com.

| Property | Type | Description |
|----------|------|-------------|
| `scope` | `string` | Optional. OAuth scope to be used for generating OAuth access token. If not specified, "https://ww... |
| `serviceAccount` | `string` | Required. Service account email used to generate the [OAuth token](https://developers.google.com/... |

### `GoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOidcToken`

Represents a config used to authenticate with a Google OIDC token using a Google Cloud service account. Use this authentication method to invoke your Cloud Run and Cloud Functions destinations or HTTP endpoints that support Google OIDC.

| Property | Type | Description |
|----------|------|-------------|
| `audience` | `string` | Optional. Audience to be used to generate the OIDC Token. The audience claim identifies the recip... |
| `serviceAccount` | `string` | Required. Service account email used to generate the OIDC Token. The principal who calls this API... |

### `GoogleCloudEventarcV1PipelineDestinationHttpEndpoint`

Represents a HTTP endpoint destination.

| Property | Type | Description |
|----------|------|-------------|
| `messageBindingTemplate` | `string` | Optional. The CEL expression used to modify how the destination-bound HTTP request is constructed... |
| `uri` | `string` | Required. The URI of the HTTP endpoint. The value must be a RFC2396 URI string. Examples: `https:... |

### `GoogleCloudEventarcV1PipelineDestinationNetworkConfig`

Represents a network config to be used for destination resolution and connectivity.

| Property | Type | Description |
|----------|------|-------------|
| `networkAttachment` | `string` | Required. Name of the NetworkAttachment that allows access to the consumer VPC. Format: `projects... |

### `GoogleCloudEventarcV1PipelineMediation`

Mediation defines different ways to modify the Pipeline.

| Property | Type | Description |
|----------|------|-------------|
| `transformation` | `GoogleCloudEventarcV1PipelineMediationTransformation` | Optional. How the Pipeline is to transform messages |

### `GoogleCloudEventarcV1PipelineMediationTransformation`

Transformation defines the way to transform an incoming message.

| Property | Type | Description |
|----------|------|-------------|
| `transformationTemplate` | `string` | Optional. The CEL expression template to apply to transform messages. The following CEL extension... |

### `GoogleCloudEventarcV1PipelineMessagePayloadFormat`

Represents the format of message data.

| Property | Type | Description |
|----------|------|-------------|
| `avro` | `GoogleCloudEventarcV1PipelineMessagePayloadFormatAvroFormat` | Optional. Avro format. |
| `json` | `GoogleCloudEventarcV1PipelineMessagePayloadFormatJsonFormat` | Optional. JSON format. |
| `protobuf` | `GoogleCloudEventarcV1PipelineMessagePayloadFormatProtobufFormat` | Optional. Protobuf format. |

### `GoogleCloudEventarcV1PipelineMessagePayloadFormatAvroFormat`

The format of an AVRO message payload.

| Property | Type | Description |
|----------|------|-------------|
| `schemaDefinition` | `string` | Optional. The entire schema definition is stored in this field. |

### `GoogleCloudEventarcV1PipelineMessagePayloadFormatJsonFormat`

The format of a JSON message payload.

### `GoogleCloudEventarcV1PipelineMessagePayloadFormatProtobufFormat`

The format of a Protobuf message payload.

| Property | Type | Description |
|----------|------|-------------|
| `schemaDefinition` | `string` | Optional. The entire schema definition is stored in this field. |

### `GoogleCloudEventarcV1PipelineRetryPolicy`

The retry policy configuration for the Pipeline. The pipeline exponentially backs off in case the destination is non responsive or returns a retryable error code. The default semantics are as follows: The backoff starts with a 5 second delay and doubles the delay after each failed attempt (10 seconds, 20 seconds, 40 seconds, etc.). The delay is capped at 60 seconds by default. Please note that if you set the min_retry_delay and max_retry_delay fields to the same value this will make the duration between retries constant.

| Property | Type | Description |
|----------|------|-------------|
| `maxAttempts` | `integer` | Optional. The maximum number of delivery attempts for any message. The value must be between 1 an... |
| `maxRetryDelay` | `string` | Optional. The maximum amount of seconds to wait between retry attempts. The value must be between... |
| `minRetryDelay` | `string` | Optional. The minimum amount of seconds to wait between retry attempts. The value must be between... |

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

### `HttpEndpoint`

Represents a HTTP endpoint destination.

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` | Required. The URI of the HTTP endpoint. The value must be a RFC2396 URI string. Examples: `http:/... |

### `ListChannelConnectionsResponse`

The response message for the `ListChannelConnections` method.

| Property | Type | Description |
|----------|------|-------------|
| `channelConnections` | `array<ChannelConnection>` | The requested channel connections, up to the number specified in `page_size`. |
| `nextPageToken` | `string` | A page token that can be sent to `ListChannelConnections` to request the next page. If this is em... |
| `unreachable` | `array<string>` | Unreachable resources, if any. |

### `ListChannelsResponse`

The response message for the `ListChannels` method.

| Property | Type | Description |
|----------|------|-------------|
| `channels` | `array<Channel>` | The requested channels, up to the number specified in `page_size`. |
| `nextPageToken` | `string` | A page token that can be sent to `ListChannels` to request the next page. If this is empty, then ... |
| `unreachable` | `array<string>` | Unreachable resources, if any. |

### `ListEnrollmentsResponse`

The response message for the `ListEnrollments` method.

| Property | Type | Description |
|----------|------|-------------|
| `enrollments` | `array<Enrollment>` | The requested Enrollments, up to the number specified in `page_size`. |
| `nextPageToken` | `string` | A page token that can be sent to `ListEnrollments` to request the next page. If this is empty, th... |
| `unreachable` | `array<string>` | Unreachable resources, if any. |

### `ListGoogleApiSourcesResponse`

The response message for the `ListGoogleApiSources` method.

| Property | Type | Description |
|----------|------|-------------|
| `googleApiSources` | `array<GoogleApiSource>` | The requested GoogleApiSources, up to the number specified in `page_size`. |
| `nextPageToken` | `string` | A page token that can be sent to `ListMessageBusEnrollments` to request the next page. If this is... |
| `unreachable` | `array<string>` | Unreachable resources, if any. |

### `ListLocationsResponse`

The response message for Locations.ListLocations.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<Location>` | A list of locations that matches the specified filter in the request. |
| `nextPageToken` | `string` | The standard List next-page token. |

### `ListMessageBusEnrollmentsResponse`

The response message for the `ListMessageBusEnrollments` method.`

| Property | Type | Description |
|----------|------|-------------|
| `enrollments` | `array<string>` | The requested enrollments, up to the number specified in `page_size`. |
| `nextPageToken` | `string` | A page token that can be sent to `ListMessageBusEnrollments` to request the next page. If this is... |
| `unreachable` | `array<string>` | Unreachable resources, if any. |

### `ListMessageBusesResponse`

The response message for the `ListMessageBuses` method.

| Property | Type | Description |
|----------|------|-------------|
| `messageBuses` | `array<MessageBus>` | The requested message buses, up to the number specified in `page_size`. |
| `nextPageToken` | `string` | A page token that can be sent to `ListMessageBuses` to request the next page. If this is empty, t... |
| `unreachable` | `array<string>` | Unreachable resources, if any. |

### `ListPipelinesResponse`

The response message for the ListPipelines method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A page token that can be sent to `ListPipelines` to request the next page. If this is empty, then... |
| `pipelines` | `array<Pipeline>` | The requested pipelines, up to the number specified in `page_size`. |
| `unreachable` | `array<string>` | Unreachable resources, if any. |

### `ListProvidersResponse`

The response message for the `ListProviders` method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A page token that can be sent to `ListProviders` to request the next page. If this is empty, then... |
| `providers` | `array<Provider>` | The requested providers, up to the number specified in `page_size`. |
| `unreachable` | `array<string>` | Unreachable resources, if any. |

### `ListTriggersResponse`

The response message for the `ListTriggers` method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A page token that can be sent to `ListTriggers` to request the next page. If this is empty, then ... |
| `triggers` | `array<Trigger>` | The requested triggers, up to the number specified in `page_size`. |
| `unreachable` | `array<string>` | Unreachable resources, if any. |

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `LoggingConfig`

The configuration for Platform Telemetry logging for Eventarc Advanced resources.

| Property | Type | Description |
|----------|------|-------------|
| `logSeverity` | `string` | Optional. The minimum severity of logs that will be sent to Stackdriver/Platform Telemetry. Logs ... |

### `MessageBus`

MessageBus for the messages flowing through the system. The admin has visibility and control over the messages being published and consumed and can restrict publishers and subscribers to only a subset of data available in the system by defining authorization policies.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. Resource annotations. |
| `createTime` | `string` | Output only. The creation time. |
| `cryptoKeyName` | `string` | Optional. Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt their e... |
| `displayName` | `string` | Optional. Resource display name. |
| `etag` | `string` | Output only. This checksum is computed by the server based on the value of other fields, and migh... |
| `labels` | `object` | Optional. Resource labels. |
| `loggingConfig` | `LoggingConfig` | Optional. Config to control Platform logging for the Message Bus. This log configuration is appli... |
| `name` | `string` | Identifier. Resource name of the form projects/{project}/locations/{location}/messageBuses/{messa... |
| `uid` | `string` | Output only. Server assigned unique identifier for the channel. The value is a UUID4 string and g... |
| `updateTime` | `string` | Output only. The last-modified time. |

### `NetworkConfig`

Network Configuration that can be inherited by other protos.

| Property | Type | Description |
|----------|------|-------------|
| `networkAttachment` | `string` | Required. Name of the NetworkAttachment that allows access to the customer's VPC. Format: `projec... |

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

### `OrganizationSubscription`

Config to enabled subscribing to events from other projects in the org.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Required. Enable org level subscription. |

### `Pipeline`

A representation of the Pipeline resource.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. User-defined annotations. See https://google.aip.dev/128#annotations. |
| `createTime` | `string` | Output only. The creation time. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolut... |
| `cryptoKeyName` | `string` | Optional. Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt the eve... |
| `destinations` | `array<GoogleCloudEventarcV1PipelineDestination>` | Required. List of destinations to which messages will be forwarded. Currently, exactly one destin... |
| `displayName` | `string` | Optional. Display name of resource. |
| `etag` | `string` | Output only. This checksum is computed by the server based on the value of other fields, and migh... |
| `inputPayloadFormat` | `GoogleCloudEventarcV1PipelineMessagePayloadFormat` | Optional. The payload format expected for the messages received by the Pipeline. If input_payload... |
| `labels` | `object` | Optional. User labels attached to the Pipeline that can be used to group resources. An object con... |
| `loggingConfig` | `LoggingConfig` | Optional. Config to control Platform Logging for Pipelines. |
| `mediations` | `array<GoogleCloudEventarcV1PipelineMediation>` | Optional. List of mediation operations to be performed on the message. Currently, only one Transf... |
| `name` | `string` | Identifier. The resource name of the Pipeline. Must be unique within the location of the project ... |
| `retryPolicy` | `GoogleCloudEventarcV1PipelineRetryPolicy` | Optional. The retry policy to use in the pipeline. |
| `satisfiesPzs` | `boolean` | Output only. Whether or not this Pipeline satisfies the requirements of physical zone separation |
| `uid` | `string` | Output only. Server-assigned unique identifier for the Pipeline. The value is a UUID4 string and ... |
| `updateTime` | `string` | Output only. The last-modified time. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond re... |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `auditConfigs` | `array<AuditConfig>` | Specifies cloud audit logging configuration for this policy. |
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `ProjectSubscriptions`

Config to enable subscribing to all events from a list of projects.

| Property | Type | Description |
|----------|------|-------------|
| `list` | `array<string>` | Required. A list of projects to receive events from. All the projects must be in the same org. Th... |

### `Provider`

A representation of the Provider resource.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Output only. Human friendly name for the Provider. For example "Cloud Storage". |
| `eventTypes` | `array<EventType>` | Output only. Event types for this provider. |
| `name` | `string` | Output only. In `projects/{project}/locations/{location}/providers/{provider_id}` format. |

### `Pubsub`

Represents a Pub/Sub transport.

| Property | Type | Description |
|----------|------|-------------|
| `subscription` | `string` | Output only. The name of the Pub/Sub subscription created and managed by Eventarc as a transport ... |
| `topic` | `string` | Optional. The name of the Pub/Sub topic created and managed by Eventarc as a transport for the ev... |

### `RetryPolicy`

The retry policy configuration for the Trigger. Can only be set with Cloud Run destinations.

| Property | Type | Description |
|----------|------|-------------|
| `maxAttempts` | `integer` | Optional. The maximum number of delivery attempts for any message. The only valid value is 1. |

### `SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |
| `updateMask` | `string` | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mas... |

### `StateCondition`

A condition that is part of the trigger state computation.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | The canonical code of the condition. |
| `message` | `string` | Human-readable message. |

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

### `Transport`

Represents the transport intermediaries created for the trigger to deliver events.

| Property | Type | Description |
|----------|------|-------------|
| `pubsub` | `Pubsub` | The Pub/Sub topic and subscription used by Eventarc as a transport intermediary. |

### `Trigger`

A representation of the trigger resource.

| Property | Type | Description |
|----------|------|-------------|
| `channel` | `string` | Optional. The name of the channel associated with the trigger in `projects/{project}/locations/{l... |
| `conditions` | `object` | Output only. The reason(s) why a trigger is in FAILED state. |
| `createTime` | `string` | Output only. The creation time. |
| `destination` | `Destination` | Required. Destination specifies where the events should be sent to. |
| `etag` | `string` | Output only. This checksum is computed by the server based on the value of other fields, and migh... |
| `eventDataContentType` | `string` | Optional. EventDataContentType specifies the type of payload in MIME format that is expected from... |
| `eventFilters` | `array<EventFilter>` | Required. Unordered list. The list of filters that applies to event attributes. Only events that ... |
| `labels` | `object` | Optional. User labels attached to the triggers that can be used to group resources. |
| `name` | `string` | Required. The resource name of the trigger. Must be unique within the location of the project and... |
| `retryPolicy` | `RetryPolicy` | Optional. The retry policy to use in the Trigger. If unset, event delivery will be retried for up... |
| `satisfiesPzs` | `boolean` | Output only. Whether or not this Trigger satisfies the requirements of physical zone separation |
| `serviceAccount` | `string` | Optional. The IAM service account email associated with the trigger. The service account represen... |
| `transport` | `Transport` | Optional. To deliver messages, Eventarc might use other Google Cloud products as a transport inte... |
| `uid` | `string` | Output only. Server-assigned unique identifier for the trigger. The value is a UUID4 string and g... |
| `updateTime` | `string` | Output only. The last-modified time. |

