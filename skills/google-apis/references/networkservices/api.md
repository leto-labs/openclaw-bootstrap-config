# Network Services API - API Reference

**Version**: `v1` | **Methods**: 93 | **Schemas**: 102

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `networkservices.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `networkservices.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `networkservices.projects.locations.httpRoutes.delete` | DELETE | `v1/{+name}` | Deletes a single HttpRoute. |
| `networkservices.projects.locations.httpRoutes.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single HttpRoute. |
| `networkservices.projects.locations.httpRoutes.list` | GET | `v1/{+parent}/httpRoutes` | Lists HttpRoute in a given project and location. |
| `networkservices.projects.locations.httpRoutes.get` | GET | `v1/{+name}` | Gets details of a single HttpRoute. |
| `networkservices.projects.locations.httpRoutes.create` | POST | `v1/{+parent}/httpRoutes` | Creates a new HttpRoute in a given project and location. |
| `networkservices.projects.locations.tlsRoutes.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single TlsRoute. |
| `networkservices.projects.locations.tlsRoutes.create` | POST | `v1/{+parent}/tlsRoutes` | Creates a new TlsRoute in a given project and location. |
| `networkservices.projects.locations.tlsRoutes.get` | GET | `v1/{+name}` | Gets details of a single TlsRoute. |
| `networkservices.projects.locations.tlsRoutes.list` | GET | `v1/{+parent}/tlsRoutes` | Lists TlsRoute in a given project and location. |
| `networkservices.projects.locations.tlsRoutes.delete` | DELETE | `v1/{+name}` | Deletes a single TlsRoute. |
| `networkservices.projects.locations.grpcRoutes.get` | GET | `v1/{+name}` | Gets details of a single GrpcRoute. |
| `networkservices.projects.locations.grpcRoutes.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single GrpcRoute. |
| `networkservices.projects.locations.grpcRoutes.list` | GET | `v1/{+parent}/grpcRoutes` | Lists GrpcRoutes in a given project and location. |
| `networkservices.projects.locations.grpcRoutes.create` | POST | `v1/{+parent}/grpcRoutes` | Creates a new GrpcRoute in a given project and location. |
| `networkservices.projects.locations.grpcRoutes.delete` | DELETE | `v1/{+name}` | Deletes a single GrpcRoute. |
| `networkservices.projects.locations.edgeCacheServices.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `networkservices.projects.locations.edgeCacheServices.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `networkservices.projects.locations.edgeCacheServices.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `networkservices.projects.locations.lbEdgeExtensions.patch` | PATCH | `v1/{+name}` | Updates the parameters of the specified `LbEdgeExtension` resource. |
| `networkservices.projects.locations.lbEdgeExtensions.create` | POST | `v1/{+parent}/lbEdgeExtensions` | Creates a new `LbEdgeExtension` resource in a given project and location. |
| `networkservices.projects.locations.lbEdgeExtensions.delete` | DELETE | `v1/{+name}` | Deletes the specified `LbEdgeExtension` resource. |
| `networkservices.projects.locations.lbEdgeExtensions.list` | GET | `v1/{+parent}/lbEdgeExtensions` | Lists `LbEdgeExtension` resources in a given project and location. |
| `networkservices.projects.locations.lbEdgeExtensions.get` | GET | `v1/{+name}` | Gets details of the specified `LbEdgeExtension` resource. |
| `networkservices.projects.locations.lbTrafficExtensions.patch` | PATCH | `v1/{+name}` | Updates the parameters of the specified `LbTrafficExtension` resource. |
| `networkservices.projects.locations.lbTrafficExtensions.delete` | DELETE | `v1/{+name}` | Deletes the specified `LbTrafficExtension` resource. |
| `networkservices.projects.locations.lbTrafficExtensions.create` | POST | `v1/{+parent}/lbTrafficExtensions` | Creates a new `LbTrafficExtension` resource in a given project and location. |
| `networkservices.projects.locations.lbTrafficExtensions.get` | GET | `v1/{+name}` | Gets details of the specified `LbTrafficExtension` resource. |
| `networkservices.projects.locations.lbTrafficExtensions.list` | GET | `v1/{+parent}/lbTrafficExtensions` | Lists `LbTrafficExtension` resources in a given project and location. |
| `networkservices.projects.locations.tcpRoutes.list` | GET | `v1/{+parent}/tcpRoutes` | Lists TcpRoute in a given project and location. |
| `networkservices.projects.locations.tcpRoutes.create` | POST | `v1/{+parent}/tcpRoutes` | Creates a new TcpRoute in a given project and location. |
| `networkservices.projects.locations.tcpRoutes.get` | GET | `v1/{+name}` | Gets details of a single TcpRoute. |
| `networkservices.projects.locations.tcpRoutes.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single TcpRoute. |
| `networkservices.projects.locations.tcpRoutes.delete` | DELETE | `v1/{+name}` | Deletes a single TcpRoute. |
| `networkservices.projects.locations.serviceLbPolicies.list` | GET | `v1/{+parent}/serviceLbPolicies` | Lists ServiceLbPolicies in a given project and location. |
| `networkservices.projects.locations.serviceLbPolicies.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single ServiceLbPolicy. |
| `networkservices.projects.locations.serviceLbPolicies.create` | POST | `v1/{+parent}/serviceLbPolicies` | Creates a new ServiceLbPolicy in a given project and location. |
| `networkservices.projects.locations.serviceLbPolicies.get` | GET | `v1/{+name}` | Gets details of a single ServiceLbPolicy. |
| `networkservices.projects.locations.serviceLbPolicies.delete` | DELETE | `v1/{+name}` | Deletes a single ServiceLbPolicy. |
| `networkservices.projects.locations.serviceBindings.delete` | DELETE | `v1/{+name}` | Deletes a single ServiceBinding. |
| `networkservices.projects.locations.serviceBindings.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single ServiceBinding. |
| `networkservices.projects.locations.serviceBindings.list` | GET | `v1/{+parent}/serviceBindings` | Lists ServiceBinding in a given project and location. |
| `networkservices.projects.locations.serviceBindings.create` | POST | `v1/{+parent}/serviceBindings` | Creates a new ServiceBinding in a given project and location. |
| `networkservices.projects.locations.serviceBindings.get` | GET | `v1/{+name}` | Gets details of a single ServiceBinding. |
| `networkservices.projects.locations.lbRouteExtensions.list` | GET | `v1/{+parent}/lbRouteExtensions` | Lists `LbRouteExtension` resources in a given project and location. |
| `networkservices.projects.locations.lbRouteExtensions.delete` | DELETE | `v1/{+name}` | Deletes the specified `LbRouteExtension` resource. |
| `networkservices.projects.locations.lbRouteExtensions.get` | GET | `v1/{+name}` | Gets details of the specified `LbRouteExtension` resource. |
| `networkservices.projects.locations.lbRouteExtensions.patch` | PATCH | `v1/{+name}` | Updates the parameters of the specified `LbRouteExtension` resource. |
| `networkservices.projects.locations.lbRouteExtensions.create` | POST | `v1/{+parent}/lbRouteExtensions` | Creates a new `LbRouteExtension` resource in a given project and location. |
| `networkservices.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `networkservices.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `networkservices.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `networkservices.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `networkservices.projects.locations.wasmPlugins.list` | GET | `v1/{+parent}/wasmPlugins` | Lists `WasmPlugin` resources in a given project and location. |
| `networkservices.projects.locations.wasmPlugins.create` | POST | `v1/{+parent}/wasmPlugins` | Creates a new `WasmPlugin` resource in a given project and location. |
| `networkservices.projects.locations.wasmPlugins.patch` | PATCH | `v1/{+name}` | Updates the parameters of the specified `WasmPlugin` resource. |
| `networkservices.projects.locations.wasmPlugins.delete` | DELETE | `v1/{+name}` | Deletes the specified `WasmPlugin` resource. |
| `networkservices.projects.locations.wasmPlugins.get` | GET | `v1/{+name}` | Gets details of the specified `WasmPlugin` resource. |
| `networkservices.projects.locations.wasmPlugins.versions.create` | POST | `v1/{+parent}/versions` | Creates a new `WasmPluginVersion` resource in a given project and location. |
| `networkservices.projects.locations.wasmPlugins.versions.get` | GET | `v1/{+name}` | Gets details of the specified `WasmPluginVersion` resource. |
| `networkservices.projects.locations.wasmPlugins.versions.list` | GET | `v1/{+parent}/versions` | Lists `WasmPluginVersion` resources in a given project and location. |
| `networkservices.projects.locations.wasmPlugins.versions.delete` | DELETE | `v1/{+name}` | Deletes the specified `WasmPluginVersion` resource. |
| `networkservices.projects.locations.edgeCacheOrigins.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `networkservices.projects.locations.edgeCacheOrigins.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `networkservices.projects.locations.edgeCacheOrigins.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `networkservices.projects.locations.authzExtensions.list` | GET | `v1/{+parent}/authzExtensions` | Lists `AuthzExtension` resources in a given project and location. |
| `networkservices.projects.locations.authzExtensions.get` | GET | `v1/{+name}` | Gets details of the specified `AuthzExtension` resource. |
| `networkservices.projects.locations.authzExtensions.delete` | DELETE | `v1/{+name}` | Deletes the specified `AuthzExtension` resource. |
| `networkservices.projects.locations.authzExtensions.patch` | PATCH | `v1/{+name}` | Updates the parameters of the specified `AuthzExtension` resource. |
| `networkservices.projects.locations.authzExtensions.create` | POST | `v1/{+parent}/authzExtensions` | Creates a new `AuthzExtension` resource in a given project and location. |
| `networkservices.projects.locations.edgeCacheKeysets.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `networkservices.projects.locations.edgeCacheKeysets.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `networkservices.projects.locations.edgeCacheKeysets.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `networkservices.projects.locations.endpointPolicies.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single EndpointPolicy. |
| `networkservices.projects.locations.endpointPolicies.list` | GET | `v1/{+parent}/endpointPolicies` | Lists EndpointPolicies in a given project and location. |
| `networkservices.projects.locations.endpointPolicies.delete` | DELETE | `v1/{+name}` | Deletes a single EndpointPolicy. |
| `networkservices.projects.locations.endpointPolicies.get` | GET | `v1/{+name}` | Gets details of a single EndpointPolicy. |
| `networkservices.projects.locations.endpointPolicies.create` | POST | `v1/{+parent}/endpointPolicies` | Creates a new EndpointPolicy in a given project and location. |
| `networkservices.projects.locations.meshes.list` | GET | `v1/{+parent}/meshes` | Lists Meshes in a given project and location. |
| `networkservices.projects.locations.meshes.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single Mesh. |
| `networkservices.projects.locations.meshes.delete` | DELETE | `v1/{+name}` | Deletes a single Mesh. |
| `networkservices.projects.locations.meshes.create` | POST | `v1/{+parent}/meshes` | Creates a new Mesh in a given project and location. |
| `networkservices.projects.locations.meshes.get` | GET | `v1/{+name}` | Gets details of a single Mesh. |
| `networkservices.projects.locations.meshes.routeViews.list` | GET | `v1/{+parent}/routeViews` | Lists RouteViews |
| `networkservices.projects.locations.meshes.routeViews.get` | GET | `v1/{+name}` | Get a single RouteView of a Mesh. |
| `networkservices.projects.locations.gateways.delete` | DELETE | `v1/{+name}` | Deletes a single Gateway. |
| `networkservices.projects.locations.gateways.list` | GET | `v1/{+parent}/gateways` | Lists Gateways in a given project and location. |
| `networkservices.projects.locations.gateways.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single Gateway. |
| `networkservices.projects.locations.gateways.create` | POST | `v1/{+parent}/gateways` | Creates a new Gateway in a given project and location. |
| `networkservices.projects.locations.gateways.get` | GET | `v1/{+name}` | Gets details of a single Gateway. |
| `networkservices.projects.locations.gateways.routeViews.get` | GET | `v1/{+name}` | Get a single RouteView of a Gateway. |
| `networkservices.projects.locations.gateways.routeViews.list` | GET | `v1/{+parent}/routeViews` | Lists RouteViews |

### `networkservices.projects.locations.list`

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
const res = await networkservices.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await networkservices.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.httpRoutes.delete`

**DELETE** `v1/{+name}`

Deletes a single HttpRoute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the HttpRoute to delete. Must be in the format `projects/*/locations/*/httpRoutes/*`. |

**Response**: `Operation`

```typescript
const res = await networkservices.httpRoutes.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.httpRoutes.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single HttpRoute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Name of the HttpRoute resource. It matches pattern `projects/*/locations/*/httpRoutes/http_route_name>`. |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the HttpRoute resource by the update. The fie... |

**Request body**: `HttpRoute`

**Response**: `Operation`

```typescript
const res = await networkservices.httpRoutes.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.httpRoutes.list`

**GET** `v1/{+parent}/httpRoutes`

Lists HttpRoute in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location from which the HttpRoutes should be listed, specified in the format `projects/*/lo... |
| `pageSize` | `integer` | query | No | Maximum number of HttpRoutes to return per call. |
| `pageToken` | `string` | query | No | The value returned by the last `ListHttpRoutesResponse` Indicates that this is a continuation of a prior `ListHttpRou... |
| `returnPartialSuccess` | `boolean` | query | No | Optional. If true, allow partial responses for multi-regional Aggregated List requests. Otherwise if one of the locat... |

**Response**: `ListHttpRoutesResponse`

```typescript
const res = await networkservices.httpRoutes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.httpRoutes.get`

**GET** `v1/{+name}`

Gets details of a single HttpRoute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the HttpRoute to get. Must be in the format `projects/*/locations/*/httpRoutes/*`. |

**Response**: `HttpRoute`

```typescript
const res = await networkservices.httpRoutes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.httpRoutes.create`

**POST** `v1/{+parent}/httpRoutes`

Creates a new HttpRoute in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the HttpRoute. Must be in the format `projects/*/locations/*`. |
| `httpRouteId` | `string` | query | No | Required. Short name of the HttpRoute resource to be created. |

**Request body**: `HttpRoute`

**Response**: `Operation`

```typescript
const res = await networkservices.httpRoutes.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.tlsRoutes.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single TlsRoute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Name of the TlsRoute resource. It matches pattern `projects/*/locations/*/tlsRoutes/tls_route_name>`. |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the TlsRoute resource by the update. The fiel... |

**Request body**: `TlsRoute`

**Response**: `Operation`

```typescript
const res = await networkservices.tlsRoutes.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.tlsRoutes.create`

**POST** `v1/{+parent}/tlsRoutes`

Creates a new TlsRoute in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the TlsRoute. Must be in the format `projects/*/locations/*`. |
| `tlsRouteId` | `string` | query | No | Required. Short name of the TlsRoute resource to be created. |

**Request body**: `TlsRoute`

**Response**: `Operation`

```typescript
const res = await networkservices.tlsRoutes.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.tlsRoutes.get`

**GET** `v1/{+name}`

Gets details of a single TlsRoute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the TlsRoute to get. Must be in the format `projects/*/locations/*/tlsRoutes/*`. |

**Response**: `TlsRoute`

```typescript
const res = await networkservices.tlsRoutes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.tlsRoutes.list`

**GET** `v1/{+parent}/tlsRoutes`

Lists TlsRoute in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location from which the TlsRoutes should be listed, specified in the format `projects/*/loc... |
| `pageSize` | `integer` | query | No | Maximum number of TlsRoutes to return per call. |
| `pageToken` | `string` | query | No | The value returned by the last `ListTlsRoutesResponse` Indicates that this is a continuation of a prior `ListTlsRoute... |
| `returnPartialSuccess` | `boolean` | query | No | Optional. If true, allow partial responses for multi-regional Aggregated List requests. Otherwise if one of the locat... |

**Response**: `ListTlsRoutesResponse`

```typescript
const res = await networkservices.tlsRoutes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.tlsRoutes.delete`

**DELETE** `v1/{+name}`

Deletes a single TlsRoute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the TlsRoute to delete. Must be in the format `projects/*/locations/*/tlsRoutes/*`. |

**Response**: `Operation`

```typescript
const res = await networkservices.tlsRoutes.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.grpcRoutes.get`

**GET** `v1/{+name}`

Gets details of a single GrpcRoute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the GrpcRoute to get. Must be in the format `projects/*/locations/*/grpcRoutes/*`. |

**Response**: `GrpcRoute`

```typescript
const res = await networkservices.grpcRoutes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.grpcRoutes.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single GrpcRoute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Name of the GrpcRoute resource. It matches pattern `projects/*/locations/*/grpcRoutes/` |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the GrpcRoute resource by the update. The fie... |

**Request body**: `GrpcRoute`

**Response**: `Operation`

```typescript
const res = await networkservices.grpcRoutes.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.grpcRoutes.list`

**GET** `v1/{+parent}/grpcRoutes`

Lists GrpcRoutes in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location from which the GrpcRoutes should be listed, specified in the format `projects/*/lo... |
| `pageSize` | `integer` | query | No | Maximum number of GrpcRoutes to return per call. |
| `pageToken` | `string` | query | No | The value returned by the last `ListGrpcRoutesResponse` Indicates that this is a continuation of a prior `ListGrpcRou... |
| `returnPartialSuccess` | `boolean` | query | No | Optional. If true, allow partial responses for multi-regional Aggregated List requests. Otherwise if one of the locat... |

**Response**: `ListGrpcRoutesResponse`

```typescript
const res = await networkservices.grpcRoutes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.grpcRoutes.create`

**POST** `v1/{+parent}/grpcRoutes`

Creates a new GrpcRoute in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the GrpcRoute. Must be in the format `projects/*/locations/*`. |
| `grpcRouteId` | `string` | query | No | Required. Short name of the GrpcRoute resource to be created. |

**Request body**: `GrpcRoute`

**Response**: `Operation`

```typescript
const res = await networkservices.grpcRoutes.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.grpcRoutes.delete`

**DELETE** `v1/{+name}`

Deletes a single GrpcRoute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the GrpcRoute to delete. Must be in the format `projects/*/locations/*/grpcRoutes/*`. |

**Response**: `Operation`

```typescript
const res = await networkservices.grpcRoutes.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.edgeCacheServices.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await networkservices.edgeCacheServices.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.edgeCacheServices.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await networkservices.edgeCacheServices.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.edgeCacheServices.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await networkservices.edgeCacheServices.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.lbEdgeExtensions.patch`

**PATCH** `v1/{+name}`

Updates the parameters of the specified `LbEdgeExtension` resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Identifier. Name of the `LbEdgeExtension` resource in the following format: `projects/{project}/locations/{... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Optional. Used to specify the fields to be overwritten in the `LbEdgeExtension` resource by the update. The fields sp... |

**Request body**: `LbEdgeExtension`

**Response**: `Operation`

```typescript
const res = await networkservices.lbEdgeExtensions.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.lbEdgeExtensions.create`

**POST** `v1/{+parent}/lbEdgeExtensions`

Creates a new `LbEdgeExtension` resource in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the `LbEdgeExtension` resource. Must be in the format `projects/{project}/locations/... |
| `lbEdgeExtensionId` | `string` | query | No | Required. User-provided ID of the `LbEdgeExtension` resource to be created. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `LbEdgeExtension`

**Response**: `Operation`

```typescript
const res = await networkservices.lbEdgeExtensions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.lbEdgeExtensions.delete`

**DELETE** `v1/{+name}`

Deletes the specified `LbEdgeExtension` resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the `LbEdgeExtension` resource to delete. Must be in the format `projects/{project}/locations/{... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `Operation`

```typescript
const res = await networkservices.lbEdgeExtensions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.lbEdgeExtensions.list`

**GET** `v1/{+parent}/lbEdgeExtensions`

Lists `LbEdgeExtension` resources in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location from which the `LbEdgeExtension` resources are listed. These values are specified ... |
| `filter` | `string` | query | No | Optional. Filtering results. |
| `orderBy` | `string` | query | No | Optional. Hint about how to order the results. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. The server might return fewer items than requested. If unspecified, the server picks a... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results that the server returns. |

**Response**: `ListLbEdgeExtensionsResponse`

```typescript
const res = await networkservices.lbEdgeExtensions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.lbEdgeExtensions.get`

**GET** `v1/{+name}`

Gets details of the specified `LbEdgeExtension` resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the `LbEdgeExtension` resource to get. Must be in the format `projects/{project}/locations/{locat... |

**Response**: `LbEdgeExtension`

```typescript
const res = await networkservices.lbEdgeExtensions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.lbTrafficExtensions.patch`

**PATCH** `v1/{+name}`

Updates the parameters of the specified `LbTrafficExtension` resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Identifier. Name of the `LbTrafficExtension` resource in the following format: `projects/{project}/location... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Optional. Used to specify the fields to be overwritten in the `LbTrafficExtension` resource by the update. The fields... |

**Request body**: `LbTrafficExtension`

**Response**: `Operation`

```typescript
const res = await networkservices.lbTrafficExtensions.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.lbTrafficExtensions.delete`

**DELETE** `v1/{+name}`

Deletes the specified `LbTrafficExtension` resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the `LbTrafficExtension` resource to delete. Must be in the format `projects/{project}/location... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `Operation`

```typescript
const res = await networkservices.lbTrafficExtensions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.lbTrafficExtensions.create`

**POST** `v1/{+parent}/lbTrafficExtensions`

Creates a new `LbTrafficExtension` resource in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the `LbTrafficExtension` resource. Must be in the format `projects/{project}/locatio... |
| `lbTrafficExtensionId` | `string` | query | No | Required. User-provided ID of the `LbTrafficExtension` resource to be created. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `LbTrafficExtension`

**Response**: `Operation`

```typescript
const res = await networkservices.lbTrafficExtensions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.lbTrafficExtensions.get`

**GET** `v1/{+name}`

Gets details of the specified `LbTrafficExtension` resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the `LbTrafficExtension` resource to get. Must be in the format `projects/{project}/locations/{lo... |

**Response**: `LbTrafficExtension`

```typescript
const res = await networkservices.lbTrafficExtensions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.lbTrafficExtensions.list`

**GET** `v1/{+parent}/lbTrafficExtensions`

Lists `LbTrafficExtension` resources in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location from which the `LbTrafficExtension` resources are listed. These values are specifi... |
| `filter` | `string` | query | No | Optional. Filtering results. |
| `orderBy` | `string` | query | No | Optional. Hint about how to order the results. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. The server might return fewer items than requested. If unspecified, the server picks a... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results that the server returns. |

**Response**: `ListLbTrafficExtensionsResponse`

```typescript
const res = await networkservices.lbTrafficExtensions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.tcpRoutes.list`

**GET** `v1/{+parent}/tcpRoutes`

Lists TcpRoute in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location from which the TcpRoutes should be listed, specified in the format `projects/*/loc... |
| `pageSize` | `integer` | query | No | Maximum number of TcpRoutes to return per call. |
| `pageToken` | `string` | query | No | The value returned by the last `ListTcpRoutesResponse` Indicates that this is a continuation of a prior `ListTcpRoute... |
| `returnPartialSuccess` | `boolean` | query | No | Optional. If true, allow partial responses for multi-regional Aggregated List requests. Otherwise if one of the locat... |

**Response**: `ListTcpRoutesResponse`

```typescript
const res = await networkservices.tcpRoutes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.tcpRoutes.create`

**POST** `v1/{+parent}/tcpRoutes`

Creates a new TcpRoute in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the TcpRoute. Must be in the format `projects/*/locations/*`. |
| `tcpRouteId` | `string` | query | No | Required. Short name of the TcpRoute resource to be created. |

**Request body**: `TcpRoute`

**Response**: `Operation`

```typescript
const res = await networkservices.tcpRoutes.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.tcpRoutes.get`

**GET** `v1/{+name}`

Gets details of a single TcpRoute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the TcpRoute to get. Must be in the format `projects/*/locations/*/tcpRoutes/*`. |

**Response**: `TcpRoute`

```typescript
const res = await networkservices.tcpRoutes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.tcpRoutes.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single TcpRoute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Name of the TcpRoute resource. It matches pattern `projects/*/locations/*/tcpRoutes/tcp_route_name>`. |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the TcpRoute resource by the update. The fiel... |

**Request body**: `TcpRoute`

**Response**: `Operation`

```typescript
const res = await networkservices.tcpRoutes.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.tcpRoutes.delete`

**DELETE** `v1/{+name}`

Deletes a single TcpRoute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the TcpRoute to delete. Must be in the format `projects/*/locations/*/tcpRoutes/*`. |

**Response**: `Operation`

```typescript
const res = await networkservices.tcpRoutes.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.serviceLbPolicies.list`

**GET** `v1/{+parent}/serviceLbPolicies`

Lists ServiceLbPolicies in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location from which the ServiceLbPolicies should be listed, specified in the format `projec... |
| `pageSize` | `integer` | query | No | Maximum number of ServiceLbPolicies to return per call. |
| `pageToken` | `string` | query | No | The value returned by the last `ListServiceLbPoliciesResponse` Indicates that this is a continuation of a prior `List... |

**Response**: `ListServiceLbPoliciesResponse`

```typescript
const res = await networkservices.serviceLbPolicies.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.serviceLbPolicies.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single ServiceLbPolicy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Name of the ServiceLbPolicy resource. It matches pattern `projects/{project}/locations/{location}/service... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the ServiceLbPolicy resource by the update. T... |

**Request body**: `ServiceLbPolicy`

**Response**: `Operation`

```typescript
const res = await networkservices.serviceLbPolicies.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.serviceLbPolicies.create`

**POST** `v1/{+parent}/serviceLbPolicies`

Creates a new ServiceLbPolicy in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the ServiceLbPolicy. Must be in the format `projects/{project}/locations/{location}`. |
| `serviceLbPolicyId` | `string` | query | No | Required. Short name of the ServiceLbPolicy resource to be created. E.g. for resource name `projects/{project}/locati... |

**Request body**: `ServiceLbPolicy`

**Response**: `Operation`

```typescript
const res = await networkservices.serviceLbPolicies.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.serviceLbPolicies.get`

**GET** `v1/{+name}`

Gets details of a single ServiceLbPolicy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the ServiceLbPolicy to get. Must be in the format `projects/{project}/locations/{location}/servic... |

**Response**: `ServiceLbPolicy`

```typescript
const res = await networkservices.serviceLbPolicies.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.serviceLbPolicies.delete`

**DELETE** `v1/{+name}`

Deletes a single ServiceLbPolicy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the ServiceLbPolicy to delete. Must be in the format `projects/{project}/locations/{location}/ser... |

**Response**: `Operation`

```typescript
const res = await networkservices.serviceLbPolicies.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.serviceBindings.delete`

**DELETE** `v1/{+name}`

Deletes a single ServiceBinding.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the ServiceBinding to delete. Must be in the format `projects/*/locations/*/serviceBindings/*`. |

**Response**: `Operation`

```typescript
const res = await networkservices.serviceBindings.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.serviceBindings.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single ServiceBinding.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Name of the ServiceBinding resource. It matches pattern `projects/*/locations/*/serviceBindings/`. |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the ServiceBinding resource by the update. Th... |

**Request body**: `ServiceBinding`

**Response**: `Operation`

```typescript
const res = await networkservices.serviceBindings.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.serviceBindings.list`

**GET** `v1/{+parent}/serviceBindings`

Lists ServiceBinding in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location from which the ServiceBindings should be listed, specified in the format `projects... |
| `pageSize` | `integer` | query | No | Maximum number of ServiceBindings to return per call. |
| `pageToken` | `string` | query | No | The value returned by the last `ListServiceBindingsResponse` Indicates that this is a continuation of a prior `ListRo... |

**Response**: `ListServiceBindingsResponse`

```typescript
const res = await networkservices.serviceBindings.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.serviceBindings.create`

**POST** `v1/{+parent}/serviceBindings`

Creates a new ServiceBinding in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the ServiceBinding. Must be in the format `projects/*/locations/*`. |
| `serviceBindingId` | `string` | query | No | Required. Short name of the ServiceBinding resource to be created. |

**Request body**: `ServiceBinding`

**Response**: `Operation`

```typescript
const res = await networkservices.serviceBindings.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.serviceBindings.get`

**GET** `v1/{+name}`

Gets details of a single ServiceBinding.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the ServiceBinding to get. Must be in the format `projects/*/locations/*/serviceBindings/*`. |

**Response**: `ServiceBinding`

```typescript
const res = await networkservices.serviceBindings.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.lbRouteExtensions.list`

**GET** `v1/{+parent}/lbRouteExtensions`

Lists `LbRouteExtension` resources in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location from which the `LbRouteExtension` resources are listed. These values are specified... |
| `filter` | `string` | query | No | Optional. Filtering results. |
| `orderBy` | `string` | query | No | Optional. Hint about how to order the results. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. The server might return fewer items than requested. If unspecified, the server picks a... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results that the server returns. |

**Response**: `ListLbRouteExtensionsResponse`

```typescript
const res = await networkservices.lbRouteExtensions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.lbRouteExtensions.delete`

**DELETE** `v1/{+name}`

Deletes the specified `LbRouteExtension` resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the `LbRouteExtension` resource to delete. Must be in the format `projects/{project}/locations/... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `Operation`

```typescript
const res = await networkservices.lbRouteExtensions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.lbRouteExtensions.get`

**GET** `v1/{+name}`

Gets details of the specified `LbRouteExtension` resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the `LbRouteExtension` resource to get. Must be in the format `projects/{project}/locations/{loca... |

**Response**: `LbRouteExtension`

```typescript
const res = await networkservices.lbRouteExtensions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.lbRouteExtensions.patch`

**PATCH** `v1/{+name}`

Updates the parameters of the specified `LbRouteExtension` resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Identifier. Name of the `LbRouteExtension` resource in the following format: `projects/{project}/locations/... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Optional. Used to specify the fields to be overwritten in the `LbRouteExtension` resource by the update. The fields s... |

**Request body**: `LbRouteExtension`

**Response**: `Operation`

```typescript
const res = await networkservices.lbRouteExtensions.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.lbRouteExtensions.create`

**POST** `v1/{+parent}/lbRouteExtensions`

Creates a new `LbRouteExtension` resource in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the `LbRouteExtension` resource. Must be in the format `projects/{project}/locations... |
| `lbRouteExtensionId` | `string` | query | No | Required. User-provided ID of the `LbRouteExtension` resource to be created. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `LbRouteExtension`

**Response**: `Operation`

```typescript
const res = await networkservices.lbRouteExtensions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.operations.list`

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
const res = await networkservices.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await networkservices.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await networkservices.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await networkservices.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.wasmPlugins.list`

**GET** `v1/{+parent}/wasmPlugins`

Lists `WasmPlugin` resources in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location from which the `WasmPlugin` resources are listed, specified in the following forma... |
| `pageSize` | `integer` | query | No | Maximum number of `WasmPlugin` resources to return per call. If not specified, at most 50 `WasmPlugin` resources are ... |
| `pageToken` | `string` | query | No | The value returned by the last `ListWasmPluginsResponse` call. Indicates that this is a continuation of a prior `List... |

**Response**: `ListWasmPluginsResponse`

```typescript
const res = await networkservices.wasmPlugins.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.wasmPlugins.create`

**POST** `v1/{+parent}/wasmPlugins`

Creates a new `WasmPlugin` resource in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the `WasmPlugin` resource. Must be in the format `projects/{project}/locations/global`. |
| `wasmPluginId` | `string` | query | No | Required. User-provided ID of the `WasmPlugin` resource to be created. |

**Request body**: `WasmPlugin`

**Response**: `Operation`

```typescript
const res = await networkservices.wasmPlugins.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.wasmPlugins.patch`

**PATCH** `v1/{+name}`

Updates the parameters of the specified `WasmPlugin` resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Name of the `WasmPlugin` resource in the following format: `projects/{project}/locations/{location}/wasmP... |
| `updateMask` | `string` | query | No | Optional. Used to specify the fields to be overwritten in the `WasmPlugin` resource by the update. The fields specifi... |

**Request body**: `WasmPlugin`

**Response**: `Operation`

```typescript
const res = await networkservices.wasmPlugins.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.wasmPlugins.delete`

**DELETE** `v1/{+name}`

Deletes the specified `WasmPlugin` resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the `WasmPlugin` resource to delete. Must be in the format `projects/{project}/locations/global/w... |

**Response**: `Operation`

```typescript
const res = await networkservices.wasmPlugins.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.wasmPlugins.get`

**GET** `v1/{+name}`

Gets details of the specified `WasmPlugin` resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the `WasmPlugin` resource to get. Must be in the format `projects/{project}/locations/global/wasm... |
| `view` | `string` | query | No | Determines how much data must be returned in the response. See [AIP-157](https://google.aip.dev/157). |

**Response**: `WasmPlugin`

```typescript
const res = await networkservices.wasmPlugins.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.wasmPlugins.versions.create`

**POST** `v1/{+parent}/versions`

Creates a new `WasmPluginVersion` resource in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the `WasmPluginVersion` resource. Must be in the format `projects/{project}/location... |
| `wasmPluginVersionId` | `string` | query | No | Required. User-provided ID of the `WasmPluginVersion` resource to be created. |

**Request body**: `WasmPluginVersion`

**Response**: `Operation`

```typescript
const res = await networkservices.versions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.wasmPlugins.versions.get`

**GET** `v1/{+name}`

Gets details of the specified `WasmPluginVersion` resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the `WasmPluginVersion` resource to get. Must be in the format `projects/{project}/locations/glob... |

**Response**: `WasmPluginVersion`

```typescript
const res = await networkservices.versions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.wasmPlugins.versions.list`

**GET** `v1/{+parent}/versions`

Lists `WasmPluginVersion` resources in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The `WasmPlugin` resource whose `WasmPluginVersion`s are listed, specified in the following format: `projec... |
| `pageSize` | `integer` | query | No | Maximum number of `WasmPluginVersion` resources to return per call. If not specified, at most 50 `WasmPluginVersion` ... |
| `pageToken` | `string` | query | No | The value returned by the last `ListWasmPluginVersionsResponse` call. Indicates that this is a continuation of a prio... |

**Response**: `ListWasmPluginVersionsResponse`

```typescript
const res = await networkservices.versions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.wasmPlugins.versions.delete`

**DELETE** `v1/{+name}`

Deletes the specified `WasmPluginVersion` resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the `WasmPluginVersion` resource to delete. Must be in the format `projects/{project}/locations/g... |

**Response**: `Operation`

```typescript
const res = await networkservices.versions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.edgeCacheOrigins.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await networkservices.edgeCacheOrigins.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.edgeCacheOrigins.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await networkservices.edgeCacheOrigins.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.edgeCacheOrigins.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await networkservices.edgeCacheOrigins.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.authzExtensions.list`

**GET** `v1/{+parent}/authzExtensions`

Lists `AuthzExtension` resources in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location from which the `AuthzExtension` resources are listed. These values are specified i... |
| `filter` | `string` | query | No | Optional. Filtering results. |
| `orderBy` | `string` | query | No | Optional. Hint about how to order the results. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. The server might return fewer items than requested. If unspecified, the server picks a... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results that the server returns. |

**Response**: `ListAuthzExtensionsResponse`

```typescript
const res = await networkservices.authzExtensions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.authzExtensions.get`

**GET** `v1/{+name}`

Gets details of the specified `AuthzExtension` resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the `AuthzExtension` resource to get. Must be in the format `projects/{project}/locations/{locati... |

**Response**: `AuthzExtension`

```typescript
const res = await networkservices.authzExtensions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.authzExtensions.delete`

**DELETE** `v1/{+name}`

Deletes the specified `AuthzExtension` resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the `AuthzExtension` resource to delete. Must be in the format `projects/{project}/locations/{l... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `Operation`

```typescript
const res = await networkservices.authzExtensions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.authzExtensions.patch`

**PATCH** `v1/{+name}`

Updates the parameters of the specified `AuthzExtension` resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Identifier. Name of the `AuthzExtension` resource in the following format: `projects/{project}/locations/{l... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Required. Used to specify the fields to be overwritten in the `AuthzExtension` resource by the update. The fields spe... |

**Request body**: `AuthzExtension`

**Response**: `Operation`

```typescript
const res = await networkservices.authzExtensions.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.authzExtensions.create`

**POST** `v1/{+parent}/authzExtensions`

Creates a new `AuthzExtension` resource in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the `AuthzExtension` resource. Must be in the format `projects/{project}/locations/{... |
| `authzExtensionId` | `string` | query | No | Required. User-provided ID of the `AuthzExtension` resource to be created. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `AuthzExtension`

**Response**: `Operation`

```typescript
const res = await networkservices.authzExtensions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.edgeCacheKeysets.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await networkservices.edgeCacheKeysets.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.edgeCacheKeysets.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await networkservices.edgeCacheKeysets.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.edgeCacheKeysets.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await networkservices.edgeCacheKeysets.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.endpointPolicies.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single EndpointPolicy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Name of the EndpointPolicy resource. It matches pattern `projects/{project}/locations/*/endpointPolicies/... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the EndpointPolicy resource by the update. Th... |

**Request body**: `EndpointPolicy`

**Response**: `Operation`

```typescript
const res = await networkservices.endpointPolicies.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.endpointPolicies.list`

**GET** `v1/{+parent}/endpointPolicies`

Lists EndpointPolicies in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location from which the EndpointPolicies should be listed, specified in the format `project... |
| `pageSize` | `integer` | query | No | Maximum number of EndpointPolicies to return per call. |
| `pageToken` | `string` | query | No | The value returned by the last `ListEndpointPoliciesResponse` Indicates that this is a continuation of a prior `ListE... |
| `returnPartialSuccess` | `boolean` | query | No | Optional. If true, allow partial responses for multi-regional Aggregated List requests. Otherwise if one of the locat... |

**Response**: `ListEndpointPoliciesResponse`

```typescript
const res = await networkservices.endpointPolicies.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.endpointPolicies.delete`

**DELETE** `v1/{+name}`

Deletes a single EndpointPolicy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the EndpointPolicy to delete. Must be in the format `projects/*/locations/*/endpointPolicies/*`. |

**Response**: `Operation`

```typescript
const res = await networkservices.endpointPolicies.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.endpointPolicies.get`

**GET** `v1/{+name}`

Gets details of a single EndpointPolicy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the EndpointPolicy to get. Must be in the format `projects/*/locations/*/endpointPolicies/*`. |

**Response**: `EndpointPolicy`

```typescript
const res = await networkservices.endpointPolicies.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.endpointPolicies.create`

**POST** `v1/{+parent}/endpointPolicies`

Creates a new EndpointPolicy in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the EndpointPolicy. Must be in the format `projects/*/locations/*`. |
| `endpointPolicyId` | `string` | query | No | Required. Short name of the EndpointPolicy resource to be created. E.g. "CustomECS". |

**Request body**: `EndpointPolicy`

**Response**: `Operation`

```typescript
const res = await networkservices.endpointPolicies.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.meshes.list`

**GET** `v1/{+parent}/meshes`

Lists Meshes in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location from which the Meshes should be listed, specified in the format `projects/*/locati... |
| `pageSize` | `integer` | query | No | Maximum number of Meshes to return per call. |
| `pageToken` | `string` | query | No | The value returned by the last `ListMeshesResponse` Indicates that this is a continuation of a prior `ListMeshes` cal... |
| `returnPartialSuccess` | `boolean` | query | No | Optional. If true, allow partial responses for multi-regional Aggregated List requests. Otherwise if one of the locat... |

**Response**: `ListMeshesResponse`

```typescript
const res = await networkservices.meshes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.meshes.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single Mesh.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Name of the Mesh resource. It matches pattern `projects/*/locations/*/meshes/`. |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the Mesh resource by the update. The fields s... |

**Request body**: `Mesh`

**Response**: `Operation`

```typescript
const res = await networkservices.meshes.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.meshes.delete`

**DELETE** `v1/{+name}`

Deletes a single Mesh.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the Mesh to delete. Must be in the format `projects/*/locations/*/meshes/*`. |

**Response**: `Operation`

```typescript
const res = await networkservices.meshes.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.meshes.create`

**POST** `v1/{+parent}/meshes`

Creates a new Mesh in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the Mesh. Must be in the format `projects/*/locations/*`. |
| `meshId` | `string` | query | No | Required. Short name of the Mesh resource to be created. |

**Request body**: `Mesh`

**Response**: `Operation`

```typescript
const res = await networkservices.meshes.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.meshes.get`

**GET** `v1/{+name}`

Gets details of a single Mesh.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the Mesh to get. Must be in the format `projects/*/locations/*/meshes/*`. |

**Response**: `Mesh`

```typescript
const res = await networkservices.meshes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.meshes.routeViews.list`

**GET** `v1/{+parent}/routeViews`

Lists RouteViews

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The Mesh to which a Route is associated. Format: projects/{project_number}/locations/{location}/meshes/{mesh} |
| `pageSize` | `integer` | query | No | Maximum number of MeshRouteViews to return per call. |
| `pageToken` | `string` | query | No | The value returned by the last `ListMeshRouteViewsResponse` Indicates that this is a continuation of a prior `ListMes... |

**Response**: `ListMeshRouteViewsResponse`

```typescript
const res = await networkservices.routeViews.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.meshes.routeViews.get`

**GET** `v1/{+name}`

Get a single RouteView of a Mesh.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the MeshRouteView resource. Format: projects/{project_number}/locations/{location}/meshes/{mesh}/ro... |

**Response**: `MeshRouteView`

```typescript
const res = await networkservices.routeViews.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.gateways.delete`

**DELETE** `v1/{+name}`

Deletes a single Gateway.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the Gateway to delete. Must be in the format `projects/*/locations/*/gateways/*`. |

**Response**: `Operation`

```typescript
const res = await networkservices.gateways.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.gateways.list`

**GET** `v1/{+parent}/gateways`

Lists Gateways in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location from which the Gateways should be listed, specified in the format `projects/*/loca... |
| `pageSize` | `integer` | query | No | Maximum number of Gateways to return per call. |
| `pageToken` | `string` | query | No | The value returned by the last `ListGatewaysResponse` Indicates that this is a continuation of a prior `ListGateways`... |

**Response**: `ListGatewaysResponse`

```typescript
const res = await networkservices.gateways.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.gateways.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single Gateway.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Name of the Gateway resource. It matches pattern `projects/*/locations/*/gateways/`. |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the Gateway resource by the update. The field... |

**Request body**: `Gateway`

**Response**: `Operation`

```typescript
const res = await networkservices.gateways.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.gateways.create`

**POST** `v1/{+parent}/gateways`

Creates a new Gateway in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the Gateway. Must be in the format `projects/*/locations/*`. |
| `gatewayId` | `string` | query | No | Required. Short name of the Gateway resource to be created. |

**Request body**: `Gateway`

**Response**: `Operation`

```typescript
const res = await networkservices.gateways.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.gateways.get`

**GET** `v1/{+name}`

Gets details of a single Gateway.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the Gateway to get. Must be in the format `projects/*/locations/*/gateways/*`. |

**Response**: `Gateway`

```typescript
const res = await networkservices.gateways.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.gateways.routeViews.get`

**GET** `v1/{+name}`

Get a single RouteView of a Gateway.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the GatewayRouteView resource. Formats: projects/{project_number}/locations/{location}/gateways/{ga... |

**Response**: `GatewayRouteView`

```typescript
const res = await networkservices.routeViews.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networkservices.projects.locations.gateways.routeViews.list`

**GET** `v1/{+parent}/routeViews`

Lists RouteViews

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The Gateway to which a Route is associated. Formats: projects/{project_number}/locations/{location}/gateway... |
| `pageSize` | `integer` | query | No | Maximum number of GatewayRouteViews to return per call. |
| `pageToken` | `string` | query | No | The value returned by the last `ListGatewayRouteViewsResponse` Indicates that this is a continuation of a prior `List... |

**Response**: `ListGatewayRouteViewsResponse`

```typescript
const res = await networkservices.routeViews.list({
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

### `AuthzExtension`

`AuthzExtension` is a resource that allows traffic forwarding to a callout backend service to make an authorization decision.

| Property | Type | Description |
|----------|------|-------------|
| `authority` | `string` | Required. The `:authority` header in the gRPC request sent from Envoy to the extension service. |
| `createTime` | `string` | Output only. The timestamp when the resource was created. |
| `description` | `string` | Optional. A human-readable description of the resource. |
| `failOpen` | `boolean` | Optional. Determines how the proxy behaves if the call to the extension fails or times out. When ... |
| `forwardHeaders` | `array<string>` | Optional. List of the HTTP headers to forward to the extension (from the client). If omitted, all... |
| `labels` | `object` | Optional. Set of labels associated with the `AuthzExtension` resource. The format must comply wit... |
| `loadBalancingScheme` | `string` | Required. All backend services and forwarding rules referenced by this extension must share the s... |
| `metadata` | `object` | Optional. The metadata provided here is included as part of the `metadata_context` (of type `goog... |
| `name` | `string` | Required. Identifier. Name of the `AuthzExtension` resource in the following format: `projects/{p... |
| `service` | `string` | Required. The reference to the service that runs the extension. To configure a callout extension,... |
| `timeout` | `string` | Required. Specifies the timeout for each individual message on the stream. The timeout must be be... |
| `updateTime` | `string` | Output only. The timestamp when the resource was updated. |
| `wireFormat` | `string` | Optional. The format of communication supported by the callout extension. This field is supported... |

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `EndpointMatcher`

A definition of a matcher that selects endpoints to which the policies should be applied.

| Property | Type | Description |
|----------|------|-------------|
| `metadataLabelMatcher` | `EndpointMatcherMetadataLabelMatcher` | The matcher is based on node metadata presented by xDS clients. |

### `EndpointMatcherMetadataLabelMatcher`

The matcher that is based on node metadata presented by xDS clients.

| Property | Type | Description |
|----------|------|-------------|
| `metadataLabelMatchCriteria` | `string` | Specifies how matching should be done. Supported values are: MATCH_ANY: At least one of the Label... |
| `metadataLabels` | `array<EndpointMatcherMetadataLabelMatcherMetadataLabels>` | The list of label value pairs that must match labels in the provided metadata based on filterMatc... |

### `EndpointMatcherMetadataLabelMatcherMetadataLabels`

Defines a name-pair value for a single label.

| Property | Type | Description |
|----------|------|-------------|
| `labelName` | `string` | Required. Label name presented as key in xDS Node Metadata. |
| `labelValue` | `string` | Required. Label value presented as value corresponding to the above key, in xDS Node Metadata. |

### `EndpointPolicy`

EndpointPolicy is a resource that helps apply desired configuration on the endpoints that match specific criteria. For example, this resource can be used to apply "authentication config" an all endpoints that serve on port 8080.

| Property | Type | Description |
|----------|------|-------------|
| `authorizationPolicy` | `string` | Optional. This field specifies the URL of AuthorizationPolicy resource that applies authorization... |
| `clientTlsPolicy` | `string` | Optional. A URL referring to a ClientTlsPolicy resource. ClientTlsPolicy can be set to specify th... |
| `createTime` | `string` | Output only. The timestamp when the resource was created. |
| `description` | `string` | Optional. A free-text description of the resource. Max length 1024 characters. |
| `endpointMatcher` | `EndpointMatcher` | Required. A matcher that selects endpoints to which the policies should be applied. |
| `labels` | `object` | Optional. Set of label tags associated with the EndpointPolicy resource. |
| `name` | `string` | Identifier. Name of the EndpointPolicy resource. It matches pattern `projects/{project}/locations... |
| `serverTlsPolicy` | `string` | Optional. A URL referring to ServerTlsPolicy resource. ServerTlsPolicy is used to determine the a... |
| `trafficPortSelector` | `TrafficPortSelector` | Optional. Port selector for the (matched) endpoints. If no port selector is provided, the matched... |
| `type` | `string` | Required. The type of endpoint policy. This is primarily used to validate the configuration. |
| `updateTime` | `string` | Output only. The timestamp when the resource was updated. |

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `ExtensionChain`

A single extension chain wrapper that contains the match conditions and extensions to execute.

| Property | Type | Description |
|----------|------|-------------|
| `extensions` | `array<ExtensionChainExtension>` | Required. A set of extensions to execute for the matching request. At least one extension is requ... |
| `matchCondition` | `ExtensionChainMatchCondition` | Required. Conditions under which this chain is invoked for a request. |
| `name` | `string` | Required. The name for this extension chain. The name is logged as part of the HTTP request logs.... |

### `ExtensionChainExtension`

A single extension in the chain to execute for the matching request.

| Property | Type | Description |
|----------|------|-------------|
| `authority` | `string` | Optional. The `:authority` header in the gRPC request sent from Envoy to the extension service. R... |
| `failOpen` | `boolean` | Optional. Determines how the proxy behaves if the call to the extension fails or times out. When ... |
| `forwardHeaders` | `array<string>` | Optional. List of the HTTP headers to forward to the extension (from the client or backend). If o... |
| `metadata` | `object` | Optional. The metadata provided here is included as part of the `metadata_context` (of type `goog... |
| `name` | `string` | Optional. The name for this extension. The name is logged as part of the HTTP request logs. The n... |
| `observabilityMode` | `boolean` | Optional. When set to `TRUE`, enables `observability_mode` on the `ext_proc` filter. This makes `... |
| `requestBodySendMode` | `string` | Optional. Configures the send mode for request body processing. The field can only be set if `sup... |
| `responseBodySendMode` | `string` | Optional. Configures the send mode for response processing. If unspecified, the default value `ST... |
| `service` | `string` | Required. The reference to the service that runs the extension. To configure a callout extension,... |
| `supportedEvents` | `array<string>` | Optional. A set of events during request or response processing for which this extension is calle... |
| `timeout` | `string` | Optional. Specifies the timeout for each individual message on the stream. The timeout must be be... |

### `ExtensionChainMatchCondition`

Conditions under which this chain is invoked for a request.

| Property | Type | Description |
|----------|------|-------------|
| `celExpression` | `string` | Required. A Common Expression Language (CEL) expression that is used to match requests for which ... |

### `Gateway`

Gateway represents the configuration for a proxy, typically a load balancer. It captures the ip:port over which the services are exposed by the proxy, along with any policy configurations. Routes have reference to to Gateways to dictate how requests should be routed by this Gateway.

| Property | Type | Description |
|----------|------|-------------|
| `addresses` | `array<string>` | Optional. Zero or one IPv4 or IPv6 address on which the Gateway will receive the traffic. When no... |
| `certificateUrls` | `array<string>` | Optional. A fully-qualified Certificates URL reference. The proxy presents a Certificate (selecte... |
| `createTime` | `string` | Output only. The timestamp when the resource was created. |
| `description` | `string` | Optional. A free-text description of the resource. Max length 1024 characters. |
| `envoyHeaders` | `string` | Optional. Determines if envoy will insert internal debug headers into upstream requests. Other En... |
| `gatewaySecurityPolicy` | `string` | Optional. A fully-qualified GatewaySecurityPolicy URL reference. Defines how a server should appl... |
| `ipVersion` | `string` | Optional. The IP Version that will be used by this gateway. Valid options are IPV4 or IPV6. Defau... |
| `labels` | `object` | Optional. Set of label tags associated with the Gateway resource. |
| `name` | `string` | Identifier. Name of the Gateway resource. It matches pattern `projects/*/locations/*/gateways/`. |
| `network` | `string` | Optional. The relative resource name identifying the VPC network that is using this configuration... |
| `ports` | `array<integer>` | Required. One or more port numbers (1-65535), on which the Gateway will receive traffic. The prox... |
| `routingMode` | `string` | Optional. The routing mode of the Gateway. This field is configurable only for gateways of type S... |
| `scope` | `string` | Optional. Scope determines how configuration across multiple Gateway instances are merged. The co... |
| `selfLink` | `string` | Output only. Server-defined URL of this resource |
| `serverTlsPolicy` | `string` | Optional. A fully-qualified ServerTLSPolicy URL reference. Specifies how TLS traffic is terminate... |
| `subnetwork` | `string` | Optional. The relative resource name identifying the subnetwork in which this SWG is allocated. F... |
| `type` | `string` | Immutable. The type of the customer managed gateway. This field is required. If unspecified, an e... |
| `updateTime` | `string` | Output only. The timestamp when the resource was updated. |

### `GatewayRouteView`

GatewayRouteView defines view-only resource for Routes to a Gateway

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Output only. Identifier. Full path name of the GatewayRouteView resource. Format: projects/{proje... |
| `routeId` | `string` | Output only. The resource id for the route. |
| `routeLocation` | `string` | Output only. Location where the route exists. |
| `routeProjectNumber` | `string` | Output only. Project number where the route exists. |
| `routeType` | `string` | Output only. Type of the route: HttpRoute,GrpcRoute,TcpRoute, or TlsRoute |

### `GrpcRoute`

GrpcRoute is the resource defining how gRPC traffic routed by a Mesh or Gateway resource is routed.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The timestamp when the resource was created. |
| `description` | `string` | Optional. A free-text description of the resource. Max length 1024 characters. |
| `gateways` | `array<string>` | Optional. Gateways defines a list of gateways this GrpcRoute is attached to, as one of the routin... |
| `hostnames` | `array<string>` | Required. Service hostnames with an optional port for which this route describes traffic. Format:... |
| `labels` | `object` | Optional. Set of label tags associated with the GrpcRoute resource. |
| `meshes` | `array<string>` | Optional. Meshes defines a list of meshes this GrpcRoute is attached to, as one of the routing ru... |
| `name` | `string` | Identifier. Name of the GrpcRoute resource. It matches pattern `projects/*/locations/*/grpcRoutes/` |
| `rules` | `array<GrpcRouteRouteRule>` | Required. A list of detailed rules defining how to route traffic. Within a single GrpcRoute, the ... |
| `selfLink` | `string` | Output only. Server-defined URL of this resource |
| `updateTime` | `string` | Output only. The timestamp when the resource was updated. |

### `GrpcRouteDestination`

The destination to which traffic will be routed.

| Property | Type | Description |
|----------|------|-------------|
| `serviceName` | `string` | Required. The URL of a destination service to which to route traffic. Must refer to either a Back... |
| `weight` | `integer` | Optional. Specifies the proportion of requests forwarded to the backend referenced by the service... |

### `GrpcRouteFaultInjectionPolicy`

The specification for fault injection introduced into traffic to test the resiliency of clients to destination service failure. As part of fault injection, when clients send requests to a destination, delays can be introduced on a percentage of requests before sending those requests to the destination service. Similarly requests from clients can be aborted by for a percentage of requests.

| Property | Type | Description |
|----------|------|-------------|
| `abort` | `GrpcRouteFaultInjectionPolicyAbort` | The specification for aborting to client requests. |
| `delay` | `GrpcRouteFaultInjectionPolicyDelay` | The specification for injecting delay to client requests. |

### `GrpcRouteFaultInjectionPolicyAbort`

Specification of how client requests are aborted as part of fault injection before being sent to a destination.

| Property | Type | Description |
|----------|------|-------------|
| `httpStatus` | `integer` | The HTTP status code used to abort the request. The value must be between 200 and 599 inclusive. |
| `percentage` | `integer` | The percentage of traffic which will be aborted. The value must be between [0, 100] |

### `GrpcRouteFaultInjectionPolicyDelay`

Specification of how client requests are delayed as part of fault injection before being sent to a destination.

| Property | Type | Description |
|----------|------|-------------|
| `fixedDelay` | `string` | Specify a fixed delay before forwarding the request. |
| `percentage` | `integer` | The percentage of traffic on which delay will be injected. The value must be between [0, 100] |

### `GrpcRouteHeaderMatch`

A match against a collection of headers.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | Required. The key of the header. |
| `type` | `string` | Optional. Specifies how to match against the value of the header. If not specified, a default val... |
| `value` | `string` | Required. The value of the header. |

### `GrpcRouteMethodMatch`

Specifies a match against a method.

| Property | Type | Description |
|----------|------|-------------|
| `caseSensitive` | `boolean` | Optional. Specifies that matches are case sensitive. The default value is true. case_sensitive mu... |
| `grpcMethod` | `string` | Required. Name of the method to match against. If unspecified, will match all methods. |
| `grpcService` | `string` | Required. Name of the service to match against. If unspecified, will match all services. |
| `type` | `string` | Optional. Specifies how to match against the name. If not specified, a default value of "EXACT" i... |

### `GrpcRouteRetryPolicy`

The specifications for retries. Specifies one or more conditions for which this retry rule applies. Valid values are:

| Property | Type | Description |
|----------|------|-------------|
| `numRetries` | `integer` | Specifies the allowed number of retries. This number must be > 0. If not specified, default to 1. |
| `retryConditions` | `array<string>` | - connect-failure: Router will retry on failures connecting to Backend Services, for example due ... |

### `GrpcRouteRouteAction`

Specifies how to route matched traffic.

| Property | Type | Description |
|----------|------|-------------|
| `destinations` | `array<GrpcRouteDestination>` | Optional. The destination services to which traffic should be forwarded. If multiple destinations... |
| `faultInjectionPolicy` | `GrpcRouteFaultInjectionPolicy` | Optional. The specification for fault injection introduced into traffic to test the resiliency of... |
| `idleTimeout` | `string` | Optional. Specifies the idle timeout for the selected route. The idle timeout is defined as the p... |
| `retryPolicy` | `GrpcRouteRetryPolicy` | Optional. Specifies the retry policy associated with this route. |
| `statefulSessionAffinity` | `GrpcRouteStatefulSessionAffinityPolicy` | Optional. Specifies cookie-based stateful session affinity. |
| `timeout` | `string` | Optional. Specifies the timeout for selected route. Timeout is computed from the time the request... |

### `GrpcRouteRouteMatch`

Criteria for matching traffic. A RouteMatch will be considered to match when all supplied fields match.

| Property | Type | Description |
|----------|------|-------------|
| `headers` | `array<GrpcRouteHeaderMatch>` | Optional. Specifies a collection of headers to match. |
| `method` | `GrpcRouteMethodMatch` | Optional. A gRPC method to match against. If this field is empty or omitted, will match all methods. |

### `GrpcRouteRouteRule`

Describes how to route traffic.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `GrpcRouteRouteAction` | Required. A detailed rule defining how to route traffic. This field is required. |
| `matches` | `array<GrpcRouteRouteMatch>` | Optional. Matches define conditions used for matching the rule against incoming gRPC requests. Ea... |

### `GrpcRouteStatefulSessionAffinityPolicy`

The specification for cookie-based stateful session affinity where the date plane supplies a “session cookie” with the name "GSSA" which encodes a specific destination host and each request containing that cookie will be directed to that host as long as the destination host remains up and healthy. The gRPC proxyless mesh library or sidecar proxy will manage the session cookie but the client application code is responsible for copying the cookie from each RPC in the session to the next.

| Property | Type | Description |
|----------|------|-------------|
| `cookieTtl` | `string` | Required. The cookie TTL value for the Set-Cookie header generated by the data plane. The lifetim... |

### `HttpRoute`

HttpRoute is the resource defining how HTTP traffic should be routed by a Mesh or Gateway resource.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The timestamp when the resource was created. |
| `description` | `string` | Optional. A free-text description of the resource. Max length 1024 characters. |
| `gateways` | `array<string>` | Optional. Gateways defines a list of gateways this HttpRoute is attached to, as one of the routin... |
| `hostnames` | `array<string>` | Required. Hostnames define a set of hosts that should match against the HTTP host header to selec... |
| `labels` | `object` | Optional. Set of label tags associated with the HttpRoute resource. |
| `meshes` | `array<string>` | Optional. Meshes defines a list of meshes this HttpRoute is attached to, as one of the routing ru... |
| `name` | `string` | Identifier. Name of the HttpRoute resource. It matches pattern `projects/*/locations/*/httpRoutes... |
| `rules` | `array<HttpRouteRouteRule>` | Required. Rules that define how traffic is routed and handled. Rules will be matched sequentially... |
| `selfLink` | `string` | Output only. Server-defined URL of this resource |
| `updateTime` | `string` | Output only. The timestamp when the resource was updated. |

### `HttpRouteCorsPolicy`

The Specification for allowing client side cross-origin requests.

| Property | Type | Description |
|----------|------|-------------|
| `allowCredentials` | `boolean` | In response to a preflight request, setting this to true indicates that the actual request can in... |
| `allowHeaders` | `array<string>` | Specifies the content for Access-Control-Allow-Headers header. |
| `allowMethods` | `array<string>` | Specifies the content for Access-Control-Allow-Methods header. |
| `allowOriginRegexes` | `array<string>` | Specifies the regular expression patterns that match allowed origins. For regular expression gram... |
| `allowOrigins` | `array<string>` | Specifies the list of origins that will be allowed to do CORS requests. An origin is allowed if i... |
| `disabled` | `boolean` | If true, the CORS policy is disabled. The default value is false, which indicates that the CORS p... |
| `exposeHeaders` | `array<string>` | Specifies the content for Access-Control-Expose-Headers header. |
| `maxAge` | `string` | Specifies how long result of a preflight request can be cached in seconds. This translates to the... |

### `HttpRouteDestination`

Specifications of a destination to which the request should be routed to.

| Property | Type | Description |
|----------|------|-------------|
| `requestHeaderModifier` | `HttpRouteHeaderModifier` | Optional. The specification for modifying the headers of a matching request prior to delivery of ... |
| `responseHeaderModifier` | `HttpRouteHeaderModifier` | Optional. The specification for modifying the headers of a response prior to sending the response... |
| `serviceName` | `string` | The URL of a BackendService to route traffic to. |
| `weight` | `integer` | Specifies the proportion of requests forwarded to the backend referenced by the serviceName field... |

### `HttpRouteFaultInjectionPolicy`

The specification for fault injection introduced into traffic to test the resiliency of clients to destination service failure. As part of fault injection, when clients send requests to a destination, delays can be introduced by client proxy on a percentage of requests before sending those requests to the destination service. Similarly requests can be aborted by client proxy for a percentage of requests.

| Property | Type | Description |
|----------|------|-------------|
| `abort` | `HttpRouteFaultInjectionPolicyAbort` | The specification for aborting to client requests. |
| `delay` | `HttpRouteFaultInjectionPolicyDelay` | The specification for injecting delay to client requests. |

### `HttpRouteFaultInjectionPolicyAbort`

Specification of how client requests are aborted as part of fault injection before being sent to a destination.

| Property | Type | Description |
|----------|------|-------------|
| `httpStatus` | `integer` | The HTTP status code used to abort the request. The value must be between 200 and 599 inclusive. |
| `percentage` | `integer` | The percentage of traffic which will be aborted. The value must be between [0, 100] |

### `HttpRouteFaultInjectionPolicyDelay`

Specification of how client requests are delayed as part of fault injection before being sent to a destination.

| Property | Type | Description |
|----------|------|-------------|
| `fixedDelay` | `string` | Specify a fixed delay before forwarding the request. |
| `percentage` | `integer` | The percentage of traffic on which delay will be injected. The value must be between [0, 100] |

### `HttpRouteHeaderMatch`

Specifies how to select a route rule based on HTTP request headers.

| Property | Type | Description |
|----------|------|-------------|
| `exactMatch` | `string` | The value of the header should match exactly the content of exact_match. |
| `header` | `string` | The name of the HTTP header to match against. |
| `invertMatch` | `boolean` | If specified, the match result will be inverted before checking. Default value is set to false. |
| `prefixMatch` | `string` | The value of the header must start with the contents of prefix_match. |
| `presentMatch` | `boolean` | A header with header_name must exist. The match takes place whether or not the header has a value. |
| `rangeMatch` | `HttpRouteHeaderMatchIntegerRange` | If specified, the rule will match if the request header value is within the range. |
| `regexMatch` | `string` | The value of the header must match the regular expression specified in regex_match. For regular e... |
| `suffixMatch` | `string` | The value of the header must end with the contents of suffix_match. |

### `HttpRouteHeaderMatchIntegerRange`

Represents an integer value range.

| Property | Type | Description |
|----------|------|-------------|
| `end` | `integer` | End of the range (exclusive) |
| `start` | `integer` | Start of the range (inclusive) |

### `HttpRouteHeaderModifier`

The specification for modifying HTTP header in HTTP request and HTTP response.

| Property | Type | Description |
|----------|------|-------------|
| `add` | `object` | Add the headers with given map where key is the name of the header, value is the value of the hea... |
| `remove` | `array<string>` | Remove headers (matching by header names) specified in the list. |
| `set` | `object` | Completely overwrite/replace the headers with given map where key is the name of the header, valu... |

### `HttpRouteHttpDirectResponse`

Static HTTP response object to be returned.

| Property | Type | Description |
|----------|------|-------------|
| `bytesBody` | `string` | Optional. Response body as bytes. Maximum body size is 4096B. |
| `status` | `integer` | Required. Status to return as part of HTTP Response. Must be a positive integer. |
| `stringBody` | `string` | Optional. Response body as a string. Maximum body length is 1024 characters. |

### `HttpRouteQueryParameterMatch`

Specifications to match a query parameter in the request.

| Property | Type | Description |
|----------|------|-------------|
| `exactMatch` | `string` | The value of the query parameter must exactly match the contents of exact_match. Only one of exac... |
| `presentMatch` | `boolean` | Specifies that the QueryParameterMatcher matches if request contains query parameter, irrespectiv... |
| `queryParameter` | `string` | The name of the query parameter to match. |
| `regexMatch` | `string` | The value of the query parameter must match the regular expression specified by regex_match. For ... |

### `HttpRouteRedirect`

The specification for redirecting traffic.

| Property | Type | Description |
|----------|------|-------------|
| `hostRedirect` | `string` | The host that will be used in the redirect response instead of the one that was supplied in the r... |
| `httpsRedirect` | `boolean` | If set to true, the URL scheme in the redirected request is set to https. If set to false, the UR... |
| `pathRedirect` | `string` | The path that will be used in the redirect response instead of the one that was supplied in the r... |
| `portRedirect` | `integer` | The port that will be used in the redirected request instead of the one that was supplied in the ... |
| `prefixRewrite` | `string` | Indicates that during redirection, the matched prefix (or path) should be swapped with this value... |
| `responseCode` | `string` | The HTTP Status code to use for the redirect. |
| `stripQuery` | `boolean` | if set to true, any accompanying query portion of the original URL is removed prior to redirectin... |

### `HttpRouteRequestMirrorPolicy`

Specifies the policy on how requests are shadowed to a separate mirrored destination service. The proxy does not wait for responses from the shadow service. Prior to sending traffic to the shadow service, the host/authority header is suffixed with -shadow. Mirroring is currently not supported for Cloud Run destinations.

| Property | Type | Description |
|----------|------|-------------|
| `destination` | `HttpRouteDestination` | The destination the requests will be mirrored to. The weight of the destination will be ignored. |
| `mirrorPercent` | `number` | Optional. The percentage of requests to get mirrored to the desired destination. |

### `HttpRouteRetryPolicy`

The specifications for retries.

| Property | Type | Description |
|----------|------|-------------|
| `numRetries` | `integer` | Specifies the allowed number of retries. This number must be > 0. If not specified, default to 1. |
| `perTryTimeout` | `string` | Specifies a non-zero timeout per retry attempt. |
| `retryConditions` | `array<string>` | Specifies one or more conditions when this retry policy applies. Valid values are: 5xx: Proxy wil... |

### `HttpRouteRouteAction`

The specifications for routing traffic and applying associated policies.

| Property | Type | Description |
|----------|------|-------------|
| `corsPolicy` | `HttpRouteCorsPolicy` | The specification for allowing client side cross-origin requests. |
| `destinations` | `array<HttpRouteDestination>` | The destination to which traffic should be forwarded. |
| `directResponse` | `HttpRouteHttpDirectResponse` | Optional. Static HTTP Response object to be returned regardless of the request. |
| `faultInjectionPolicy` | `HttpRouteFaultInjectionPolicy` | The specification for fault injection introduced into traffic to test the resiliency of clients t... |
| `idleTimeout` | `string` | Optional. Specifies the idle timeout for the selected route. The idle timeout is defined as the p... |
| `redirect` | `HttpRouteRedirect` | If set, the request is directed as configured by this field. |
| `requestHeaderModifier` | `HttpRouteHeaderModifier` | The specification for modifying the headers of a matching request prior to delivery of the reques... |
| `requestMirrorPolicy` | `HttpRouteRequestMirrorPolicy` | Specifies the policy on how requests intended for the routes destination are shadowed to a separa... |
| `responseHeaderModifier` | `HttpRouteHeaderModifier` | The specification for modifying the headers of a response prior to sending the response back to t... |
| `retryPolicy` | `HttpRouteRetryPolicy` | Specifies the retry policy associated with this route. |
| `statefulSessionAffinity` | `HttpRouteStatefulSessionAffinityPolicy` | Optional. Specifies cookie-based stateful session affinity. |
| `timeout` | `string` | Specifies the timeout for selected route. Timeout is computed from the time the request has been ... |
| `urlRewrite` | `HttpRouteURLRewrite` | The specification for rewrite URL before forwarding requests to the destination. |

### `HttpRouteRouteMatch`

RouteMatch defines specifications used to match requests. If multiple match types are set, this RouteMatch will match if ALL type of matches are matched.

| Property | Type | Description |
|----------|------|-------------|
| `fullPathMatch` | `string` | The HTTP request path value should exactly match this value. Only one of full_path_match, prefix_... |
| `headers` | `array<HttpRouteHeaderMatch>` | Specifies a list of HTTP request headers to match against. ALL of the supplied headers must be ma... |
| `ignoreCase` | `boolean` | Specifies if prefix_match and full_path_match matches are case sensitive. The default value is fa... |
| `prefixMatch` | `string` | The HTTP request path value must begin with specified prefix_match. prefix_match must begin with ... |
| `queryParameters` | `array<HttpRouteQueryParameterMatch>` | Specifies a list of query parameters to match against. ALL of the query parameters must be matched. |
| `regexMatch` | `string` | The HTTP request path value must satisfy the regular expression specified by regex_match after re... |

### `HttpRouteRouteRule`

Specifies how to match traffic and how to route traffic when traffic is matched.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `HttpRouteRouteAction` | The detailed rule defining how to route matched traffic. |
| `matches` | `array<HttpRouteRouteMatch>` | A list of matches define conditions used for matching the rule against incoming HTTP requests. Ea... |

### `HttpRouteStatefulSessionAffinityPolicy`

The specification for cookie-based stateful session affinity where the date plane supplies a “session cookie” with the name "GSSA" which encodes a specific destination host and each request containing that cookie will be directed to that host as long as the destination host remains up and healthy. The gRPC proxyless mesh library or sidecar proxy will manage the session cookie but the client application code is responsible for copying the cookie from each RPC in the session to the next.

| Property | Type | Description |
|----------|------|-------------|
| `cookieTtl` | `string` | Required. The cookie TTL value for the Set-Cookie header generated by the data plane. The lifetim... |

### `HttpRouteURLRewrite`

The specification for modifying the URL of the request, prior to forwarding the request to the destination.

| Property | Type | Description |
|----------|------|-------------|
| `hostRewrite` | `string` | Prior to forwarding the request to the selected destination, the requests host header is replaced... |
| `pathPrefixRewrite` | `string` | Prior to forwarding the request to the selected destination, the matching portion of the requests... |

### `LbEdgeExtension`

`LbEdgeExtension` is a resource that lets the extension service influence the selection of backend services and Cloud CDN cache keys by modifying request headers.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The timestamp when the resource was created. |
| `description` | `string` | Optional. A human-readable description of the resource. |
| `extensionChains` | `array<ExtensionChain>` | Required. A set of ordered extension chains that contain the match conditions and extensions to e... |
| `forwardingRules` | `array<string>` | Required. A list of references to the forwarding rules to which this service extension is attache... |
| `labels` | `object` | Optional. Set of labels associated with the `LbEdgeExtension` resource. The format must comply wi... |
| `loadBalancingScheme` | `string` | Required. All forwarding rules referenced by this extension must share the same load balancing sc... |
| `name` | `string` | Required. Identifier. Name of the `LbEdgeExtension` resource in the following format: `projects/{... |
| `updateTime` | `string` | Output only. The timestamp when the resource was updated. |

### `LbRouteExtension`

`LbRouteExtension` is a resource that lets you control where traffic is routed to for a given request.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The timestamp when the resource was created. |
| `description` | `string` | Optional. A human-readable description of the resource. |
| `extensionChains` | `array<ExtensionChain>` | Required. A set of ordered extension chains that contain the match conditions and extensions to e... |
| `forwardingRules` | `array<string>` | Required. A list of references to the forwarding rules to which this service extension is attache... |
| `labels` | `object` | Optional. Set of labels associated with the `LbRouteExtension` resource. The format must comply w... |
| `loadBalancingScheme` | `string` | Required. All backend services and forwarding rules referenced by this extension must share the s... |
| `metadata` | `object` | Optional. The metadata provided here is included as part of the `metadata_context` (of type `goog... |
| `name` | `string` | Required. Identifier. Name of the `LbRouteExtension` resource in the following format: `projects/... |
| `updateTime` | `string` | Output only. The timestamp when the resource was updated. |

### `LbTrafficExtension`

`LbTrafficExtension` is a resource that lets the extension service modify the headers and payloads of both requests and responses without impacting the choice of backend services or any other security policies associated with the backend service.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The timestamp when the resource was created. |
| `description` | `string` | Optional. A human-readable description of the resource. |
| `extensionChains` | `array<ExtensionChain>` | Required. A set of ordered extension chains that contain the match conditions and extensions to e... |
| `forwardingRules` | `array<string>` | Optional. A list of references to the forwarding rules to which this service extension is attache... |
| `labels` | `object` | Optional. Set of labels associated with the `LbTrafficExtension` resource. The format must comply... |
| `loadBalancingScheme` | `string` | Required. All backend services and forwarding rules referenced by this extension must share the s... |
| `metadata` | `object` | Optional. The metadata provided here is included as part of the `metadata_context` (of type `goog... |
| `name` | `string` | Required. Identifier. Name of the `LbTrafficExtension` resource in the following format: `project... |
| `updateTime` | `string` | Output only. The timestamp when the resource was updated. |

### `ListAuthzExtensionsResponse`

Message for response to listing `AuthzExtension` resources.

| Property | Type | Description |
|----------|------|-------------|
| `authzExtensions` | `array<AuthzExtension>` | The list of `AuthzExtension` resources. |
| `nextPageToken` | `string` | A token identifying a page of results that the server returns. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListEndpointPoliciesResponse`

Response returned by the ListEndpointPolicies method.

| Property | Type | Description |
|----------|------|-------------|
| `endpointPolicies` | `array<EndpointPolicy>` | List of EndpointPolicy resources. |
| `nextPageToken` | `string` | If there might be more results than those appearing in this response, then `next_page_token` is i... |
| `unreachable` | `array<string>` | Unreachable resources. Populated when the request opts into return_partial_success and reading ac... |

### `ListGatewayRouteViewsResponse`

Response returned by the ListGatewayRouteViews method.

| Property | Type | Description |
|----------|------|-------------|
| `gatewayRouteViews` | `array<GatewayRouteView>` | List of GatewayRouteView resources. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `unreachable` | `array<string>` | Unreachable resources. Populated when the request attempts to list all resources across all suppo... |

### `ListGatewaysResponse`

Response returned by the ListGateways method.

| Property | Type | Description |
|----------|------|-------------|
| `gateways` | `array<Gateway>` | List of Gateway resources. |
| `nextPageToken` | `string` | If there might be more results than those appearing in this response, then `next_page_token` is i... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListGrpcRoutesResponse`

Response returned by the ListGrpcRoutes method.

| Property | Type | Description |
|----------|------|-------------|
| `grpcRoutes` | `array<GrpcRoute>` | List of GrpcRoute resources. |
| `nextPageToken` | `string` | If there might be more results than those appearing in this response, then `next_page_token` is i... |
| `unreachable` | `array<string>` | Unreachable resources. Populated when the request opts into return_partial_success and reading ac... |

### `ListHttpRoutesResponse`

Response returned by the ListHttpRoutes method.

| Property | Type | Description |
|----------|------|-------------|
| `httpRoutes` | `array<HttpRoute>` | List of HttpRoute resources. |
| `nextPageToken` | `string` | If there might be more results than those appearing in this response, then `next_page_token` is i... |
| `unreachable` | `array<string>` | Unreachable resources. Populated when the request opts into return_partial_success and reading ac... |

### `ListLbEdgeExtensionsResponse`

Message for response to listing `LbEdgeExtension` resources.

| Property | Type | Description |
|----------|------|-------------|
| `lbEdgeExtensions` | `array<LbEdgeExtension>` | The list of `LbEdgeExtension` resources. |
| `nextPageToken` | `string` | A token identifying a page of results that the server returns. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListLbRouteExtensionsResponse`

Message for response to listing `LbRouteExtension` resources.

| Property | Type | Description |
|----------|------|-------------|
| `lbRouteExtensions` | `array<LbRouteExtension>` | The list of `LbRouteExtension` resources. |
| `nextPageToken` | `string` | A token identifying a page of results that the server returns. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListLbTrafficExtensionsResponse`

Message for response to listing `LbTrafficExtension` resources.

| Property | Type | Description |
|----------|------|-------------|
| `lbTrafficExtensions` | `array<LbTrafficExtension>` | The list of `LbTrafficExtension` resources. |
| `nextPageToken` | `string` | A token identifying a page of results that the server returns. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListLocationsResponse`

The response message for Locations.ListLocations.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<Location>` | A list of locations that matches the specified filter in the request. |
| `nextPageToken` | `string` | The standard List next-page token. |

### `ListMeshRouteViewsResponse`

Response returned by the ListMeshRouteViews method.

| Property | Type | Description |
|----------|------|-------------|
| `meshRouteViews` | `array<MeshRouteView>` | List of MeshRouteView resources. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `unreachable` | `array<string>` | Unreachable resources. Populated when the request attempts to list all resources across all suppo... |

### `ListMeshesResponse`

Response returned by the ListMeshes method.

| Property | Type | Description |
|----------|------|-------------|
| `meshes` | `array<Mesh>` | List of Mesh resources. |
| `nextPageToken` | `string` | If there might be more results than those appearing in this response, then `next_page_token` is i... |
| `unreachable` | `array<string>` | Unreachable resources. Populated when the request opts into `return_partial_success` and reading ... |

### `ListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<Operation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `ListServiceBindingsResponse`

Response returned by the ListServiceBindings method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If there might be more results than those appearing in this response, then `next_page_token` is i... |
| `serviceBindings` | `array<ServiceBinding>` | List of ServiceBinding resources. |
| `unreachable` | `array<string>` | Unreachable resources. Populated when the request attempts to list all resources across all suppo... |

### `ListServiceLbPoliciesResponse`

Response returned by the ListServiceLbPolicies method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If there might be more results than those appearing in this response, then `next_page_token` is i... |
| `serviceLbPolicies` | `array<ServiceLbPolicy>` | List of ServiceLbPolicy resources. |
| `unreachable` | `array<string>` | Unreachable resources. Populated when the request attempts to list all resources across all suppo... |

### `ListTcpRoutesResponse`

Response returned by the ListTcpRoutes method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If there might be more results than those appearing in this response, then `next_page_token` is i... |
| `tcpRoutes` | `array<TcpRoute>` | List of TcpRoute resources. |
| `unreachable` | `array<string>` | Unreachable resources. Populated when the request opts into return_partial_success and reading ac... |

### `ListTlsRoutesResponse`

Response returned by the ListTlsRoutes method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If there might be more results than those appearing in this response, then `next_page_token` is i... |
| `tlsRoutes` | `array<TlsRoute>` | List of TlsRoute resources. |
| `unreachable` | `array<string>` | Unreachable resources. Populated when the request opts into return_partial_success and reading ac... |

### `ListWasmPluginVersionsResponse`

Response returned by the `ListWasmPluginVersions` method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If there might be more results than those appearing in this response, then `next_page_token` is i... |
| `unreachable` | `array<string>` | Unreachable resources. Populated when the request attempts to list all resources across all suppo... |
| `wasmPluginVersions` | `array<WasmPluginVersion>` | List of `WasmPluginVersion` resources. |

### `ListWasmPluginsResponse`

Response returned by the `ListWasmPlugins` method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If there might be more results than those appearing in this response, then `next_page_token` is i... |
| `unreachable` | `array<string>` | Unreachable resources. Populated when the request attempts to list all resources across all suppo... |
| `wasmPlugins` | `array<WasmPlugin>` | List of `WasmPlugin` resources. |

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

### `Mesh`

Mesh represents a logical configuration grouping for workload to workload communication within a service mesh. Routes that point to mesh dictate how requests are routed within this logical mesh boundary.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The timestamp when the resource was created. |
| `description` | `string` | Optional. A free-text description of the resource. Max length 1024 characters. |
| `envoyHeaders` | `string` | Optional. Determines if envoy will insert internal debug headers into upstream requests. Other En... |
| `interceptionPort` | `integer` | Optional. If set to a valid TCP port (1-65535), instructs the SIDECAR proxy to listen on the spec... |
| `labels` | `object` | Optional. Set of label tags associated with the Mesh resource. |
| `name` | `string` | Identifier. Name of the Mesh resource. It matches pattern `projects/*/locations/*/meshes/`. |
| `selfLink` | `string` | Output only. Server-defined URL of this resource |
| `updateTime` | `string` | Output only. The timestamp when the resource was updated. |

### `MeshRouteView`

MeshRouteView defines view-only resource for Routes to a Mesh

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Output only. Identifier. Full path name of the MeshRouteView resource. Format: projects/{project_... |
| `routeId` | `string` | Output only. The resource id for the route. |
| `routeLocation` | `string` | Output only. Location where the route exists. |
| `routeProjectNumber` | `string` | Output only. Project number where the route exists. |
| `routeType` | `string` | Output only. Type of the route: HttpRoute,GrpcRoute,TcpRoute, or TlsRoute |

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

### `RetryFilterPerRouteConfig`

| Property | Type | Description |
|----------|------|-------------|
| `cryptoKeyName` | `string` | The name of the crypto key to use for encrypting event data. |

### `ServiceBinding`

ServiceBinding can be used to: - Bind a Service Directory Service to be used in a BackendService resource. This feature will be deprecated soon. - Bind a Private Service Connect producer service to be used in consumer Cloud Service Mesh or Application Load Balancers. - Bind a Cloud Run service to be used in consumer Cloud Service Mesh or Application Load Balancers.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The timestamp when the resource was created. |
| `description` | `string` | Optional. A free-text description of the resource. Max length 1024 characters. |
| `labels` | `object` | Optional. Set of label tags associated with the ServiceBinding resource. |
| `name` | `string` | Identifier. Name of the ServiceBinding resource. It matches pattern `projects/*/locations/*/servi... |
| `service` | `string` | Optional. The full Service Directory Service name of the format `projects/*/locations/*/namespace... |
| `serviceId` | `string` | Output only. The unique identifier of the Service Directory Service against which the ServiceBind... |
| `updateTime` | `string` | Output only. The timestamp when the resource was updated. |

### `ServiceLbPolicy`

ServiceLbPolicy holds global load balancing and traffic distribution configuration that can be applied to a BackendService.

| Property | Type | Description |
|----------|------|-------------|
| `autoCapacityDrain` | `ServiceLbPolicyAutoCapacityDrain` | Optional. Configuration to automatically move traffic away for unhealthy IG/NEG for the associate... |
| `createTime` | `string` | Output only. The timestamp when this resource was created. |
| `description` | `string` | Optional. A free-text description of the resource. Max length 1024 characters. |
| `failoverConfig` | `ServiceLbPolicyFailoverConfig` | Optional. Configuration related to health based failover. |
| `isolationConfig` | `ServiceLbPolicyIsolationConfig` | Optional. Configuration to provide isolation support for the associated Backend Service. |
| `labels` | `object` | Optional. Set of label tags associated with the ServiceLbPolicy resource. |
| `loadBalancingAlgorithm` | `string` | Optional. The type of load balancing algorithm to be used. The default behavior is WATERFALL_BY_R... |
| `name` | `string` | Identifier. Name of the ServiceLbPolicy resource. It matches pattern `projects/{project}/location... |
| `updateTime` | `string` | Output only. The timestamp when this resource was last updated. |

### `ServiceLbPolicyAutoCapacityDrain`

Option to specify if an unhealthy IG/NEG should be considered for global load balancing and traffic routing.

| Property | Type | Description |
|----------|------|-------------|
| `enable` | `boolean` | Optional. If set to 'True', an unhealthy IG/NEG will be set as drained. - An IG/NEG is considered... |

### `ServiceLbPolicyFailoverConfig`

Option to specify health based failover behavior. This is not related to Network load balancer FailoverPolicy.

| Property | Type | Description |
|----------|------|-------------|
| `failoverHealthThreshold` | `integer` | Optional. The percentage threshold that a load balancer will begin to send traffic to failover ba... |

### `ServiceLbPolicyIsolationConfig`

Configuration to provide isolation support for the associated Backend Service.

| Property | Type | Description |
|----------|------|-------------|
| `isolationGranularity` | `string` | Optional. The isolation granularity of the load balancer. |
| `isolationMode` | `string` | Optional. The isolation mode of the load balancer. |

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

### `TcpRoute`

TcpRoute is the resource defining how TCP traffic should be routed by a Mesh/Gateway resource.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The timestamp when the resource was created. |
| `description` | `string` | Optional. A free-text description of the resource. Max length 1024 characters. |
| `gateways` | `array<string>` | Optional. Gateways defines a list of gateways this TcpRoute is attached to, as one of the routing... |
| `labels` | `object` | Optional. Set of label tags associated with the TcpRoute resource. |
| `meshes` | `array<string>` | Optional. Meshes defines a list of meshes this TcpRoute is attached to, as one of the routing rul... |
| `name` | `string` | Identifier. Name of the TcpRoute resource. It matches pattern `projects/*/locations/*/tcpRoutes/t... |
| `rules` | `array<TcpRouteRouteRule>` | Required. Rules that define how traffic is routed and handled. At least one RouteRule must be sup... |
| `selfLink` | `string` | Output only. Server-defined URL of this resource |
| `updateTime` | `string` | Output only. The timestamp when the resource was updated. |

### `TcpRouteRouteAction`

The specifications for routing traffic and applying associated policies.

| Property | Type | Description |
|----------|------|-------------|
| `destinations` | `array<TcpRouteRouteDestination>` | Optional. The destination services to which traffic should be forwarded. At least one destination... |
| `idleTimeout` | `string` | Optional. Specifies the idle timeout for the selected route. The idle timeout is defined as the p... |
| `originalDestination` | `boolean` | Optional. If true, Router will use the destination IP and port of the original connection as the ... |

### `TcpRouteRouteDestination`

Describe the destination for traffic to be routed to.

| Property | Type | Description |
|----------|------|-------------|
| `serviceName` | `string` | Required. The URL of a BackendService to route traffic to. |
| `weight` | `integer` | Optional. Specifies the proportion of requests forwarded to the backend referenced by the service... |

### `TcpRouteRouteMatch`

RouteMatch defines the predicate used to match requests to a given action. Multiple match types are "OR"ed for evaluation. If no routeMatch field is specified, this rule will unconditionally match traffic.

| Property | Type | Description |
|----------|------|-------------|
| `address` | `string` | Required. Must be specified in the CIDR range format. A CIDR range consists of an IP Address and ... |
| `port` | `string` | Required. Specifies the destination port to match against. |

### `TcpRouteRouteRule`

Specifies how to match traffic and how to route traffic when traffic is matched.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `TcpRouteRouteAction` | Required. The detailed rule defining how to route matched traffic. |
| `matches` | `array<TcpRouteRouteMatch>` | Optional. RouteMatch defines the predicate used to match requests to a given action. Multiple mat... |

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

### `TlsRoute`

TlsRoute defines how traffic should be routed based on SNI and other matching L3 attributes.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The timestamp when the resource was created. |
| `description` | `string` | Optional. A free-text description of the resource. Max length 1024 characters. |
| `gateways` | `array<string>` | Optional. Gateways defines a list of gateways this TlsRoute is attached to, as one of the routing... |
| `labels` | `object` | Optional. Set of label tags associated with the TlsRoute resource. |
| `meshes` | `array<string>` | Optional. Meshes defines a list of meshes this TlsRoute is attached to, as one of the routing rul... |
| `name` | `string` | Identifier. Name of the TlsRoute resource. It matches pattern `projects/*/locations/*/tlsRoutes/t... |
| `rules` | `array<TlsRouteRouteRule>` | Required. Rules that define how traffic is routed and handled. At least one RouteRule must be sup... |
| `selfLink` | `string` | Output only. Server-defined URL of this resource |
| `targetProxies` | `array<string>` | Optional. TargetProxies defines a list of TargetTcpProxies this TlsRoute is attached to, as one o... |
| `updateTime` | `string` | Output only. The timestamp when the resource was updated. |

### `TlsRouteRouteAction`

The specifications for routing traffic and applying associated policies.

| Property | Type | Description |
|----------|------|-------------|
| `destinations` | `array<TlsRouteRouteDestination>` | Required. The destination services to which traffic should be forwarded. At least one destination... |
| `idleTimeout` | `string` | Optional. Specifies the idle timeout for the selected route. The idle timeout is defined as the p... |

### `TlsRouteRouteDestination`

Describe the destination for traffic to be routed to.

| Property | Type | Description |
|----------|------|-------------|
| `serviceName` | `string` | Required. The URL of a BackendService to route traffic to. |
| `weight` | `integer` | Optional. Specifies the proportion of requests forwarded to the backend referenced by the service... |

### `TlsRouteRouteMatch`

RouteMatch defines the predicate used to match requests to a given action. Multiple match types are "AND"ed for evaluation.

| Property | Type | Description |
|----------|------|-------------|
| `alpn` | `array<string>` | Optional. ALPN (Application-Layer Protocol Negotiation) to match against. Examples: "http/1.1", "... |
| `sniHost` | `array<string>` | Optional. SNI (server name indicator) to match against. SNI will be matched against all wildcard ... |

### `TlsRouteRouteRule`

Specifies how to match traffic and how to route traffic when traffic is matched.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `TlsRouteRouteAction` | Required. The detailed rule defining how to route matched traffic. |
| `matches` | `array<TlsRouteRouteMatch>` | Required. RouteMatch defines the predicate used to match requests to a given action. Multiple mat... |

### `TrafficPortSelector`

Specification of a port-based selector.

| Property | Type | Description |
|----------|------|-------------|
| `ports` | `array<string>` | Optional. A list of ports. Can be port numbers or port range (example, [80-90] specifies all port... |

### `WasmPlugin`

`WasmPlugin` is a resource representing a service executing a customer-provided Wasm module.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The timestamp when the resource was created. |
| `description` | `string` | Optional. A human-readable description of the resource. |
| `labels` | `object` | Optional. Set of labels associated with the `WasmPlugin` resource. The format must comply with [t... |
| `logConfig` | `WasmPluginLogConfig` | Optional. Specifies the logging options for the activity performed by this plugin. If logging is ... |
| `mainVersionId` | `string` | Optional. The ID of the `WasmPluginVersion` resource that is the currently serving one. The versi... |
| `name` | `string` | Identifier. Name of the `WasmPlugin` resource in the following format: `projects/{project}/locati... |
| `updateTime` | `string` | Output only. The timestamp when the resource was updated. |
| `usedBy` | `array<WasmPluginUsedBy>` | Output only. List of all [extensions](https://cloud.google.com/service-extensions/docs/overview) ... |
| `versions` | `object` | Optional. All versions of this `WasmPlugin` resource in the key-value format. The key is the reso... |

### `WasmPluginLogConfig`

Specifies the logging options for the activity performed by this plugin. If logging is enabled, plugin logs are exported to Cloud Logging.

| Property | Type | Description |
|----------|------|-------------|
| `enable` | `boolean` | Optional. Specifies whether to enable logging for activity by this plugin. Defaults to `false`. |
| `minLogLevel` | `string` | Non-empty default. Specifies the lowest level of the plugin logs that are exported to Cloud Loggi... |
| `sampleRate` | `number` | Non-empty default. Configures the sampling rate of activity logs, where `1.0` means all logged ac... |

### `WasmPluginUsedBy`

Defines a resource that uses the `WasmPlugin` resource.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Output only. Full name of the resource https://google.aip.dev/122#full-resource-names, for exampl... |

### `WasmPluginVersion`

A single immutable version of a `WasmPlugin` resource. Defines the Wasm module used and optionally its runtime config.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The timestamp when the resource was created. |
| `description` | `string` | Optional. A human-readable description of the resource. |
| `imageDigest` | `string` | Output only. This field holds the digest (usually checksum) value for the plugin image. The value... |
| `imageUri` | `string` | Optional. URI of the image containing the Wasm module, stored in Artifact Registry. The URI can r... |
| `labels` | `object` | Optional. Set of labels associated with the `WasmPluginVersion` resource. |
| `name` | `string` | Identifier. Name of the `WasmPluginVersion` resource in the following format: `projects/{project}... |
| `pluginConfigData` | `string` | Configuration for the plugin. The configuration is provided to the plugin at runtime through the ... |
| `pluginConfigDigest` | `string` | Output only. This field holds the digest (usually checksum) value for the plugin configuration. T... |
| `pluginConfigUri` | `string` | URI of the plugin configuration stored in the Artifact Registry. The configuration is provided to... |
| `updateTime` | `string` | Output only. The timestamp when the resource was updated. |

### `WasmPluginVersionDetails`

Details of a `WasmPluginVersion` resource to be inlined in the `WasmPlugin` resource.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The timestamp when the resource was created. |
| `description` | `string` | Optional. A human-readable description of the resource. |
| `imageDigest` | `string` | Output only. This field holds the digest (usually checksum) value for the plugin image. The value... |
| `imageUri` | `string` | Optional. URI of the image containing the Wasm module, stored in Artifact Registry. The URI can r... |
| `labels` | `object` | Optional. Set of labels associated with the `WasmPluginVersion` resource. |
| `pluginConfigData` | `string` | Configuration for the plugin. The configuration is provided to the plugin at runtime through the ... |
| `pluginConfigDigest` | `string` | Output only. This field holds the digest (usually checksum) value for the plugin configuration. T... |
| `pluginConfigUri` | `string` | URI of the plugin configuration stored in the Artifact Registry. The configuration is provided to... |
| `updateTime` | `string` | Output only. The timestamp when the resource was updated. |

