# App Hub API - API Reference

**Version**: `v1` | **Methods**: 40 | **Schemas**: 50

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `apphub.projects.locations.updateBoundary` | PATCH | `v1/{+name}` | Updates a Boundary. |
| `apphub.projects.locations.getBoundary` | GET | `v1/{+name}` | Gets a Boundary. |
| `apphub.projects.locations.lookupServiceProjectAttachment` | GET | `v1/{+name}:lookupServiceProjectAttachment` | Lists a service project attachment for a given service project. You can call this API from any pr... |
| `apphub.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `apphub.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `apphub.projects.locations.detachServiceProjectAttachment` | POST | `v1/{+name}:detachServiceProjectAttachment` | Detaches a service project from a host project. You can call this API from any service project wi... |
| `apphub.projects.locations.discoveredServices.list` | GET | `v1/{+parent}/discoveredServices` | Lists Discovered Services that can be added to an Application in a host project and location. |
| `apphub.projects.locations.discoveredServices.lookup` | GET | `v1/{+parent}/discoveredServices:lookup` | Lists a Discovered Service in a host project and location, with a given resource URI. |
| `apphub.projects.locations.discoveredServices.get` | GET | `v1/{+name}` | Gets a Discovered Service in a host project and location. |
| `apphub.projects.locations.extendedMetadataSchemas.get` | GET | `v1/{+name}` | Gets an Extended Metadata Schema. |
| `apphub.projects.locations.extendedMetadataSchemas.list` | GET | `v1/{+parent}/extendedMetadataSchemas` | Lists Extended Metadata Schemas available in a host project and location. |
| `apphub.projects.locations.discoveredWorkloads.lookup` | GET | `v1/{+parent}/discoveredWorkloads:lookup` | Lists a Discovered Workload in a host project and location, with a given resource URI. |
| `apphub.projects.locations.discoveredWorkloads.get` | GET | `v1/{+name}` | Gets a Discovered Workload in a host project and location. |
| `apphub.projects.locations.discoveredWorkloads.list` | GET | `v1/{+parent}/discoveredWorkloads` | Lists Discovered Workloads that can be added to an Application in a host project and location. |
| `apphub.projects.locations.applications.get` | GET | `v1/{+name}` | Gets an Application in a host project and location. |
| `apphub.projects.locations.applications.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `apphub.projects.locations.applications.patch` | PATCH | `v1/{+name}` | Updates an Application in a host project and location. |
| `apphub.projects.locations.applications.delete` | DELETE | `v1/{+name}` | Deletes an Application in a host project and location. |
| `apphub.projects.locations.applications.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `apphub.projects.locations.applications.list` | GET | `v1/{+parent}/applications` | Lists Applications in a host project and location. |
| `apphub.projects.locations.applications.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `apphub.projects.locations.applications.create` | POST | `v1/{+parent}/applications` | Creates an Application in a host project and location. |
| `apphub.projects.locations.applications.workloads.create` | POST | `v1/{+parent}/workloads` | Creates a Workload in an Application. |
| `apphub.projects.locations.applications.workloads.get` | GET | `v1/{+name}` | Gets a Workload in an Application. |
| `apphub.projects.locations.applications.workloads.list` | GET | `v1/{+parent}/workloads` | Lists Workloads in an Application. |
| `apphub.projects.locations.applications.workloads.patch` | PATCH | `v1/{+name}` | Updates a Workload in an Application. |
| `apphub.projects.locations.applications.workloads.delete` | DELETE | `v1/{+name}` | Deletes a Workload from an Application. |
| `apphub.projects.locations.applications.services.list` | GET | `v1/{+parent}/services` | Lists Services in an Application. |
| `apphub.projects.locations.applications.services.create` | POST | `v1/{+parent}/services` | Creates a Service in an Application. |
| `apphub.projects.locations.applications.services.patch` | PATCH | `v1/{+name}` | Updates a Service in an Application. |
| `apphub.projects.locations.applications.services.get` | GET | `v1/{+name}` | Gets a Service in an Application. |
| `apphub.projects.locations.applications.services.delete` | DELETE | `v1/{+name}` | Deletes a Service from an Application. |
| `apphub.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `apphub.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `apphub.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `apphub.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `apphub.projects.locations.serviceProjectAttachments.create` | POST | `v1/{+parent}/serviceProjectAttachments` | Attaches a service project to the host project. |
| `apphub.projects.locations.serviceProjectAttachments.list` | GET | `v1/{+parent}/serviceProjectAttachments` | Lists service projects attached to the host project. |
| `apphub.projects.locations.serviceProjectAttachments.delete` | DELETE | `v1/{+name}` | Deletes a service project attachment. |
| `apphub.projects.locations.serviceProjectAttachments.get` | GET | `v1/{+name}` | Gets a service project attachment. |

### `apphub.projects.locations.updateBoundary`

**PATCH** `v1/{+name}`

Updates a Boundary.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the boundary. Format: "projects/{project}/locations/{location}/boundary" |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the Boundary resource by the update. The fiel... |

**Request body**: `Boundary`

**Response**: `Operation`

```typescript
const res = await apphub.locations.updateBoundary({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apphub.projects.locations.getBoundary`

**GET** `v1/{+name}`

Gets a Boundary.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the boundary to retrieve. Format: `projects/{project}/locations/{location}/boundary`. |

**Response**: `Boundary`

```typescript
const res = await apphub.locations.getBoundary({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apphub.projects.locations.lookupServiceProjectAttachment`

**GET** `v1/{+name}:lookupServiceProjectAttachment`

Lists a service project attachment for a given service project. You can call this API from any project to find if it is attached to a host project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Service project ID and location to lookup service project attachment for. Only global location is supported... |

**Response**: `LookupServiceProjectAttachmentResponse`

```typescript
const res = await apphub.locations.lookupServiceProjectAttachment({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apphub.projects.locations.list`

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
const res = await apphub.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apphub.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await apphub.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apphub.projects.locations.detachServiceProjectAttachment`

**POST** `v1/{+name}:detachServiceProjectAttachment`

Detaches a service project from a host project. You can call this API from any service project without needing access to the host project that it is attached to.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Service project id and location to detach from a host project. Only global location is supported. Expected ... |

**Request body**: `DetachServiceProjectAttachmentRequest`

**Response**: `DetachServiceProjectAttachmentResponse`

```typescript
const res = await apphub.locations.detachServiceProjectAttachment({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apphub.projects.locations.discoveredServices.list`

**GET** `v1/{+parent}/discoveredServices`

Lists Discovered Services that can be added to an Application in a host project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Project and location to list Discovered Services on. Expected format: `projects/{project}/locations/{locati... |
| `filter` | `string` | query | No | Optional. Filtering results. |
| `orderBy` | `string` | query | No | Optional. Hint for how to order the results. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListDiscoveredServicesResponse`

```typescript
const res = await apphub.discoveredServices.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apphub.projects.locations.discoveredServices.lookup`

**GET** `v1/{+parent}/discoveredServices:lookup`

Lists a Discovered Service in a host project and location, with a given resource URI.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Host project ID and location to lookup Discovered Service in. Expected format: `projects/{project}/location... |
| `uri` | `string` | query | No | Required. Resource URI to find DiscoveredService for. Accepts both project number and project ID and does translation... |

**Response**: `LookupDiscoveredServiceResponse`

```typescript
const res = await apphub.discoveredServices.lookup({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apphub.projects.locations.discoveredServices.get`

**GET** `v1/{+name}`

Gets a Discovered Service in a host project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Fully qualified name of the Discovered Service to fetch. Expected format: `projects/{project}/locations/{lo... |

**Response**: `DiscoveredService`

```typescript
const res = await apphub.discoveredServices.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apphub.projects.locations.extendedMetadataSchemas.get`

**GET** `v1/{+name}`

Gets an Extended Metadata Schema.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Schema resource name. Format: `projects/{project}/locations/{location}/extendedMetadataSchemas/{extended_me... |

**Response**: `ExtendedMetadataSchema`

```typescript
const res = await apphub.extendedMetadataSchemas.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apphub.projects.locations.extendedMetadataSchemas.list`

**GET** `v1/{+parent}/extendedMetadataSchemas`

Lists Extended Metadata Schemas available in a host project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Project and location to list Extended Metadata Schemas on. Expected format: `projects/{project}/locations/{... |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListExtendedMetadataSchemasResponse`

```typescript
const res = await apphub.extendedMetadataSchemas.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apphub.projects.locations.discoveredWorkloads.lookup`

**GET** `v1/{+parent}/discoveredWorkloads:lookup`

Lists a Discovered Workload in a host project and location, with a given resource URI.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Host project ID and location to lookup Discovered Workload in. Expected format: `projects/{project}/locatio... |
| `uri` | `string` | query | No | Required. Resource URI to find Discovered Workload for. Accepts both project number and project ID and does translati... |

**Response**: `LookupDiscoveredWorkloadResponse`

```typescript
const res = await apphub.discoveredWorkloads.lookup({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apphub.projects.locations.discoveredWorkloads.get`

**GET** `v1/{+name}`

Gets a Discovered Workload in a host project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Fully qualified name of the Discovered Workload to fetch. Expected format: `projects/{project}/locations/{l... |

**Response**: `DiscoveredWorkload`

```typescript
const res = await apphub.discoveredWorkloads.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apphub.projects.locations.discoveredWorkloads.list`

**GET** `v1/{+parent}/discoveredWorkloads`

Lists Discovered Workloads that can be added to an Application in a host project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Project and location to list Discovered Workloads on. Expected format: `projects/{project}/locations/{locat... |
| `filter` | `string` | query | No | Optional. Filtering results. |
| `orderBy` | `string` | query | No | Optional. Hint for how to order the results. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListDiscoveredWorkloadsResponse`

```typescript
const res = await apphub.discoveredWorkloads.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apphub.projects.locations.applications.get`

**GET** `v1/{+name}`

Gets an Application in a host project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Fully qualified name of the Application to fetch. Expected format: `projects/{project}/locations/{location}... |

**Response**: `Application`

```typescript
const res = await apphub.applications.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apphub.projects.locations.applications.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await apphub.applications.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apphub.projects.locations.applications.patch`

**PATCH** `v1/{+name}`

Updates an Application in a host project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of an Application. Format: `"projects/{host-project-id}/locations/{location}/applicatio... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the Application resource by the update. The f... |

**Request body**: `Application`

**Response**: `Operation`

```typescript
const res = await apphub.applications.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apphub.projects.locations.applications.delete`

**DELETE** `v1/{+name}`

Deletes an Application in a host project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Fully qualified name of the Application to delete. Expected format: `projects/{project}/locations/{location... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `Operation`

```typescript
const res = await apphub.applications.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apphub.projects.locations.applications.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await apphub.applications.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apphub.projects.locations.applications.list`

**GET** `v1/{+parent}/applications`

Lists Applications in a host project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Project and location to list Applications on. Expected format: `projects/{project}/locations/{location}`. |
| `filter` | `string` | query | No | Optional. Filtering results. |
| `orderBy` | `string` | query | No | Optional. Hint for how to order the results. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListApplicationsResponse`

```typescript
const res = await apphub.applications.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apphub.projects.locations.applications.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await apphub.applications.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apphub.projects.locations.applications.create`

**POST** `v1/{+parent}/applications`

Creates an Application in a host project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Project and location to create Application in. Expected format: `projects/{project}/locations/{location}`. |
| `applicationId` | `string` | query | No | Required. The Application identifier. Must contain only lowercase letters, numbers or hyphens, with the first charact... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `Application`

**Response**: `Operation`

```typescript
const res = await apphub.applications.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apphub.projects.locations.applications.workloads.create`

**POST** `v1/{+parent}/workloads`

Creates a Workload in an Application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Fully qualified name of the Application to create Workload in. Expected format: `projects/{project}/locatio... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `workloadId` | `string` | query | No | Required. The Workload identifier. Must contain only lowercase letters, numbers or hyphens, with the first character ... |

**Request body**: `Workload`

**Response**: `Operation`

```typescript
const res = await apphub.workloads.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apphub.projects.locations.applications.workloads.get`

**GET** `v1/{+name}`

Gets a Workload in an Application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Fully qualified name of the Workload to fetch. Expected format: `projects/{project}/locations/{location}/ap... |

**Response**: `Workload`

```typescript
const res = await apphub.workloads.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apphub.projects.locations.applications.workloads.list`

**GET** `v1/{+parent}/workloads`

Lists Workloads in an Application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Fully qualified name of the parent Application to list Workloads for. Expected format: `projects/{project}/... |
| `filter` | `string` | query | No | Optional. Filtering results. |
| `orderBy` | `string` | query | No | Optional. Hint for how to order the results. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListWorkloadsResponse`

```typescript
const res = await apphub.workloads.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apphub.projects.locations.applications.workloads.patch`

**PATCH** `v1/{+name}`

Updates a Workload in an Application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the Workload. Format: `"projects/{host-project-id}/locations/{location}/applications... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the Workload resource by the update. The fiel... |

**Request body**: `Workload`

**Response**: `Operation`

```typescript
const res = await apphub.workloads.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apphub.projects.locations.applications.workloads.delete`

**DELETE** `v1/{+name}`

Deletes a Workload from an Application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Fully qualified name of the Workload to delete from an Application. Expected format: `projects/{project}/lo... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `Operation`

```typescript
const res = await apphub.workloads.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apphub.projects.locations.applications.services.list`

**GET** `v1/{+parent}/services`

Lists Services in an Application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Fully qualified name of the parent Application to list Services for. Expected format: `projects/{project}/l... |
| `filter` | `string` | query | No | Optional. Filtering results |
| `orderBy` | `string` | query | No | Optional. Hint for how to order the results |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListServicesResponse`

```typescript
const res = await apphub.services.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apphub.projects.locations.applications.services.create`

**POST** `v1/{+parent}/services`

Creates a Service in an Application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Fully qualified name of the parent Application to create the Service in. Expected format: `projects/{projec... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `serviceId` | `string` | query | No | Required. The Service identifier. Must contain only lowercase letters, numbers or hyphens, with the first character a... |

**Request body**: `Service`

**Response**: `Operation`

```typescript
const res = await apphub.services.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apphub.projects.locations.applications.services.patch`

**PATCH** `v1/{+name}`

Updates a Service in an Application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of a Service. Format: `"projects/{host-project-id}/locations/{location}/applications/{a... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the Service resource by the update. The field... |

**Request body**: `Service`

**Response**: `Operation`

```typescript
const res = await apphub.services.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apphub.projects.locations.applications.services.get`

**GET** `v1/{+name}`

Gets a Service in an Application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Fully qualified name of the Service to fetch. Expected format: `projects/{project}/locations/{location}/app... |

**Response**: `Service`

```typescript
const res = await apphub.services.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apphub.projects.locations.applications.services.delete`

**DELETE** `v1/{+name}`

Deletes a Service from an Application.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Fully qualified name of the Service to delete from an Application. Expected format: `projects/{project}/loc... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `Operation`

```typescript
const res = await apphub.services.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apphub.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await apphub.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apphub.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await apphub.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apphub.projects.locations.operations.list`

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
const res = await apphub.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apphub.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await apphub.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apphub.projects.locations.serviceProjectAttachments.create`

**POST** `v1/{+parent}/serviceProjectAttachments`

Attaches a service project to the host project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Host project ID and location to which service project is being attached. Only global location is supported.... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `serviceProjectAttachmentId` | `string` | query | No | Required. The service project attachment identifier must contain the project id of the service project specified in t... |

**Request body**: `ServiceProjectAttachment`

**Response**: `Operation`

```typescript
const res = await apphub.serviceProjectAttachments.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apphub.projects.locations.serviceProjectAttachments.list`

**GET** `v1/{+parent}/serviceProjectAttachments`

Lists service projects attached to the host project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Host project ID and location to list service project attachments. Only global location is supported. Expect... |
| `filter` | `string` | query | No | Optional. Filtering results. |
| `orderBy` | `string` | query | No | Optional. Hint for how to order the results. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListServiceProjectAttachmentsResponse`

```typescript
const res = await apphub.serviceProjectAttachments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apphub.projects.locations.serviceProjectAttachments.delete`

**DELETE** `v1/{+name}`

Deletes a service project attachment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Fully qualified name of the service project attachment to delete. Expected format: `projects/{project}/loca... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `Operation`

```typescript
const res = await apphub.serviceProjectAttachments.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apphub.projects.locations.serviceProjectAttachments.get`

**GET** `v1/{+name}`

Gets a service project attachment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Fully qualified name of the service project attachment to retrieve. Expected format: `projects/{project}/lo... |

**Response**: `ServiceProjectAttachment`

```typescript
const res = await apphub.serviceProjectAttachments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `Application`

Application defines the governance boundary for App Hub entities that perform a logical end-to-end business function. App Hub supports application level IAM permission to align with governance requirements.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `Attributes` | Optional. Consumer provided attributes. |
| `createTime` | `string` | Output only. Create time. |
| `description` | `string` | Optional. User-defined description of an Application. Can have a maximum length of 2048 characters. |
| `displayName` | `string` | Optional. User-defined name for the Application. Can have a maximum length of 63 characters. |
| `name` | `string` | Identifier. The resource name of an Application. Format: `"projects/{host-project-id}/locations/{... |
| `scope` | `Scope` | Required. Immutable. Defines what data can be included into this Application. Limits which Servic... |
| `state` | `string` | Output only. Application state. |
| `uid` | `string` | Output only. A universally unique identifier (in UUID4 format) for the `Application`. |
| `updateTime` | `string` | Output only. Update time. |

### `Attributes`

Consumer provided attributes.

| Property | Type | Description |
|----------|------|-------------|
| `businessOwners` | `array<ContactInfo>` | Optional. Business team that ensures user needs are met and value is delivered |
| `criticality` | `Criticality` | Optional. User-defined criticality information. |
| `developerOwners` | `array<ContactInfo>` | Optional. Developer team that owns development and coding. |
| `environment` | `Environment` | Optional. User-defined environment information. |
| `operatorOwners` | `array<ContactInfo>` | Optional. Operator team that ensures runtime and operations. |

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

### `Boundary`

Application management boundary.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Create time. |
| `crmNode` | `string` | Optional. The resource name of the CRM node being attached to the boundary. Format: `projects/{pr... |
| `name` | `string` | Identifier. The resource name of the boundary. Format: "projects/{project}/locations/{location}/b... |
| `type` | `string` | Output only. Boundary type. |
| `updateTime` | `string` | Output only. Update time. |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `ContactInfo`

Contact information of stakeholders.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Optional. Contact's name. Can have a maximum length of 63 characters. |
| `email` | `string` | Required. Email address of the contacts. |

### `Criticality`

Criticality of the Application, Service, or Workload

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | Required. Criticality Type. |

### `DetachServiceProjectAttachmentRequest`

Request for DetachServiceProjectAttachment.

### `DetachServiceProjectAttachmentResponse`

Response for DetachServiceProjectAttachment.

### `DiscoveredService`

DiscoveredService is a network or API interface that exposes some functionality to clients for consumption over the network. A discovered service can be registered to a App Hub service.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Identifier. The resource name of the discovered service. Format: `"projects/{host-project-id}/loc... |
| `serviceProperties` | `ServiceProperties` | Output only. Properties of an underlying compute resource that can comprise a Service. These are ... |
| `serviceReference` | `ServiceReference` | Output only. Reference to an underlying networking resource that can comprise a Service. These ar... |

### `DiscoveredWorkload`

DiscoveredWorkload is a binary deployment (such as managed instance groups (MIGs) and GKE deployments) that performs the smallest logical subset of business functionality. A discovered workload can be registered to an App Hub Workload.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Identifier. The resource name of the discovered workload. Format: `"projects/{host-project-id}/lo... |
| `workloadProperties` | `WorkloadProperties` | Output only. Properties of an underlying compute resource represented by the Workload. These are ... |
| `workloadReference` | `WorkloadReference` | Output only. Reference of an underlying compute resource represented by the Workload. These are i... |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Environment`

Environment of the Application, Service, or Workload

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | Required. Environment Type. |

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `ExtendedMetadata`

Additional metadata for a Service or Workload.

| Property | Type | Description |
|----------|------|-------------|
| `metadataStruct` | `object` | Output only. The metadata contents. |

### `ExtendedMetadataSchema`

ExtendedMetadataSchema represents a schema for extended metadata of a service or workload.

| Property | Type | Description |
|----------|------|-------------|
| `jsonSchema` | `string` | Output only. The JSON schema as a string. |
| `name` | `string` | Identifier. Resource name of the schema. Format: projects//locations//extendedMetadataSchemas/ |
| `schemaVersion` | `string` | Output only. The version of the schema. New versions are required to be backwards compatible. |

### `FunctionalType`

The functional type of a service or workload.

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | Output only. The functional type of a service or workload. |

### `Identity`

The identity associated with a service or workload.

| Property | Type | Description |
|----------|------|-------------|
| `principal` | `string` | Output only. The principal of the identity. Supported formats: * `sa://my-sa@PROJECT_ID.iam.gserv... |

### `ListApplicationsResponse`

Response for ListApplications.

| Property | Type | Description |
|----------|------|-------------|
| `applications` | `array<Application>` | List of Applications. |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListDiscoveredServicesResponse`

Response for ListDiscoveredServices.

| Property | Type | Description |
|----------|------|-------------|
| `discoveredServices` | `array<DiscoveredService>` | List of Discovered Services. |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListDiscoveredWorkloadsResponse`

Response for ListDiscoveredWorkloads.

| Property | Type | Description |
|----------|------|-------------|
| `discoveredWorkloads` | `array<DiscoveredWorkload>` | List of Discovered Workloads. |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListExtendedMetadataSchemasResponse`

Response for ListExtendedMetadataSchemas.

| Property | Type | Description |
|----------|------|-------------|
| `extendedMetadataSchemas` | `array<ExtendedMetadataSchema>` | List of Extended Metadata Schemas. |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |

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

### `ListServiceProjectAttachmentsResponse`

Response for ListServiceProjectAttachments.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `serviceProjectAttachments` | `array<ServiceProjectAttachment>` | List of service project attachments. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListServicesResponse`

Response for ListServices.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `services` | `array<Service>` | List of Services. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListWorkloadsResponse`

Response for ListWorkloads.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `unreachable` | `array<string>` | Locations that could not be reached. |
| `workloads` | `array<Workload>` | List of Workloads. |

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `LookupDiscoveredServiceResponse`

Response for LookupDiscoveredService.

| Property | Type | Description |
|----------|------|-------------|
| `discoveredService` | `DiscoveredService` | Discovered Service if exists, empty otherwise. |

### `LookupDiscoveredWorkloadResponse`

Response for LookupDiscoveredWorkload.

| Property | Type | Description |
|----------|------|-------------|
| `discoveredWorkload` | `DiscoveredWorkload` | Discovered Workload if exists, empty otherwise. |

### `LookupServiceProjectAttachmentResponse`

Response for LookupServiceProjectAttachment.

| Property | Type | Description |
|----------|------|-------------|
| `serviceProjectAttachment` | `ServiceProjectAttachment` | Service project attachment for a project if exists, empty otherwise. |

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

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `auditConfigs` | `array<AuditConfig>` | Specifies cloud audit logging configuration for this policy. |
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `ReconciliationOperationMetadata`

Operation metadata returned by the CLH during resource state reconciliation.

| Property | Type | Description |
|----------|------|-------------|
| `deleteResource` | `boolean` | DEPRECATED. Use exclusive_action instead. |
| `exclusiveAction` | `string` | Excluisive action returned by the CLH. |

### `RegistrationType`

The registration type of a service.

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | Output only. The registration type of a service. |

### `Scope`

Scope of an application.

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | Required. Scope Type. |

### `Service`

Service is an App Hub data model that contains a discovered service, which represents a network or API interface that exposes some functionality to clients for consumption over the network.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `Attributes` | Optional. Consumer provided attributes. |
| `createTime` | `string` | Output only. Create time. |
| `description` | `string` | Optional. User-defined description of a Service. Can have a maximum length of 2048 characters. |
| `discoveredService` | `string` | Required. Immutable. The resource name of the original discovered service. |
| `displayName` | `string` | Optional. User-defined name for the Service. Can have a maximum length of 63 characters. |
| `name` | `string` | Identifier. The resource name of a Service. Format: `"projects/{host-project-id}/locations/{locat... |
| `serviceProperties` | `ServiceProperties` | Output only. Properties of an underlying compute resource that can comprise a Service. These are ... |
| `serviceReference` | `ServiceReference` | Output only. Reference to an underlying networking resource that can comprise a Service. These ar... |
| `state` | `string` | Output only. Service state. |
| `uid` | `string` | Output only. A universally unique identifier (UUID) for the `Service` in the UUID4 format. |
| `updateTime` | `string` | Output only. Update time. |

### `ServiceProjectAttachment`

ServiceProjectAttachment represents an attachment from a service project to a host project. Service projects contain the underlying cloud infrastructure resources, and expose these resources to the host project through a ServiceProjectAttachment. With the attachments, the host project can provide an aggregated view of resources across all service projects.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Create time. |
| `name` | `string` | Identifier. The resource name of a ServiceProjectAttachment. Format: `"projects/{host-project-id}... |
| `serviceProject` | `string` | Required. Immutable. Service project name in the format: `"projects/abc"` or `"projects/123"`. As... |
| `state` | `string` | Output only. ServiceProjectAttachment state. |
| `uid` | `string` | Output only. A globally unique identifier (in UUID4 format) for the `ServiceProjectAttachment`. |

### `ServiceProperties`

Properties of an underlying cloud resource that can comprise a Service.

| Property | Type | Description |
|----------|------|-------------|
| `extendedMetadata` | `object` | Output only. Additional metadata specific to the resource type. The key is a string that identifi... |
| `functionalType` | `FunctionalType` | Output only. The type of the service. |
| `gcpProject` | `string` | Output only. The service project identifier that the underlying cloud resource resides in. |
| `identity` | `Identity` | Output only. The identity associated with the service. |
| `location` | `string` | Output only. The location that the underlying resource resides in, for example, us-west1. |
| `registrationType` | `RegistrationType` | Output only. The registration type of the service. |
| `zone` | `string` | Output only. The location that the underlying resource resides in if it is zonal, for example, us... |

### `ServiceReference`

Reference to an underlying networking resource that can comprise a Service.

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` | Output only. The underlying resource URI. For example, URI of Forwarding Rule, URL Map, and Backe... |

### `SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |
| `updateMask` | `string` | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mas... |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

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

### `Workload`

Workload is an App Hub data model that contains a discovered workload, which represents a binary deployment (such as managed instance groups (MIGs) and GKE deployments) that performs the smallest logical subset of business functionality.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `Attributes` | Optional. Consumer provided attributes. |
| `createTime` | `string` | Output only. Create time. |
| `description` | `string` | Optional. User-defined description of a Workload. Can have a maximum length of 2048 characters. |
| `discoveredWorkload` | `string` | Required. Immutable. The resource name of the original discovered workload. |
| `displayName` | `string` | Optional. User-defined name for the Workload. Can have a maximum length of 63 characters. |
| `name` | `string` | Identifier. The resource name of the Workload. Format: `"projects/{host-project-id}/locations/{lo... |
| `state` | `string` | Output only. Workload state. |
| `uid` | `string` | Output only. A universally unique identifier (UUID) for the `Workload` in the UUID4 format. |
| `updateTime` | `string` | Output only. Update time. |
| `workloadProperties` | `WorkloadProperties` | Output only. Properties of an underlying compute resource represented by the Workload. These are ... |
| `workloadReference` | `WorkloadReference` | Output only. Reference of an underlying compute resource represented by the Workload. These are i... |

### `WorkloadProperties`

Properties of an underlying compute resource represented by the Workload.

| Property | Type | Description |
|----------|------|-------------|
| `extendedMetadata` | `object` | Output only. Additional metadata specific to the resource type. The key is a string that identifi... |
| `functionalType` | `FunctionalType` | Output only. The type of the workload. |
| `gcpProject` | `string` | Output only. The service project identifier that the underlying cloud resource resides in. Empty ... |
| `identity` | `Identity` | Output only. The identity associated with the workload. |
| `location` | `string` | Output only. The location that the underlying compute resource resides in (for example, us-west1). |
| `zone` | `string` | Output only. The location that the underlying compute resource resides in if it is zonal (for exa... |

### `WorkloadReference`

Reference of an underlying compute resource represented by the Workload.

| Property | Type | Description |
|----------|------|-------------|
| `uri` | `string` | Output only. The underlying compute resource uri. |

