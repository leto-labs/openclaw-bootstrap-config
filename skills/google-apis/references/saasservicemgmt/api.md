# SaaS Runtime API - API Reference

**Version**: `v1beta1` | **Methods**: 42 | **Schemas**: 40

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `saasservicemgmt.projects.locations.get` | GET | `v1beta1/{+name}` | Gets information about a location. |
| `saasservicemgmt.projects.locations.list` | GET | `v1beta1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `saasservicemgmt.projects.locations.releases.patch` | PATCH | `v1beta1/{+name}` | Update a single release. |
| `saasservicemgmt.projects.locations.releases.create` | POST | `v1beta1/{+parent}/releases` | Create a new release. |
| `saasservicemgmt.projects.locations.releases.delete` | DELETE | `v1beta1/{+name}` | Delete a single release. |
| `saasservicemgmt.projects.locations.releases.list` | GET | `v1beta1/{+parent}/releases` | Retrieve a collection of releases. |
| `saasservicemgmt.projects.locations.releases.get` | GET | `v1beta1/{+name}` | Retrieve a single release. |
| `saasservicemgmt.projects.locations.units.list` | GET | `v1beta1/{+parent}/units` | Retrieve a collection of units. |
| `saasservicemgmt.projects.locations.units.patch` | PATCH | `v1beta1/{+name}` | Update a single unit. |
| `saasservicemgmt.projects.locations.units.delete` | DELETE | `v1beta1/{+name}` | Delete a single unit. |
| `saasservicemgmt.projects.locations.units.create` | POST | `v1beta1/{+parent}/units` | Create a new unit. |
| `saasservicemgmt.projects.locations.units.get` | GET | `v1beta1/{+name}` | Retrieve a single unit. |
| `saasservicemgmt.projects.locations.rolloutKinds.create` | POST | `v1beta1/{+parent}/rolloutKinds` | Create a new rollout kind. |
| `saasservicemgmt.projects.locations.rolloutKinds.list` | GET | `v1beta1/{+parent}/rolloutKinds` | Retrieve a collection of rollout kinds. |
| `saasservicemgmt.projects.locations.rolloutKinds.get` | GET | `v1beta1/{+name}` | Retrieve a single rollout kind. |
| `saasservicemgmt.projects.locations.rolloutKinds.patch` | PATCH | `v1beta1/{+name}` | Update a single rollout kind. |
| `saasservicemgmt.projects.locations.rolloutKinds.delete` | DELETE | `v1beta1/{+name}` | Delete a single rollout kind. |
| `saasservicemgmt.projects.locations.rollouts.patch` | PATCH | `v1beta1/{+name}` | Update a single rollout. |
| `saasservicemgmt.projects.locations.rollouts.get` | GET | `v1beta1/{+name}` | Retrieve a single rollout. |
| `saasservicemgmt.projects.locations.rollouts.create` | POST | `v1beta1/{+parent}/rollouts` | Create a new rollout. |
| `saasservicemgmt.projects.locations.rollouts.list` | GET | `v1beta1/{+parent}/rollouts` | Retrieve a collection of rollouts. |
| `saasservicemgmt.projects.locations.rollouts.delete` | DELETE | `v1beta1/{+name}` | Delete a single rollout. |
| `saasservicemgmt.projects.locations.unitKinds.create` | POST | `v1beta1/{+parent}/unitKinds` | Create a new unit kind. |
| `saasservicemgmt.projects.locations.unitKinds.get` | GET | `v1beta1/{+name}` | Retrieve a single unit kind. |
| `saasservicemgmt.projects.locations.unitKinds.delete` | DELETE | `v1beta1/{+name}` | Delete a single unit kind. |
| `saasservicemgmt.projects.locations.unitKinds.patch` | PATCH | `v1beta1/{+name}` | Update a single unit kind. |
| `saasservicemgmt.projects.locations.unitKinds.list` | GET | `v1beta1/{+parent}/unitKinds` | Retrieve a collection of unit kinds. |
| `saasservicemgmt.projects.locations.unitOperations.patch` | PATCH | `v1beta1/{+name}` | Update a single unit operation. |
| `saasservicemgmt.projects.locations.unitOperations.create` | POST | `v1beta1/{+parent}/unitOperations` | Create a new unit operation. |
| `saasservicemgmt.projects.locations.unitOperations.list` | GET | `v1beta1/{+parent}/unitOperations` | Retrieve a collection of unit operations. |
| `saasservicemgmt.projects.locations.unitOperations.get` | GET | `v1beta1/{+name}` | Retrieve a single unit operation. |
| `saasservicemgmt.projects.locations.unitOperations.delete` | DELETE | `v1beta1/{+name}` | Delete a single unit operation. |
| `saasservicemgmt.projects.locations.saas.create` | POST | `v1beta1/{+parent}/saas` | Create a new saas. |
| `saasservicemgmt.projects.locations.saas.get` | GET | `v1beta1/{+name}` | Retrieve a single saas. |
| `saasservicemgmt.projects.locations.saas.patch` | PATCH | `v1beta1/{+name}` | Update a single saas. |
| `saasservicemgmt.projects.locations.saas.delete` | DELETE | `v1beta1/{+name}` | Delete a single saas. |
| `saasservicemgmt.projects.locations.saas.list` | GET | `v1beta1/{+parent}/saas` | Retrieve a collection of saas. |
| `saasservicemgmt.projects.locations.tenants.get` | GET | `v1beta1/{+name}` | Retrieve a single tenant. |
| `saasservicemgmt.projects.locations.tenants.delete` | DELETE | `v1beta1/{+name}` | Delete a single tenant. |
| `saasservicemgmt.projects.locations.tenants.create` | POST | `v1beta1/{+parent}/tenants` | Create a new tenant. |
| `saasservicemgmt.projects.locations.tenants.patch` | PATCH | `v1beta1/{+name}` | Update a single tenant. |
| `saasservicemgmt.projects.locations.tenants.list` | GET | `v1beta1/{+parent}/tenants` | Retrieve a collection of tenants. |

### `saasservicemgmt.projects.locations.get`

**GET** `v1beta1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `GoogleCloudLocationLocation`

```typescript
const res = await saasservicemgmt.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `saasservicemgmt.projects.locations.list`

**GET** `v1beta1/{+name}/locations`

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
const res = await saasservicemgmt.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `saasservicemgmt.projects.locations.releases.patch`

**PATCH** `v1beta1/{+name}`

Update a single release.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name (full URI of the resource) following the standard naming scheme: "projects/{project}/lo... |
| `requestId` | `string` | query | No | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `updateMask` | `string` | query | No | Field mask is used to specify the fields to be overwritten in the Release resource by the update. The fields specifie... |
| `validateOnly` | `boolean` | query | No | If "validate_only" is set to true, the service will try to validate that this request would succeed, but will not act... |

**Request body**: `Release`

**Response**: `Release`

```typescript
const res = await saasservicemgmt.releases.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `saasservicemgmt.projects.locations.releases.create`

**POST** `v1beta1/{+parent}/releases`

Create a new release.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent of the release. |
| `releaseId` | `string` | query | No | Required. The ID value for the new release. |
| `requestId` | `string` | query | No | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `validateOnly` | `boolean` | query | No | If "validate_only" is set to true, the service will try to validate that this request would succeed, but will not act... |

**Request body**: `Release`

**Response**: `Release`

```typescript
const res = await saasservicemgmt.releases.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `saasservicemgmt.projects.locations.releases.delete`

**DELETE** `v1beta1/{+name}`

Delete a single release.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the resource within a service. |
| `etag` | `string` | query | No | The etag known to the client for the expected state of the release. This is used with state-changing methods to preve... |
| `requestId` | `string` | query | No | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `validateOnly` | `boolean` | query | No | If "validate_only" is set to true, the service will try to validate that this request would succeed, but will not act... |

**Response**: `Empty`

```typescript
const res = await saasservicemgmt.releases.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `saasservicemgmt.projects.locations.releases.list`

**GET** `v1beta1/{+parent}/releases`

Retrieve a collection of releases.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent of the release. |
| `filter` | `string` | query | No | Filter the list as specified in https://google.aip.dev/160. |
| `orderBy` | `string` | query | No | Order results as specified in https://google.aip.dev/132. |
| `pageSize` | `integer` | query | No | The maximum number of releases to send per page. |
| `pageToken` | `string` | query | No | The page token: If the next_page_token from a previous response is provided, this request will send the subsequent page. |

**Response**: `ListReleasesResponse`

```typescript
const res = await saasservicemgmt.releases.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `saasservicemgmt.projects.locations.releases.get`

**GET** `v1beta1/{+name}`

Retrieve a single release.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the resource within a service. |

**Response**: `Release`

```typescript
const res = await saasservicemgmt.releases.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `saasservicemgmt.projects.locations.units.list`

**GET** `v1beta1/{+parent}/units`

Retrieve a collection of units.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent of the unit. |
| `filter` | `string` | query | No | Filter the list as specified in https://google.aip.dev/160. |
| `orderBy` | `string` | query | No | Order results as specified in https://google.aip.dev/132. |
| `pageSize` | `integer` | query | No | The maximum number of units to send per page. |
| `pageToken` | `string` | query | No | The page token: If the next_page_token from a previous response is provided, this request will send the subsequent page. |

**Response**: `ListUnitsResponse`

```typescript
const res = await saasservicemgmt.units.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `saasservicemgmt.projects.locations.units.patch`

**PATCH** `v1beta1/{+name}`

Update a single unit.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name (full URI of the resource) following the standard naming scheme: "projects/{project}/lo... |
| `requestId` | `string` | query | No | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `updateMask` | `string` | query | No | Field mask is used to specify the fields to be overwritten in the Unit resource by the update. The fields specified i... |
| `validateOnly` | `boolean` | query | No | If "validate_only" is set to true, the service will try to validate that this request would succeed, but will not act... |

**Request body**: `Unit`

**Response**: `Unit`

```typescript
const res = await saasservicemgmt.units.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `saasservicemgmt.projects.locations.units.delete`

**DELETE** `v1beta1/{+name}`

Delete a single unit.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the resource within a service. |
| `etag` | `string` | query | No | The etag known to the client for the expected state of the unit. This is used with state-changing methods to prevent ... |
| `requestId` | `string` | query | No | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `validateOnly` | `boolean` | query | No | If "validate_only" is set to true, the service will try to validate that this request would succeed, but will not act... |

**Response**: `Empty`

```typescript
const res = await saasservicemgmt.units.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `saasservicemgmt.projects.locations.units.create`

**POST** `v1beta1/{+parent}/units`

Create a new unit.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent of the unit. |
| `requestId` | `string` | query | No | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `unitId` | `string` | query | No | Required. The ID value for the new unit. |
| `validateOnly` | `boolean` | query | No | If "validate_only" is set to true, the service will try to validate that this request would succeed, but will not act... |

**Request body**: `Unit`

**Response**: `Unit`

```typescript
const res = await saasservicemgmt.units.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `saasservicemgmt.projects.locations.units.get`

**GET** `v1beta1/{+name}`

Retrieve a single unit.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the resource within a service. |

**Response**: `Unit`

```typescript
const res = await saasservicemgmt.units.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `saasservicemgmt.projects.locations.rolloutKinds.create`

**POST** `v1beta1/{+parent}/rolloutKinds`

Create a new rollout kind.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent of the rollout kind. |
| `requestId` | `string` | query | No | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `rolloutKindId` | `string` | query | No | Required. The ID value for the new rollout kind. |
| `validateOnly` | `boolean` | query | No | If "validate_only" is set to true, the service will try to validate that this request would succeed, but will not act... |

**Request body**: `RolloutKind`

**Response**: `RolloutKind`

```typescript
const res = await saasservicemgmt.rolloutKinds.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `saasservicemgmt.projects.locations.rolloutKinds.list`

**GET** `v1beta1/{+parent}/rolloutKinds`

Retrieve a collection of rollout kinds.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent of the rollout kind. |
| `filter` | `string` | query | No | Filter the list as specified in https://google.aip.dev/160. |
| `orderBy` | `string` | query | No | Order results as specified in https://google.aip.dev/132. |
| `pageSize` | `integer` | query | No | The maximum number of rollout kinds to send per page. |
| `pageToken` | `string` | query | No | The page token: If the next_page_token from a previous response is provided, this request will send the subsequent page. |

**Response**: `ListRolloutKindsResponse`

```typescript
const res = await saasservicemgmt.rolloutKinds.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `saasservicemgmt.projects.locations.rolloutKinds.get`

**GET** `v1beta1/{+name}`

Retrieve a single rollout kind.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the resource within a service. |

**Response**: `RolloutKind`

```typescript
const res = await saasservicemgmt.rolloutKinds.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `saasservicemgmt.projects.locations.rolloutKinds.patch`

**PATCH** `v1beta1/{+name}`

Update a single rollout kind.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name (full URI of the resource) following the standard naming scheme: "projects/{project}/lo... |
| `requestId` | `string` | query | No | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `updateMask` | `string` | query | No | Field mask is used to specify the fields to be overwritten in the RolloutKind resource by the update. The fields spec... |
| `validateOnly` | `boolean` | query | No | If "validate_only" is set to true, the service will try to validate that this request would succeed, but will not act... |

**Request body**: `RolloutKind`

**Response**: `RolloutKind`

```typescript
const res = await saasservicemgmt.rolloutKinds.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `saasservicemgmt.projects.locations.rolloutKinds.delete`

**DELETE** `v1beta1/{+name}`

Delete a single rollout kind.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the resource within a service. |
| `etag` | `string` | query | No | The etag known to the client for the expected state of the rollout kind. This is used with state-changing methods to ... |
| `requestId` | `string` | query | No | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `validateOnly` | `boolean` | query | No | If "validate_only" is set to true, the service will try to validate that this request would succeed, but will not act... |

**Response**: `Empty`

```typescript
const res = await saasservicemgmt.rolloutKinds.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `saasservicemgmt.projects.locations.rollouts.patch`

**PATCH** `v1beta1/{+name}`

Update a single rollout.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name (full URI of the resource) following the standard naming scheme: "projects/{project}/lo... |
| `requestId` | `string` | query | No | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `updateMask` | `string` | query | No | Field mask is used to specify the fields to be overwritten in the Rollout resource by the update. The fields specifie... |
| `validateOnly` | `boolean` | query | No | If "validate_only" is set to true, the service will try to validate that this request would succeed, but will not act... |

**Request body**: `Rollout`

**Response**: `Rollout`

```typescript
const res = await saasservicemgmt.rollouts.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `saasservicemgmt.projects.locations.rollouts.get`

**GET** `v1beta1/{+name}`

Retrieve a single rollout.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the resource within a service. |

**Response**: `Rollout`

```typescript
const res = await saasservicemgmt.rollouts.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `saasservicemgmt.projects.locations.rollouts.create`

**POST** `v1beta1/{+parent}/rollouts`

Create a new rollout.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent of the rollout. |
| `requestId` | `string` | query | No | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `rolloutId` | `string` | query | No | Required. The ID value for the new rollout. |
| `validateOnly` | `boolean` | query | No | If "validate_only" is set to true, the service will try to validate that this request would succeed, but will not act... |

**Request body**: `Rollout`

**Response**: `Rollout`

```typescript
const res = await saasservicemgmt.rollouts.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `saasservicemgmt.projects.locations.rollouts.list`

**GET** `v1beta1/{+parent}/rollouts`

Retrieve a collection of rollouts.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent of the rollout. |
| `filter` | `string` | query | No | Filter the list as specified in https://google.aip.dev/160. |
| `orderBy` | `string` | query | No | Order results as specified in https://google.aip.dev/132. |
| `pageSize` | `integer` | query | No | The maximum number of rollouts to send per page. |
| `pageToken` | `string` | query | No | The page token: If the next_page_token from a previous response is provided, this request will send the subsequent page. |

**Response**: `ListRolloutsResponse`

```typescript
const res = await saasservicemgmt.rollouts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `saasservicemgmt.projects.locations.rollouts.delete`

**DELETE** `v1beta1/{+name}`

Delete a single rollout.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the resource within a service. |
| `etag` | `string` | query | No | The etag known to the client for the expected state of the rollout. This is used with state-changing methods to preve... |
| `requestId` | `string` | query | No | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `validateOnly` | `boolean` | query | No | If "validate_only" is set to true, the service will try to validate that this request would succeed, but will not act... |

**Response**: `Empty`

```typescript
const res = await saasservicemgmt.rollouts.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `saasservicemgmt.projects.locations.unitKinds.create`

**POST** `v1beta1/{+parent}/unitKinds`

Create a new unit kind.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent of the unit kind. |
| `requestId` | `string` | query | No | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `unitKindId` | `string` | query | No | Required. The ID value for the new unit kind. |
| `validateOnly` | `boolean` | query | No | If "validate_only" is set to true, the service will try to validate that this request would succeed, but will not act... |

**Request body**: `UnitKind`

**Response**: `UnitKind`

```typescript
const res = await saasservicemgmt.unitKinds.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `saasservicemgmt.projects.locations.unitKinds.get`

**GET** `v1beta1/{+name}`

Retrieve a single unit kind.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the resource within a service. |

**Response**: `UnitKind`

```typescript
const res = await saasservicemgmt.unitKinds.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `saasservicemgmt.projects.locations.unitKinds.delete`

**DELETE** `v1beta1/{+name}`

Delete a single unit kind.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the resource within a service. |
| `etag` | `string` | query | No | The etag known to the client for the expected state of the unit kind. This is used with state-changing methods to pre... |
| `requestId` | `string` | query | No | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `validateOnly` | `boolean` | query | No | If "validate_only" is set to true, the service will try to validate that this request would succeed, but will not act... |

**Response**: `Empty`

```typescript
const res = await saasservicemgmt.unitKinds.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `saasservicemgmt.projects.locations.unitKinds.patch`

**PATCH** `v1beta1/{+name}`

Update a single unit kind.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name (full URI of the resource) following the standard naming scheme: "projects/{project}/lo... |
| `requestId` | `string` | query | No | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `updateMask` | `string` | query | No | Field mask is used to specify the fields to be overwritten in the UnitKind resource by the update. The fields specifi... |
| `validateOnly` | `boolean` | query | No | If "validate_only" is set to true, the service will try to validate that this request would succeed, but will not act... |

**Request body**: `UnitKind`

**Response**: `UnitKind`

```typescript
const res = await saasservicemgmt.unitKinds.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `saasservicemgmt.projects.locations.unitKinds.list`

**GET** `v1beta1/{+parent}/unitKinds`

Retrieve a collection of unit kinds.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent of the unit kind. |
| `filter` | `string` | query | No | Filter the list as specified in https://google.aip.dev/160. |
| `orderBy` | `string` | query | No | Order results as specified in https://google.aip.dev/132. |
| `pageSize` | `integer` | query | No | The maximum number of unit kinds to send per page. |
| `pageToken` | `string` | query | No | The page token: If the next_page_token from a previous response is provided, this request will send the subsequent page. |

**Response**: `ListUnitKindsResponse`

```typescript
const res = await saasservicemgmt.unitKinds.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `saasservicemgmt.projects.locations.unitOperations.patch`

**PATCH** `v1beta1/{+name}`

Update a single unit operation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name (full URI of the resource) following the standard naming scheme: "projects/{project}/lo... |
| `requestId` | `string` | query | No | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `updateMask` | `string` | query | No | Field mask is used to specify the fields to be overwritten in the UnitOperation resource by the update. The fields sp... |
| `validateOnly` | `boolean` | query | No | If "validate_only" is set to true, the service will try to validate that this request would succeed, but will not act... |

**Request body**: `UnitOperation`

**Response**: `UnitOperation`

```typescript
const res = await saasservicemgmt.unitOperations.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `saasservicemgmt.projects.locations.unitOperations.create`

**POST** `v1beta1/{+parent}/unitOperations`

Create a new unit operation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent of the unit operation. |
| `requestId` | `string` | query | No | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `unitOperationId` | `string` | query | No | Required. The ID value for the new unit operation. |
| `validateOnly` | `boolean` | query | No | If "validate_only" is set to true, the service will try to validate that this request would succeed, but will not act... |

**Request body**: `UnitOperation`

**Response**: `UnitOperation`

```typescript
const res = await saasservicemgmt.unitOperations.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `saasservicemgmt.projects.locations.unitOperations.list`

**GET** `v1beta1/{+parent}/unitOperations`

Retrieve a collection of unit operations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent of the unit operation. |
| `filter` | `string` | query | No | Filter the list as specified in https://google.aip.dev/160. |
| `orderBy` | `string` | query | No | Order results as specified in https://google.aip.dev/132. |
| `pageSize` | `integer` | query | No | The maximum number of unit operations to send per page. |
| `pageToken` | `string` | query | No | The page token: If the next_page_token from a previous response is provided, this request will send the subsequent page. |

**Response**: `ListUnitOperationsResponse`

```typescript
const res = await saasservicemgmt.unitOperations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `saasservicemgmt.projects.locations.unitOperations.get`

**GET** `v1beta1/{+name}`

Retrieve a single unit operation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the resource within a service. |

**Response**: `UnitOperation`

```typescript
const res = await saasservicemgmt.unitOperations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `saasservicemgmt.projects.locations.unitOperations.delete`

**DELETE** `v1beta1/{+name}`

Delete a single unit operation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the resource within a service. |
| `etag` | `string` | query | No | The etag known to the client for the expected state of the unit operation. This is used with state-changing methods t... |
| `requestId` | `string` | query | No | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `validateOnly` | `boolean` | query | No | If "validate_only" is set to true, the service will try to validate that this request would succeed, but will not act... |

**Response**: `Empty`

```typescript
const res = await saasservicemgmt.unitOperations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `saasservicemgmt.projects.locations.saas.create`

**POST** `v1beta1/{+parent}/saas`

Create a new saas.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent of the saas. |
| `requestId` | `string` | query | No | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `saasId` | `string` | query | No | Required. The ID value for the new saas. |
| `validateOnly` | `boolean` | query | No | If "validate_only" is set to true, the service will try to validate that this request would succeed, but will not act... |

**Request body**: `Saas`

**Response**: `Saas`

```typescript
const res = await saasservicemgmt.saas.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `saasservicemgmt.projects.locations.saas.get`

**GET** `v1beta1/{+name}`

Retrieve a single saas.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the resource within a service. |

**Response**: `Saas`

```typescript
const res = await saasservicemgmt.saas.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `saasservicemgmt.projects.locations.saas.patch`

**PATCH** `v1beta1/{+name}`

Update a single saas.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name (full URI of the resource) following the standard naming scheme: "projects/{project}/lo... |
| `requestId` | `string` | query | No | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `updateMask` | `string` | query | No | Field mask is used to specify the fields to be overwritten in the Saas resource by the update. The fields specified i... |
| `validateOnly` | `boolean` | query | No | If "validate_only" is set to true, the service will try to validate that this request would succeed, but will not act... |

**Request body**: `Saas`

**Response**: `Saas`

```typescript
const res = await saasservicemgmt.saas.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `saasservicemgmt.projects.locations.saas.delete`

**DELETE** `v1beta1/{+name}`

Delete a single saas.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the resource within a service. |
| `etag` | `string` | query | No | The etag known to the client for the expected state of the saas. This is used with state-changing methods to prevent ... |
| `requestId` | `string` | query | No | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `validateOnly` | `boolean` | query | No | If "validate_only" is set to true, the service will try to validate that this request would succeed, but will not act... |

**Response**: `Empty`

```typescript
const res = await saasservicemgmt.saas.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `saasservicemgmt.projects.locations.saas.list`

**GET** `v1beta1/{+parent}/saas`

Retrieve a collection of saas.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent of the saas. |
| `filter` | `string` | query | No | Filter the list as specified in https://google.aip.dev/160. |
| `orderBy` | `string` | query | No | Order results as specified in https://google.aip.dev/132. |
| `pageSize` | `integer` | query | No | The maximum number of saas to send per page. |
| `pageToken` | `string` | query | No | The page token: If the next_page_token from a previous response is provided, this request will send the subsequent page. |

**Response**: `ListSaasResponse`

```typescript
const res = await saasservicemgmt.saas.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `saasservicemgmt.projects.locations.tenants.get`

**GET** `v1beta1/{+name}`

Retrieve a single tenant.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the resource within a service. |

**Response**: `Tenant`

```typescript
const res = await saasservicemgmt.tenants.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `saasservicemgmt.projects.locations.tenants.delete`

**DELETE** `v1beta1/{+name}`

Delete a single tenant.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the resource within a service. |
| `etag` | `string` | query | No | The etag known to the client for the expected state of the tenant. This is used with state-changing methods to preven... |
| `requestId` | `string` | query | No | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `validateOnly` | `boolean` | query | No | If "validate_only" is set to true, the service will try to validate that this request would succeed, but will not act... |

**Response**: `Empty`

```typescript
const res = await saasservicemgmt.tenants.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `saasservicemgmt.projects.locations.tenants.create`

**POST** `v1beta1/{+parent}/tenants`

Create a new tenant.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent of the tenant. |
| `requestId` | `string` | query | No | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `tenantId` | `string` | query | No | Required. The ID value for the new tenant. |
| `validateOnly` | `boolean` | query | No | If "validate_only" is set to true, the service will try to validate that this request would succeed, but will not act... |

**Request body**: `Tenant`

**Response**: `Tenant`

```typescript
const res = await saasservicemgmt.tenants.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `saasservicemgmt.projects.locations.tenants.patch`

**PATCH** `v1beta1/{+name}`

Update a single tenant.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name (full URI of the resource) following the standard naming scheme: "projects/{project}/lo... |
| `requestId` | `string` | query | No | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `updateMask` | `string` | query | No | Field mask is used to specify the fields to be overwritten in the Tenant resource by the update. The fields specified... |
| `validateOnly` | `boolean` | query | No | If "validate_only" is set to true, the service will try to validate that this request would succeed, but will not act... |

**Request body**: `Tenant`

**Response**: `Tenant`

```typescript
const res = await saasservicemgmt.tenants.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `saasservicemgmt.projects.locations.tenants.list`

**GET** `v1beta1/{+parent}/tenants`

Retrieve a collection of tenants.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent of the tenant. |
| `filter` | `string` | query | No | Filter the list as specified in https://google.aip.dev/160. |
| `orderBy` | `string` | query | No | Order results as specified in https://google.aip.dev/132. |
| `pageSize` | `integer` | query | No | The maximum number of tenants to send per page. |
| `pageToken` | `string` | query | No | The page token: If the next_page_token from a previous response is provided, this request will send the subsequent page. |

**Response**: `ListTenantsResponse`

```typescript
const res = await saasservicemgmt.tenants.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `Aggregate`

Represents the aggregation of a set of population of like records by a certain group. For example, a collection of unit counts can be aggregated and grouped by their state.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `integer` | Required. Number of records in the group. |
| `group` | `string` | Required. Group by which to aggregate. |

### `Blueprint`

Blueprints are OCI Images that contain all of the artifacts needed to provision a unit. Metadata such as, type of the engine used to actuate the blueprint (e.g. terraform, helm etc) and version will come from the image manifest. If the hostname is omitted, it will be assumed to be the regional path to Artifact Registry (eg. us-east1-docker.pkg.dev).

| Property | Type | Description |
|----------|------|-------------|
| `engine` | `string` | Output only. Type of the engine used to actuate the blueprint. e.g. terraform, helm etc. |
| `package` | `string` | Optional. Immutable. URI to a blueprint used by the Unit (required unless unitKind or release is ... |
| `version` | `string` | Output only. Version metadata if present on the blueprint. |

### `Dependency`

Dependency represent a single dependency with another unit kind by alias.

| Property | Type | Description |
|----------|------|-------------|
| `alias` | `string` | Required. An alias for the dependency. Used for input variable mapping. |
| `unitKind` | `string` | Required. Immutable. The unit kind of the dependency. |

### `Deprovision`

Deprovision is the unit operation that deprovision the underlying resources represented by a Unit. Can only execute if the Unit is currently provisioned.

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `ErrorBudget`

The configuration for error budget. If the number of failed units exceeds max(allowed_count, allowed_ratio * total_units), the rollout will be paused.

| Property | Type | Description |
|----------|------|-------------|
| `allowedCount` | `integer` | Optional. The maximum number of failed units allowed in a location without pausing the rollout. |
| `allowedPercentage` | `integer` | Optional. The maximum percentage of units allowed to fail (0, 100] within a location without paus... |

### `FromMapping`

Output variables whose values will be passed on to dependencies

| Property | Type | Description |
|----------|------|-------------|
| `dependency` | `string` | Required. Alias of the dependency that the outputVariable will pass its value to |
| `outputVariable` | `string` | Required. Name of the outputVariable on the dependency |

### `GoogleCloudLocationLocation`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `ListLocationsResponse`

The response message for Locations.ListLocations.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<GoogleCloudLocationLocation>` | A list of locations that matches the specified filter in the request. |
| `nextPageToken` | `string` | The standard List next-page token. |

### `ListReleasesResponse`

The response structure for the ListReleases method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If present, the next page token can be provided to a subsequent ListReleases call to list the nex... |
| `releases` | `array<Release>` | The resulting releases. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListRolloutKindsResponse`

The response structure for the ListRolloutKinds method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If present, the next page token can be provided to a subsequent ListRolloutKinds call to list the... |
| `rolloutKinds` | `array<RolloutKind>` | The resulting rollout kinds. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListRolloutsResponse`

The response structure for the ListRollouts method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If present, the next page token can be provided to a subsequent ListRollouts call to list the nex... |
| `rollouts` | `array<Rollout>` | The resulting rollouts. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListSaasResponse`

The response structure for the ListSaas method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If present, the next page token can be provided to a subsequent ListSaas call to list the next pa... |
| `saas` | `array<Saas>` | The resulting saas. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListTenantsResponse`

The response structure for the ListTenants method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If present, the next page token can be provided to a subsequent ListTenants call to list the next... |
| `tenants` | `array<Tenant>` | The resulting tenants. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListUnitKindsResponse`

The response structure for the ListUnitKinds method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If present, the next page token can be provided to a subsequent ListUnitKinds call to list the ne... |
| `unitKinds` | `array<UnitKind>` | The resulting unit kinds. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListUnitOperationsResponse`

The response structure for the ListUnitOperations method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If present, the next page token can be provided to a subsequent ListUnitOperations call to list t... |
| `unitOperations` | `array<UnitOperation>` | The resulting unit operations. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListUnitsResponse`

The response structure for the ListUnits method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If present, the next page token can be provided to a subsequent ListUnits call to list the next p... |
| `units` | `array<Unit>` | The resulting units. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `Location`

Location information that the service is available in.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Optional. Name of location. |

### `MaintenanceSettings`

Captures requested directives for performing future maintenance on the unit. This includes a request for the unit to skip maintenance for a period of time and remain pinned to its current release as well as controls for postponing maintenance scheduled in future.

| Property | Type | Description |
|----------|------|-------------|
| `pinnedUntilTime` | `string` | Optional. If present, it fixes the release on the unit until the given time; i.e. changes to the ... |

### `Provision`

Provision is the unit operation that provision the underlying resources represented by a Unit. Can only execute if the Unit is not currently provisioned.

| Property | Type | Description |
|----------|------|-------------|
| `inputVariables` | `array<UnitVariable>` | Optional. Set of input variables. Maximum 100. (optional) |
| `release` | `string` | Optional. Reference to the Release object to use for the Unit. (optional). |

### `Release`

A new version to be propagated and deployed to units. This includes pointers to packaged blueprints for actuation (e.g Helm or Terraform configuration packages) via artifact registry.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. Annotations is an unstructured key-value map stored with a resource that may be set by ... |
| `blueprint` | `Blueprint` | Optional. Blueprints are OCI Images that contain all of the artifacts needed to provision a unit. |
| `createTime` | `string` | Output only. The timestamp when the resource was created. |
| `etag` | `string` | Output only. An opaque value that uniquely identifies a version or generation of a resource. It c... |
| `inputVariableDefaults` | `array<UnitVariable>` | Optional. Mapping of input variables to default values. Maximum 100 |
| `inputVariables` | `array<UnitVariable>` | Optional. Output only. List of input variables declared on the blueprint and can be present with ... |
| `labels` | `object` | Optional. The labels on the resource, which can be used for categorization. similar to Kubernetes... |
| `name` | `string` | Identifier. The resource name (full URI of the resource) following the standard naming scheme: "p... |
| `outputVariables` | `array<UnitVariable>` | Optional. Output only. List of output variables declared on the blueprint and can be present with... |
| `releaseRequirements` | `ReleaseRequirements` | Optional. Set of requirements to be fulfilled on the Unit when using this Release. |
| `uid` | `string` | Output only. The unique identifier of the resource. UID is unique in the time and space for this ... |
| `unitKind` | `string` | Required. Immutable. Reference to the UnitKind this Release corresponds to (required and immutabl... |
| `updateTime` | `string` | Output only. The timestamp when the resource was last updated. Any change to the resource made by... |

### `ReleaseRequirements`

Set of requirements to be fulfilled on the Unit when using this Release.

| Property | Type | Description |
|----------|------|-------------|
| `upgradeableFromReleases` | `array<string>` | Optional. A list of releases from which a unit can be upgraded to this one (optional). If left em... |

### `Rollout`

Represents a single rollout execution and its results

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. Annotations is an unstructured key-value map stored with a resource that may be set by ... |
| `control` | `RolloutControl` | Optional. Requested change to the execution of this rollout. Default RolloutControl.action is ROL... |
| `createTime` | `string` | Output only. The timestamp when the resource was created. |
| `deleteTime` | `string` | Output only. The timestamp when the resource was marked for deletion (deletion is an asynchronous... |
| `effectiveUnitFilter` | `string` | Optional. Output only. Output only snapshot of the effective unit filter at Rollout start time. C... |
| `endTime` | `string` | Optional. Output only. The time when the rollout finished execution (regardless of success, failu... |
| `etag` | `string` | Output only. An opaque value that uniquely identifies a version or generation of a resource. It c... |
| `labels` | `object` | Optional. The labels on the resource, which can be used for categorization. similar to Kubernetes... |
| `name` | `string` | Identifier. The resource name (full URI of the resource) following the standard naming scheme: "p... |
| `parentRollout` | `string` | Optional. Output only. The direct parent rollout that this rollout is stemming from. The resource... |
| `release` | `string` | Optional. Immutable. Name of the Release that gets rolled out to target Units. Required if no oth... |
| `rolloutKind` | `string` | Optional. Immutable. Name of the RolloutKind this rollout is stemming from and adhering to. |
| `rolloutOrchestrationStrategy` | `string` | Optional. The strategy used for executing this Rollout. This strategy will override whatever stra... |
| `rootRollout` | `string` | Optional. Output only. The root rollout that this rollout is stemming from. The resource name (fu... |
| `startTime` | `string` | Optional. Output only. The time when the rollout started executing. Will be empty if the rollout ... |
| `state` | `string` | Output only. Current state of the rollout. |
| `stateMessage` | `string` | Output only. Human readable message indicating details about the last state transition. |
| `stateTransitionTime` | `string` | Optional. Output only. The time when the rollout transitioned into its current state. |
| `stats` | `RolloutStats` | Optional. Output only. Details about the progress of the rollout. |
| `uid` | `string` | Output only. The unique identifier of the resource. UID is unique in the time and space for this ... |
| `unitFilter` | `string` | Optional. CEL(https://github.com/google/cel-spec) formatted filter string against Unit. The filte... |
| `updateTime` | `string` | Output only. The timestamp when the resource was last updated. Any change to the resource made by... |

### `RolloutControl`

RolloutControl provides a way to request a change to the execution of a Rollout by pausing or canceling it.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` | Required. Action to be performed on the Rollout. The default behavior is to run the rollout until... |
| `runParams` | `RunRolloutActionParams` | Optional. Parameters for the RUN action. It is an error to specify this if the RolloutAction is n... |

### `RolloutKind`

An object that describes various settings of Rollout execution. Includes built-in policies across GCP and GDC, and customizable policies.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. Annotations is an unstructured key-value map stored with a resource that may be set by ... |
| `createTime` | `string` | Output only. The timestamp when the resource was created. |
| `errorBudget` | `ErrorBudget` | Optional. The configuration for error budget. If the number of failed units exceeds max(allowed_c... |
| `etag` | `string` | Output only. An opaque value that uniquely identifies a version or generation of a resource. It c... |
| `labels` | `object` | Optional. The labels on the resource, which can be used for categorization. similar to Kubernetes... |
| `maintenancePolicyEnforcement` | `string` | Optional. Value among strict (enforcing maintenance policy and only looking at Units with mainten... |
| `name` | `string` | Identifier. The resource name (full URI of the resource) following the standard naming scheme: "p... |
| `rolloutOrchestrationStrategy` | `string` | Optional. The strategy used for executing a Rollout. This is a required field. There are two supp... |
| `uid` | `string` | Output only. The unique identifier of the resource. UID is unique in the time and space for this ... |
| `unitFilter` | `string` | Optional. CEL(https://github.com/google/cel-spec) formatted filter string against Unit. The filte... |
| `unitKind` | `string` | Required. Immutable. UnitKind that this rollout kind corresponds to. Rollouts stemming from this ... |
| `updateTime` | `string` | Output only. The timestamp when the resource was last updated. Any change to the resource made by... |
| `updateUnitKindStrategy` | `string` | Optional. The config for updating the unit kind. By default, the unit kind will be updated on the... |

### `RolloutStats`

RolloutStats contains information about the progress of a rollout.

| Property | Type | Description |
|----------|------|-------------|
| `operationsByState` | `array<Aggregate>` | Optional. Output only. Unordered list. A breakdown of the progress of operations triggered by the... |

### `RunRolloutActionParams`

Parameters for the RUN action controlling the behavior of the rollout when it is resumed from a PAUSED state.

| Property | Type | Description |
|----------|------|-------------|
| `retryFailedOperations` | `boolean` | Required. If true, the rollout will retry failed operations when resumed. This is applicable only... |

### `Saas`

Saas is a representation of a SaaS service managed by the Producer.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. Annotations is an unstructured key-value map stored with a resource that may be set by ... |
| `createTime` | `string` | Output only. The timestamp when the resource was created. |
| `etag` | `string` | Output only. An opaque value that uniquely identifies a version or generation of a resource. It c... |
| `labels` | `object` | Optional. The labels on the resource, which can be used for categorization. similar to Kubernetes... |
| `locations` | `array<Location>` | Optional. List of locations that the service is available in. Rollout refers to the list to gener... |
| `name` | `string` | Identifier. The resource name (full URI of the resource) following the standard naming scheme: "p... |
| `uid` | `string` | Output only. The unique identifier of the resource. UID is unique in the time and space for this ... |
| `updateTime` | `string` | Output only. The timestamp when the resource was last updated. Any change to the resource made by... |

### `Schedule`

A time specification to schedule the maintenance.

| Property | Type | Description |
|----------|------|-------------|
| `startTime` | `string` | Optional. Start of operation. If not set, will be set to the start of the next window. (optional) |

### `Tenant`

Tenant represents the service producer side of an instance of the service created based on a request from a consumer. In a typical scenario a Tenant has a one-to-one mapping with a resource given out to a service consumer. Example: tenant: name: "projects/svc1/locations/loc/tenants/inst-068afff8" consumer_resource: "projects/gshoe/locations/loc/shoes/black-shoe"

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. Annotations is an unstructured key-value map stored with a resource that may be set by ... |
| `consumerResource` | `string` | Optional. Immutable. A reference to the consumer resource this SaaS Tenant is representing. The r... |
| `createTime` | `string` | Output only. The timestamp when the resource was created. |
| `etag` | `string` | Output only. An opaque value that uniquely identifies a version or generation of a resource. It c... |
| `labels` | `object` | Optional. The labels on the resource, which can be used for categorization. similar to Kubernetes... |
| `name` | `string` | Identifier. The resource name (full URI of the resource) following the standard naming scheme: "p... |
| `saas` | `string` | Required. Immutable. A reference to the Saas that defines the product (managed service) that the ... |
| `uid` | `string` | Output only. The unique identifier of the resource. UID is unique in the time and space for this ... |
| `updateTime` | `string` | Output only. The timestamp when the resource was last updated. Any change to the resource made by... |

### `ToMapping`

Input variables whose values will be passed on to dependencies

| Property | Type | Description |
|----------|------|-------------|
| `dependency` | `string` | Required. Alias of the dependency that the inputVariable will pass its value to |
| `ignoreForLookup` | `boolean` | Optional. Tells SaaS Runtime if this mapping should be used during lookup or not |
| `inputVariable` | `string` | Required. Name of the inputVariable on the dependency |

### `Unit`

A unit of deployment that has its lifecycle via a CRUD API using an actuation engine under the hood (e.g. based on Terraform, Helm or a custom implementation provided by a service producer). A building block of a SaaS Tenant.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. Annotations is an unstructured key-value map stored with a resource that may be set by ... |
| `conditions` | `array<UnitCondition>` | Optional. Output only. A set of conditions which indicate the various conditions this resource ca... |
| `createTime` | `string` | Output only. The timestamp when the resource was created. |
| `dependencies` | `array<UnitDependency>` | Optional. Output only. Set of dependencies for this unit. Maximum 10. |
| `dependents` | `array<UnitDependency>` | Optional. Output only. List of Units that depend on this unit. Unit can only be deprovisioned if ... |
| `etag` | `string` | Output only. An opaque value that uniquely identifies a version or generation of a resource. It c... |
| `inputVariables` | `array<UnitVariable>` | Optional. Output only. Indicates the current input variables deployed by the unit |
| `labels` | `object` | Optional. The labels on the resource, which can be used for categorization. similar to Kubernetes... |
| `maintenance` | `MaintenanceSettings` | Optional. Captures requested directives for performing future maintenance on the unit. This inclu... |
| `managementMode` | `string` | Optional. Immutable. Indicates whether the Unit life cycle is controlled by the user or by the sy... |
| `name` | `string` | Identifier. The resource name (full URI of the resource) following the standard naming scheme: "p... |
| `ongoingOperations` | `array<string>` | Optional. Output only. List of concurrent UnitOperations that are operating on this Unit. |
| `outputVariables` | `array<UnitVariable>` | Optional. Output only. Set of key/value pairs corresponding to output variables from execution of... |
| `pendingOperations` | `array<string>` | Optional. Output only. List of pending (wait to be executed) UnitOperations for this unit. |
| `release` | `string` | Optional. Output only. The current Release object for this Unit. |
| `scheduledOperations` | `array<string>` | Optional. Output only. List of scheduled UnitOperations for this unit. |
| `state` | `string` | Optional. Output only. Current lifecycle state of the resource (e.g. if it's being created or rea... |
| `systemCleanupAt` | `string` | Optional. Output only. If set, indicates the time when the system will start removing the unit. |
| `systemManagedState` | `string` | Optional. Output only. Indicates the system managed state of the unit. |
| `tenant` | `string` | Optional. Reference to the Saas Tenant resource this unit belongs to. This for example informs th... |
| `uid` | `string` | Output only. The unique identifier of the resource. UID is unique in the time and space for this ... |
| `unitKind` | `string` | Optional. Reference to the UnitKind this Unit belongs to. Immutable once set. |
| `updateTime` | `string` | Output only. The timestamp when the resource was last updated. Any change to the resource made by... |

### `UnitCondition`

UnitCondition describes the status of an Unit. UnitCondition is individual components that contribute to an overall state.

| Property | Type | Description |
|----------|------|-------------|
| `lastTransitionTime` | `string` | Required. Last time the condition transited from one status to another. |
| `message` | `string` | Required. Human readable message indicating details about the last transition. |
| `reason` | `string` | Required. Brief reason for the condition's last transition. |
| `status` | `string` | Required. Status of the condition. |
| `type` | `string` | Required. Type of the condition. |

### `UnitDependency`

Set of dependencies for this unit. Maximum 10.

| Property | Type | Description |
|----------|------|-------------|
| `alias` | `string` | Output only. Alias for the name of the dependency. |
| `unit` | `string` | Output only. A reference to the Unit object. |

### `UnitKind`

Definition of a Unit. Units belonging to the same UnitKind are managed together; for example they follow the same release model (blueprints, versions etc.) and are typically rolled out together.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. Annotations is an unstructured key-value map stored with a resource that may be set by ... |
| `createTime` | `string` | Output only. The timestamp when the resource was created. |
| `defaultRelease` | `string` | Optional. A reference to the Release object to use as default for creating new units of this Unit... |
| `dependencies` | `array<Dependency>` | Optional. Immutable. List of other unit kinds that this release will depend on. Dependencies will... |
| `etag` | `string` | Output only. An opaque value that uniquely identifies a version or generation of a resource. It c... |
| `inputVariableMappings` | `array<VariableMapping>` | Optional. List of inputVariables for this release that will either be retrieved from a dependency... |
| `labels` | `object` | Optional. The labels on the resource, which can be used for categorization. similar to Kubernetes... |
| `name` | `string` | Identifier. The resource name (full URI of the resource) following the standard naming scheme: "p... |
| `outputVariableMappings` | `array<VariableMapping>` | Optional. List of outputVariables for this unit kind will be passed to this unit's outputVariable... |
| `saas` | `string` | Required. Immutable. A reference to the Saas that defines the product (managed service) that the ... |
| `uid` | `string` | Output only. The unique identifier of the resource. UID is unique in the time and space for this ... |
| `updateTime` | `string` | Output only. The timestamp when the resource was last updated. Any change to the resource made by... |

### `UnitOperation`

UnitOperation encapsulates the intent of changing/interacting with the service component represented by the specific Unit. Multiple UnitOperations can be created (requested) and scheduled in the future, however only one will be allowed to execute at a time (that can change in the future for non-mutating operations). UnitOperations allow different actors interacting with the same unit to focus only on the change they have requested. This is a base object that contains the common fields in all unit operations. Next: 22

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. Annotations is an unstructured key-value map stored with a resource that may be set by ... |
| `cancel` | `boolean` | Optional. When true, attempt to cancel the operation. Cancellation may fail if the operation is a... |
| `conditions` | `array<UnitOperationCondition>` | Optional. Output only. A set of conditions which indicate the various conditions this resource ca... |
| `createTime` | `string` | Output only. The timestamp when the resource was created. |
| `deleteTime` | `string` | Output only. The timestamp when the resource was marked for deletion (deletion is an asynchronous... |
| `deprovision` | `Deprovision` |  |
| `engineState` | `string` | Optional. Output only. The engine state for on-going deployment engine operation(s). This field i... |
| `errorCategory` | `string` | Optional. Output only. UnitOperationErrorCategory describe the error category. |
| `etag` | `string` | Output only. An opaque value that uniquely identifies a version or generation of a resource. It c... |
| `labels` | `object` | Optional. The labels on the resource, which can be used for categorization. similar to Kubernetes... |
| `name` | `string` | Identifier. The resource name (full URI of the resource) following the standard naming scheme: "p... |
| `parentUnitOperation` | `string` | Optional. Reference to parent resource: UnitOperation. If an operation needs to create other oper... |
| `provision` | `Provision` |  |
| `rollout` | `string` | Optional. Specifies which rollout created this Unit Operation. This cannot be modified and is use... |
| `schedule` | `Schedule` | Optional. When to schedule this operation. |
| `state` | `string` | Optional. Output only. UnitOperationState describes the current state of the unit operation. |
| `uid` | `string` | Output only. The unique identifier of the resource. UID is unique in the time and space for this ... |
| `unit` | `string` | Required. Immutable. The Unit a given UnitOperation will act upon. |
| `updateTime` | `string` | Output only. The timestamp when the resource was last updated. Any change to the resource made by... |
| `upgrade` | `Upgrade` |  |

### `UnitOperationCondition`

UnitOperationCondition describes the status of an Unit Operation. UnitOperationCondition is individual components that contribute to an overall state.

| Property | Type | Description |
|----------|------|-------------|
| `lastTransitionTime` | `string` | Required. Last time the condition transited from one status to another. |
| `message` | `string` | Required. Human readable message indicating details about the last transition. |
| `reason` | `string` | Required. Brief reason for the condition's last transition. |
| `status` | `string` | Required. Status of the condition. |
| `type` | `string` | Required. Type of the condition. |

### `UnitVariable`

UnitVariable describes a parameter for a Unit.

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | Optional. Immutable. Name of a supported variable type. Supported types are string, int, bool. |
| `value` | `string` | Optional. String encoded value for the variable. |
| `variable` | `string` | Required. Immutable. Name of the variable from actuation configs. |

### `Upgrade`

Upgrade is the unit operation that upgrades a provisioned unit, which may also include the underlying resources represented by a Unit. Can only execute if the Unit is currently provisioned.

| Property | Type | Description |
|----------|------|-------------|
| `inputVariables` | `array<UnitVariable>` | Optional. Set of input variables. Maximum 100. (optional) |
| `release` | `string` | Optional. Reference to the Release object to use for the Unit. (optional). |

### `VariableMapping`

Mapping of input variables to their respective output variable for depedenencies

| Property | Type | Description |
|----------|------|-------------|
| `from` | `FromMapping` | Optional. Output variables which will get their values from dependencies |
| `to` | `ToMapping` | Optional. Input variables whose values will be passed on to dependencies. |
| `variable` | `string` | Required. name of the variable |

