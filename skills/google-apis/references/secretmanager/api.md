# Secret Manager API - API Reference

**Version**: `v1` | **Methods**: 36 | **Schemas**: 37

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `secretmanager.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `secretmanager.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `secretmanager.projects.locations.secrets.delete` | DELETE | `v1/{+name}` | Deletes a Secret. |
| `secretmanager.projects.locations.secrets.list` | GET | `v1/{+parent}/secrets` | Lists Secrets. |
| `secretmanager.projects.locations.secrets.create` | POST | `v1/{+parent}/secrets` | Creates a new Secret containing no SecretVersions. |
| `secretmanager.projects.locations.secrets.addVersion` | POST | `v1/{+parent}:addVersion` | Creates a new SecretVersion containing secret data and attaches it to an existing Secret. |
| `secretmanager.projects.locations.secrets.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a secret. Returns empty policy if the secret exists and does n... |
| `secretmanager.projects.locations.secrets.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified secret. Replaces any existing policy. Permissions... |
| `secretmanager.projects.locations.secrets.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has for the specified secret. If the secret does not exist, thi... |
| `secretmanager.projects.locations.secrets.patch` | PATCH | `v1/{+name}` | Updates metadata of an existing Secret. |
| `secretmanager.projects.locations.secrets.get` | GET | `v1/{+name}` | Gets metadata for a given Secret. |
| `secretmanager.projects.locations.secrets.versions.get` | GET | `v1/{+name}` | Gets metadata for a SecretVersion. `projects/*/secrets/*/versions/latest` is an alias to the most... |
| `secretmanager.projects.locations.secrets.versions.list` | GET | `v1/{+parent}/versions` | Lists SecretVersions. This call does not return secret data. |
| `secretmanager.projects.locations.secrets.versions.access` | GET | `v1/{+name}:access` | Accesses a SecretVersion. This call returns the secret data. `projects/*/secrets/*/versions/lates... |
| `secretmanager.projects.locations.secrets.versions.disable` | POST | `v1/{+name}:disable` | Disables a SecretVersion. Sets the state of the SecretVersion to DISABLED. |
| `secretmanager.projects.locations.secrets.versions.enable` | POST | `v1/{+name}:enable` | Enables a SecretVersion. Sets the state of the SecretVersion to ENABLED. |
| `secretmanager.projects.locations.secrets.versions.destroy` | POST | `v1/{+name}:destroy` | Destroys a SecretVersion. Sets the state of the SecretVersion to DESTROYED and irrevocably destro... |
| `secretmanager.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `secretmanager.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `secretmanager.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `secretmanager.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `secretmanager.projects.secrets.delete` | DELETE | `v1/{+name}` | Deletes a Secret. |
| `secretmanager.projects.secrets.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a secret. Returns empty policy if the secret exists and does n... |
| `secretmanager.projects.secrets.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified secret. Replaces any existing policy. Permissions... |
| `secretmanager.projects.secrets.list` | GET | `v1/{+parent}/secrets` | Lists Secrets. |
| `secretmanager.projects.secrets.create` | POST | `v1/{+parent}/secrets` | Creates a new Secret containing no SecretVersions. |
| `secretmanager.projects.secrets.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has for the specified secret. If the secret does not exist, thi... |
| `secretmanager.projects.secrets.patch` | PATCH | `v1/{+name}` | Updates metadata of an existing Secret. |
| `secretmanager.projects.secrets.get` | GET | `v1/{+name}` | Gets metadata for a given Secret. |
| `secretmanager.projects.secrets.addVersion` | POST | `v1/{+parent}:addVersion` | Creates a new SecretVersion containing secret data and attaches it to an existing Secret. |
| `secretmanager.projects.secrets.versions.disable` | POST | `v1/{+name}:disable` | Disables a SecretVersion. Sets the state of the SecretVersion to DISABLED. |
| `secretmanager.projects.secrets.versions.destroy` | POST | `v1/{+name}:destroy` | Destroys a SecretVersion. Sets the state of the SecretVersion to DESTROYED and irrevocably destro... |
| `secretmanager.projects.secrets.versions.list` | GET | `v1/{+parent}/versions` | Lists SecretVersions. This call does not return secret data. |
| `secretmanager.projects.secrets.versions.enable` | POST | `v1/{+name}:enable` | Enables a SecretVersion. Sets the state of the SecretVersion to ENABLED. |
| `secretmanager.projects.secrets.versions.get` | GET | `v1/{+name}` | Gets metadata for a SecretVersion. `projects/*/secrets/*/versions/latest` is an alias to the most... |
| `secretmanager.projects.secrets.versions.access` | GET | `v1/{+name}:access` | Accesses a SecretVersion. This call returns the secret data. `projects/*/secrets/*/versions/lates... |

### `secretmanager.projects.locations.list`

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
const res = await secretmanager.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `secretmanager.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await secretmanager.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `secretmanager.projects.locations.secrets.delete`

**DELETE** `v1/{+name}`

Deletes a Secret.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Secret to delete in the format `projects/*/secrets/*`. |
| `etag` | `string` | query | No | Optional. Etag of the Secret. The request succeeds if it matches the etag of the currently stored secret object. If t... |

**Response**: `Empty`

```typescript
const res = await secretmanager.secrets.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `secretmanager.projects.locations.secrets.list`

**GET** `v1/{+parent}/secrets`

Lists Secrets.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the project associated with the Secrets, in the format `projects/*` or `projects/*/loc... |
| `filter` | `string` | query | No | Optional. Filter string, adhering to the rules in [List-operation filtering](https://cloud.google.com/secret-manager/... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to be returned in a single page. If set to 0, the server decides the number o... |
| `pageToken` | `string` | query | No | Optional. Pagination token, returned earlier via ListSecretsResponse.next_page_token. |

**Response**: `ListSecretsResponse`

```typescript
const res = await secretmanager.secrets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `secretmanager.projects.locations.secrets.create`

**POST** `v1/{+parent}/secrets`

Creates a new Secret containing no SecretVersions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the project to associate with the Secret, in the format `projects/*` or `projects/*/lo... |
| `secretId` | `string` | query | No | Required. This must be unique within the project. A secret ID is a string with a maximum length of 255 characters and... |

**Request body**: `Secret`

**Response**: `Secret`

```typescript
const res = await secretmanager.secrets.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `secretmanager.projects.locations.secrets.addVersion`

**POST** `v1/{+parent}:addVersion`

Creates a new SecretVersion containing secret data and attaches it to an existing Secret.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the Secret to associate with the SecretVersion in the format `projects/*/secrets/*` or... |

**Request body**: `AddSecretVersionRequest`

**Response**: `SecretVersion`

```typescript
const res = await secretmanager.secrets.addVersion({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `secretmanager.projects.locations.secrets.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a secret. Returns empty policy if the secret exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await secretmanager.secrets.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `secretmanager.projects.locations.secrets.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified secret. Replaces any existing policy. Permissions on SecretVersions are enforced according to the policy set on the associated Secret.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await secretmanager.secrets.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `secretmanager.projects.locations.secrets.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has for the specified secret. If the secret does not exist, this call returns an empty set of permissions, not a NOT_FOUND error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await secretmanager.secrets.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `secretmanager.projects.locations.secrets.patch`

**PATCH** `v1/{+name}`

Updates metadata of an existing Secret.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The resource name of the Secret in the format `projects/*/secrets/*`. |
| `updateMask` | `string` | query | No | Required. Specifies the fields to be updated. |

**Request body**: `Secret`

**Response**: `Secret`

```typescript
const res = await secretmanager.secrets.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `secretmanager.projects.locations.secrets.get`

**GET** `v1/{+name}`

Gets metadata for a given Secret.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Secret, in the format `projects/*/secrets/*` or `projects/*/locations/*/secrets/*`. |

**Response**: `Secret`

```typescript
const res = await secretmanager.secrets.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `secretmanager.projects.locations.secrets.versions.get`

**GET** `v1/{+name}`

Gets metadata for a SecretVersion. `projects/*/secrets/*/versions/latest` is an alias to the most recently created SecretVersion.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the SecretVersion in the format `projects/*/secrets/*/versions/*` or `projects/*/locat... |

**Response**: `SecretVersion`

```typescript
const res = await secretmanager.versions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `secretmanager.projects.locations.secrets.versions.list`

**GET** `v1/{+parent}/versions`

Lists SecretVersions. This call does not return secret data.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the Secret associated with the SecretVersions to list, in the format `projects/*/secre... |
| `filter` | `string` | query | No | Optional. Filter string, adhering to the rules in [List-operation filtering](https://cloud.google.com/secret-manager/... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to be returned in a single page. If set to 0, the server decides the number o... |
| `pageToken` | `string` | query | No | Optional. Pagination token, returned earlier via ListSecretVersionsResponse.next_page_token][]. |

**Response**: `ListSecretVersionsResponse`

```typescript
const res = await secretmanager.versions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `secretmanager.projects.locations.secrets.versions.access`

**GET** `v1/{+name}:access`

Accesses a SecretVersion. This call returns the secret data. `projects/*/secrets/*/versions/latest` is an alias to the most recently created SecretVersion.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the SecretVersion in the format `projects/*/secrets/*/versions/*` or `projects/*/locat... |

**Response**: `AccessSecretVersionResponse`

```typescript
const res = await secretmanager.versions.access({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `secretmanager.projects.locations.secrets.versions.disable`

**POST** `v1/{+name}:disable`

Disables a SecretVersion. Sets the state of the SecretVersion to DISABLED.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the SecretVersion to disable in the format `projects/*/secrets/*/versions/*` or `proje... |

**Request body**: `DisableSecretVersionRequest`

**Response**: `SecretVersion`

```typescript
const res = await secretmanager.versions.disable({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `secretmanager.projects.locations.secrets.versions.enable`

**POST** `v1/{+name}:enable`

Enables a SecretVersion. Sets the state of the SecretVersion to ENABLED.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the SecretVersion to enable in the format `projects/*/secrets/*/versions/*` or `projec... |

**Request body**: `EnableSecretVersionRequest`

**Response**: `SecretVersion`

```typescript
const res = await secretmanager.versions.enable({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `secretmanager.projects.locations.secrets.versions.destroy`

**POST** `v1/{+name}:destroy`

Destroys a SecretVersion. Sets the state of the SecretVersion to DESTROYED and irrevocably destroys the secret data.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the SecretVersion to destroy in the format `projects/*/secrets/*/versions/*` or `proje... |

**Request body**: `DestroySecretVersionRequest`

**Response**: `SecretVersion`

```typescript
const res = await secretmanager.versions.destroy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `secretmanager.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Response**: `Empty`

```typescript
const res = await secretmanager.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `secretmanager.projects.locations.operations.list`

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
const res = await secretmanager.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `secretmanager.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await secretmanager.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `secretmanager.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await secretmanager.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `secretmanager.projects.secrets.delete`

**DELETE** `v1/{+name}`

Deletes a Secret.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Secret to delete in the format `projects/*/secrets/*`. |
| `etag` | `string` | query | No | Optional. Etag of the Secret. The request succeeds if it matches the etag of the currently stored secret object. If t... |

**Response**: `Empty`

```typescript
const res = await secretmanager.secrets.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `secretmanager.projects.secrets.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a secret. Returns empty policy if the secret exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await secretmanager.secrets.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `secretmanager.projects.secrets.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified secret. Replaces any existing policy. Permissions on SecretVersions are enforced according to the policy set on the associated Secret.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await secretmanager.secrets.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `secretmanager.projects.secrets.list`

**GET** `v1/{+parent}/secrets`

Lists Secrets.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the project associated with the Secrets, in the format `projects/*` or `projects/*/loc... |
| `filter` | `string` | query | No | Optional. Filter string, adhering to the rules in [List-operation filtering](https://cloud.google.com/secret-manager/... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to be returned in a single page. If set to 0, the server decides the number o... |
| `pageToken` | `string` | query | No | Optional. Pagination token, returned earlier via ListSecretsResponse.next_page_token. |

**Response**: `ListSecretsResponse`

```typescript
const res = await secretmanager.secrets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `secretmanager.projects.secrets.create`

**POST** `v1/{+parent}/secrets`

Creates a new Secret containing no SecretVersions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the project to associate with the Secret, in the format `projects/*` or `projects/*/lo... |
| `secretId` | `string` | query | No | Required. This must be unique within the project. A secret ID is a string with a maximum length of 255 characters and... |

**Request body**: `Secret`

**Response**: `Secret`

```typescript
const res = await secretmanager.secrets.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `secretmanager.projects.secrets.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has for the specified secret. If the secret does not exist, this call returns an empty set of permissions, not a NOT_FOUND error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await secretmanager.secrets.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `secretmanager.projects.secrets.patch`

**PATCH** `v1/{+name}`

Updates metadata of an existing Secret.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The resource name of the Secret in the format `projects/*/secrets/*`. |
| `updateMask` | `string` | query | No | Required. Specifies the fields to be updated. |

**Request body**: `Secret`

**Response**: `Secret`

```typescript
const res = await secretmanager.secrets.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `secretmanager.projects.secrets.get`

**GET** `v1/{+name}`

Gets metadata for a given Secret.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Secret, in the format `projects/*/secrets/*` or `projects/*/locations/*/secrets/*`. |

**Response**: `Secret`

```typescript
const res = await secretmanager.secrets.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `secretmanager.projects.secrets.addVersion`

**POST** `v1/{+parent}:addVersion`

Creates a new SecretVersion containing secret data and attaches it to an existing Secret.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the Secret to associate with the SecretVersion in the format `projects/*/secrets/*` or... |

**Request body**: `AddSecretVersionRequest`

**Response**: `SecretVersion`

```typescript
const res = await secretmanager.secrets.addVersion({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `secretmanager.projects.secrets.versions.disable`

**POST** `v1/{+name}:disable`

Disables a SecretVersion. Sets the state of the SecretVersion to DISABLED.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the SecretVersion to disable in the format `projects/*/secrets/*/versions/*` or `proje... |

**Request body**: `DisableSecretVersionRequest`

**Response**: `SecretVersion`

```typescript
const res = await secretmanager.versions.disable({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `secretmanager.projects.secrets.versions.destroy`

**POST** `v1/{+name}:destroy`

Destroys a SecretVersion. Sets the state of the SecretVersion to DESTROYED and irrevocably destroys the secret data.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the SecretVersion to destroy in the format `projects/*/secrets/*/versions/*` or `proje... |

**Request body**: `DestroySecretVersionRequest`

**Response**: `SecretVersion`

```typescript
const res = await secretmanager.versions.destroy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `secretmanager.projects.secrets.versions.list`

**GET** `v1/{+parent}/versions`

Lists SecretVersions. This call does not return secret data.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the Secret associated with the SecretVersions to list, in the format `projects/*/secre... |
| `filter` | `string` | query | No | Optional. Filter string, adhering to the rules in [List-operation filtering](https://cloud.google.com/secret-manager/... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of results to be returned in a single page. If set to 0, the server decides the number o... |
| `pageToken` | `string` | query | No | Optional. Pagination token, returned earlier via ListSecretVersionsResponse.next_page_token][]. |

**Response**: `ListSecretVersionsResponse`

```typescript
const res = await secretmanager.versions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `secretmanager.projects.secrets.versions.enable`

**POST** `v1/{+name}:enable`

Enables a SecretVersion. Sets the state of the SecretVersion to ENABLED.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the SecretVersion to enable in the format `projects/*/secrets/*/versions/*` or `projec... |

**Request body**: `EnableSecretVersionRequest`

**Response**: `SecretVersion`

```typescript
const res = await secretmanager.versions.enable({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `secretmanager.projects.secrets.versions.get`

**GET** `v1/{+name}`

Gets metadata for a SecretVersion. `projects/*/secrets/*/versions/latest` is an alias to the most recently created SecretVersion.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the SecretVersion in the format `projects/*/secrets/*/versions/*` or `projects/*/locat... |

**Response**: `SecretVersion`

```typescript
const res = await secretmanager.versions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `secretmanager.projects.secrets.versions.access`

**GET** `v1/{+name}:access`

Accesses a SecretVersion. This call returns the secret data. `projects/*/secrets/*/versions/latest` is an alias to the most recently created SecretVersion.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the SecretVersion in the format `projects/*/secrets/*/versions/*` or `projects/*/locat... |

**Response**: `AccessSecretVersionResponse`

```typescript
const res = await secretmanager.versions.access({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AccessSecretVersionResponse`

Response message for SecretManagerService.AccessSecretVersion.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The resource name of the SecretVersion in the format `projects/*/secrets/*/versions/*` or `projec... |
| `payload` | `SecretPayload` | Secret payload |

### `AddSecretVersionRequest`

Request message for SecretManagerService.AddSecretVersion.

| Property | Type | Description |
|----------|------|-------------|
| `payload` | `SecretPayload` | Required. The secret payload of the SecretVersion. |

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

### `Automatic`

A replication policy that replicates the Secret payload without any restrictions.

| Property | Type | Description |
|----------|------|-------------|
| `customerManagedEncryption` | `CustomerManagedEncryption` | Optional. The customer-managed encryption configuration of the Secret. If no configuration is pro... |

### `AutomaticStatus`

The replication status of a SecretVersion using automatic replication. Only populated if the parent Secret has an automatic replication policy.

| Property | Type | Description |
|----------|------|-------------|
| `customerManagedEncryption` | `CustomerManagedEncryptionStatus` | Output only. The customer-managed encryption status of the SecretVersion. Only populated if custo... |

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `CustomerManagedEncryption`

Configuration for encrypting secret payloads using customer-managed encryption keys (CMEK).

| Property | Type | Description |
|----------|------|-------------|
| `kmsKeyName` | `string` | Required. The resource name of the Cloud KMS CryptoKey used to encrypt secret payloads. For secre... |

### `CustomerManagedEncryptionStatus`

Describes the status of customer-managed encryption.

| Property | Type | Description |
|----------|------|-------------|
| `kmsKeyVersionName` | `string` | Required. The resource name of the Cloud KMS CryptoKeyVersion used to encrypt the secret payload,... |

### `DestroySecretVersionRequest`

Request message for SecretManagerService.DestroySecretVersion.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Optional. Etag of the SecretVersion. The request succeeds if it matches the etag of the currently... |

### `DisableSecretVersionRequest`

Request message for SecretManagerService.DisableSecretVersion.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Optional. Etag of the SecretVersion. The request succeeds if it matches the etag of the currently... |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `EnableSecretVersionRequest`

Request message for SecretManagerService.EnableSecretVersion.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Optional. Etag of the SecretVersion. The request succeeds if it matches the etag of the currently... |

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

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

### `ListSecretVersionsResponse`

Response message for SecretManagerService.ListSecretVersions.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in ListSecretVersionsRequest.page_t... |
| `totalSize` | `integer` | The total number of SecretVersions but 0 when the ListSecretsRequest.filter field is set. |
| `versions` | `array<SecretVersion>` | The list of SecretVersions sorted in reverse by create_time (newest first). |

### `ListSecretsResponse`

Response message for SecretManagerService.ListSecrets.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token to retrieve the next page of results. Pass this value in ListSecretsRequest.page_token to... |
| `secrets` | `array<Secret>` | The list of Secrets sorted in reverse by create_time (newest first). |
| `totalSize` | `integer` | The total number of Secrets but 0 when the ListSecretsRequest.filter field is set. |

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

### `Replica`

Represents a Replica for this Secret.

| Property | Type | Description |
|----------|------|-------------|
| `customerManagedEncryption` | `CustomerManagedEncryption` | Optional. The customer-managed encryption configuration of the User-Managed Replica. If no config... |
| `location` | `string` | The canonical IDs of the location to replicate data. For example: `"us-east1"`. |

### `ReplicaStatus`

Describes the status of a user-managed replica for the SecretVersion.

| Property | Type | Description |
|----------|------|-------------|
| `customerManagedEncryption` | `CustomerManagedEncryptionStatus` | Output only. The customer-managed encryption status of the SecretVersion. Only populated if custo... |
| `location` | `string` | Output only. The canonical ID of the replica location. For example: `"us-east1"`. |

### `Replication`

A policy that defines the replication and encryption configuration of data.

| Property | Type | Description |
|----------|------|-------------|
| `automatic` | `Automatic` | The Secret will automatically be replicated without any restrictions. |
| `userManaged` | `UserManaged` | The Secret will only be replicated into the locations specified. |

### `ReplicationStatus`

The replication status of a SecretVersion.

| Property | Type | Description |
|----------|------|-------------|
| `automatic` | `AutomaticStatus` | Describes the replication status of a SecretVersion with automatic replication. Only populated if... |
| `userManaged` | `UserManagedStatus` | Describes the replication status of a SecretVersion with user-managed replication. Only populated... |

### `Rotation`

The rotation time and period for a Secret. At next_rotation_time, Secret Manager will send a Pub/Sub notification to the topics configured on the Secret. Secret.topics must be set to configure rotation.

| Property | Type | Description |
|----------|------|-------------|
| `nextRotationTime` | `string` | Optional. Timestamp in UTC at which the Secret is scheduled to rotate. Cannot be set to less than... |
| `rotationPeriod` | `string` | Input only. The Duration between rotation notifications. Must be in seconds and at least 3600s (1... |

### `Secret`

A Secret is a logical secret whose value and versions can be accessed. A Secret is made up of zero or more SecretVersions that represent the secret data.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. Custom metadata about the secret. Annotations are distinct from various forms of labels... |
| `createTime` | `string` | Output only. The time at which the Secret was created. |
| `customerManagedEncryption` | `CustomerManagedEncryption` | Optional. The customer-managed encryption configuration of the regionalized secrets. If no config... |
| `etag` | `string` | Optional. Etag of the currently stored Secret. |
| `expireTime` | `string` | Optional. Timestamp in UTC when the Secret is scheduled to expire. This is always provided on out... |
| `labels` | `object` | The labels assigned to this Secret. Label keys must be between 1 and 63 characters long, have a U... |
| `name` | `string` | Output only. The resource name of the Secret in the format `projects/*/secrets/*`. |
| `replication` | `Replication` | Optional. Immutable. The replication policy of the secret data attached to the Secret. The replic... |
| `rotation` | `Rotation` | Optional. Rotation policy attached to the Secret. May be excluded if there is no rotation policy. |
| `tags` | `object` | Optional. Input only. Immutable. Mapping of Tag keys/values directly bound to this resource. For ... |
| `topics` | `array<Topic>` | Optional. A list of up to 10 Pub/Sub topics to which messages are published when control plane op... |
| `ttl` | `string` | Input only. The TTL for the Secret. |
| `versionAliases` | `object` | Optional. Mapping from version alias to version name. A version alias is a string with a maximum ... |
| `versionDestroyTtl` | `string` | Optional. Secret Version TTL after destruction request This is a part of the Delayed secret versi... |

### `SecretPayload`

A secret payload resource in the Secret Manager API. This contains the sensitive secret payload that is associated with a SecretVersion.

| Property | Type | Description |
|----------|------|-------------|
| `data` | `string` | The secret data. Must be no larger than 64KiB. |
| `dataCrc32c` | `string` | Optional. If specified, SecretManagerService will verify the integrity of the received data on Se... |

### `SecretVersion`

A secret version resource in the Secret Manager API.

| Property | Type | Description |
|----------|------|-------------|
| `clientSpecifiedPayloadChecksum` | `boolean` | Output only. True if payload checksum specified in SecretPayload object has been received by Secr... |
| `createTime` | `string` | Output only. The time at which the SecretVersion was created. |
| `customerManagedEncryption` | `CustomerManagedEncryptionStatus` | Output only. The customer-managed encryption status of the SecretVersion. Only populated if custo... |
| `destroyTime` | `string` | Output only. The time this SecretVersion was destroyed. Only present if state is DESTROYED. |
| `etag` | `string` | Output only. Etag of the currently stored SecretVersion. |
| `name` | `string` | Output only. The resource name of the SecretVersion in the format `projects/*/secrets/*/versions/... |
| `replicationStatus` | `ReplicationStatus` | The replication status of the SecretVersion. |
| `scheduledDestroyTime` | `string` | Optional. Output only. Scheduled destroy time for secret version. This is a part of the Delayed s... |
| `state` | `string` | Output only. The current state of the SecretVersion. |

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

### `Topic`

A Pub/Sub topic which Secret Manager will publish to when control plane events occur on this secret.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Identifier. The resource name of the Pub/Sub topic that will be published to, in the following fo... |

### `UserManaged`

A replication policy that replicates the Secret payload into the locations specified in Replication.UserManaged.replicas

| Property | Type | Description |
|----------|------|-------------|
| `replicas` | `array<Replica>` | Required. The list of Replicas for this Secret. Cannot be empty. |

### `UserManagedStatus`

The replication status of a SecretVersion using user-managed replication. Only populated if the parent Secret has a user-managed replication policy.

| Property | Type | Description |
|----------|------|-------------|
| `replicas` | `array<ReplicaStatus>` | Output only. The list of replica statuses for the SecretVersion. |

