# Datastream API - API Reference

**Version**: `v1` | **Methods**: 32 | **Schemas**: 160

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `datastream.projects.locations.fetchStaticIps` | GET | `v1/{+name}:fetchStaticIps` | The FetchStaticIps API call exposes the static IP addresses used by Datastream. |
| `datastream.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `datastream.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `datastream.projects.locations.streams.list` | GET | `v1/{+parent}/streams` | Use this method to list streams in a project and location. |
| `datastream.projects.locations.streams.delete` | DELETE | `v1/{+name}` | Use this method to delete a stream. |
| `datastream.projects.locations.streams.patch` | PATCH | `v1/{+name}` | Use this method to update the configuration of a stream. |
| `datastream.projects.locations.streams.get` | GET | `v1/{+name}` | Use this method to get details about a stream. |
| `datastream.projects.locations.streams.create` | POST | `v1/{+parent}/streams` | Use this method to create a stream. |
| `datastream.projects.locations.streams.run` | POST | `v1/{+name}:run` | Use this method to start, resume or recover a stream with a non default CDC strategy. |
| `datastream.projects.locations.streams.objects.get` | GET | `v1/{+name}` | Use this method to get details about a stream object. |
| `datastream.projects.locations.streams.objects.startBackfillJob` | POST | `v1/{+object}:startBackfillJob` | Use this method to start a backfill job for the specified stream object. |
| `datastream.projects.locations.streams.objects.list` | GET | `v1/{+parent}/objects` | Use this method to list the objects of a specific stream. |
| `datastream.projects.locations.streams.objects.stopBackfillJob` | POST | `v1/{+object}:stopBackfillJob` | Use this method to stop a backfill job for the specified stream object. |
| `datastream.projects.locations.streams.objects.lookup` | POST | `v1/{+parent}/objects:lookup` | Use this method to look up a stream object by its source object identifier. |
| `datastream.projects.locations.connectionProfiles.delete` | DELETE | `v1/{+name}` | Use this method to delete a connection profile. |
| `datastream.projects.locations.connectionProfiles.get` | GET | `v1/{+name}` | Use this method to get details about a connection profile. |
| `datastream.projects.locations.connectionProfiles.discover` | POST | `v1/{+parent}/connectionProfiles:discover` | Use this method to discover a connection profile. The discover API call exposes the data objects ... |
| `datastream.projects.locations.connectionProfiles.list` | GET | `v1/{+parent}/connectionProfiles` | Use this method to list connection profiles created in a project and location. |
| `datastream.projects.locations.connectionProfiles.patch` | PATCH | `v1/{+name}` | Use this method to update the parameters of a connection profile. |
| `datastream.projects.locations.connectionProfiles.create` | POST | `v1/{+parent}/connectionProfiles` | Use this method to create a connection profile in a project and location. |
| `datastream.projects.locations.privateConnections.delete` | DELETE | `v1/{+name}` | Use this method to delete a private connectivity configuration. |
| `datastream.projects.locations.privateConnections.list` | GET | `v1/{+parent}/privateConnections` | Use this method to list private connectivity configurations in a project and location. |
| `datastream.projects.locations.privateConnections.get` | GET | `v1/{+name}` | Use this method to get details about a private connectivity configuration. |
| `datastream.projects.locations.privateConnections.create` | POST | `v1/{+parent}/privateConnections` | Use this method to create a private connectivity configuration. |
| `datastream.projects.locations.privateConnections.routes.create` | POST | `v1/{+parent}/routes` | Use this method to create a route for a private connectivity configuration in a project and locat... |
| `datastream.projects.locations.privateConnections.routes.delete` | DELETE | `v1/{+name}` | Use this method to delete a route. |
| `datastream.projects.locations.privateConnections.routes.get` | GET | `v1/{+name}` | Use this method to get details about a route. |
| `datastream.projects.locations.privateConnections.routes.list` | GET | `v1/{+parent}/routes` | Use this method to list routes created for a private connectivity configuration in a project and ... |
| `datastream.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `datastream.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `datastream.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `datastream.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |

### `datastream.projects.locations.fetchStaticIps`

**GET** `v1/{+name}:fetchStaticIps`

The FetchStaticIps API call exposes the static IP addresses used by Datastream.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name for the location for which static IPs should be returned. Must be in the format `projects... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of Ips to return, will likely not be specified. |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListStaticIps` call. will likely not be specified. |

**Response**: `FetchStaticIpsResponse`

```typescript
const res = await datastream.locations.fetchStaticIps({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datastream.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await datastream.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datastream.projects.locations.list`

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
const res = await datastream.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datastream.projects.locations.streams.list`

**GET** `v1/{+parent}/streams`

Use this method to list streams in a project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent that owns the collection of streams. |
| `filter` | `string` | query | No | Optional. Filter request. |
| `orderBy` | `string` | query | No | Optional. Order by fields for the result. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of streams to return. If unspecified, at most 50 streams will be returned. The maximum value... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous `ListStreams` call. Provide this to retrieve the subsequent page. When ... |

**Response**: `ListStreamsResponse`

```typescript
const res = await datastream.streams.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datastream.projects.locations.streams.delete`

**DELETE** `v1/{+name}`

Use this method to delete a stream.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the stream resource to delete. |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |

**Response**: `Operation`

```typescript
const res = await datastream.streams.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datastream.projects.locations.streams.patch`

**PATCH** `v1/{+name}`

Use this method to update the configuration of a stream.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Identifier. The stream's name. |
| `force` | `boolean` | query | No | Optional. Update the stream without validating it. |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the stream resource by the update. The fields... |
| `validateOnly` | `boolean` | query | No | Optional. Only validate the stream with the changes, without actually updating it. The default is false. |

**Request body**: `Stream`

**Response**: `Operation`

```typescript
const res = await datastream.streams.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datastream.projects.locations.streams.get`

**GET** `v1/{+name}`

Use this method to get details about a stream.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the stream resource to get. |

**Response**: `Stream`

```typescript
const res = await datastream.streams.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datastream.projects.locations.streams.create`

**POST** `v1/{+parent}/streams`

Use this method to create a stream.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent that owns the collection of streams. |
| `force` | `boolean` | query | No | Optional. Create the stream without validating it. |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `streamId` | `string` | query | No | Required. The stream identifier. |
| `validateOnly` | `boolean` | query | No | Optional. Only validate the stream, but don't create any resources. The default is false. |

**Request body**: `Stream`

**Response**: `Operation`

```typescript
const res = await datastream.streams.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datastream.projects.locations.streams.run`

**POST** `v1/{+name}:run`

Use this method to start, resume or recover a stream with a non default CDC strategy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the stream resource to start, in the format: projects/{project_id}/locations/{location}/streams/{st... |

**Request body**: `RunStreamRequest`

**Response**: `Operation`

```typescript
const res = await datastream.streams.run({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datastream.projects.locations.streams.objects.get`

**GET** `v1/{+name}`

Use this method to get details about a stream object.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the stream object resource to get. |

**Response**: `StreamObject`

```typescript
const res = await datastream.objects.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datastream.projects.locations.streams.objects.startBackfillJob`

**POST** `v1/{+object}:startBackfillJob`

Use this method to start a backfill job for the specified stream object.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `object` | `string` | path | Yes | Required. The name of the stream object resource to start a backfill job for. |

**Request body**: `StartBackfillJobRequest`

**Response**: `StartBackfillJobResponse`

```typescript
const res = await datastream.objects.startBackfillJob({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datastream.projects.locations.streams.objects.list`

**GET** `v1/{+parent}/objects`

Use this method to list the objects of a specific stream.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent stream that owns the collection of objects. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of objects to return. Default is 50. The maximum value is 1000; values above 1000 will be co... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous `ListStreamObjectsRequest` call. Provide this to retrieve the subsequen... |

**Response**: `ListStreamObjectsResponse`

```typescript
const res = await datastream.objects.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datastream.projects.locations.streams.objects.stopBackfillJob`

**POST** `v1/{+object}:stopBackfillJob`

Use this method to stop a backfill job for the specified stream object.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `object` | `string` | path | Yes | Required. The name of the stream object resource to stop the backfill job for. |

**Request body**: `StopBackfillJobRequest`

**Response**: `StopBackfillJobResponse`

```typescript
const res = await datastream.objects.stopBackfillJob({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datastream.projects.locations.streams.objects.lookup`

**POST** `v1/{+parent}/objects:lookup`

Use this method to look up a stream object by its source object identifier.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent stream that owns the collection of objects. |

**Request body**: `LookupStreamObjectRequest`

**Response**: `StreamObject`

```typescript
const res = await datastream.objects.lookup({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datastream.projects.locations.connectionProfiles.delete`

**DELETE** `v1/{+name}`

Use this method to delete a connection profile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the connection profile resource to delete. |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |

**Response**: `Operation`

```typescript
const res = await datastream.connectionProfiles.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datastream.projects.locations.connectionProfiles.get`

**GET** `v1/{+name}`

Use this method to get details about a connection profile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the connection profile resource to get. |

**Response**: `ConnectionProfile`

```typescript
const res = await datastream.connectionProfiles.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datastream.projects.locations.connectionProfiles.discover`

**POST** `v1/{+parent}/connectionProfiles:discover`

Use this method to discover a connection profile. The discover API call exposes the data objects and metadata belonging to the profile. Typically, a request returns children data objects of a parent data object that's optionally supplied in the request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the connection profile type. Must be in the format `projects/*/locations/*`. |

**Request body**: `DiscoverConnectionProfileRequest`

**Response**: `DiscoverConnectionProfileResponse`

```typescript
const res = await datastream.connectionProfiles.discover({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datastream.projects.locations.connectionProfiles.list`

**GET** `v1/{+parent}/connectionProfiles`

Use this method to list connection profiles created in a project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent that owns the collection of connection profiles. |
| `filter` | `string` | query | No | Optional. Filter request. |
| `orderBy` | `string` | query | No | Optional. Order by fields for the result. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of connection profiles to return. If unspecified, at most 50 connection profiles will be ret... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous `ListConnectionProfiles` call. Provide this to retrieve the subsequent ... |

**Response**: `ListConnectionProfilesResponse`

```typescript
const res = await datastream.connectionProfiles.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datastream.projects.locations.connectionProfiles.patch`

**PATCH** `v1/{+name}`

Use this method to update the parameters of a connection profile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Identifier. The resource's name. |
| `force` | `boolean` | query | No | Optional. Update the connection profile without validating it. |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the ConnectionProfile resource by the update.... |
| `validateOnly` | `boolean` | query | No | Optional. Only validate the connection profile, but don't update any resources. The default is false. |

**Request body**: `ConnectionProfile`

**Response**: `Operation`

```typescript
const res = await datastream.connectionProfiles.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datastream.projects.locations.connectionProfiles.create`

**POST** `v1/{+parent}/connectionProfiles`

Use this method to create a connection profile in a project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent that owns the collection of ConnectionProfiles. |
| `connectionProfileId` | `string` | query | No | Required. The connection profile identifier. |
| `force` | `boolean` | query | No | Optional. Create the connection profile without validating it. |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `validateOnly` | `boolean` | query | No | Optional. Only validate the connection profile, but don't create any resources. The default is false. |

**Request body**: `ConnectionProfile`

**Response**: `Operation`

```typescript
const res = await datastream.connectionProfiles.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datastream.projects.locations.privateConnections.delete`

**DELETE** `v1/{+name}`

Use this method to delete a private connectivity configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the private connectivity configuration to delete. |
| `force` | `boolean` | query | No | Optional. If set to true, any child routes that belong to this PrivateConnection will also be deleted. |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |

**Response**: `Operation`

```typescript
const res = await datastream.privateConnections.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datastream.projects.locations.privateConnections.list`

**GET** `v1/{+parent}/privateConnections`

Use this method to list private connectivity configurations in a project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent that owns the collection of private connectivity configurations. |
| `filter` | `string` | query | No | Optional. Filter request. |
| `orderBy` | `string` | query | No | Optional. Order by fields for the result. |
| `pageSize` | `integer` | query | No | Maximum number of private connectivity configurations to return. If unspecified, at most 50 private connectivity conf... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous `ListPrivateConnections` call. Provide this to retrieve the subsequent ... |

**Response**: `ListPrivateConnectionsResponse`

```typescript
const res = await datastream.privateConnections.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datastream.projects.locations.privateConnections.get`

**GET** `v1/{+name}`

Use this method to get details about a private connectivity configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the private connectivity configuration to get. |

**Response**: `PrivateConnection`

```typescript
const res = await datastream.privateConnections.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datastream.projects.locations.privateConnections.create`

**POST** `v1/{+parent}/privateConnections`

Use this method to create a private connectivity configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent that owns the collection of PrivateConnections. |
| `force` | `boolean` | query | No | Optional. If set to true, will skip validations. |
| `privateConnectionId` | `string` | query | No | Required. The private connectivity identifier. |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `validateOnly` | `boolean` | query | No | Optional. When supplied with PSC Interface config, will get/create the tenant project required for the customer to al... |

**Request body**: `PrivateConnection`

**Response**: `Operation`

```typescript
const res = await datastream.privateConnections.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datastream.projects.locations.privateConnections.routes.create`

**POST** `v1/{+parent}/routes`

Use this method to create a route for a private connectivity configuration in a project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent that owns the collection of Routes. |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |
| `routeId` | `string` | query | No | Required. The Route identifier. |

**Request body**: `Route`

**Response**: `Operation`

```typescript
const res = await datastream.routes.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datastream.projects.locations.privateConnections.routes.delete`

**DELETE** `v1/{+name}`

Use this method to delete a route.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Route resource to delete. |
| `requestId` | `string` | query | No | Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the ... |

**Response**: `Operation`

```typescript
const res = await datastream.routes.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datastream.projects.locations.privateConnections.routes.get`

**GET** `v1/{+name}`

Use this method to get details about a route.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Route resource to get. |

**Response**: `Route`

```typescript
const res = await datastream.routes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datastream.projects.locations.privateConnections.routes.list`

**GET** `v1/{+parent}/routes`

Use this method to list routes created for a private connectivity configuration in a project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent that owns the collection of Routess. |
| `filter` | `string` | query | No | Optional. Filter request. |
| `orderBy` | `string` | query | No | Optional. Order by fields for the result. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of Routes to return. The service may return fewer than this value. If unspecified, at most 5... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous `ListRoutes` call. Provide this to retrieve the subsequent page. When p... |

**Response**: `ListRoutesResponse`

```typescript
const res = await datastream.routes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datastream.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await datastream.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datastream.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await datastream.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datastream.projects.locations.operations.list`

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
const res = await datastream.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datastream.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await datastream.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AppendOnly`

AppendOnly mode defines that all changes to a table will be written to the destination table.

### `AvroFileFormat`

AVRO file format configuration.

### `BackfillAllStrategy`

Backfill strategy to automatically backfill the Stream's objects. Specific objects can be excluded.

| Property | Type | Description |
|----------|------|-------------|
| `mongodbExcludedObjects` | `MongodbCluster` | MongoDB data source objects to avoid backfilling |
| `mysqlExcludedObjects` | `MysqlRdbms` | MySQL data source objects to avoid backfilling. |
| `oracleExcludedObjects` | `OracleRdbms` | Oracle data source objects to avoid backfilling. |
| `postgresqlExcludedObjects` | `PostgresqlRdbms` | PostgreSQL data source objects to avoid backfilling. |
| `salesforceExcludedObjects` | `SalesforceOrg` | Salesforce data source objects to avoid backfilling |
| `spannerExcludedObjects` | `SpannerDatabase` | Spanner data source objects to avoid backfilling. |
| `sqlServerExcludedObjects` | `SqlServerRdbms` | SQLServer data source objects to avoid backfilling |

### `BackfillJob`

Represents a backfill job on a specific stream object.

| Property | Type | Description |
|----------|------|-------------|
| `errors` | `array<Error>` | Output only. Errors which caused the backfill job to fail. |
| `lastEndTime` | `string` | Output only. Backfill job's end time. |
| `lastStartTime` | `string` | Output only. Backfill job's start time. |
| `state` | `string` | Output only. Backfill job state. |
| `trigger` | `string` | Backfill job's triggering reason. |

### `BackfillNoneStrategy`

Backfill strategy to disable automatic backfill for the Stream's objects.

### `BadRequest`

Describes violations in a client request. This error type focuses on the syntactic aspects of the request.

| Property | Type | Description |
|----------|------|-------------|
| `fieldViolations` | `array<FieldViolation>` | Describes all violations in a client request. |

### `BasicEncryption`

Message to represent the option where Datastream will enforce encryption without authenticating server identity. Server certificates will be trusted by default.

### `BigQueryClustering`

BigQuery clustering configuration.

| Property | Type | Description |
|----------|------|-------------|
| `columns` | `array<string>` | Required. Column names to set as clustering columns. |

### `BigQueryDestinationConfig`

BigQuery destination configuration

| Property | Type | Description |
|----------|------|-------------|
| `appendOnly` | `AppendOnly` | Append only mode |
| `blmtConfig` | `BlmtConfig` | Optional. Big Lake Managed Tables (BLMT) configuration. |
| `dataFreshness` | `string` | The guaranteed data freshness (in seconds) when querying tables created by the stream. Editing th... |
| `merge` | `Merge` | The standard mode |
| `singleTargetDataset` | `SingleTargetDataset` | Single destination dataset. |
| `sourceHierarchyDatasets` | `SourceHierarchyDatasets` | Source hierarchy datasets. |

### `BigQueryPartitioning`

BigQuery partitioning configuration.

| Property | Type | Description |
|----------|------|-------------|
| `ingestionTimePartition` | `IngestionTimePartition` | Ingestion time partitioning. |
| `integerRangePartition` | `IntegerRangePartition` | Integer range partitioning. |
| `requirePartitionFilter` | `boolean` | Optional. If true, queries over the table require a partition filter. |
| `timeUnitPartition` | `TimeUnitPartition` | Time unit column partitioning. |

### `BigQueryProfile`

Profile for connecting to a BigQuery destination.

### `BinaryLogParser`

Configuration to use Binary Log Parser CDC technique.

| Property | Type | Description |
|----------|------|-------------|
| `logFileDirectories` | `LogFileDirectories` | Use Oracle directories. |
| `oracleAsmLogFileAccess` | `OracleAsmLogFileAccess` | Use Oracle ASM. |

### `BinaryLogPosition`

Use Binary log position based replication.

### `BlmtConfig`

The configuration for BLMT.

| Property | Type | Description |
|----------|------|-------------|
| `bucket` | `string` | Required. The Cloud Storage bucket name. |
| `connectionName` | `string` | Required. The bigquery connection. Format: `{project}.{location}.{name}` |
| `fileFormat` | `string` | Required. The file format. |
| `rootPath` | `string` | The root path inside the Cloud Storage bucket. |
| `tableFormat` | `string` | Required. The table format. |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `CdcStrategy`

The strategy that the stream uses for CDC replication.

| Property | Type | Description |
|----------|------|-------------|
| `mostRecentStartPosition` | `MostRecentStartPosition` | Optional. Start replicating from the most recent position in the source. |
| `nextAvailableStartPosition` | `NextAvailableStartPosition` | Optional. Resume replication from the next available position in the source. |
| `specificStartPosition` | `SpecificStartPosition` | Optional. Start replicating from a specific position in the source. |

### `ConnectionProfile`

A set of reusable connection configurations to be used as a source or destination for a stream.

| Property | Type | Description |
|----------|------|-------------|
| `bigqueryProfile` | `BigQueryProfile` | Profile for connecting to a BigQuery destination. |
| `createTime` | `string` | Output only. The create time of the resource. |
| `displayName` | `string` | Required. Display name. |
| `forwardSshConnectivity` | `ForwardSshTunnelConnectivity` | Forward SSH tunnel connectivity. |
| `gcsProfile` | `GcsProfile` | Profile for connecting to a Cloud Storage destination. |
| `labels` | `object` | Labels. |
| `mongodbProfile` | `MongodbProfile` | Profile for connecting to a MongoDB source. |
| `mysqlProfile` | `MysqlProfile` | Profile for connecting to a MySQL source. |
| `name` | `string` | Output only. Identifier. The resource's name. |
| `oracleProfile` | `OracleProfile` | Profile for connecting to an Oracle source. |
| `postgresqlProfile` | `PostgresqlProfile` | Profile for connecting to a PostgreSQL source. |
| `privateConnectivity` | `PrivateConnectivity` | Private connectivity. |
| `salesforceProfile` | `SalesforceProfile` | Profile for connecting to a Salesforce source. |
| `satisfiesPzi` | `boolean` | Output only. Reserved for future use. |
| `satisfiesPzs` | `boolean` | Output only. Reserved for future use. |
| `spannerProfile` | `SpannerProfile` | Profile for connecting to a Spanner source. |
| `sqlServerProfile` | `SqlServerProfile` | Profile for connecting to a SQLServer source. |
| `staticServiceIpConnectivity` | `StaticServiceIpConnectivity` | Static Service IP connectivity. |
| `updateTime` | `string` | Output only. The update time of the resource. |

### `CustomizationRule`

A customization rule to apply to a set of objects.

| Property | Type | Description |
|----------|------|-------------|
| `bigqueryClustering` | `BigQueryClustering` | BigQuery clustering rule. |
| `bigqueryPartitioning` | `BigQueryPartitioning` | BigQuery partitioning rule. |

### `DatasetTemplate`

Dataset template used for dynamic dataset creation.

| Property | Type | Description |
|----------|------|-------------|
| `datasetIdPrefix` | `string` | If supplied, every created dataset will have its name prefixed by the provided value. The prefix ... |
| `kmsKeyName` | `string` | Describes the Cloud KMS encryption key that will be used to protect destination BigQuery table. T... |
| `location` | `string` | Required. The geographic location where the dataset should reside. See https://cloud.google.com/b... |

### `DebugInfo`

Describes additional debugging info.

| Property | Type | Description |
|----------|------|-------------|
| `detail` | `string` | Additional debugging information provided by the server. |
| `stackEntries` | `array<string>` | The stack trace entries indicating where the error occurred. |

### `DestinationConfig`

The configuration of the stream destination.

| Property | Type | Description |
|----------|------|-------------|
| `bigqueryDestinationConfig` | `BigQueryDestinationConfig` | BigQuery destination configuration. |
| `destinationConnectionProfile` | `string` | Required. Destination connection profile resource. Format: `projects/{project}/locations/{locatio... |
| `gcsDestinationConfig` | `GcsDestinationConfig` | A configuration for how data should be loaded to Cloud Storage. |

### `DiscoverConnectionProfileRequest`

Request message for 'discover' ConnectionProfile request.

| Property | Type | Description |
|----------|------|-------------|
| `connectionProfile` | `ConnectionProfile` | Optional. An ad-hoc connection profile configuration. |
| `connectionProfileName` | `string` | Optional. A reference to an existing connection profile. |
| `fullHierarchy` | `boolean` | Optional. Whether to retrieve the full hierarchy of data objects (TRUE) or only the current level... |
| `hierarchyDepth` | `integer` | Optional. The number of hierarchy levels below the current level to be retrieved. |
| `mongodbCluster` | `MongodbCluster` | Optional. MongoDB cluster to enrich with child data objects and metadata. |
| `mysqlRdbms` | `MysqlRdbms` | Optional. MySQL RDBMS to enrich with child data objects and metadata. |
| `oracleRdbms` | `OracleRdbms` | Optional. Oracle RDBMS to enrich with child data objects and metadata. |
| `postgresqlRdbms` | `PostgresqlRdbms` | Optional. PostgreSQL RDBMS to enrich with child data objects and metadata. |
| `salesforceOrg` | `SalesforceOrg` | Optional. Salesforce organization to enrich with child data objects and metadata. |
| `spannerDatabase` | `SpannerDatabase` | Optional. Spanner database to enrich with child data objects and metadata. |
| `sqlServerRdbms` | `SqlServerRdbms` | Optional. SQLServer RDBMS to enrich with child data objects and metadata. |

### `DiscoverConnectionProfileResponse`

Response from a discover request.

| Property | Type | Description |
|----------|------|-------------|
| `mongodbCluster` | `MongodbCluster` | Enriched MongoDB cluster. |
| `mysqlRdbms` | `MysqlRdbms` | Enriched MySQL RDBMS object. |
| `oracleRdbms` | `OracleRdbms` | Enriched Oracle RDBMS object. |
| `postgresqlRdbms` | `PostgresqlRdbms` | Enriched PostgreSQL RDBMS object. |
| `salesforceOrg` | `SalesforceOrg` | Enriched Salesforce organization. |
| `spannerDatabase` | `SpannerDatabase` | Enriched Spanner database. |
| `sqlServerRdbms` | `SqlServerRdbms` | Enriched SQLServer RDBMS object. |

### `DropLargeObjects`

Configuration to drop large object values.

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `EncryptionAndServerValidation`

Message to represent the option where Datastream will enforce encryption and authenticate server identity. ca_certificate must be set if user selects this option.

| Property | Type | Description |
|----------|------|-------------|
| `caCertificate` | `string` | Optional. Input only. PEM-encoded certificate of the CA that signed the source database server's ... |
| `serverCertificateHostname` | `string` | Optional. The hostname mentioned in the Subject or SAN extension of the server certificate. This ... |

### `EncryptionNotEnforced`

Message to represent the option where encryption is not enforced. An empty message right now to allow future extensibility.

### `Error`

Represent a user-facing Error.

| Property | Type | Description |
|----------|------|-------------|
| `details` | `object` | Additional information about the error. |
| `errorTime` | `string` | The time when the error occurred. |
| `errorUuid` | `string` | A unique identifier for this specific error, allowing it to be traced throughout the system in lo... |
| `message` | `string` | A message containing more information about the error that occurred. |
| `reason` | `string` | A title that explains the reason for the error. |

### `ErrorInfo`

Describes the cause of the error with structured details. Example of an error when contacting the "pubsub.googleapis.com" API when it is not enabled: { "reason": "API_DISABLED" "domain": "googleapis.com" "metadata": { "resource": "projects/123", "service": "pubsub.googleapis.com" } } This response indicates that the pubsub.googleapis.com API is not enabled. Example of an error that is returned when attempting to create a Spanner instance in a region that is out of stock: { "reason": "STOCKOUT" "domain": "spanner.googleapis.com", "metadata": { "availableRegions": "us-central1,us-east2" } }

| Property | Type | Description |
|----------|------|-------------|
| `domain` | `string` | The logical grouping to which the "reason" belongs. The error domain is typically the registered ... |
| `metadata` | `object` | Additional structured details about this error. Keys must match a regular expression of `a-z+` bu... |
| `reason` | `string` | The reason of the error. This is a constant value that identifies the proximate cause of the erro... |

### `EventFilter`

Represents a filter for included data on a stream object.

| Property | Type | Description |
|----------|------|-------------|
| `sqlWhereClause` | `string` | An SQL-query Where clause selecting which data should be included, not including the "WHERE" keyw... |

### `FetchStaticIpsResponse`

Response message for a 'FetchStaticIps' response.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, the... |
| `staticIps` | `array<string>` | list of static ips by account |

### `FieldViolation`

A message type used to describe a single bad request field.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | A description of why the request element is bad. |
| `field` | `string` | A path that leads to a field in the request body. The value will be a sequence of dot-separated i... |
| `localizedMessage` | `LocalizedMessage` | Provides a localized error message for field-level errors that is safe to return to the API consu... |
| `reason` | `string` | The reason of the field-level error. This is a constant value that identifies the proximate cause... |

### `ForwardSshTunnelConnectivity`

Forward SSH Tunnel connectivity.

| Property | Type | Description |
|----------|------|-------------|
| `hostname` | `string` | Required. Hostname for the SSH tunnel. |
| `password` | `string` | Input only. SSH password. |
| `port` | `integer` | Port for the SSH tunnel, default value is 22. |
| `privateKey` | `string` | Input only. SSH private key. |
| `username` | `string` | Required. Username for the SSH tunnel. |

### `GcsDestinationConfig`

Google Cloud Storage destination configuration

| Property | Type | Description |
|----------|------|-------------|
| `avroFileFormat` | `AvroFileFormat` | AVRO file format configuration. |
| `fileRotationInterval` | `string` | The maximum duration for which new events are added before a file is closed and a new file is cre... |
| `fileRotationMb` | `integer` | The maximum file size to be saved in the bucket. |
| `jsonFileFormat` | `JsonFileFormat` | JSON file format configuration. |
| `path` | `string` | Path inside the Cloud Storage bucket to write data to. |

### `GcsProfile`

Profile for connecting to a Cloud Storage destination.

| Property | Type | Description |
|----------|------|-------------|
| `bucket` | `string` | Required. The Cloud Storage bucket name. |
| `rootPath` | `string` | Optional. The root path inside the Cloud Storage bucket. |

### `Gtid`

Use GTID based replication.

### `Help`

Provides links to documentation or for performing an out of band action. For example, if a quota check failed with an error indicating the calling project hasn't enabled the accessed service, this can contain a URL pointing directly to the right place in the developer console to flip the bit.

| Property | Type | Description |
|----------|------|-------------|
| `links` | `array<Link>` | URL(s) pointing to additional information on handling the current error. |

### `HostAddress`

A HostAddress represents a transport end point, which is the combination of an IP address or hostname and a port number.

| Property | Type | Description |
|----------|------|-------------|
| `hostname` | `string` | Required. Hostname for the connection. |
| `port` | `integer` | Optional. Port for the connection. |

### `IngestionTimePartition`

Ingestion time partitioning. see https://cloud.google.com/bigquery/docs/partitioned-tables#ingestion_time

| Property | Type | Description |
|----------|------|-------------|
| `partitioningTimeGranularity` | `string` | Optional. Partition granularity |

### `IntegerRangePartition`

Integer range partitioning. see https://cloud.google.com/bigquery/docs/partitioned-tables#integer_range

| Property | Type | Description |
|----------|------|-------------|
| `column` | `string` | Required. The partitioning column. |
| `end` | `string` | Required. The ending value for range partitioning (exclusive). |
| `interval` | `string` | Required. The interval of each range within the partition. |
| `start` | `string` | Required. The starting value for range partitioning (inclusive). |

### `JsonFileFormat`

JSON file format configuration.

| Property | Type | Description |
|----------|------|-------------|
| `compression` | `string` | Compression of the loaded JSON file. |
| `schemaFileFormat` | `string` | The schema file format along JSON data files. |

### `Link`

Describes a URL link.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Describes what the link offers. |
| `url` | `string` | The URL of the link. |

### `ListConnectionProfilesResponse`

Response message for listing connection profiles.

| Property | Type | Description |
|----------|------|-------------|
| `connectionProfiles` | `array<ConnectionProfile>` | List of connection profiles. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

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

### `ListPrivateConnectionsResponse`

Response containing a list of private connection configurations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `privateConnections` | `array<PrivateConnection>` | List of private connectivity configurations. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListRoutesResponse`

Route list response.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `routes` | `array<Route>` | List of Routes. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListStreamObjectsResponse`

Response containing the objects for a stream.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. |
| `streamObjects` | `array<StreamObject>` | List of stream objects. |

### `ListStreamsResponse`

Response message for listing streams.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `streams` | `array<Stream>` | List of streams |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `LocalizedMessage`

Provides a localized error message that is safe to return to the user which can be attached to an RPC error.

| Property | Type | Description |
|----------|------|-------------|
| `locale` | `string` | The locale used following the specification defined at https://www.rfc-editor.org/rfc/bcp/bcp47.t... |
| `message` | `string` | The localized error message in the above locale. |

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `LogFileDirectories`

Configuration to specify the Oracle directories to access the log files.

| Property | Type | Description |
|----------|------|-------------|
| `archivedLogDirectory` | `string` | Required. Oracle directory for archived logs. |
| `onlineLogDirectory` | `string` | Required. Oracle directory for online logs. |

### `LogMiner`

Configuration to use LogMiner CDC method.

### `LookupStreamObjectRequest`

Request for looking up a specific stream object by its source object identifier.

| Property | Type | Description |
|----------|------|-------------|
| `sourceObjectIdentifier` | `SourceObjectIdentifier` | Required. The source object identifier which maps to the stream object. |

### `Merge`

Merge mode defines that all changes to a table will be merged at the destination table.

### `MongodbChangeStreamPosition`

MongoDB change stream position

| Property | Type | Description |
|----------|------|-------------|
| `startTime` | `string` | Required. The timestamp to start change stream from. |

### `MongodbCluster`

MongoDB Cluster structure.

| Property | Type | Description |
|----------|------|-------------|
| `databases` | `array<MongodbDatabase>` | MongoDB databases in the cluster. |

### `MongodbCollection`

MongoDB Collection.

| Property | Type | Description |
|----------|------|-------------|
| `collection` | `string` | The collection name. |
| `fields` | `array<MongodbField>` | Fields in the collection. |

### `MongodbDatabase`

MongoDB Database.

| Property | Type | Description |
|----------|------|-------------|
| `collections` | `array<MongodbCollection>` | Collections in the database. |
| `database` | `string` | The database name. |

### `MongodbField`

MongoDB Field.

| Property | Type | Description |
|----------|------|-------------|
| `field` | `string` | The field name. |

### `MongodbObjectIdentifier`

MongoDB data source object identifier.

| Property | Type | Description |
|----------|------|-------------|
| `collection` | `string` | Required. The collection name. |
| `database` | `string` | Required. The database name. |

### `MongodbProfile`

Profile for connecting to a MongoDB source.

| Property | Type | Description |
|----------|------|-------------|
| `additionalOptions` | `object` | Optional. Specifies additional options for the MongoDB connection. The options should be sent as ... |
| `hostAddresses` | `array<HostAddress>` | Required. List of host addresses for a MongoDB cluster. For SRV connection format, this list must... |
| `password` | `string` | Optional. Password for the MongoDB connection. Mutually exclusive with the `secret_manager_stored... |
| `replicaSet` | `string` | Optional. Name of the replica set. Only needed for self hosted replica set type MongoDB cluster. ... |
| `secretManagerStoredPassword` | `string` | Optional. A reference to a Secret Manager resource name storing the SQLServer connection password... |
| `srvConnectionFormat` | `SrvConnectionFormat` | Srv connection format. |
| `sslConfig` | `MongodbSslConfig` | Optional. SSL configuration for the MongoDB connection. |
| `standardConnectionFormat` | `StandardConnectionFormat` | Standard connection format. |
| `username` | `string` | Required. Username for the MongoDB connection. |

### `MongodbSourceConfig`

Configuration for syncing data from a MongoDB source.

| Property | Type | Description |
|----------|------|-------------|
| `excludeObjects` | `MongodbCluster` | The MongoDB collections to exclude from the stream. |
| `includeObjects` | `MongodbCluster` | The MongoDB collections to include in the stream. |
| `jsonMode` | `string` | Optional. MongoDB JSON mode to use for the stream. |
| `maxConcurrentBackfillTasks` | `integer` | Optional. Maximum number of concurrent backfill tasks. The number should be non-negative and less... |

### `MongodbSslConfig`

MongoDB SSL configuration information.

| Property | Type | Description |
|----------|------|-------------|
| `caCertificate` | `string` | Optional. Input only. PEM-encoded certificate of the CA that signed the source database server's ... |
| `caCertificateSet` | `boolean` | Output only. Indicates whether the ca_certificate field is set. |
| `clientCertificate` | `string` | Optional. Input only. PEM-encoded certificate that will be used by the replica to authenticate ag... |
| `clientCertificateSet` | `boolean` | Output only. Indicates whether the client_certificate field is set. |
| `clientKey` | `string` | Optional. Input only. PEM-encoded private key associated with the Client Certificate. If this fie... |
| `clientKeySet` | `boolean` | Output only. Indicates whether the client_key field is set. |
| `secretManagerStoredClientKey` | `string` | Optional. Input only. A reference to a Secret Manager resource name storing the PEM-encoded priva... |

### `MostRecentStartPosition`

CDC strategy to start replicating from the most recent position in the source.

### `MysqlColumn`

MySQL Column.

| Property | Type | Description |
|----------|------|-------------|
| `collation` | `string` | Column collation. |
| `column` | `string` | The column name. |
| `dataType` | `string` | The MySQL data type. Full data types list can be found here: https://dev.mysql.com/doc/refman/8.0... |
| `length` | `integer` | Column length. |
| `nullable` | `boolean` | Whether or not the column can accept a null value. |
| `ordinalPosition` | `integer` | The ordinal position of the column in the table. |
| `precision` | `integer` | Column precision. |
| `primaryKey` | `boolean` | Whether or not the column represents a primary key. |
| `scale` | `integer` | Column scale. |

### `MysqlDatabase`

MySQL database.

| Property | Type | Description |
|----------|------|-------------|
| `database` | `string` | The database name. |
| `mysqlTables` | `array<MysqlTable>` | Tables in the database. |

### `MysqlGtidPosition`

MySQL GTID position

| Property | Type | Description |
|----------|------|-------------|
| `gtidSet` | `string` | Required. The gtid set to start replication from. |

### `MysqlLogPosition`

MySQL log position

| Property | Type | Description |
|----------|------|-------------|
| `logFile` | `string` | Required. The binary log file name. |
| `logPosition` | `integer` | Optional. The position within the binary log file. Default is head of file. |

### `MysqlObjectIdentifier`

Mysql data source object identifier.

| Property | Type | Description |
|----------|------|-------------|
| `database` | `string` | Required. The database name. |
| `table` | `string` | Required. The table name. |

### `MysqlProfile`

Profile for connecting to a MySQL source.

| Property | Type | Description |
|----------|------|-------------|
| `hostname` | `string` | Required. Hostname for the MySQL connection. |
| `password` | `string` | Optional. Input only. Password for the MySQL connection. Mutually exclusive with the `secret_mana... |
| `port` | `integer` | Port for the MySQL connection, default value is 3306. |
| `secretManagerStoredPassword` | `string` | Optional. A reference to a Secret Manager resource name storing the MySQL connection password. Mu... |
| `sslConfig` | `MysqlSslConfig` | SSL configuration for the MySQL connection. |
| `username` | `string` | Required. Username for the MySQL connection. |

### `MysqlRdbms`

MySQL database structure

| Property | Type | Description |
|----------|------|-------------|
| `mysqlDatabases` | `array<MysqlDatabase>` | Mysql databases on the server |

### `MysqlSourceConfig`

Configuration for syncing data from a MySQL source.

| Property | Type | Description |
|----------|------|-------------|
| `binaryLogPosition` | `BinaryLogPosition` | Use Binary log position based replication. |
| `excludeObjects` | `MysqlRdbms` | The MySQL objects to exclude from the stream. |
| `gtid` | `Gtid` | Use GTID based replication. |
| `includeObjects` | `MysqlRdbms` | The MySQL objects to retrieve from the source. |
| `maxConcurrentBackfillTasks` | `integer` | Maximum number of concurrent backfill tasks. The number should be non negative. If not set (or se... |
| `maxConcurrentCdcTasks` | `integer` | Maximum number of concurrent CDC tasks. The number should be non negative. If not set (or set to ... |

### `MysqlSslConfig`

MySQL SSL configuration information.

| Property | Type | Description |
|----------|------|-------------|
| `caCertificate` | `string` | Input only. PEM-encoded certificate of the CA that signed the source database server's certificate. |
| `caCertificateSet` | `boolean` | Output only. Indicates whether the ca_certificate field is set. |
| `clientCertificate` | `string` | Optional. Input only. PEM-encoded certificate that will be used by the replica to authenticate ag... |
| `clientCertificateSet` | `boolean` | Output only. Indicates whether the client_certificate field is set. |
| `clientKey` | `string` | Optional. Input only. PEM-encoded private key associated with the Client Certificate. If this fie... |
| `clientKeySet` | `boolean` | Output only. Indicates whether the client_key field is set. |

### `MysqlTable`

MySQL table.

| Property | Type | Description |
|----------|------|-------------|
| `mysqlColumns` | `array<MysqlColumn>` | MySQL columns in the database. When unspecified as part of include/exclude objects, includes/excl... |
| `table` | `string` | The table name. |

### `NextAvailableStartPosition`

CDC strategy to resume replication from the next available position in the source.

### `Oauth2ClientCredentials`

OAuth2 Client Credentials.

| Property | Type | Description |
|----------|------|-------------|
| `clientId` | `string` | Required. Client ID for Salesforce OAuth2 Client Credentials. |
| `clientSecret` | `string` | Optional. Client secret for Salesforce OAuth2 Client Credentials. Mutually exclusive with the `se... |
| `secretManagerStoredClientSecret` | `string` | Optional. A reference to a Secret Manager resource name storing the Salesforce OAuth2 client_secr... |

### `ObjectFilter`

Object filter to apply the rules to.

| Property | Type | Description |
|----------|------|-------------|
| `sourceObjectIdentifier` | `SourceObjectIdentifier` | Specific source object identifier. |

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
| `validationResult` | `ValidationResult` | Output only. Results of executed validations if there are any. |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `OracleAsmConfig`

Configuration for Oracle Automatic Storage Management (ASM) connection.

| Property | Type | Description |
|----------|------|-------------|
| `asmService` | `string` | Required. ASM service name for the Oracle ASM connection. |
| `connectionAttributes` | `object` | Optional. Connection string attributes |
| `hostname` | `string` | Required. Hostname for the Oracle ASM connection. |
| `oracleSslConfig` | `OracleSslConfig` | Optional. SSL configuration for the Oracle connection. |
| `password` | `string` | Optional. Password for the Oracle ASM connection. Mutually exclusive with the `secret_manager_sto... |
| `port` | `integer` | Required. Port for the Oracle ASM connection. |
| `secretManagerStoredPassword` | `string` | Optional. A reference to a Secret Manager resource name storing the Oracle ASM connection passwor... |
| `username` | `string` | Required. Username for the Oracle ASM connection. |

### `OracleAsmLogFileAccess`

Configuration to use Oracle ASM to access the log files.

### `OracleColumn`

Oracle Column.

| Property | Type | Description |
|----------|------|-------------|
| `column` | `string` | The column name. |
| `dataType` | `string` | The Oracle data type. |
| `encoding` | `string` | Column encoding. |
| `length` | `integer` | Column length. |
| `nullable` | `boolean` | Whether or not the column can accept a null value. |
| `ordinalPosition` | `integer` | The ordinal position of the column in the table. |
| `precision` | `integer` | Column precision. |
| `primaryKey` | `boolean` | Whether or not the column represents a primary key. |
| `scale` | `integer` | Column scale. |

### `OracleObjectIdentifier`

Oracle data source object identifier.

| Property | Type | Description |
|----------|------|-------------|
| `schema` | `string` | Required. The schema name. |
| `table` | `string` | Required. The table name. |

### `OracleProfile`

Profile for connecting to an Oracle source.

| Property | Type | Description |
|----------|------|-------------|
| `connectionAttributes` | `object` | Connection string attributes |
| `databaseService` | `string` | Required. Database for the Oracle connection. |
| `hostname` | `string` | Required. Hostname for the Oracle connection. |
| `oracleAsmConfig` | `OracleAsmConfig` | Optional. Configuration for Oracle ASM connection. |
| `oracleSslConfig` | `OracleSslConfig` | Optional. SSL configuration for the Oracle connection. |
| `password` | `string` | Optional. Password for the Oracle connection. Mutually exclusive with the `secret_manager_stored_... |
| `port` | `integer` | Port for the Oracle connection, default value is 1521. |
| `secretManagerStoredPassword` | `string` | Optional. A reference to a Secret Manager resource name storing the Oracle connection password. M... |
| `username` | `string` | Required. Username for the Oracle connection. |

### `OracleRdbms`

Oracle database structure.

| Property | Type | Description |
|----------|------|-------------|
| `oracleSchemas` | `array<OracleSchema>` | Oracle schemas/databases in the database server. |

### `OracleSchema`

Oracle schema.

| Property | Type | Description |
|----------|------|-------------|
| `oracleTables` | `array<OracleTable>` | Tables in the schema. |
| `schema` | `string` | The schema name. |

### `OracleScnPosition`

Oracle SCN position

| Property | Type | Description |
|----------|------|-------------|
| `scn` | `string` | Required. SCN number from where Logs will be read |

### `OracleSourceConfig`

Configuration for syncing data from an Oracle source.

| Property | Type | Description |
|----------|------|-------------|
| `binaryLogParser` | `BinaryLogParser` | Use Binary Log Parser. |
| `dropLargeObjects` | `DropLargeObjects` | Drop large object values. |
| `excludeObjects` | `OracleRdbms` | The Oracle objects to exclude from the stream. |
| `includeObjects` | `OracleRdbms` | The Oracle objects to include in the stream. |
| `logMiner` | `LogMiner` | Use LogMiner. |
| `maxConcurrentBackfillTasks` | `integer` | Maximum number of concurrent backfill tasks. The number should be non-negative. If not set (or se... |
| `maxConcurrentCdcTasks` | `integer` | Maximum number of concurrent CDC tasks. The number should be non-negative. If not set (or set to ... |
| `streamLargeObjects` | `StreamLargeObjects` | Stream large object values. |

### `OracleSslConfig`

Oracle SSL configuration information.

| Property | Type | Description |
|----------|------|-------------|
| `caCertificate` | `string` | Input only. PEM-encoded certificate of the CA that signed the source database server's certificate. |
| `caCertificateSet` | `boolean` | Output only. Indicates whether the ca_certificate field has been set for this Connection-Profile. |
| `serverCertificateDistinguishedName` | `string` | Optional. The distinguished name (DN) mentioned in the server certificate. This corresponds to SS... |

### `OracleTable`

Oracle table.

| Property | Type | Description |
|----------|------|-------------|
| `oracleColumns` | `array<OracleColumn>` | Oracle columns in the schema. When unspecified as part of include/exclude objects, includes/exclu... |
| `table` | `string` | The table name. |

### `PostgresqlColumn`

PostgreSQL Column.

| Property | Type | Description |
|----------|------|-------------|
| `column` | `string` | The column name. |
| `dataType` | `string` | The PostgreSQL data type. |
| `length` | `integer` | Column length. |
| `nullable` | `boolean` | Whether or not the column can accept a null value. |
| `ordinalPosition` | `integer` | The ordinal position of the column in the table. |
| `precision` | `integer` | Column precision. |
| `primaryKey` | `boolean` | Whether or not the column represents a primary key. |
| `scale` | `integer` | Column scale. |

### `PostgresqlObjectIdentifier`

PostgreSQL data source object identifier.

| Property | Type | Description |
|----------|------|-------------|
| `schema` | `string` | Required. The schema name. |
| `table` | `string` | Required. The table name. |

### `PostgresqlProfile`

Profile for connecting to a PostgreSQL source.

| Property | Type | Description |
|----------|------|-------------|
| `database` | `string` | Required. Database for the PostgreSQL connection. |
| `hostname` | `string` | Required. Hostname for the PostgreSQL connection. |
| `password` | `string` | Optional. Password for the PostgreSQL connection. Mutually exclusive with the `secret_manager_sto... |
| `port` | `integer` | Port for the PostgreSQL connection, default value is 5432. |
| `secretManagerStoredPassword` | `string` | Optional. A reference to a Secret Manager resource name storing the PostgreSQL connection passwor... |
| `sslConfig` | `PostgresqlSslConfig` | Optional. SSL configuration for the PostgreSQL connection. In case PostgresqlSslConfig is not set... |
| `username` | `string` | Required. Username for the PostgreSQL connection. |

### `PostgresqlRdbms`

PostgreSQL database structure.

| Property | Type | Description |
|----------|------|-------------|
| `postgresqlSchemas` | `array<PostgresqlSchema>` | PostgreSQL schemas in the database server. |

### `PostgresqlSchema`

PostgreSQL schema.

| Property | Type | Description |
|----------|------|-------------|
| `postgresqlTables` | `array<PostgresqlTable>` | Tables in the schema. |
| `schema` | `string` | The schema name. |

### `PostgresqlSourceConfig`

Configuration for syncing data from a PostgreSQL source.

| Property | Type | Description |
|----------|------|-------------|
| `excludeObjects` | `PostgresqlRdbms` | The PostgreSQL objects to exclude from the stream. |
| `includeObjects` | `PostgresqlRdbms` | The PostgreSQL objects to include in the stream. |
| `maxConcurrentBackfillTasks` | `integer` | Maximum number of concurrent backfill tasks. The number should be non negative. If not set (or se... |
| `publication` | `string` | Required. The name of the publication that includes the set of all tables that are defined in the... |
| `replicationSlot` | `string` | Required. Immutable. The name of the logical replication slot that's configured with the pgoutput... |

### `PostgresqlSslConfig`

PostgreSQL SSL configuration information.

| Property | Type | Description |
|----------|------|-------------|
| `serverAndClientVerification` | `ServerAndClientVerification` | If this field is set, the communication will be encrypted with TLS encryption and both the server... |
| `serverVerification` | `ServerVerification` | If this field is set, the communication will be encrypted with TLS encryption and the server iden... |

### `PostgresqlTable`

PostgreSQL table.

| Property | Type | Description |
|----------|------|-------------|
| `postgresqlColumns` | `array<PostgresqlColumn>` | PostgreSQL columns in the schema. When unspecified as part of include/exclude objects, includes/e... |
| `table` | `string` | The table name. |

### `PreconditionFailure`

Describes what preconditions have failed. For example, if an RPC failed because it required the Terms of Service to be acknowledged, it could list the terms of service violation in the PreconditionFailure message.

| Property | Type | Description |
|----------|------|-------------|
| `violations` | `array<PreconditionFailureViolation>` | Describes all precondition violations. |

### `PreconditionFailureViolation`

A message type used to describe a single precondition failure.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | A description of how the precondition failed. Developers can use this description to understand h... |
| `subject` | `string` | The subject, relative to the type, that failed. For example, "google.com/cloud" relative to the "... |
| `type` | `string` | The type of PreconditionFailure. We recommend using a service-specific enum type to define the su... |

### `PrivateConnection`

The PrivateConnection resource is used to establish private connectivity between Datastream and a customer's network.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The create time of the resource. |
| `displayName` | `string` | Required. Display name. |
| `error` | `Error` | Output only. In case of error, the details of the error in a user-friendly format. |
| `labels` | `object` | Labels. |
| `name` | `string` | Output only. Identifier. The resource's name. |
| `pscInterfaceConfig` | `PscInterfaceConfig` | PSC Interface Config. |
| `satisfiesPzi` | `boolean` | Output only. Reserved for future use. |
| `satisfiesPzs` | `boolean` | Output only. Reserved for future use. |
| `state` | `string` | Output only. The state of the Private Connection. |
| `updateTime` | `string` | Output only. The update time of the resource. |
| `vpcPeeringConfig` | `VpcPeeringConfig` | VPC Peering Config. |

### `PrivateConnectivity`

Private Connectivity

| Property | Type | Description |
|----------|------|-------------|
| `privateConnection` | `string` | Required. A reference to a private connection resource. Format: `projects/{project}/locations/{lo... |

### `PscInterfaceConfig`

The PSC Interface configuration is used to create PSC Interface between Datastream and the consumer's PSC.

| Property | Type | Description |
|----------|------|-------------|
| `networkAttachment` | `string` | Required. Fully qualified name of the Network Attachment that Datastream will connect to. Format:... |

### `QuotaFailure`

Describes how a quota check failed. For example if a daily limit was exceeded for the calling project, a service could respond with a QuotaFailure detail containing the project id and the description of the quota limit that was exceeded. If the calling project hasn't enabled the service in the developer console, then a service could respond with the project id and set `service_disabled` to true. Also see RetryInfo and Help types for other details about handling a quota failure.

| Property | Type | Description |
|----------|------|-------------|
| `violations` | `array<QuotaFailureViolation>` | Describes all quota violations. |

### `QuotaFailureViolation`

A message type used to describe a single quota violation. For example, a daily quota or a custom quota that was exceeded.

| Property | Type | Description |
|----------|------|-------------|
| `apiService` | `string` | The API Service from which the `QuotaFailure.Violation` orginates. In some cases, Quota issues or... |
| `description` | `string` | A description of how the quota check failed. Clients can use this description to find more about ... |
| `futureQuotaValue` | `string` | The new quota value being rolled out at the time of the violation. At the completion of the rollo... |
| `quotaDimensions` | `object` | The dimensions of the violated quota. Every non-global quota is enforced on a set of dimensions. ... |
| `quotaId` | `string` | The id of the violated quota. Also know as "limit name", this is the unique identifier of a quota... |
| `quotaMetric` | `string` | The metric of the violated quota. A quota metric is a named counter to measure usage, such as API... |
| `quotaValue` | `string` | The enforced quota value at the time of the `QuotaFailure`. For example, if the enforced quota va... |
| `subject` | `string` | The subject on which the quota check failed. For example, "clientip:" or "project:". |

### `RequestInfo`

Contains metadata about the request that clients can attach when filing a bug or providing other forms of feedback.

| Property | Type | Description |
|----------|------|-------------|
| `requestId` | `string` | An opaque string that should only be interpreted by the service generating it. For example, it ca... |
| `servingData` | `string` | Any data that was used to serve this request. For example, an encrypted stack trace that can be s... |

### `ResourceInfo`

Describes the resource that is being accessed.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Describes what error is encountered when accessing this resource. For example, updating a cloud p... |
| `owner` | `string` | The owner of the resource (optional). For example, "user:" or "project:". |
| `resourceName` | `string` | The name of the resource being accessed. For example, a shared calendar name: "example.com_4fghdh... |
| `resourceType` | `string` | A name for the type of resource being accessed, e.g. "sql table", "cloud storage bucket", "file",... |

### `RetryInfo`

Describes when the clients can retry a failed request. Clients could ignore the recommendation here or retry when this information is missing from error responses. It's always recommended that clients should use exponential backoff when retrying. Clients should wait until `retry_delay` amount of time has passed since receiving the error response before retrying. If retrying requests also fail, clients should use an exponential backoff scheme to gradually increase the delay between retries based on `retry_delay`, until either a maximum number of retries have been reached or a maximum retry delay cap has been reached.

| Property | Type | Description |
|----------|------|-------------|
| `retryDelay` | `string` | Clients should wait at least this long between retrying the same request. |

### `Route`

The route resource is the child of the private connection resource, used for defining a route for a private connection.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The create time of the resource. |
| `destinationAddress` | `string` | Required. Destination address for connection |
| `destinationPort` | `integer` | Destination port for connection |
| `displayName` | `string` | Required. Display name. |
| `labels` | `object` | Labels. |
| `name` | `string` | Output only. Identifier. The resource's name. |
| `updateTime` | `string` | Output only. The update time of the resource. |

### `RuleSet`

A set of rules to apply to a set of objects.

| Property | Type | Description |
|----------|------|-------------|
| `customizationRules` | `array<CustomizationRule>` | Required. List of customization rules to apply. |
| `objectFilter` | `ObjectFilter` | Required. Object filter to apply the customization rules to. |

### `RunStreamRequest`

Request message for running a stream.

| Property | Type | Description |
|----------|------|-------------|
| `cdcStrategy` | `CdcStrategy` | Optional. The CDC strategy of the stream. If not set, the system's default value will be used. |
| `force` | `boolean` | Optional. Update the stream without validating it. |

### `SalesforceField`

Salesforce field.

| Property | Type | Description |
|----------|------|-------------|
| `dataType` | `string` | The data type. |
| `name` | `string` | The field name. |
| `nillable` | `boolean` | Indicates whether the field can accept nil values. |

### `SalesforceObject`

Salesforce object.

| Property | Type | Description |
|----------|------|-------------|
| `fields` | `array<SalesforceField>` | Salesforce fields. When unspecified as part of include objects, includes everything, when unspeci... |
| `objectName` | `string` | The object name. |

### `SalesforceObjectIdentifier`

Salesforce data source object identifier.

| Property | Type | Description |
|----------|------|-------------|
| `objectName` | `string` | Required. The object name. |

### `SalesforceOrg`

Salesforce organization structure.

| Property | Type | Description |
|----------|------|-------------|
| `objects` | `array<SalesforceObject>` | Salesforce objects in the database server. |

### `SalesforceProfile`

Profile for connecting to a Salesforce source.

| Property | Type | Description |
|----------|------|-------------|
| `domain` | `string` | Required. Domain endpoint for the Salesforce connection. |
| `oauth2ClientCredentials` | `Oauth2ClientCredentials` | Connected app authentication. |
| `userCredentials` | `UserCredentials` | User-password authentication. |

### `SalesforceSourceConfig`

Configuration for syncing data from a Salesforce source.

| Property | Type | Description |
|----------|------|-------------|
| `excludeObjects` | `SalesforceOrg` | The Salesforce objects to exclude from the stream. |
| `includeObjects` | `SalesforceOrg` | The Salesforce objects to retrieve from the source. |
| `pollingInterval` | `string` | Required. Salesforce objects polling interval. The interval at which new changes will be polled f... |

### `ServerAndClientVerification`

Message represents the option where Datastream will enforce the encryption and authenticate the server identity as well as the client identity. ca_certificate, client_certificate and client_key must be set if user selects this option.

| Property | Type | Description |
|----------|------|-------------|
| `caCertificate` | `string` | Required. Input only. PEM-encoded server root CA certificate. |
| `clientCertificate` | `string` | Required. Input only. PEM-encoded certificate used by the source database to authenticate the cli... |
| `clientKey` | `string` | Optional. Input only. PEM-encoded private key associated with the client certificate. This value ... |
| `serverCertificateHostname` | `string` | Optional. The hostname mentioned in the Subject or SAN extension of the server certificate. If th... |

### `ServerVerification`

Message represents the option where Datastream will enforce the encryption and authenticate the server identity. ca_certificate must be set if user selects this option.

| Property | Type | Description |
|----------|------|-------------|
| `caCertificate` | `string` | Required. Input only. PEM-encoded server root CA certificate. |
| `serverCertificateHostname` | `string` | Optional. The hostname mentioned in the Subject or SAN extension of the server certificate. If th... |

### `SingleTargetDataset`

A single target dataset to which all data will be streamed.

| Property | Type | Description |
|----------|------|-------------|
| `datasetId` | `string` | The dataset ID of the target dataset. DatasetIds allowed characters: https://cloud.google.com/big... |

### `SourceConfig`

The configuration of the stream source.

| Property | Type | Description |
|----------|------|-------------|
| `mongodbSourceConfig` | `MongodbSourceConfig` | MongoDB data source configuration. |
| `mysqlSourceConfig` | `MysqlSourceConfig` | MySQL data source configuration. |
| `oracleSourceConfig` | `OracleSourceConfig` | Oracle data source configuration. |
| `postgresqlSourceConfig` | `PostgresqlSourceConfig` | PostgreSQL data source configuration. |
| `salesforceSourceConfig` | `SalesforceSourceConfig` | Salesforce data source configuration. |
| `sourceConnectionProfile` | `string` | Required. Source connection profile resource. Format: `projects/{project}/locations/{location}/co... |
| `spannerSourceConfig` | `SpannerSourceConfig` | Spanner data source configuration. |
| `sqlServerSourceConfig` | `SqlServerSourceConfig` | SQLServer data source configuration. |

### `SourceHierarchyDatasets`

Destination datasets are created so that hierarchy of the destination data objects matches the source hierarchy.

| Property | Type | Description |
|----------|------|-------------|
| `datasetTemplate` | `DatasetTemplate` | The dataset template to use for dynamic dataset creation. |
| `projectId` | `string` | Optional. The project id of the BigQuery dataset. If not specified, the project will be inferred ... |

### `SourceObjectIdentifier`

Represents an identifier of an object in the data source.

| Property | Type | Description |
|----------|------|-------------|
| `mongodbIdentifier` | `MongodbObjectIdentifier` | MongoDB data source object identifier. |
| `mysqlIdentifier` | `MysqlObjectIdentifier` | Mysql data source object identifier. |
| `oracleIdentifier` | `OracleObjectIdentifier` | Oracle data source object identifier. |
| `postgresqlIdentifier` | `PostgresqlObjectIdentifier` | PostgreSQL data source object identifier. |
| `salesforceIdentifier` | `SalesforceObjectIdentifier` | Salesforce data source object identifier. |
| `spannerIdentifier` | `SpannerObjectIdentifier` | Spanner data source object identifier. |
| `sqlServerIdentifier` | `SqlServerObjectIdentifier` | SQLServer data source object identifier. |

### `SpannerColumn`

Spanner column.

| Property | Type | Description |
|----------|------|-------------|
| `column` | `string` | Required. The column name. |
| `dataType` | `string` | Optional. Spanner data type. |
| `isPrimaryKey` | `boolean` | Optional. Whether or not the column is a primary key. |
| `ordinalPosition` | `string` | Optional. The ordinal position of the column in the table. |

### `SpannerDatabase`

Spanner database structure.

| Property | Type | Description |
|----------|------|-------------|
| `schemas` | `array<SpannerSchema>` | Optional. Spanner schemas in the database. |

### `SpannerObjectIdentifier`

Spanner data source object identifier.

| Property | Type | Description |
|----------|------|-------------|
| `schema` | `string` | Optional. The schema name. |
| `table` | `string` | Required. The table name. |

### `SpannerProfile`

Profile for connecting to a Spanner source.

| Property | Type | Description |
|----------|------|-------------|
| `database` | `string` | Required. Immutable. Cloud Spanner database resource. This field is immutable. Must be in the for... |
| `host` | `string` | Optional. The Spanner endpoint to connect to. Defaults to the global endpoint (https://spanner.go... |

### `SpannerSchema`

Spanner schema.

| Property | Type | Description |
|----------|------|-------------|
| `schema` | `string` | Required. The schema name. |
| `tables` | `array<SpannerTable>` | Optional. Spanner tables in the schema. |

### `SpannerSourceConfig`

Configuration for syncing data from a Spanner source.

| Property | Type | Description |
|----------|------|-------------|
| `backfillDataBoostEnabled` | `boolean` | Optional. Whether to use Data Boost for Spanner backfills. Defaults to false if not set. |
| `changeStreamName` | `string` | Required. Immutable. The change stream name to use for the stream. |
| `excludeObjects` | `SpannerDatabase` | Optional. The Spanner objects to avoid retrieving. If some objects are both included and excluded... |
| `fgacRole` | `string` | Optional. The FGAC role to use for the stream. |
| `includeObjects` | `SpannerDatabase` | Optional. The Spanner objects to retrieve from the data source. If some objects are both included... |
| `maxConcurrentBackfillTasks` | `integer` | Optional. Maximum number of concurrent backfill tasks. |
| `maxConcurrentCdcTasks` | `integer` | Optional. Maximum number of concurrent CDC tasks. |
| `spannerRpcPriority` | `string` | Optional. The RPC priority to use for the stream. |

### `SpannerTable`

Spanner table.

| Property | Type | Description |
|----------|------|-------------|
| `columns` | `array<SpannerColumn>` | Optional. Spanner columns in the table. |
| `table` | `string` | Required. The table name. |

### `SpecificStartPosition`

CDC strategy to start replicating from a specific position in the source.

| Property | Type | Description |
|----------|------|-------------|
| `mongodbChangeStreamPosition` | `MongodbChangeStreamPosition` | MongoDB change stream position to start replicating from. |
| `mysqlGtidPosition` | `MysqlGtidPosition` | MySQL GTID set to start replicating from. |
| `mysqlLogPosition` | `MysqlLogPosition` | MySQL specific log position to start replicating from. |
| `oracleScnPosition` | `OracleScnPosition` | Oracle SCN to start replicating from. |
| `sqlServerLsnPosition` | `SqlServerLsnPosition` | SqlServer LSN to start replicating from. |

### `SqlServerChangeTables`

Configuration to use Change Tables CDC read method.

### `SqlServerColumn`

SQLServer Column.

| Property | Type | Description |
|----------|------|-------------|
| `column` | `string` | The column name. |
| `dataType` | `string` | The SQLServer data type. |
| `length` | `integer` | Column length. |
| `nullable` | `boolean` | Whether or not the column can accept a null value. |
| `ordinalPosition` | `integer` | The ordinal position of the column in the table. |
| `precision` | `integer` | Column precision. |
| `primaryKey` | `boolean` | Whether or not the column represents a primary key. |
| `scale` | `integer` | Column scale. |

### `SqlServerLsnPosition`

SQL Server LSN position

| Property | Type | Description |
|----------|------|-------------|
| `lsn` | `string` | Required. Log sequence number (LSN) from where Logs will be read |

### `SqlServerObjectIdentifier`

SQLServer data source object identifier.

| Property | Type | Description |
|----------|------|-------------|
| `schema` | `string` | Required. The schema name. |
| `table` | `string` | Required. The table name. |

### `SqlServerProfile`

Profile for connecting to a SQLServer source.

| Property | Type | Description |
|----------|------|-------------|
| `database` | `string` | Required. Database for the SQLServer connection. |
| `hostname` | `string` | Required. Hostname for the SQLServer connection. |
| `password` | `string` | Optional. Password for the SQLServer connection. Mutually exclusive with the `secret_manager_stor... |
| `port` | `integer` | Port for the SQLServer connection, default value is 1433. |
| `secretManagerStoredPassword` | `string` | Optional. A reference to a Secret Manager resource name storing the SQLServer connection password... |
| `sslConfig` | `SqlServerSslConfig` | Optional. SSL configuration for the SQLServer connection. |
| `username` | `string` | Required. Username for the SQLServer connection. |

### `SqlServerRdbms`

SQLServer database structure.

| Property | Type | Description |
|----------|------|-------------|
| `schemas` | `array<SqlServerSchema>` | SQLServer schemas in the database server. |

### `SqlServerSchema`

SQLServer schema.

| Property | Type | Description |
|----------|------|-------------|
| `schema` | `string` | The schema name. |
| `tables` | `array<SqlServerTable>` | Tables in the schema. |

### `SqlServerSourceConfig`

Configuration for syncing data from a SQLServer source.

| Property | Type | Description |
|----------|------|-------------|
| `changeTables` | `SqlServerChangeTables` | CDC reader reads from change tables. |
| `excludeObjects` | `SqlServerRdbms` | The SQLServer objects to exclude from the stream. |
| `includeObjects` | `SqlServerRdbms` | The SQLServer objects to include in the stream. |
| `maxConcurrentBackfillTasks` | `integer` | Max concurrent backfill tasks. |
| `maxConcurrentCdcTasks` | `integer` | Max concurrent CDC tasks. |
| `transactionLogs` | `SqlServerTransactionLogs` | CDC reader reads from transaction logs. |

### `SqlServerSslConfig`

SQL Server SSL configuration information.

| Property | Type | Description |
|----------|------|-------------|
| `basicEncryption` | `BasicEncryption` | If set, Datastream will enforce encryption without authenticating server identity. Server certifi... |
| `encryptionAndServerValidation` | `EncryptionAndServerValidation` | If set, Datastream will enforce encryption and authenticate server identity. |
| `encryptionNotEnforced` | `EncryptionNotEnforced` | If set, Datastream will not enforce encryption. If the DB server mandates encryption, then connec... |

### `SqlServerTable`

SQLServer table.

| Property | Type | Description |
|----------|------|-------------|
| `columns` | `array<SqlServerColumn>` | SQLServer columns in the schema. When unspecified as part of include/exclude objects, includes/ex... |
| `table` | `string` | The table name. |

### `SqlServerTransactionLogs`

Configuration to use Transaction Logs CDC read method.

### `SrvConnectionFormat`

Srv connection format.

### `StandardConnectionFormat`

Standard connection format.

| Property | Type | Description |
|----------|------|-------------|
| `directConnection` | `boolean` | Optional. Deprecated: Use the `additional_options` map to specify the `directConnection` paramete... |

### `StartBackfillJobRequest`

Request for manually initiating a backfill job for a specific stream object.

| Property | Type | Description |
|----------|------|-------------|
| `eventFilter` | `EventFilter` | Optional. Optional event filter. If not set, or empty, the backfill will be performed on the enti... |

### `StartBackfillJobResponse`

Response for manually initiating a backfill job for a specific stream object.

| Property | Type | Description |
|----------|------|-------------|
| `object` | `StreamObject` | The stream object resource a backfill job was started for. |

### `StaticServiceIpConnectivity`

Static IP address connectivity. Used when the source database is configured to allow incoming connections from the Datastream public IP addresses for the region specified in the connection profile.

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `StopBackfillJobRequest`

Request for manually stopping a running backfill job for a specific stream object.

### `StopBackfillJobResponse`

Response for manually stop a backfill job for a specific stream object.

| Property | Type | Description |
|----------|------|-------------|
| `object` | `StreamObject` | The stream object resource the backfill job was stopped for. |

### `Stream`

A resource representing streaming data from a source to a destination.

| Property | Type | Description |
|----------|------|-------------|
| `backfillAll` | `BackfillAllStrategy` | Automatically backfill objects included in the stream source configuration. Specific objects can ... |
| `backfillNone` | `BackfillNoneStrategy` | Do not automatically backfill any objects. |
| `createTime` | `string` | Output only. The creation time of the stream. |
| `customerManagedEncryptionKey` | `string` | Immutable. A reference to a KMS encryption key. If provided, it will be used to encrypt the data.... |
| `destinationConfig` | `DestinationConfig` | Required. Destination connection profile configuration. |
| `displayName` | `string` | Required. Display name. |
| `errors` | `array<Error>` | Output only. Errors on the Stream. |
| `labels` | `object` | Labels. |
| `lastRecoveryTime` | `string` | Output only. If the stream was recovered, the time of the last recovery. Note: This field is curr... |
| `name` | `string` | Output only. Identifier. The stream's name. |
| `ruleSets` | `array<RuleSet>` | Optional. Rule sets to apply to the stream. |
| `satisfiesPzi` | `boolean` | Output only. Reserved for future use. |
| `satisfiesPzs` | `boolean` | Output only. Reserved for future use. |
| `sourceConfig` | `SourceConfig` | Required. Source connection profile configuration. |
| `state` | `string` | The state of the stream. |
| `updateTime` | `string` | Output only. The last update time of the stream. |

### `StreamLargeObjects`

Configuration to stream large object values.

### `StreamObject`

A specific stream object (e.g a specific DB table).

| Property | Type | Description |
|----------|------|-------------|
| `backfillJob` | `BackfillJob` | The latest backfill job that was initiated for the stream object. |
| `createTime` | `string` | Output only. The creation time of the object. |
| `customizationRules` | `array<CustomizationRule>` | Output only. The customization rules for the object. These rules are derived from the parent Stre... |
| `displayName` | `string` | Required. Display name. |
| `errors` | `array<Error>` | Output only. Active errors on the object. |
| `name` | `string` | Output only. Identifier. The object resource's name. |
| `sourceObject` | `SourceObjectIdentifier` | The object identifier in the data source. |
| `updateTime` | `string` | Output only. The last update time of the object. |

### `TimeUnitPartition`

Time unit column partitioning. see https://cloud.google.com/bigquery/docs/partitioned-tables#date_timestamp_partitioned_tables

| Property | Type | Description |
|----------|------|-------------|
| `column` | `string` | Required. The partitioning column. |
| `partitioningTimeGranularity` | `string` | Optional. Partition granularity. |

### `UserCredentials`

Username-password credentials.

| Property | Type | Description |
|----------|------|-------------|
| `password` | `string` | Optional. Password for the Salesforce connection. Mutually exclusive with the `secret_manager_sto... |
| `secretManagerStoredPassword` | `string` | Optional. A reference to a Secret Manager resource name storing the Salesforce connection's passw... |
| `secretManagerStoredSecurityToken` | `string` | Optional. A reference to a Secret Manager resource name storing the Salesforce connection's secur... |
| `securityToken` | `string` | Optional. Security token for the Salesforce connection. Mutually exclusive with the `secret_manag... |
| `username` | `string` | Required. Username for the Salesforce connection. |

### `Validation`

A validation to perform on a stream.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | A custom code identifying this validation. |
| `description` | `string` | A short description of the validation. |
| `message` | `array<ValidationMessage>` | Messages reflecting the validation results. |
| `state` | `string` | Output only. Validation execution status. |

### `ValidationMessage`

Represent user-facing validation result message.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | A custom code identifying this specific message. |
| `level` | `string` | Message severity level (warning or error). |
| `message` | `string` | The result of the validation. |
| `metadata` | `object` | Additional metadata related to the result. |

### `ValidationResult`

Contains the current validation results.

| Property | Type | Description |
|----------|------|-------------|
| `validations` | `array<Validation>` | A list of validations (includes both executed as well as not executed validations). |

### `VpcPeeringConfig`

The VPC Peering configuration is used to create VPC peering between Datastream and the consumer's VPC.

| Property | Type | Description |
|----------|------|-------------|
| `subnet` | `string` | Required. A free subnet for peering. (CIDR of /29) |
| `vpc` | `string` | Required. Fully qualified name of the VPC that Datastream will peer to. Format: `projects/{projec... |

