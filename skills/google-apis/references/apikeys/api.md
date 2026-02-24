# API Keys API - API Reference

**Version**: `v2` | **Methods**: 9 | **Schemas**: 14

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `apikeys.operations.get` | GET | `v2/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `apikeys.keys.lookupKey` | GET | `v2/keys:lookupKey` | Find the parent project and resource name of the API key that matches the key string in the reque... |
| `apikeys.projects.locations.keys.getKeyString` | GET | `v2/{+name}/keyString` | Get the key string for an API key. NOTE: Key is a global resource; hence the only supported value... |
| `apikeys.projects.locations.keys.create` | POST | `v2/{+parent}/keys` | Creates a new API key. NOTE: Key is a global resource; hence the only supported value for locatio... |
| `apikeys.projects.locations.keys.delete` | DELETE | `v2/{+name}` | Deletes an API key. Deleted key can be retrieved within 30 days of deletion. Afterward, key will ... |
| `apikeys.projects.locations.keys.patch` | PATCH | `v2/{+name}` | Patches the modifiable fields of an API key. The key string of the API key isn't included in the ... |
| `apikeys.projects.locations.keys.undelete` | POST | `v2/{+name}:undelete` | Undeletes an API key which was deleted within 30 days. NOTE: Key is a global resource; hence the ... |
| `apikeys.projects.locations.keys.get` | GET | `v2/{+name}` | Gets the metadata for an API key. The key string of the API key isn't included in the response. N... |
| `apikeys.projects.locations.keys.list` | GET | `v2/{+parent}/keys` | Lists the API keys owned by a project. The key string of the API key isn't included in the respon... |

### `apikeys.operations.get`

**GET** `v2/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await apikeys.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `apikeys.keys.lookupKey`

**GET** `v2/keys:lookupKey`

Find the parent project and resource name of the API key that matches the key string in the request. If the API key has been purged, resource name will not be set. The service account must have the `apikeys.keys.lookup` permission on the parent project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `keyString` | `string` | query | No | Required. Finds the project that owns the key string value. |

**Response**: `V2LookupKeyResponse`

```typescript
const res = await apikeys.keys.lookupKey({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `apikeys.projects.locations.keys.getKeyString`

**GET** `v2/{+name}/keyString`

Get the key string for an API key. NOTE: Key is a global resource; hence the only supported value for location is `global`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the API key to be retrieved. |

**Response**: `V2GetKeyStringResponse`

```typescript
const res = await apikeys.keys.getKeyString({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `apikeys.projects.locations.keys.create`

**POST** `v2/{+parent}/keys`

Creates a new API key. NOTE: Key is a global resource; hence the only supported value for location is `global`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project in which the API key is created. |
| `keyId` | `string` | query | No | User specified key id (optional). If specified, it will become the final component of the key resource name. The id m... |

**Request body**: `V2Key`

**Response**: `Operation`

```typescript
const res = await apikeys.keys.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apikeys.projects.locations.keys.delete`

**DELETE** `v2/{+name}`

Deletes an API key. Deleted key can be retrieved within 30 days of deletion. Afterward, key will be purged from the project. NOTE: Key is a global resource; hence the only supported value for location is `global`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the API key to be deleted. |
| `etag` | `string` | query | No | Optional. The etag known to the client for the expected state of the key. This is to be used for optimistic concurrency. |

**Response**: `Operation`

```typescript
const res = await apikeys.keys.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apikeys.projects.locations.keys.patch`

**PATCH** `v2/{+name}`

Patches the modifiable fields of an API key. The key string of the API key isn't included in the response. NOTE: Key is a global resource; hence the only supported value for location is `global`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The resource name of the key. The `name` has the form: `projects//locations/global/keys/`. For example: ... |
| `updateMask` | `string` | query | No | The field mask specifies which fields to be updated as part of this request. All other fields are ignored. Mutable fi... |

**Request body**: `V2Key`

**Response**: `Operation`

```typescript
const res = await apikeys.keys.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apikeys.projects.locations.keys.undelete`

**POST** `v2/{+name}:undelete`

Undeletes an API key which was deleted within 30 days. NOTE: Key is a global resource; hence the only supported value for location is `global`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the API key to be undeleted. |

**Request body**: `V2UndeleteKeyRequest`

**Response**: `Operation`

```typescript
const res = await apikeys.keys.undelete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `apikeys.projects.locations.keys.get`

**GET** `v2/{+name}`

Gets the metadata for an API key. The key string of the API key isn't included in the response. NOTE: Key is a global resource; hence the only supported value for location is `global`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the API key to get. |

**Response**: `V2Key`

```typescript
const res = await apikeys.keys.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `apikeys.projects.locations.keys.list`

**GET** `v2/{+parent}/keys`

Lists the API keys owned by a project. The key string of the API key isn't included in the response. NOTE: Key is a global resource; hence the only supported value for location is `global`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Lists all API keys associated with this project. |
| `pageSize` | `integer` | query | No | Optional. Specifies the maximum number of results to be returned at a time. |
| `pageToken` | `string` | query | No | Optional. Requests a specific page of results. |
| `showDeleted` | `boolean` | query | No | Optional. Indicate that keys deleted in the past 30 days should also be returned. |

**Response**: `V2ListKeysResponse`

```typescript
const res = await apikeys.keys.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

## Schemas

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `V2AndroidApplication`

Identifier of an Android application for key use.

| Property | Type | Description |
|----------|------|-------------|
| `packageName` | `string` | The package name of the application. |
| `sha1Fingerprint` | `string` | The SHA1 fingerprint of the application. For example, both sha1 formats are acceptable : DA:39:A3... |

### `V2AndroidKeyRestrictions`

The Android apps that are allowed to use the key.

| Property | Type | Description |
|----------|------|-------------|
| `allowedApplications` | `array<V2AndroidApplication>` | A list of Android applications that are allowed to make API calls with this key. |

### `V2ApiTarget`

A restriction for a specific service and optionally one or multiple specific methods. Both fields are case insensitive.

| Property | Type | Description |
|----------|------|-------------|
| `methods` | `array<string>` | Optional. List of one or more methods that can be called. If empty, all methods for the service a... |
| `service` | `string` | The service for this restriction. It should be the canonical service name, for example: `translat... |

### `V2BrowserKeyRestrictions`

The HTTP referrers (websites) that are allowed to use the key.

| Property | Type | Description |
|----------|------|-------------|
| `allowedReferrers` | `array<string>` | A list of regular expressions for the referrer URLs that are allowed to make API calls with this ... |

### `V2GetKeyStringResponse`

Response message for `GetKeyString` method.

| Property | Type | Description |
|----------|------|-------------|
| `keyString` | `string` | An encrypted and signed value of the key. |

### `V2IosKeyRestrictions`

The iOS apps that are allowed to use the key.

| Property | Type | Description |
|----------|------|-------------|
| `allowedBundleIds` | `array<string>` | A list of bundle IDs that are allowed when making API calls with this key. |

### `V2Key`

The representation of a key managed by the API Keys API.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Annotations is an unstructured key-value map stored with a policy that may be set by external too... |
| `createTime` | `string` | Output only. A timestamp identifying the time this key was originally created. |
| `deleteTime` | `string` | Output only. A timestamp when this key was deleted. If the resource is not deleted, this must be ... |
| `displayName` | `string` | Human-readable display name of this key that you can modify. The maximum length is 63 characters. |
| `etag` | `string` | A checksum computed by the server based on the current value of the Key resource. This may be sen... |
| `keyString` | `string` | Output only. An encrypted and signed value held by this key. This field can be accessed only thro... |
| `name` | `string` | Output only. The resource name of the key. The `name` has the form: `projects//locations/global/k... |
| `restrictions` | `V2Restrictions` | Key restrictions. |
| `serviceAccountEmail` | `string` | Optional. The email address of [the service account](https://cloud.google.com/iam/docs/service-ac... |
| `uid` | `string` | Output only. Unique id in UUID4 format. |
| `updateTime` | `string` | Output only. A timestamp identifying the time this key was last updated. |

### `V2ListKeysResponse`

Response message for `ListKeys` method.

| Property | Type | Description |
|----------|------|-------------|
| `keys` | `array<V2Key>` | A list of API keys. |
| `nextPageToken` | `string` | The pagination token for the next page of results. |

### `V2LookupKeyResponse`

Response message for `LookupKey` method.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The resource name of the API key. If the API key has been purged, resource name is empty. |
| `parent` | `string` | The project that owns the key with the value specified in the request. |

### `V2Restrictions`

Describes the restrictions on the key.

| Property | Type | Description |
|----------|------|-------------|
| `androidKeyRestrictions` | `V2AndroidKeyRestrictions` | The Android apps that are allowed to use the key. |
| `apiTargets` | `array<V2ApiTarget>` | A restriction for a specific service and optionally one or more specific methods. Requests are al... |
| `browserKeyRestrictions` | `V2BrowserKeyRestrictions` | The HTTP referrers (websites) that are allowed to use the key. |
| `iosKeyRestrictions` | `V2IosKeyRestrictions` | The iOS apps that are allowed to use the key. |
| `serverKeyRestrictions` | `V2ServerKeyRestrictions` | The IP addresses of callers that are allowed to use the key. |

### `V2ServerKeyRestrictions`

The IP addresses of callers that are allowed to use the key.

| Property | Type | Description |
|----------|------|-------------|
| `allowedIps` | `array<string>` | A list of the caller IP addresses that are allowed to make API calls with this key. |

### `V2UndeleteKeyRequest`

Request message for `UndeleteKey` method.

