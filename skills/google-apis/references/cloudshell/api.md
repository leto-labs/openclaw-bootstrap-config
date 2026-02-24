# Cloud Shell API - API Reference

**Version**: `v1` | **Methods**: 10 | **Schemas**: 21

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `cloudshell.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `cloudshell.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `cloudshell.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `cloudshell.operations.list` | GET | `v1/{+name}` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `cloudshell.users.environments.removePublicKey` | POST | `v1/{+environment}:removePublicKey` | Removes a public SSH key from an environment. Clients will no longer be able to connect to the en... |
| `cloudshell.users.environments.addPublicKey` | POST | `v1/{+environment}:addPublicKey` | Adds a public SSH key to an environment, allowing clients with the corresponding private key to c... |
| `cloudshell.users.environments.generateAccessToken` | GET | `v1/{+environment}:generateAccessToken` | Generates an access token for the user's environment. |
| `cloudshell.users.environments.authorize` | POST | `v1/{+name}:authorize` | Sends OAuth credentials to a running environment on behalf of a user. When this completes, the en... |
| `cloudshell.users.environments.get` | GET | `v1/{+name}` | Gets an environment. Returns NOT_FOUND if the environment does not exist. |
| `cloudshell.users.environments.start` | POST | `v1/{+name}:start` | Starts an existing environment, allowing clients to connect to it. The returned operation will co... |

### `cloudshell.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await cloudshell.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudshell.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await cloudshell.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudshell.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await cloudshell.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudshell.operations.list`

**GET** `v1/{+name}`

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
const res = await cloudshell.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudshell.users.environments.removePublicKey`

**POST** `v1/{+environment}:removePublicKey`

Removes a public SSH key from an environment. Clients will no longer be able to connect to the environment using the corresponding private key. If a key with the same content is not present, this will error with NOT_FOUND.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `environment` | `string` | path | Yes | Environment this key should be removed from, e.g. `users/me/environments/default`. |

**Request body**: `RemovePublicKeyRequest`

**Response**: `Operation`

```typescript
const res = await cloudshell.environments.removePublicKey({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudshell.users.environments.addPublicKey`

**POST** `v1/{+environment}:addPublicKey`

Adds a public SSH key to an environment, allowing clients with the corresponding private key to connect to that environment via SSH. If a key with the same content already exists, this will error with ALREADY_EXISTS.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `environment` | `string` | path | Yes | Environment this key should be added to, e.g. `users/me/environments/default`. |

**Request body**: `AddPublicKeyRequest`

**Response**: `Operation`

```typescript
const res = await cloudshell.environments.addPublicKey({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudshell.users.environments.generateAccessToken`

**GET** `v1/{+environment}:generateAccessToken`

Generates an access token for the user's environment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `environment` | `string` | path | Yes | Required. The environment to generate the access token for. |
| `expireTime` | `string` | query | No | Desired expiration time of the access token. This value must be at most 24 hours in the future. If a value is not spe... |
| `ttl` | `string` | query | No | Desired lifetime duration of the access token. This value must be at most 24 hours. If a value is not specified, the ... |

**Response**: `GenerateAccessTokenResponse`

```typescript
const res = await cloudshell.environments.generateAccessToken({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudshell.users.environments.authorize`

**POST** `v1/{+name}:authorize`

Sends OAuth credentials to a running environment on behalf of a user. When this completes, the environment will be authorized to run various Google Cloud command line tools without requiring the user to manually authenticate.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Name of the resource that should receive the credentials, for example `users/me/environments/default` or `users/someo... |

**Request body**: `AuthorizeEnvironmentRequest`

**Response**: `Operation`

```typescript
const res = await cloudshell.environments.authorize({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudshell.users.environments.get`

**GET** `v1/{+name}`

Gets an environment. Returns NOT_FOUND if the environment does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the requested resource, for example `users/me/environments/default` or `users/someone@example.com/e... |

**Response**: `Environment`

```typescript
const res = await cloudshell.environments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudshell.users.environments.start`

**POST** `v1/{+name}:start`

Starts an existing environment, allowing clients to connect to it. The returned operation will contain an instance of StartEnvironmentMetadata in its metadata field. Users can wait for the environment to start by polling this operation via GetOperation. Once the environment has finished starting and is ready to accept connections, the operation will contain a StartEnvironmentResponse in its response field.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Name of the resource that should be started, for example `users/me/environments/default` or `users/someone@example.co... |

**Request body**: `StartEnvironmentRequest`

**Response**: `Operation`

```typescript
const res = await cloudshell.environments.start({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AddPublicKeyMetadata`

Message included in the metadata field of operations returned from AddPublicKey.

### `AddPublicKeyRequest`

Request message for AddPublicKey.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | Key that should be added to the environment. Supported formats are `ssh-dss` (see RFC4253), `ssh-... |

### `AddPublicKeyResponse`

Response message for AddPublicKey.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | Key that was added to the environment. |

### `AuthorizeEnvironmentMetadata`

Message included in the metadata field of operations returned from AuthorizeEnvironment.

### `AuthorizeEnvironmentRequest`

Request message for AuthorizeEnvironment.

| Property | Type | Description |
|----------|------|-------------|
| `accessToken` | `string` | The OAuth access token that should be sent to the environment. |
| `expireTime` | `string` | The time when the credentials expire. If not set, defaults to one hour from when the server recei... |
| `idToken` | `string` | The OAuth ID token that should be sent to the environment. |

### `AuthorizeEnvironmentResponse`

Response message for AuthorizeEnvironment.

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `CreateEnvironmentMetadata`

Message included in the metadata field of operations returned from CreateEnvironment.

### `DeleteEnvironmentMetadata`

Message included in the metadata field of operations returned from DeleteEnvironment.

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Environment`

A Cloud Shell environment, which is defined as the combination of a Docker image specifying what is installed on the environment and a home directory containing the user's data that will remain across sessions. Each user has at least an environment with the ID "default".

| Property | Type | Description |
|----------|------|-------------|
| `dockerImage` | `string` | Required. Immutable. Full path to the Docker image used to run this environment, e.g. "gcr.io/dev... |
| `id` | `string` | Output only. The environment's identifier, unique among the user's environments. |
| `name` | `string` | Immutable. Full name of this resource, in the format `users/{owner_email}/environments/{environme... |
| `publicKeys` | `array<string>` | Output only. Public keys associated with the environment. Clients can connect to this environment... |
| `sshHost` | `string` | Output only. Host to which clients can connect to initiate SSH sessions with the environment. |
| `sshPort` | `integer` | Output only. Port to which clients can connect to initiate SSH sessions with the environment. |
| `sshUsername` | `string` | Output only. Username that clients should use when initiating SSH sessions with the environment. |
| `state` | `string` | Output only. Current execution state of this environment. |
| `webHost` | `string` | Output only. Host to which clients can connect to initiate HTTPS or WSS connections with the envi... |

### `GenerateAccessTokenResponse`

Response message for GenerateAccessToken.

| Property | Type | Description |
|----------|------|-------------|
| `accessToken` | `string` | The access token. |

### `ListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<Operation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `RemovePublicKeyMetadata`

Message included in the metadata field of operations returned from RemovePublicKey.

### `RemovePublicKeyRequest`

Request message for RemovePublicKey.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | Key that should be removed from the environment. |

### `RemovePublicKeyResponse`

Response message for RemovePublicKey.

### `StartEnvironmentMetadata`

Message included in the metadata field of operations returned from StartEnvironment.

| Property | Type | Description |
|----------|------|-------------|
| `state` | `string` | Current state of the environment being started. |

### `StartEnvironmentRequest`

Request message for StartEnvironment.

| Property | Type | Description |
|----------|------|-------------|
| `accessToken` | `string` | The initial access token passed to the environment. If this is present and valid, the environment... |
| `publicKeys` | `array<string>` | Public keys that should be added to the environment before it is started. |

### `StartEnvironmentResponse`

Message included in the response field of operations returned from StartEnvironment once the operation is complete.

| Property | Type | Description |
|----------|------|-------------|
| `environment` | `Environment` | Environment that was started. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

