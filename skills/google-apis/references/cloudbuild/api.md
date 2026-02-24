# Cloud Build API - API Reference

**Version**: `v2` | **Methods**: 22 | **Schemas**: 79

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `cloudbuild.projects.locations.list` | GET | `v2/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `cloudbuild.projects.locations.get` | GET | `v2/{+name}` | Gets information about a location. |
| `cloudbuild.projects.locations.operations.get` | GET | `v2/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `cloudbuild.projects.locations.operations.cancel` | POST | `v2/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `cloudbuild.projects.locations.connections.list` | GET | `v2/{+parent}/connections` | Lists Connections in a given project and location. |
| `cloudbuild.projects.locations.connections.fetchLinkableRepositories` | GET | `v2/{+connection}:fetchLinkableRepositories` | FetchLinkableRepositories get repositories from SCM that are accessible and could be added to the... |
| `cloudbuild.projects.locations.connections.patch` | PATCH | `v2/{+name}` | Updates a single connection. |
| `cloudbuild.projects.locations.connections.get` | GET | `v2/{+name}` | Gets details of a single connection. |
| `cloudbuild.projects.locations.connections.setIamPolicy` | POST | `v2/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `cloudbuild.projects.locations.connections.create` | POST | `v2/{+parent}/connections` | Creates a Connection. |
| `cloudbuild.projects.locations.connections.delete` | DELETE | `v2/{+name}` | Deletes a single connection. |
| `cloudbuild.projects.locations.connections.getIamPolicy` | GET | `v2/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `cloudbuild.projects.locations.connections.testIamPermissions` | POST | `v2/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `cloudbuild.projects.locations.connections.processWebhook` | POST | `v2/{+parent}/connections:processWebhook` | ProcessWebhook is called by the external SCM for notifying of events. |
| `cloudbuild.projects.locations.connections.repositories.get` | GET | `v2/{+name}` | Gets details of a single repository. |
| `cloudbuild.projects.locations.connections.repositories.batchCreate` | POST | `v2/{+parent}/repositories:batchCreate` | Creates multiple repositories inside a connection. |
| `cloudbuild.projects.locations.connections.repositories.accessReadWriteToken` | POST | `v2/{+repository}:accessReadWriteToken` | Fetches read/write token of a given repository. |
| `cloudbuild.projects.locations.connections.repositories.list` | GET | `v2/{+parent}/repositories` | Lists Repositories in a given connection. |
| `cloudbuild.projects.locations.connections.repositories.accessReadToken` | POST | `v2/{+repository}:accessReadToken` | Fetches read token of a given repository. |
| `cloudbuild.projects.locations.connections.repositories.create` | POST | `v2/{+parent}/repositories` | Creates a Repository. |
| `cloudbuild.projects.locations.connections.repositories.fetchGitRefs` | GET | `v2/{+repository}:fetchGitRefs` | Fetch the list of branches or tags for a given repository. |
| `cloudbuild.projects.locations.connections.repositories.delete` | DELETE | `v2/{+name}` | Deletes a single repository. |

### `cloudbuild.projects.locations.list`

**GET** `v2/{+name}/locations`

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
const res = await cloudbuild.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudbuild.projects.locations.get`

**GET** `v2/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await cloudbuild.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudbuild.projects.locations.operations.get`

**GET** `v2/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await cloudbuild.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudbuild.projects.locations.operations.cancel`

**POST** `v2/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await cloudbuild.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudbuild.projects.locations.connections.list`

**GET** `v2/{+parent}/connections`

Lists Connections in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of Connections. Format: `projects/*/locations/*`. |
| `pageSize` | `integer` | query | No | Number of results to return in the list. |
| `pageToken` | `string` | query | No | Page start. |
| `returnPartialSuccess` | `boolean` | query | No | Optional. If set to true, the response will return partial results when some regions are unreachable. If set to false... |

**Response**: `ListConnectionsResponse`

```typescript
const res = await cloudbuild.connections.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudbuild.projects.locations.connections.fetchLinkableRepositories`

**GET** `v2/{+connection}:fetchLinkableRepositories`

FetchLinkableRepositories get repositories from SCM that are accessible and could be added to the connection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `connection` | `string` | path | Yes | Required. The name of the Connection. Format: `projects/*/locations/*/connections/*`. |
| `pageSize` | `integer` | query | No | Number of results to return in the list. Default to 20. |
| `pageToken` | `string` | query | No | Page start. |

**Response**: `FetchLinkableRepositoriesResponse`

```typescript
const res = await cloudbuild.connections.fetchLinkableRepositories({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudbuild.projects.locations.connections.patch`

**PATCH** `v2/{+name}`

Updates a single connection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The resource name of the connection, in the format `projects/{project}/locations/{location}/connections/{c... |
| `allowMissing` | `boolean` | query | No | If set to true, and the connection is not found a new connection will be created. In this situation `update_mask` is ... |
| `etag` | `string` | query | No | The current etag of the connection. If an etag is provided and does not match the current etag of the connection, upd... |
| `updateMask` | `string` | query | No | The list of fields to be updated. |

**Request body**: `Connection`

**Response**: `Operation`

```typescript
const res = await cloudbuild.connections.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudbuild.projects.locations.connections.get`

**GET** `v2/{+name}`

Gets details of a single connection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Connection to retrieve. Format: `projects/*/locations/*/connections/*`. |

**Response**: `Connection`

```typescript
const res = await cloudbuild.connections.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudbuild.projects.locations.connections.setIamPolicy`

**POST** `v2/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await cloudbuild.connections.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudbuild.projects.locations.connections.create`

**POST** `v2/{+parent}/connections`

Creates a Connection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Project and location where the connection will be created. Format: `projects/*/locations/*`. |
| `connectionId` | `string` | query | No | Required. The ID to use for the Connection, which will become the final component of the Connection's resource name. ... |

**Request body**: `Connection`

**Response**: `Operation`

```typescript
const res = await cloudbuild.connections.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudbuild.projects.locations.connections.delete`

**DELETE** `v2/{+name}`

Deletes a single connection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Connection to delete. Format: `projects/*/locations/*/connections/*`. |
| `etag` | `string` | query | No | The current etag of the connection. If an etag is provided and does not match the current etag of the connection, del... |
| `validateOnly` | `boolean` | query | No | If set, validate the request, but do not actually post it. |

**Response**: `Operation`

```typescript
const res = await cloudbuild.connections.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudbuild.projects.locations.connections.getIamPolicy`

**GET** `v2/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await cloudbuild.connections.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudbuild.projects.locations.connections.testIamPermissions`

**POST** `v2/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await cloudbuild.connections.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudbuild.projects.locations.connections.processWebhook`

**POST** `v2/{+parent}/connections:processWebhook`

ProcessWebhook is called by the external SCM for notifying of events.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Project and location where the webhook will be received. Format: `projects/*/locations/*`. |
| `webhookKey` | `string` | query | No | Arbitrary additional key to find the matching repository for a webhook event if needed. |

**Request body**: `HttpBody`

**Response**: `Empty`

```typescript
const res = await cloudbuild.connections.processWebhook({
  // parameters
});
```

---

### `cloudbuild.projects.locations.connections.repositories.get`

**GET** `v2/{+name}`

Gets details of a single repository.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Repository to retrieve. Format: `projects/*/locations/*/connections/*/repositories/*`. |

**Response**: `Repository`

```typescript
const res = await cloudbuild.repositories.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudbuild.projects.locations.connections.repositories.batchCreate`

**POST** `v2/{+parent}/repositories:batchCreate`

Creates multiple repositories inside a connection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The connection to contain all the repositories being created. Format: projects/*/locations/*/connections/* ... |

**Request body**: `BatchCreateRepositoriesRequest`

**Response**: `Operation`

```typescript
const res = await cloudbuild.repositories.batchCreate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudbuild.projects.locations.connections.repositories.accessReadWriteToken`

**POST** `v2/{+repository}:accessReadWriteToken`

Fetches read/write token of a given repository.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `repository` | `string` | path | Yes | Required. The resource name of the repository in the format `projects/*/locations/*/connections/*/repositories/*`. |

**Request body**: `FetchReadWriteTokenRequest`

**Response**: `FetchReadWriteTokenResponse`

```typescript
const res = await cloudbuild.repositories.accessReadWriteToken({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudbuild.projects.locations.connections.repositories.list`

**GET** `v2/{+parent}/repositories`

Lists Repositories in a given connection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of Repositories. Format: `projects/*/locations/*/connections/*`. |
| `filter` | `string` | query | No | A filter expression that filters resources listed in the response. Expressions must follow API improvement proposal [... |
| `pageSize` | `integer` | query | No | Number of results to return in the list. |
| `pageToken` | `string` | query | No | Page start. |
| `returnPartialSuccess` | `boolean` | query | No | Optional. If set to true, the response will return partial results when some regions are unreachable. If set to false... |

**Response**: `ListRepositoriesResponse`

```typescript
const res = await cloudbuild.repositories.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudbuild.projects.locations.connections.repositories.accessReadToken`

**POST** `v2/{+repository}:accessReadToken`

Fetches read token of a given repository.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `repository` | `string` | path | Yes | Required. The resource name of the repository in the format `projects/*/locations/*/connections/*/repositories/*`. |

**Request body**: `FetchReadTokenRequest`

**Response**: `FetchReadTokenResponse`

```typescript
const res = await cloudbuild.repositories.accessReadToken({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudbuild.projects.locations.connections.repositories.create`

**POST** `v2/{+parent}/repositories`

Creates a Repository.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The connection to contain the repository. If the request is part of a BatchCreateRepositoriesRequest, this ... |
| `repositoryId` | `string` | query | No | Required. The ID to use for the repository, which will become the final component of the repository's resource name. ... |

**Request body**: `Repository`

**Response**: `Operation`

```typescript
const res = await cloudbuild.repositories.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudbuild.projects.locations.connections.repositories.fetchGitRefs`

**GET** `v2/{+repository}:fetchGitRefs`

Fetch the list of branches or tags for a given repository.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `repository` | `string` | path | Yes | Required. The resource name of the repository in the format `projects/*/locations/*/connections/*/repositories/*`. |
| `pageSize` | `integer` | query | No | Optional. Number of results to return in the list. Default to 20. |
| `pageToken` | `string` | query | No | Optional. Page start. |
| `refType` | `string` | query | No | Type of refs to fetch |

**Response**: `FetchGitRefsResponse`

```typescript
const res = await cloudbuild.repositories.fetchGitRefs({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudbuild.projects.locations.connections.repositories.delete`

**DELETE** `v2/{+name}`

Deletes a single repository.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Repository to delete. Format: `projects/*/locations/*/connections/*/repositories/*`. |
| `etag` | `string` | query | No | The current etag of the repository. If an etag is provided and does not match the current etag of the repository, del... |
| `validateOnly` | `boolean` | query | No | If set, validate the request, but do not actually post it. |

**Response**: `Operation`

```typescript
const res = await cloudbuild.repositories.delete({
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

### `BatchCreateRepositoriesRequest`

Message for creating repositoritories in batch.

| Property | Type | Description |
|----------|------|-------------|
| `requests` | `array<CreateRepositoryRequest>` | Required. The request messages specifying the repositories to create. |

### `BatchCreateRepositoriesResponse`

Message for response of creating repositories in batch.

| Property | Type | Description |
|----------|------|-------------|
| `repositories` | `array<Repository>` | Repository resources created. |

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `BitbucketCloudConfig`

Configuration for connections to Bitbucket Cloud.

| Property | Type | Description |
|----------|------|-------------|
| `authorizerCredential` | `UserCredential` | Required. An access token with the `webhook`, `repository`, `repository:admin` and `pullrequest` ... |
| `readAuthorizerCredential` | `UserCredential` | Required. An access token with the `repository` access. It can be either a workspace, project or ... |
| `webhookSecretSecretVersion` | `string` | Required. SecretManager resource containing the webhook secret used to verify webhook events, for... |
| `workspace` | `string` | Required. The Bitbucket Cloud Workspace ID to be connected to Google Cloud Platform. |

### `BitbucketDataCenterConfig`

Configuration for connections to Bitbucket Data Center.

| Property | Type | Description |
|----------|------|-------------|
| `authorizerCredential` | `UserCredential` | Required. A http access token with the `REPO_ADMIN` scope access. |
| `hostUri` | `string` | Required. The URI of the Bitbucket Data Center instance or cluster this connection is for. |
| `readAuthorizerCredential` | `UserCredential` | Required. A http access token with the `REPO_READ` access. |
| `serverVersion` | `string` | Output only. Version of the Bitbucket Data Center running on the `host_uri`. |
| `serviceDirectoryConfig` | `GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig` | Optional. Configuration for using Service Directory to privately connect to a Bitbucket Data Cent... |
| `sslCa` | `string` | Optional. SSL certificate to use for requests to the Bitbucket Data Center. |
| `webhookSecretSecretVersion` | `string` | Required. Immutable. SecretManager resource containing the webhook secret used to verify webhook ... |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `ChildStatusReference`

ChildStatusReference is used to point to the statuses of individual TaskRuns and Runs within this PipelineRun.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Name is the name of the TaskRun or Run this is referencing. |
| `pipelineTaskName` | `string` | PipelineTaskName is the name of the PipelineTask this is referencing. |
| `type` | `string` | Output only. Type of the child reference. |
| `whenExpressions` | `array<WhenExpression>` | WhenExpressions is the list of checks guarding the execution of the PipelineTask |

### `Connection`

A connection to a SCM like GitHub, GitHub Enterprise, Bitbucket Data Center, Bitbucket Cloud or GitLab.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. Allows clients to store small amounts of arbitrary data. |
| `bitbucketCloudConfig` | `BitbucketCloudConfig` | Configuration for connections to Bitbucket Cloud. |
| `bitbucketDataCenterConfig` | `BitbucketDataCenterConfig` | Configuration for connections to Bitbucket Data Center. |
| `createTime` | `string` | Output only. Server assigned timestamp for when the connection was created. |
| `disabled` | `boolean` | Optional. If disabled is set to true, functionality is disabled for this connection. Repository b... |
| `etag` | `string` | This checksum is computed by the server based on the value of other fields, and may be sent on up... |
| `githubConfig` | `GitHubConfig` | Configuration for connections to github.com. |
| `githubEnterpriseConfig` | `GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig` | Configuration for connections to an instance of GitHub Enterprise. |
| `gitlabConfig` | `GoogleDevtoolsCloudbuildV2GitLabConfig` | Configuration for connections to gitlab.com or an instance of GitLab Enterprise. |
| `installationState` | `InstallationState` | Output only. Installation state of the Connection. |
| `name` | `string` | Immutable. The resource name of the connection, in the format `projects/{project}/locations/{loca... |
| `reconciling` | `boolean` | Output only. Set to true when the connection is being set up or updated in the background. |
| `updateTime` | `string` | Output only. Server assigned timestamp for when the connection was updated. |

### `CreateRepositoryRequest`

Message for creating a Repository.

| Property | Type | Description |
|----------|------|-------------|
| `parent` | `string` | Required. The connection to contain the repository. If the request is part of a BatchCreateReposi... |
| `repository` | `Repository` | Required. The repository to create. |
| `repositoryId` | `string` | Required. The ID to use for the repository, which will become the final component of the reposito... |

### `EmbeddedTask`

EmbeddedTask defines a Task that is embedded in a Pipeline.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | User annotations. See https://google.aip.dev/128#annotations |
| `taskSpec` | `TaskSpec` | Spec to instantiate this TaskRun. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `EmptyDirVolumeSource`

Represents an empty Volume source.

### `EnvVar`

Environment variable.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Name of the environment variable. |
| `value` | `string` | Value of the environment variable. |

### `ExecAction`

ExecAction describes a "run in container" action.

| Property | Type | Description |
|----------|------|-------------|
| `command` | `array<string>` | Optional. Command is the command line to execute inside the container, the working directory for ... |

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `FetchGitRefsResponse`

Response for fetching git refs

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `refNames` | `array<string>` | Name of the refs fetched. |

### `FetchLinkableRepositoriesResponse`

Response message for FetchLinkableRepositories.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `repositories` | `array<Repository>` | repositories ready to be created. |

### `FetchReadTokenRequest`

Message for fetching SCM read token.

### `FetchReadTokenResponse`

Message for responding to get read token.

| Property | Type | Description |
|----------|------|-------------|
| `expirationTime` | `string` | Expiration timestamp. Can be empty if unknown or non-expiring. |
| `token` | `string` | The token content. |

### `FetchReadWriteTokenRequest`

Message for fetching SCM read/write token.

### `FetchReadWriteTokenResponse`

Message for responding to get read/write token.

| Property | Type | Description |
|----------|------|-------------|
| `expirationTime` | `string` | Expiration timestamp. Can be empty if unknown or non-expiring. |
| `token` | `string` | The token content. |

### `GitHubConfig`

Configuration for connections to github.com.

| Property | Type | Description |
|----------|------|-------------|
| `appInstallationId` | `string` | Optional. GitHub App installation id. |
| `authorizerCredential` | `OAuthCredential` | Optional. OAuth credential of the account that authorized the Cloud Build GitHub App. It is recom... |

### `GoogleDevtoolsCloudbuildV2Condition`

Conditions defines a readiness condition for a Knative resource.

| Property | Type | Description |
|----------|------|-------------|
| `lastTransitionTime` | `string` | LastTransitionTime is the last time the condition transitioned from one status to another. |
| `message` | `string` | A human readable message indicating details about the transition. |
| `reason` | `string` | The reason for the condition's last transition. |
| `severity` | `string` | Severity with which to treat failures of this type of condition. |
| `status` | `string` | Status of the condition. |
| `type` | `string` | Type of condition. |

### `GoogleDevtoolsCloudbuildV2GitHubEnterpriseConfig`

Configuration for connections to an instance of GitHub Enterprise.

| Property | Type | Description |
|----------|------|-------------|
| `apiKey` | `string` | Required. API Key used for authentication of webhook events. |
| `appId` | `string` | Optional. Id of the GitHub App created from the manifest. |
| `appInstallationId` | `string` | Optional. ID of the installation of the GitHub App. |
| `appSlug` | `string` | Optional. The URL-friendly name of the GitHub App. |
| `hostUri` | `string` | Required. The URI of the GitHub Enterprise host this connection is for. |
| `privateKeySecretVersion` | `string` | Optional. SecretManager resource containing the private key of the GitHub App, formatted as `proj... |
| `serverVersion` | `string` | Output only. GitHub Enterprise version installed at the host_uri. |
| `serviceDirectoryConfig` | `GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig` | Optional. Configuration for using Service Directory to privately connect to a GitHub Enterprise s... |
| `sslCa` | `string` | Optional. SSL certificate to use for requests to GitHub Enterprise. |
| `webhookSecretSecretVersion` | `string` | Optional. SecretManager resource containing the webhook secret of the GitHub App, formatted as `p... |

### `GoogleDevtoolsCloudbuildV2GitLabConfig`

Configuration for connections to gitlab.com or an instance of GitLab Enterprise.

| Property | Type | Description |
|----------|------|-------------|
| `authorizerCredential` | `UserCredential` | Required. A GitLab personal access token with the `api` scope access. |
| `hostUri` | `string` | Optional. The URI of the GitLab Enterprise host this connection is for. If not specified, the def... |
| `readAuthorizerCredential` | `UserCredential` | Required. A GitLab personal access token with the minimum `read_api` scope access. |
| `serverVersion` | `string` | Output only. Version of the GitLab Enterprise server running on the `host_uri`. |
| `serviceDirectoryConfig` | `GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig` | Optional. Configuration for using Service Directory to privately connect to a GitLab Enterprise s... |
| `sslCa` | `string` | Optional. SSL certificate to use for requests to GitLab Enterprise. |
| `webhookSecretSecretVersion` | `string` | Required. Immutable. SecretManager resource containing the webhook secret of a GitLab Enterprise ... |

### `GoogleDevtoolsCloudbuildV2OperationMetadata`

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

### `GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig`

ServiceDirectoryConfig represents Service Directory configuration for a connection.

| Property | Type | Description |
|----------|------|-------------|
| `service` | `string` | Required. The Service Directory service name. Format: projects/{project}/locations/{location}/nam... |

### `HttpBody`

Message that represents an arbitrary HTTP body. It should only be used for payload formats that can't be represented as JSON, such as raw binary or an HTML page. This message can be used both in streaming and non-streaming API methods in the request as well as the response. It can be used as a top-level request field, which is convenient if one wants to extract parameters from either the URL or HTTP template into the request fields and also want access to the raw HTTP body. Example: message GetResourceRequest { // A unique request id. string request_id = 1; // The raw HTTP body is bound to this field. google.api.HttpBody http_body = 2; } service ResourceService { rpc GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); } Example with streaming methods: service CaldavService { rpc GetCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); } Use of this type only changes how the request and response bodies are handled, all other features will continue to work unchanged.

| Property | Type | Description |
|----------|------|-------------|
| `contentType` | `string` | The HTTP Content-Type header value specifying the content type of the body. |
| `data` | `string` | The HTTP request/response body as raw binary. |
| `extensions` | `array<object>` | Application specific response metadata. Must be set in the first response for streaming APIs. |

### `InstallationState`

Describes stage and necessary actions to be taken by the user to complete the installation. Used for GitHub and GitHub Enterprise based connections.

| Property | Type | Description |
|----------|------|-------------|
| `actionUri` | `string` | Output only. Link to follow for next action. Empty string if the installation is already complete. |
| `message` | `string` | Output only. Message of what the user should do next to continue the installation. Empty string i... |
| `stage` | `string` | Output only. Current step of the installation process. |

### `ListConnectionsResponse`

Message for response to listing Connections.

| Property | Type | Description |
|----------|------|-------------|
| `connections` | `array<Connection>` | The list of Connections. |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListLocationsResponse`

The response message for Locations.ListLocations.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<Location>` | A list of locations that matches the specified filter in the request. |
| `nextPageToken` | `string` | The standard List next-page token. |

### `ListRepositoriesResponse`

Message for response to listing Repositories.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `repositories` | `array<Repository>` | The list of Repositories. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `OAuthCredential`

Represents an OAuth token of the account that authorized the Connection, and associated metadata.

| Property | Type | Description |
|----------|------|-------------|
| `oauthTokenSecretVersion` | `string` | Optional. A SecretManager resource containing the OAuth token that authorizes the Cloud Build con... |
| `username` | `string` | Output only. The username associated to this token. |

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
| `cancelRequested` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. Operations ... |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `statusDetail` | `string` | Output only. Human-readable status of the operation, if any. |
| `target` | `string` | Output only. Server-defined resource path for the target of the operation. |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `Param`

Param defined with name and value. PipelineRef can be used to refer to a specific instance of a Pipeline.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Name of the parameter. |
| `value` | `ParamValue` | Value of the parameter. |

### `ParamSpec`

ParamSpec defines parameters needed beyond typed inputs (such as resources). Parameter values are provided by users as inputs on a TaskRun or PipelineRun.

| Property | Type | Description |
|----------|------|-------------|
| `default` | `ParamValue` | The default value a parameter takes if no input value is supplied |
| `description` | `string` | Description of the ParamSpec |
| `name` | `string` | Name of the ParamSpec |
| `type` | `string` | Type of ParamSpec |

### `ParamValue`

Parameter value.

| Property | Type | Description |
|----------|------|-------------|
| `arrayVal` | `array<string>` | Value of the parameter if type is array. |
| `objectVal` | `object` | Optional. Value of the parameter if type is object. |
| `stringVal` | `string` | Value of the parameter if type is string. |
| `type` | `string` | Type of parameter. |

### `PipelineRef`

PipelineRef can be used to refer to a specific instance of a Pipeline.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Optional. Name of the Pipeline. |
| `params` | `array<Param>` | Params contains the parameters used to identify the referenced Tekton resource. Example entries m... |
| `resolver` | `string` | Resolver is the name of the resolver that should perform resolution of the referenced Tekton reso... |

### `PipelineResult`

A value produced by a Pipeline.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Output only. Description of the result. |
| `name` | `string` | Output only. Name of the result. |
| `type` | `string` | Output only. The type of data that the result holds. |
| `value` | `ResultValue` | Output only. Value of the result. |

### `PipelineRun`

Message describing PipelineRun object

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | User annotations. See https://google.aip.dev/128#annotations |
| `childReferences` | `array<ChildStatusReference>` | Output only. List of TaskRun and Run names and PipelineTask names for children of this PipelineRun. |
| `completionTime` | `string` | Output only. Time the pipeline completed. |
| `conditions` | `array<GoogleDevtoolsCloudbuildV2Condition>` | Output only. Kubernetes Conditions convention for PipelineRun status and error. |
| `createTime` | `string` | Output only. Time at which the request to create the `PipelineRun` was received. |
| `etag` | `string` | Needed for declarative-friendly resources. |
| `finallyStartTime` | `string` | Output only. FinallyStartTime is when all non-finally tasks have been completed and only finally ... |
| `gcbParams` | `object` | Output only. GCB default params. |
| `name` | `string` | Output only. The `PipelineRun` name with format `projects/{project}/locations/{location}/pipeline... |
| `params` | `array<Param>` | Params is a list of parameter names and values. |
| `pipelineRef` | `PipelineRef` | PipelineRef refer to a specific instance of a Pipeline. |
| `pipelineRunStatus` | `string` | Pipelinerun status the user can provide. Used for cancellation. |
| `pipelineSpec` | `PipelineSpec` | PipelineSpec defines the desired state of Pipeline. |
| `pipelineSpecYaml` | `string` | Output only. Inline pipelineSpec yaml string, used by workflow run requests. |
| `provenance` | `Provenance` | Optional. Provenance configuration. |
| `record` | `string` | Output only. The `Record` of this `PipelineRun`. Format: `projects/{project}/locations/{location}... |
| `resolvedPipelineSpec` | `PipelineSpec` | Output only. The exact PipelineSpec used to instantiate the run. |
| `results` | `array<PipelineRunResult>` | Optional. Output only. List of results written out by the pipeline's containers |
| `security` | `Security` | Optional. Security configuration. |
| `serviceAccount` | `string` | Service account used in the Pipeline. Deprecated; please use security.service_account instead. |
| `skippedTasks` | `array<SkippedTask>` | Output only. List of tasks that were skipped due to when expressions evaluating to false. |
| `startTime` | `string` | Output only. Time the pipeline is actually started. |
| `timeouts` | `TimeoutFields` | Time after which the Pipeline times out. Currently three keys are accepted in the map pipeline, t... |
| `uid` | `string` | Output only. A unique identifier for the `PipelineRun`. |
| `updateTime` | `string` | Output only. Time at which the request to update the `PipelineRun` was received. |
| `worker` | `Worker` | Optional. Worker configuration. |
| `workerPool` | `string` | Output only. The WorkerPool used to run this PipelineRun. |
| `workflow` | `string` | Output only. The Workflow used to create this PipelineRun. |
| `workspaces` | `array<WorkspaceBinding>` | Workspaces is a list of WorkspaceBindings from volumes to workspaces. |

### `PipelineRunResult`

PipelineRunResult used to describe the results of a pipeline

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Output only. Name of the TaskRun |
| `value` | `ResultValue` | Output only. Value of the result. |

### `PipelineSpec`

PipelineSpec defines the desired state of Pipeline.

| Property | Type | Description |
|----------|------|-------------|
| `finallyTasks` | `array<PipelineTask>` | List of Tasks that execute just before leaving the Pipeline i.e. either after all Tasks are finis... |
| `generatedYaml` | `string` | Output only. auto-generated yaml that is output only for display purpose for workflows using pipe... |
| `params` | `array<ParamSpec>` | List of parameters. |
| `results` | `array<PipelineResult>` | Optional. Output only. List of results written out by the pipeline's containers |
| `tasks` | `array<PipelineTask>` | List of Tasks that execute when this Pipeline is run. |
| `workspaces` | `array<PipelineWorkspaceDeclaration>` | Workspaces declares a set of named workspaces that are expected to be provided by a PipelineRun. |

### `PipelineTask`

PipelineTask defines a task in a Pipeline.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Name of the task. |
| `params` | `array<Param>` | Params is a list of parameter names and values. |
| `retries` | `integer` | Retries represents how many times this task should be retried in case of task failure. |
| `runAfter` | `array<string>` | RunAfter is the list of PipelineTask names that should be executed before this Task executes. (Us... |
| `taskRef` | `TaskRef` | Reference to a specific instance of a task. |
| `taskSpec` | `EmbeddedTask` | Spec to instantiate this TaskRun. |
| `timeout` | `string` | Time after which the TaskRun times out. Defaults to 1 hour. Specified TaskRun timeout should be l... |
| `whenExpressions` | `array<WhenExpression>` | Conditions that need to be true for the task to run. |
| `workspaces` | `array<WorkspacePipelineTaskBinding>` | Workspaces maps workspaces from the pipeline spec to the workspaces declared in the Task. |

### `PipelineWorkspaceDeclaration`

Workspaces declares a set of named workspaces that are expected to be provided by a PipelineRun.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Description is a human readable string describing how the workspace will be used in the Pipeline. |
| `name` | `string` | Name is the name of a workspace to be provided by a PipelineRun. |
| `optional` | `boolean` | Optional marks a Workspace as not being required in PipelineRuns. By default this field is false ... |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `auditConfigs` | `array<AuditConfig>` | Specifies cloud audit logging configuration for this policy. |
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `Probe`

Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.

| Property | Type | Description |
|----------|------|-------------|
| `exec` | `ExecAction` | Optional. Exec specifies the action to take. +optional |
| `periodSeconds` | `integer` | Optional. How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1.... |

### `PropertySpec`

PropertySpec holds information about a property in an object.

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | A type for the object. |

### `Provenance`

Provenance configuration.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `string` | Optional. Provenance push mode. |
| `region` | `string` | Optional. Provenance region. |
| `storage` | `string` | Optional. Where provenance is stored. |

### `Repository`

A repository associated to a parent connection.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. Allows clients to store small amounts of arbitrary data. |
| `createTime` | `string` | Output only. Server assigned timestamp for when the connection was created. |
| `etag` | `string` | This checksum is computed by the server based on the value of other fields, and may be sent on up... |
| `name` | `string` | Immutable. Resource name of the repository, in the format `projects/*/locations/*/connections/*/r... |
| `remoteUri` | `string` | Required. Git Clone HTTPS URI. |
| `updateTime` | `string` | Output only. Server assigned timestamp for when the connection was updated. |
| `webhookId` | `string` | Output only. External ID of the webhook created for the repository. |

### `ResultValue`

ResultValue holds different types of data for a single result.

| Property | Type | Description |
|----------|------|-------------|
| `arrayVal` | `array<string>` | Value of the result if type is array. |
| `objectVal` | `object` | Value of the result if type is object. |
| `stringVal` | `string` | Value of the result if type is string. |
| `type` | `string` | Output only. The type of data that the result holds. |

### `RunWorkflowCustomOperationMetadata`

Represents the custom metadata of the RunWorkflow long-running operation.

| Property | Type | Description |
|----------|------|-------------|
| `apiVersion` | `string` | Output only. API version used to start the operation. |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `pipelineRunId` | `string` | Output only. ID of the pipeline run created by RunWorkflow. |
| `requestedCancellation` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. Operations ... |
| `target` | `string` | Output only. Server-defined resource path for the target of the operation. |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `SecretVolumeSource`

Secret Volume Source.

| Property | Type | Description |
|----------|------|-------------|
| `secretName` | `string` | Name of the secret referenced by the WorkspaceBinding. |
| `secretVersion` | `string` | Optional. Resource name of the SecretVersion. In format: projects/*/secrets/*/versions/* |

### `Security`

Security configuration.

| Property | Type | Description |
|----------|------|-------------|
| `privilegeMode` | `string` | Optional. Privilege mode. |
| `serviceAccount` | `string` | IAM service account whose credentials will be used at runtime. |

### `SecurityContext`

Security options the container should be run with.

| Property | Type | Description |
|----------|------|-------------|
| `allowPrivilegeEscalation` | `boolean` | Optional. AllowPrivilegeEscalation controls whether a process can gain more privileges than its p... |
| `privileged` | `boolean` | Run container in privileged mode. |
| `runAsGroup` | `string` | Optional. The GID to run the entrypoint of the container process. Uses runtime default if unset. ... |
| `runAsNonRoot` | `boolean` | Optional. Indicates that the container must run as a non-root user. If true, the Kubelet will val... |
| `runAsUser` | `string` | Optional. The UID to run the entrypoint of the container process. Defaults to user specified in i... |

### `SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |
| `updateMask` | `string` | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mas... |

### `Sidecar`

Sidecars run alongside the Task's step containers.

| Property | Type | Description |
|----------|------|-------------|
| `args` | `array<string>` | Arguments to the entrypoint. |
| `command` | `array<string>` | Entrypoint array. |
| `env` | `array<EnvVar>` | List of environment variables to set in the container. |
| `image` | `string` | Docker image name. |
| `name` | `string` | Name of the Sidecar. |
| `readinessProbe` | `Probe` | Optional. Periodic probe of Sidecar service readiness. Container will be removed from service end... |
| `script` | `string` | The contents of an executable file to execute. |
| `securityContext` | `SecurityContext` | Optional. Security options the container should be run with. |
| `volumeMounts` | `array<VolumeMount>` | Pod volumes to mount into the container's filesystem. |
| `workingDir` | `string` | Container's working directory. |

### `SkippedTask`

SkippedTask is used to describe the Tasks that were skipped due to their When Expressions evaluating to False.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Name is the Pipeline Task name |
| `reason` | `string` | Output only. Reason is the cause of the PipelineTask being skipped. |
| `whenExpressions` | `array<WhenExpression>` | WhenExpressions is the list of checks guarding the execution of the PipelineTask |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `Step`

Step embeds the Container type, which allows it to include fields not provided by Container.

| Property | Type | Description |
|----------|------|-------------|
| `args` | `array<string>` | Arguments to the entrypoint. |
| `command` | `array<string>` | Entrypoint array. |
| `env` | `array<EnvVar>` | List of environment variables to set in the container. |
| `image` | `string` | Docker image name. |
| `name` | `string` | Name of the container specified as a DNS_LABEL. |
| `onError` | `string` | Optional. OnError defines the exiting behavior on error can be set to [ continue | stopAndFail ] |
| `params` | `array<Param>` | Optional. Optional parameters passed to the StepAction. |
| `ref` | `StepRef` | Optional. Optional reference to a remote StepAction. |
| `script` | `string` | The contents of an executable file to execute. |
| `securityContext` | `SecurityContext` | Optional. SecurityContext defines the security options the Step should be run with. If set, the f... |
| `timeout` | `string` | Time after which the Step times out. Defaults to never. |
| `volumeMounts` | `array<VolumeMount>` | Pod volumes to mount into the container's filesystem. |
| `workingDir` | `string` | Container's working directory. |

### `StepRef`

A reference to a remote Step, i.e. a StepAction.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Optional. Name of the step. |
| `params` | `array<Param>` | Optional. Parameters used to control the resolution. |
| `resolver` | `string` | Optional. Type of the resolver. |

### `StepTemplate`

StepTemplate can be used as the basis for all step containers within the Task, so that the steps inherit settings on the base container.

| Property | Type | Description |
|----------|------|-------------|
| `env` | `array<EnvVar>` | Optional. List of environment variables to set in the Step. Cannot be updated. |
| `volumeMounts` | `array<VolumeMount>` | Optional. Pod volumes to mount into the container's filesystem. |

### `TaskRef`

TaskRef can be used to refer to a specific instance of a task. PipelineRef can be used to refer to a specific instance of a Pipeline.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Optional. Name of the task. |
| `params` | `array<Param>` | Params contains the parameters used to identify the referenced Tekton resource. Example entries m... |
| `resolver` | `string` | Resolver is the name of the resolver that should perform resolution of the referenced Tekton reso... |

### `TaskResult`

TaskResult is used to describe the results of a task.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Description of the result. |
| `name` | `string` | Name of the result. |
| `properties` | `object` | When type is OBJECT, this map holds the names of fields inside that object along with the type of... |
| `type` | `string` | The type of data that the result holds. |
| `value` | `ParamValue` | Optional. Optionally used to initialize a Task's result with a Step's result. |

### `TaskSpec`

TaskSpec contains the Spec to instantiate a TaskRun.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Description of the task. |
| `managedSidecars` | `array<string>` | Sidecars that run alongside the Task’s step containers that should be added to this Task. |
| `params` | `array<ParamSpec>` | List of parameters. |
| `results` | `array<TaskResult>` | Values that this Task can output. |
| `sidecars` | `array<Sidecar>` | Sidecars that run alongside the Task's step containers. |
| `stepTemplate` | `StepTemplate` | Optional. StepTemplate can be used as the basis for all step containers within the Task, so that ... |
| `steps` | `array<Step>` | Steps of the task. |
| `volumes` | `array<VolumeSource>` | A collection of volumes that are available to mount into steps. |
| `workspaces` | `array<WorkspaceDeclaration>` | The volumes that this Task requires. |

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

### `TimeoutFields`

TimeoutFields allows granular specification of pipeline, task, and finally timeouts

| Property | Type | Description |
|----------|------|-------------|
| `finally` | `string` | Finally sets the maximum allowed duration of this pipeline's finally |
| `pipeline` | `string` | Pipeline sets the maximum allowed duration for execution of the entire pipeline. The sum of indiv... |
| `tasks` | `string` | Tasks sets the maximum allowed duration of this pipeline's tasks |

### `UserCredential`

Represents a personal access token that authorized the Connection, and associated metadata.

| Property | Type | Description |
|----------|------|-------------|
| `userTokenSecretVersion` | `string` | Required. A SecretManager resource containing the user token that authorizes the Cloud Build conn... |
| `username` | `string` | Output only. The username associated to this token. |

### `VolumeMount`

Pod volumes to mount into the container's filesystem.

| Property | Type | Description |
|----------|------|-------------|
| `mountPath` | `string` | Path within the container at which the volume should be mounted. Must not contain ':'. |
| `name` | `string` | Name of the volume. |
| `readOnly` | `boolean` | Mounted read-only if true, read-write otherwise (false or unspecified). |
| `subPath` | `string` | Path within the volume from which the container's volume should be mounted. Defaults to "" (volum... |
| `subPathExpr` | `string` | Expanded path within the volume from which the container's volume should be mounted. Behaves simi... |

### `VolumeSource`

Volumes available to mount.

| Property | Type | Description |
|----------|------|-------------|
| `emptyDir` | `EmptyDirVolumeSource` | A temporary directory that shares a pod's lifetime. |
| `name` | `string` | Name of the Volume. Must be a DNS_LABEL and unique within the pod. More info: https://kubernetes.... |

### `WhenExpression`

Conditions that need to be true for the task to run.

| Property | Type | Description |
|----------|------|-------------|
| `expressionOperator` | `string` | Operator that represents an Input's relationship to the values |
| `input` | `string` | Input is the string for guard checking which can be a static input or an output from a parent Task. |
| `values` | `array<string>` | Values is an array of strings, which is compared against the input, for guard checking. |

### `Worker`

Configuration for the worker.

| Property | Type | Description |
|----------|------|-------------|
| `machineType` | `string` | Optional. Machine type of a worker, default is "e2-standard-2". |

### `WorkspaceBinding`

WorkspaceBinding maps a workspace to a Volume. PipelineRef can be used to refer to a specific instance of a Pipeline.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Name of the workspace. |
| `secret` | `SecretVolumeSource` | Secret Volume Source. |
| `subPath` | `string` | Optional. SubPath is optionally a directory on the volume which should be used for this binding (... |

### `WorkspaceDeclaration`

WorkspaceDeclaration is a declaration of a volume that a Task requires.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Description is a human readable description of this volume. |
| `mountPath` | `string` | MountPath overrides the directory that the volume will be made available at. |
| `name` | `string` | Name is the name by which you can bind the volume at runtime. |
| `optional` | `boolean` | Optional. Optional marks a Workspace as not being required in TaskRuns. By default this field is ... |
| `readOnly` | `boolean` | ReadOnly dictates whether a mounted volume is writable. |

### `WorkspacePipelineTaskBinding`

WorkspacePipelineTaskBinding maps workspaces from the PipelineSpec to the workspaces declared in the Task.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Name of the workspace as declared by the task. |
| `subPath` | `string` | Optional. SubPath is optionally a directory on the volume which should be used for this binding (... |
| `workspace` | `string` | Name of the workspace declared by the pipeline. |

