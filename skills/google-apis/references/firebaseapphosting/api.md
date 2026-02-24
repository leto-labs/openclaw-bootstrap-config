# Firebase App Hosting API - API Reference

**Version**: `v1` | **Methods**: 25 | **Schemas**: 43

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `firebaseapphosting.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `firebaseapphosting.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `firebaseapphosting.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `firebaseapphosting.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `firebaseapphosting.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `firebaseapphosting.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `firebaseapphosting.projects.locations.backends.create` | POST | `v1/{+parent}/backends` | Creates a new backend in a given project and location. |
| `firebaseapphosting.projects.locations.backends.delete` | DELETE | `v1/{+name}` | Deletes a single backend. |
| `firebaseapphosting.projects.locations.backends.list` | GET | `v1/{+parent}/backends` | Lists backends in a given project and location. |
| `firebaseapphosting.projects.locations.backends.patch` | PATCH | `v1/{+name}` | Updates the information for a single backend. |
| `firebaseapphosting.projects.locations.backends.get` | GET | `v1/{+name}` | Gets information about a backend. |
| `firebaseapphosting.projects.locations.backends.domains.get` | GET | `v1/{+name}` | Gets information about a domain. |
| `firebaseapphosting.projects.locations.backends.domains.delete` | DELETE | `v1/{+name}` | Deletes a single domain. |
| `firebaseapphosting.projects.locations.backends.domains.patch` | PATCH | `v1/{+name}` | Updates the information for a single domain. |
| `firebaseapphosting.projects.locations.backends.domains.create` | POST | `v1/{+parent}/domains` | Links a new domain to a backend. |
| `firebaseapphosting.projects.locations.backends.domains.list` | GET | `v1/{+parent}/domains` | Lists domains of a backend. |
| `firebaseapphosting.projects.locations.backends.rollouts.create` | POST | `v1/{+parent}/rollouts` | Creates a new rollout for a backend. |
| `firebaseapphosting.projects.locations.backends.rollouts.get` | GET | `v1/{+name}` | Gets information about a rollout. |
| `firebaseapphosting.projects.locations.backends.rollouts.list` | GET | `v1/{+parent}/rollouts` | Lists rollouts for a backend. |
| `firebaseapphosting.projects.locations.backends.builds.delete` | DELETE | `v1/{+name}` | Deletes a single build. |
| `firebaseapphosting.projects.locations.backends.builds.list` | GET | `v1/{+parent}/builds` | Lists builds in a given project, location, and backend. |
| `firebaseapphosting.projects.locations.backends.builds.create` | POST | `v1/{+parent}/builds` | Creates a new build for a backend. |
| `firebaseapphosting.projects.locations.backends.builds.get` | GET | `v1/{+name}` | Gets information about a build. |
| `firebaseapphosting.projects.locations.backends.traffic.get` | GET | `v1/{+name}` | Gets information about a backend's traffic. |
| `firebaseapphosting.projects.locations.backends.traffic.patch` | PATCH | `v1/{+name}` | Updates a backend's traffic. |

### `firebaseapphosting.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await firebaseapphosting.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseapphosting.projects.locations.list`

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
const res = await firebaseapphosting.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseapphosting.projects.locations.operations.list`

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
const res = await firebaseapphosting.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseapphosting.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await firebaseapphosting.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseapphosting.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await firebaseapphosting.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseapphosting.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await firebaseapphosting.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseapphosting.projects.locations.backends.create`

**POST** `v1/{+parent}/backends`

Creates a new backend in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. A parent name of the form `projects/{project}/locations/{locationId}`. |
| `backendId` | `string` | query | No | Required. Id of the backend. Also used as the service ID for Cloud Run, and as part of the default domain name. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `validateOnly` | `boolean` | query | No | Optional. Indicates that the request should be validated and default values populated, without persisting the request... |

**Request body**: `Backend`

**Response**: `Operation`

```typescript
const res = await firebaseapphosting.backends.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseapphosting.projects.locations.backends.delete`

**DELETE** `v1/{+name}`

Deletes a single backend.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource in the format: `projects/{project}/locations/{locationId}/backends/{backendId}`. |
| `etag` | `string` | query | No | Optional. If the client provided etag is out of date, delete will be returned FAILED_PRECONDITION error. |
| `force` | `boolean` | query | No | Optional. If set to true, any resources for this backend will also be deleted. Otherwise, any children resources will... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `validateOnly` | `boolean` | query | No | Optional. Indicates that the request should be validated, without persisting the request or updating any resources. |

**Response**: `Operation`

```typescript
const res = await firebaseapphosting.backends.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseapphosting.projects.locations.backends.list`

**GET** `v1/{+parent}/backends`

Lists backends in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. A parent name of the form `projects/{project}/locations/{locationId}`. |
| `filter` | `string` | query | No | Optional. A filter to narrow down results to a preferred subset. Learn more about filtering in Google's [AIP 160 stan... |
| `orderBy` | `string` | query | No | Optional. Hint for how to order the results. Supported fields are `name` and `createTime`. To specify descending orde... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return. If not set, the service selects a default. |
| `pageToken` | `string` | query | No | Optional. A page token received from the nextPageToken field in the response. Send that page token to receive the sub... |
| `showDeleted` | `boolean` | query | No | Optional. If true, the request returns soft-deleted resources that haven't been fully-deleted yet. |

**Response**: `ListBackendsResponse`

```typescript
const res = await firebaseapphosting.backends.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseapphosting.projects.locations.backends.patch`

**PATCH** `v1/{+name}`

Updates the information for a single backend.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the backend. Format: `projects/{project}/locations/{locationId}/backends/{backendId}`. |
| `allowMissing` | `boolean` | query | No | Optional. If set to true, and the backend is not found, a new backend will be created. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the backend resource by the update. The field... |
| `validateOnly` | `boolean` | query | No | Optional. Indicates that the request should be validated, without persisting the request or updating any resources. |

**Request body**: `Backend`

**Response**: `Operation`

```typescript
const res = await firebaseapphosting.backends.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseapphosting.projects.locations.backends.get`

**GET** `v1/{+name}`

Gets information about a backend.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource in the format: `projects/{project}/locations/{locationId}/backends/{backendId}`. |

**Response**: `Backend`

```typescript
const res = await firebaseapphosting.backends.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseapphosting.projects.locations.backends.domains.get`

**GET** `v1/{+name}`

Gets information about a domain.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource in the format: `projects/{project}/locations/{locationId}/backends/{backendId}/domains... |

**Response**: `Domain`

```typescript
const res = await firebaseapphosting.domains.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseapphosting.projects.locations.backends.domains.delete`

**DELETE** `v1/{+name}`

Deletes a single domain.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource in the format: `projects/{project}/locations/{locationId}/backends/{backendId}/domains... |
| `etag` | `string` | query | No | Optional. If the client provided etag is out of date, delete will be returned FAILED_PRECONDITION error. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `validateOnly` | `boolean` | query | No | Optional. Indicates that the request should be validated and default values populated, without persisting the request... |

**Response**: `Operation`

```typescript
const res = await firebaseapphosting.domains.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseapphosting.projects.locations.backends.domains.patch`

**PATCH** `v1/{+name}`

Updates the information for a single domain.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the domain, e.g. `/projects/p/locations/l/backends/b/domains/foo.com` |
| `allowMissing` | `boolean` | query | No | Optional. If set to true, and the domain is not found, a new domain will be created. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the Domain resource by the update. The fields... |
| `validateOnly` | `boolean` | query | No | Optional. Indicates that the request should be validated and default values populated, without persisting the request... |

**Request body**: `Domain`

**Response**: `Operation`

```typescript
const res = await firebaseapphosting.domains.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseapphosting.projects.locations.backends.domains.create`

**POST** `v1/{+parent}/domains`

Links a new domain to a backend.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent backend in the format: `projects/{project}/locations/{locationId}/backends/{backendId}`. |
| `domainId` | `string` | query | No | Required. Id of the domain to create. Must be a valid domain name. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `validateOnly` | `boolean` | query | No | Optional. Indicates that the request should be validated and default values populated, without persisting the request... |

**Request body**: `Domain`

**Response**: `Operation`

```typescript
const res = await firebaseapphosting.domains.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseapphosting.projects.locations.backends.domains.list`

**GET** `v1/{+parent}/domains`

Lists domains of a backend.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent backend in the format: `projects/{project}/locations/{locationId}/backends/{backendId}`. |
| `filter` | `string` | query | No | Optional. A filter to narrow down results to a preferred subset. Learn more about filtering in Google's [AIP 160 stan... |
| `orderBy` | `string` | query | No | Optional. Hint for how to order the results. Supported fields are `name` and `createTime`. To specify descending orde... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return. If not set, the service selects a default. |
| `pageToken` | `string` | query | No | Optional. A page token received from the nextPageToken field in the response. Send that page token to receive the sub... |
| `showDeleted` | `boolean` | query | No | Optional. If true, the request returns soft-deleted resources that haven't been fully-deleted yet. |

**Response**: `ListDomainsResponse`

```typescript
const res = await firebaseapphosting.domains.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseapphosting.projects.locations.backends.rollouts.create`

**POST** `v1/{+parent}/rollouts`

Creates a new rollout for a backend.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent backend in the format: `projects/{project}/locations/{locationId}/backends/{backendId}`. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `rolloutId` | `string` | query | No | Optional. Desired ID of the rollout being created. |
| `validateOnly` | `boolean` | query | No | Optional. Indicates that the request should be validated and default values populated, without persisting the request... |

**Request body**: `Rollout`

**Response**: `Operation`

```typescript
const res = await firebaseapphosting.rollouts.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseapphosting.projects.locations.backends.rollouts.get`

**GET** `v1/{+name}`

Gets information about a rollout.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource in the format: `projects/{project}/locations/{locationId}/backends/{backendId}/rollout... |

**Response**: `Rollout`

```typescript
const res = await firebaseapphosting.rollouts.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseapphosting.projects.locations.backends.rollouts.list`

**GET** `v1/{+parent}/rollouts`

Lists rollouts for a backend.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent backend in the format: `projects/{project}/locations/{locationId}/backends/{backendId}`. |
| `filter` | `string` | query | No | Optional. A filter to narrow down results to a preferred subset. Learn more about filtering in Google's [AIP 160 stan... |
| `orderBy` | `string` | query | No | Optional. Hint for how to order the results. Supported fields are `name` and `createTime`. To specify descending orde... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return. If not set, the service selects a default. |
| `pageToken` | `string` | query | No | Optional. A page token received from the nextPageToken field in the response. Send that page token to receive the sub... |
| `showDeleted` | `boolean` | query | No | Optional. If true, the request returns soft-deleted resources that haven't been fully-deleted yet. |

**Response**: `ListRolloutsResponse`

```typescript
const res = await firebaseapphosting.rollouts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseapphosting.projects.locations.backends.builds.delete`

**DELETE** `v1/{+name}`

Deletes a single build.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource in the format: `projects/{project}/locations/{locationId}/backends/{backendId}/builds/... |
| `etag` | `string` | query | No | Optional. If the client provided etag is out of date, delete will be returned FAILED_PRECONDITION error. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `validateOnly` | `boolean` | query | No | Optional. Indicates that the request should be validated and default values populated, without persisting the request... |

**Response**: `Operation`

```typescript
const res = await firebaseapphosting.builds.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseapphosting.projects.locations.backends.builds.list`

**GET** `v1/{+parent}/builds`

Lists builds in a given project, location, and backend.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent backend in the form `projects/{project}/locations/{locationId}/backends/{backendId}`. |
| `filter` | `string` | query | No | Optional. A filter to narrow down results to a preferred subset. Learn more about filtering in Google's [AIP 160 stan... |
| `orderBy` | `string` | query | No | Optional. Hint for how to order the results. Supported fields are `name` and `createTime`. To specify descending orde... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to return. If not set, the service selects a default. |
| `pageToken` | `string` | query | No | Optional. A page token received from the nextPageToken field in the response. Send that page token to receive the sub... |
| `showDeleted` | `boolean` | query | No | Optional. If true, the request returns soft-deleted resources that haven't been fully-deleted yet. |

**Response**: `ListBuildsResponse`

```typescript
const res = await firebaseapphosting.builds.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseapphosting.projects.locations.backends.builds.create`

**POST** `v1/{+parent}/builds`

Creates a new build for a backend.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent backend in the format: `projects/{project}/locations/{locationId}/backends/{backendId}`. |
| `buildId` | `string` | query | No | Required. Desired ID of the build being created. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `validateOnly` | `boolean` | query | No | Optional. Indicates that the request should be validated and default values populated, without persisting the request... |

**Request body**: `Build`

**Response**: `Operation`

```typescript
const res = await firebaseapphosting.builds.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseapphosting.projects.locations.backends.builds.get`

**GET** `v1/{+name}`

Gets information about a build.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource in the format: `projects/{project}/locations/{locationId}/backends/{backendId}/builds/... |

**Response**: `Build`

```typescript
const res = await firebaseapphosting.builds.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseapphosting.projects.locations.backends.traffic.get`

**GET** `v1/{+name}`

Gets information about a backend's traffic.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource in the format: `projects/{project}/locations/{locationId}/backends/{backendId}/traffic`. |

**Response**: `Traffic`

```typescript
const res = await firebaseapphosting.traffic.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `firebaseapphosting.projects.locations.backends.traffic.patch`

**PATCH** `v1/{+name}`

Updates a backend's traffic.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the backend's traffic. Format: `projects/{project}/locations/{locationId}/backends/{... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the traffic resource by the update. The field... |
| `validateOnly` | `boolean` | query | No | Optional. Indicates that the request should be validated, without persisting the request or updating any resources. |

**Request body**: `Traffic`

**Response**: `Operation`

```typescript
const res = await firebaseapphosting.traffic.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `ArchiveSource`

The URI of an storage archive or a signed URL to use as the build source.

| Property | Type | Description |
|----------|------|-------------|
| `author` | `SourceUserMetadata` | Optional. The author contained in the metadata of a version control change. |
| `description` | `string` | Optional. An optional message that describes the uploaded version of the source code. |
| `externalSignedUri` | `string` | Signed URL to an archive in a storage bucket. |
| `rootDirectory` | `string` | Optional. Relative path in the archive. |
| `userStorageUri` | `string` | URI to an archive in Cloud Storage. The object must be a zipped (.zip) or gzipped archive file (.... |

### `Backend`

A backend is the primary resource of App Hosting.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. Unstructured key value map that may be set by external tools to store and arbitrary met... |
| `appId` | `string` | Optional. The [ID of a Web App](https://firebase.google.com/docs/reference/firebase-management/re... |
| `codebase` | `Codebase` | Optional. If specified, the connection to an external source repository to watch for event-driven... |
| `createTime` | `string` | Output only. Time at which the backend was created. |
| `deleteTime` | `string` | Output only. Time at which the backend was deleted. |
| `displayName` | `string` | Optional. Human-readable name. 63 character limit. |
| `environment` | `string` | Optional. The environment name of the backend, used to load environment variables from environmen... |
| `etag` | `string` | Output only. Server-computed checksum based on other values; may be sent on update or delete to e... |
| `labels` | `object` | Optional. Unstructured key value map that can be used to organize and categorize objects. |
| `managedResources` | `array<ManagedResource>` | Output only. A list of the resources managed by this backend. |
| `mode` | `string` | Optional. Deprecated: Use `environment` instead. |
| `name` | `string` | Identifier. The resource name of the backend. Format: `projects/{project}/locations/{locationId}/... |
| `reconciling` | `boolean` | Output only. A field that, if true, indicates that the system is working to make adjustments to t... |
| `requestLogsDisabled` | `boolean` | Optional. A field that, if true, indicates that incoming request logs are disabled for this backe... |
| `serviceAccount` | `string` | Required. The name of the service account used for Cloud Build and Cloud Run. Should have the rol... |
| `servingLocality` | `string` | Required. Immutable. Specifies how App Hosting will serve the content for this backend. It will e... |
| `uid` | `string` | Output only. System-assigned, unique identifier. |
| `updateTime` | `string` | Output only. Time at which the backend was last updated. |
| `uri` | `string` | Output only. The primary URI to communicate with the backend. |

### `Build`

A single build for a backend, at a specific point codebase reference tag and point in time. Encapsulates several resources, including an Artifact Registry container image, a Cloud Build invocation that built the image, and the Cloud Run revision that uses that image.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. Unstructured key value map that may be set by external tools to store and arbitrary met... |
| `buildLogsUri` | `string` | Output only. The location of the [Cloud Build logs](https://cloud.google.com/build/docs/view-buil... |
| `config` | `Config` | Optional. Additional configuration of the service. |
| `createTime` | `string` | Output only. Time at which the build was created. |
| `deleteTime` | `string` | Output only. Time at which the build was deleted. |
| `displayName` | `string` | Optional. Human-readable name. 63 character limit. |
| `environment` | `string` | Output only. The environment name of the backend when this build was created. |
| `errors` | `array<Error>` | Output only. A list of all errors that occurred during an App Hosting build. |
| `etag` | `string` | Output only. Server-computed checksum based on other values; may be sent on update or delete to e... |
| `image` | `string` | Output only. The Artifact Registry [container image](https://cloud.google.com/artifact-registry/d... |
| `labels` | `object` | Optional. Unstructured key value map that can be used to organize and categorize objects. |
| `name` | `string` | Identifier. The resource name of the build. Format: `projects/{project}/locations/{locationId}/ba... |
| `reconciling` | `boolean` | Output only. A field that, if true, indicates that the build has an ongoing LRO. |
| `source` | `BuildSource` | Required. Immutable. The source for the build. |
| `state` | `string` | Output only. The state of the build. |
| `uid` | `string` | Output only. System-assigned, unique identifier. |
| `updateTime` | `string` | Output only. Time at which the build was last updated. |

### `BuildSource`

The source for the build.

| Property | Type | Description |
|----------|------|-------------|
| `archive` | `ArchiveSource` | An archive source. |
| `codebase` | `CodebaseSource` | A codebase source. |
| `container` | `ContainerSource` | An Artifact Registry container image source. |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `Codebase`

The connection to an external source repository to watch for event-driven updates to the backend.

| Property | Type | Description |
|----------|------|-------------|
| `repository` | `string` | Required. The resource name for the Developer Connect [`gitRepositoryLink`](https://cloud.google.... |
| `rootDirectory` | `string` | Optional. If `repository` is provided, the directory relative to the root of the repository to us... |

### `CodebaseSource`

A codebase source, representing the state of the codebase that the build will be created at.

| Property | Type | Description |
|----------|------|-------------|
| `author` | `UserMetadata` | Output only. The author contained in the metadata of a version control change. |
| `branch` | `string` | The branch in the codebase to build from, using the latest commit. |
| `commit` | `string` | The commit in the codebase to build from. |
| `commitMessage` | `string` | Output only. The message of a codebase change. |
| `commitTime` | `string` | Output only. The time the change was made. |
| `displayName` | `string` | Output only. The human-friendly name to use for this Codebase when displaying a build. We use the... |
| `hash` | `string` | Output only. The full SHA-1 hash of a Git commit, if available. |
| `uri` | `string` | Output only. A URI linking to the codebase on an hosting provider's website. May not be valid if ... |

### `Config`

Additional configuration of the backend for this build.

| Property | Type | Description |
|----------|------|-------------|
| `effectiveEnv` | `array<EnvironmentVariable>` | Output only. [OUTPUT_ONLY] This field represents all environment variables employed during both t... |
| `env` | `array<EnvironmentVariable>` | Optional. Supplied environment variables for a specific build. Provided at Build creation time an... |
| `runConfig` | `RunConfig` | Optional. Additional configuration of the Cloud Run [`service`](https://cloud.google.com/run/docs... |

### `ContainerSource`

The URI of an Artifact Registry [container image](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories.dockerImages) to use as the build source.

| Property | Type | Description |
|----------|------|-------------|
| `image` | `string` | Required. A URI representing a container for the backend to use. |

### `CustomDomainOperationMetadata`

Additional metadata for operations on custom domains.

| Property | Type | Description |
|----------|------|-------------|
| `certState` | `string` | Output only. The custom domain's `CertState`, which must be `CERT_ACTIVE` for the create operatio... |
| `hostState` | `string` | Output only. The custom domain's `HostState`, which must be `HOST_ACTIVE` for Create operations o... |
| `issues` | `array<Status>` | Output only. A list of issues that are currently preventing the operation from completing. These ... |
| `liveMigrationSteps` | `array<LiveMigrationStep>` | Output only. A list of steps that the user must complete to migrate their domain to App Hosting w... |
| `ownershipState` | `string` | Output only. The custom domain's `OwnershipState`, which must be `OWNERSHIP_ACTIVE` for the creat... |
| `quickSetupUpdates` | `array<DnsUpdates>` | Output only. A set of DNS record updates to perform, to allow App Hosting to serve secure content... |

### `CustomDomainStatus`

The status of a custom domain's linkage to a backend.

| Property | Type | Description |
|----------|------|-------------|
| `certState` | `string` | Output only. Tracks SSL certificate status for the domain. |
| `hostState` | `string` | Output only. Tracks whether a custom domain is detected as appropriately directing traffic to App... |
| `issues` | `array<Status>` | Output only. A list of issues with domain configuration. Allows users to self-correct problems wi... |
| `ownershipState` | `string` | Output only. Tracks whether the backend is permitted to serve content on the domain, based off th... |
| `requiredDnsUpdates` | `array<DnsUpdates>` | Output only. Lists the records that must added or removed to a custom domain's DNS in order to fi... |

### `DnsRecord`

A representation of a DNS records for a domain. DNS records are resource records that define how systems and services should behave when handling requests for a domain. For example, when you add `A` records to your domain's DNS records, you're informing other systems (such as your users' web browsers) to contact those IPv4 addresses to retrieve resources relevant to your domain (such as your App Hosting files).

| Property | Type | Description |
|----------|------|-------------|
| `domainName` | `string` | Output only. The domain the record pertains to, e.g. `foo.bar.com.`. |
| `rdata` | `string` | Output only. The data of the record. The meaning of the value depends on record type: - A and AAA... |
| `relevantState` | `array<string>` | Output only. An enum that indicates which state(s) this DNS record applies to. Populated for all ... |
| `requiredAction` | `string` | Output only. An enum that indicates the a required action for this record. Populated when the rec... |
| `type` | `string` | Output only. The record's type, which determines what data the record contains. |

### `DnsRecordSet`

A set of DNS records relevant to the setup and maintenance of a custom domain in App Hosting.

| Property | Type | Description |
|----------|------|-------------|
| `checkError` | `Status` | Output only. An error App Hosting services encountered when querying your domain's DNS records. N... |
| `domainName` | `string` | Output only. The domain name the record set pertains to. |
| `records` | `array<DnsRecord>` | Output only. Records on the domain. |

### `DnsUpdates`

A set of DNS record updates that you should make to allow App Hosting to serve secure content in response to requests against your domain. These updates present the current state of your domain's and related subdomains' DNS records when App Hosting last queried them, and the desired set of records that App Hosting needs to see before your custom domain can be fully active.

| Property | Type | Description |
|----------|------|-------------|
| `checkTime` | `string` | Output only. The last time App Hosting checked your custom domain's DNS records. |
| `desired` | `array<DnsRecordSet>` | Output only. The set of DNS records App Hosting needs in order to be able to serve secure content... |
| `discovered` | `array<DnsRecordSet>` | Output only. The set of DNS records App Hosting discovered when inspecting a domain. |
| `domainName` | `string` | Output only. The domain name the DNS updates pertain to. |

### `Domain`

A domain name that is associated with a backend.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. Annotations as key value pairs. |
| `createTime` | `string` | Output only. Time at which the domain was created. |
| `customDomainStatus` | `CustomDomainStatus` | Output only. Represents the state and configuration of a `CUSTOM` type domain. It is only present... |
| `deleteTime` | `string` | Output only. Time at which the domain was deleted. |
| `disabled` | `boolean` | Optional. Whether the domain is disabled. Defaults to false. |
| `displayName` | `string` | Optional. Mutable human-readable name for the domain. 63 character limit. e.g. `prod domain`. |
| `etag` | `string` | Output only. Server-computed checksum based on other values; may be sent on update or delete to e... |
| `labels` | `object` | Optional. Labels as key value pairs. |
| `name` | `string` | Identifier. The resource name of the domain, e.g. `/projects/p/locations/l/backends/b/domains/foo... |
| `reconciling` | `boolean` | Output only. A field that, if true, indicates that the build has an ongoing LRO. |
| `serve` | `ServingBehavior` | Optional. The serving behavior of the domain. If specified, the domain will serve content other t... |
| `type` | `string` | Output only. The type of the domain. |
| `uid` | `string` | Output only. System-assigned, unique identifier. |
| `updateTime` | `string` | Output only. Time at which the domain was last updated. |

### `DomainOperationMetadata`

Represents the metadata of a long-running operation on domains.

| Property | Type | Description |
|----------|------|-------------|
| `apiVersion` | `string` | Output only. API version used to start the operation. |
| `createTime` | `string` | Output only. The time the operation was created. |
| `customDomainOperationMetadata` | `CustomDomainOperationMetadata` | Output only. Additional metadata for operations on custom domains. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `requestedCancellation` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. Operations ... |
| `statusMessage` | `string` | Output only. Human-readable status of the operation, if any. |
| `target` | `string` | Output only. Server-defined resource path for the target of the operation. |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `EnvironmentVariable`

Environment variables for this build.

| Property | Type | Description |
|----------|------|-------------|
| `availability` | `array<string>` | Optional. Where this variable should be made available. If left unspecified, will be available in... |
| `origin` | `string` | Output only. The high-level origin category of the environment variable. |
| `originFileName` | `string` | Output only. Specific detail about the source. For APPHOSTING_YAML origins, this will contain the... |
| `secret` | `string` | A fully qualified secret version. The value of the secret will be accessed once while building th... |
| `value` | `string` | A plaintext value. This value is encrypted at rest, but all project readers can view the value wh... |
| `variable` | `string` | Required. The name of the environment variable. - Must be a valid environment variable name (e.g.... |

### `Error`

The container for the rpc status and source for any errors found during the build process.

| Property | Type | Description |
|----------|------|-------------|
| `cloudResource` | `string` | Output only. Resource link |
| `error` | `Status` | Output only. A status and (human readable) error message for the build, if in a `FAILED` state. |
| `errorSource` | `string` | Output only. The source of the error for the build, if in a `FAILED` state. |

### `ListBackendsResponse`

Message for response to list backends

| Property | Type | Description |
|----------|------|-------------|
| `backends` | `array<Backend>` | The list of backends |
| `nextPageToken` | `string` | A token identifying the next page of results the server should return. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListBuildsResponse`

Message for response to list builds.

| Property | Type | Description |
|----------|------|-------------|
| `builds` | `array<Build>` | The list of builds. |
| `nextPageToken` | `string` | A token identifying the next page of results the server should return. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListDomainsResponse`

Message for response to list domains.

| Property | Type | Description |
|----------|------|-------------|
| `domains` | `array<Domain>` | Output only. The list of domains. |
| `nextPageToken` | `string` | Output only. A token identifying the next page of results the server should return. |
| `unreachable` | `array<string>` | Output only. Locations that could not be reached. |

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

### `ListRolloutsResponse`

Message for response to list rollouts.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token identifying the next page of results the server should return. |
| `rollouts` | `array<Rollout>` | The list of rollouts. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `LiveMigrationStep`

A set of updates including ACME challenges and DNS records that allow App Hosting to create an SSL certificate and establish project ownership for your domain name before you direct traffic to App Hosting servers. Use these updates to facilitate zero downtime migrations to App Hosting from other services. After you've made the recommended updates, check your custom domain's `ownershipState` and `certState`. To avoid downtime, they should be `OWNERSHIP_ACTIVE` and `CERT_ACTIVE`, respectively, before you update your `A` and `AAAA` records.

| Property | Type | Description |
|----------|------|-------------|
| `dnsUpdates` | `array<DnsUpdates>` | Output only. DNS updates to facilitate your domain's zero-downtime migration to App Hosting. |
| `issues` | `array<Status>` | Output only. Issues that prevent the current step from completing. |
| `relevantDomainStates` | `array<string>` | Output only. One or more states from the `CustomDomainStatus` of the migrating domain that this s... |
| `stepState` | `string` | Output only. The state of the live migration step, indicates whether you should work to complete ... |

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `ManagedResource`

An external resource managed by App Hosting on the project.

| Property | Type | Description |
|----------|------|-------------|
| `runService` | `RunService` | A Cloud Run [`service`](https://cloud.google.com/run/docs/reference/rest/v2/projects.locations.se... |

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

Represents the metadata of a long-running operation.

| Property | Type | Description |
|----------|------|-------------|
| `apiVersion` | `string` | Output only. API version used to start the operation. |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `requestedCancellation` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. Operations ... |
| `statusMessage` | `string` | Output only. Human-readable status of the operation, if any. |
| `target` | `string` | Output only. Server-defined resource path for the target of the operation. |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `Path`

A file path pattern to match against.

| Property | Type | Description |
|----------|------|-------------|
| `pattern` | `string` | Optional. The pattern to match against. |
| `type` | `string` | Optional. The type of pattern to match against. |

### `Redirect`

Specifies redirect behavior for a domain.

| Property | Type | Description |
|----------|------|-------------|
| `status` | `string` | Optional. The status code to use in a redirect response. Must be a valid HTTP 3XX status code. De... |
| `uri` | `string` | Required. The URI of the redirect's intended destination. This URI will be prepended to the origi... |

### `Rollout`

A single rollout of a build for a backend.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. Unstructured key value map that may be set by external tools to store and arbitrary met... |
| `build` | `string` | Required. Immutable. The name of a build that already exists. It doesn't have to be built; a roll... |
| `createTime` | `string` | Output only. Time at which the rollout was created. |
| `deleteTime` | `string` | Output only. Time at which the rollout was deleted. |
| `displayName` | `string` | Optional. Human-readable name. 63 character limit. |
| `error` | `Status` | Output only. A status and (human readable) error message for the rollout, if in a `FAILED` state. |
| `etag` | `string` | Output only. Server-computed checksum based on other values; may be sent on update or delete to e... |
| `labels` | `object` | Optional. Unstructured key value map that can be used to organize and categorize objects. |
| `name` | `string` | Identifier. The resource name of the rollout. Format: `projects/{project}/locations/{locationId}/... |
| `reconciling` | `boolean` | Output only. A field that, if true, indicates that the Rollout currently has an LRO. |
| `state` | `string` | Output only. The state of the rollout. |
| `uid` | `string` | Output only. System-assigned, unique identifier. |
| `updateTime` | `string` | Output only. Time at which the rollout was last updated. |

### `RolloutPolicy`

The policy for how automatic builds and rollouts are triggered and rolled out.

| Property | Type | Description |
|----------|------|-------------|
| `codebaseBranch` | `string` | If set, specifies a branch that triggers a new build to be started with this policy. Otherwise, n... |
| `disabled` | `boolean` | Optional. A flag that, if true, prevents automatic rollouts from being created via this RolloutPo... |
| `disabledTime` | `string` | Output only. If `disabled` is set, the time at which the automatic rollouts were disabled. |
| `ignoredPaths` | `array<Path>` | Optional. A list of file paths patterns to exclude from triggering a rollout. Patterns in this li... |
| `requiredPaths` | `array<Path>` | Optional. A list of file paths patterns that trigger a build and rollout if at least one of the c... |

### `RunConfig`

Additional configuration to apply to the Cloud Run [`service`](https://cloud.google.com/run/docs/reference/rest/v2/projects.locations.services#resource:-service).

| Property | Type | Description |
|----------|------|-------------|
| `concurrency` | `integer` | Optional. Maximum number of requests that each Cloud Run instance can receive. By default, each i... |
| `cpu` | `number` | Optional. Number of CPUs used for each serving instance. By default, cpu defaults to the Cloud Ru... |
| `maxInstances` | `integer` | Optional. Number of Cloud Run instances to maintain at maximum for each revision. By default, eac... |
| `memoryMib` | `integer` | Optional. Amount of memory allocated for each serving instance in MiB. By default, memory default... |
| `minInstances` | `integer` | Optional. Number of Cloud Run instances to maintain at minimum for each Cloud Run Service. By def... |

### `RunService`

A managed Cloud Run [`service`](https://cloud.google.com/run/docs/reference/rest/v2/projects.locations.services#resource:-service).

| Property | Type | Description |
|----------|------|-------------|
| `service` | `string` | Optional. The name of the Cloud Run [`service`](https://cloud.google.com/run/docs/reference/rest/... |

### `ServingBehavior`

Indicates whether App Hosting will serve content on the domain.

| Property | Type | Description |
|----------|------|-------------|
| `redirect` | `Redirect` | Optional. Redirect behavior for a domain, if provided. |

### `SourceUserMetadata`

Metadata for the user who started the build.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Output only. The user-chosen displayname. May be empty. |
| `email` | `string` | Output only. The account email linked to the EUC that created the build. May be a service account... |
| `imageUri` | `string` | Output only. The URI of a profile photo associated with the user who created the build. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `Traffic`

Controls traffic configuration for the backend.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. Unstructured key value map that may be set by external tools to store and arbitrary met... |
| `createTime` | `string` | Output only. Time at which the backend was created. |
| `current` | `TrafficSet` | Output only. Current state of traffic allocation for the backend. When setting `target`, this fie... |
| `etag` | `string` | Output only. Server-computed checksum based on other values; may be sent on update or delete to e... |
| `labels` | `object` | Optional. Unstructured key value map that can be used to organize and categorize objects. |
| `name` | `string` | Identifier. The resource name of the backend's traffic. Format: `projects/{project}/locations/{lo... |
| `reconciling` | `boolean` | Output only. A field that, if true, indicates that the system is working to make the backend's `c... |
| `rolloutPolicy` | `RolloutPolicy` | A rollout policy specifies how new builds and automatic deployments are created. |
| `target` | `TrafficSet` | Set to manually control the desired traffic for the backend. This will cause `current` to eventua... |
| `uid` | `string` | Output only. System-assigned, unique identifier. |
| `updateTime` | `string` | Output only. Time at which the backend was last updated. |

### `TrafficSet`

A list of traffic splits that together represent where traffic is being routed.

| Property | Type | Description |
|----------|------|-------------|
| `splits` | `array<TrafficSplit>` | Required. The list of traffic splits. |

### `TrafficSplit`

The traffic allocation for the backend.

| Property | Type | Description |
|----------|------|-------------|
| `build` | `string` | Required. The build that traffic is being routed to. |
| `percent` | `integer` | Required. The percentage of traffic to send to the build. Currently must be 100% or 0%. |

### `UserMetadata`

Version control metadata for a user associated with a resolved codebase. Currently assumes a Git user.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Output only. The 'name' field in a Git user's git.config. Required by Git. |
| `email` | `string` | Output only. The 'email' field in a Git user's git.config, if available. |
| `imageUri` | `string` | Output only. The URI of an image file associated with the user's account in an external source co... |

