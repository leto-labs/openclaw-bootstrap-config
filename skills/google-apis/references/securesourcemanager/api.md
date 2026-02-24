# Secure Source Manager API - API Reference

**Version**: `v1` | **Methods**: 61 | **Schemas**: 62

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `securesourcemanager.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `securesourcemanager.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `securesourcemanager.projects.locations.instances.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `securesourcemanager.projects.locations.instances.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `securesourcemanager.projects.locations.instances.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `securesourcemanager.projects.locations.instances.list` | GET | `v1/{+parent}/instances` | Lists Instances in a given project and location. |
| `securesourcemanager.projects.locations.instances.get` | GET | `v1/{+name}` | Gets details of a single instance. |
| `securesourcemanager.projects.locations.instances.create` | POST | `v1/{+parent}/instances` | Creates a new instance in a given project and location. |
| `securesourcemanager.projects.locations.instances.delete` | DELETE | `v1/{+name}` | Deletes a single instance. |
| `securesourcemanager.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `securesourcemanager.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `securesourcemanager.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `securesourcemanager.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `securesourcemanager.projects.locations.repositories.list` | GET | `v1/{+parent}/repositories` | Lists Repositories in a given project and location. The instance field is required in the query p... |
| `securesourcemanager.projects.locations.repositories.get` | GET | `v1/{+name}` | Gets metadata of a repository. |
| `securesourcemanager.projects.locations.repositories.create` | POST | `v1/{+parent}/repositories` | Creates a new repository in a given project and location. The Repository.Instance field is requir... |
| `securesourcemanager.projects.locations.repositories.patch` | PATCH | `v1/{+name}` | Updates the metadata of a repository. |
| `securesourcemanager.projects.locations.repositories.delete` | DELETE | `v1/{+name}` | Deletes a Repository. |
| `securesourcemanager.projects.locations.repositories.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Get IAM policy for a repository. |
| `securesourcemanager.projects.locations.repositories.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Set IAM policy on a repository. |
| `securesourcemanager.projects.locations.repositories.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Test IAM permissions on a repository. IAM permission checks are not required on this method. |
| `securesourcemanager.projects.locations.repositories.fetchTree` | GET | `v1/{+repository}:fetchTree` | Fetches a tree from a repository. |
| `securesourcemanager.projects.locations.repositories.fetchBlob` | GET | `v1/{+repository}:fetchBlob` | Fetches a blob from a repository. |
| `securesourcemanager.projects.locations.repositories.hooks.list` | GET | `v1/{+parent}/hooks` | Lists hooks in a given repository. |
| `securesourcemanager.projects.locations.repositories.hooks.get` | GET | `v1/{+name}` | Gets metadata of a hook. |
| `securesourcemanager.projects.locations.repositories.hooks.create` | POST | `v1/{+parent}/hooks` | Creates a new hook in a given repository. |
| `securesourcemanager.projects.locations.repositories.hooks.patch` | PATCH | `v1/{+name}` | Updates the metadata of a hook. |
| `securesourcemanager.projects.locations.repositories.hooks.delete` | DELETE | `v1/{+name}` | Deletes a Hook. |
| `securesourcemanager.projects.locations.repositories.branchRules.create` | POST | `v1/{+parent}/branchRules` | CreateBranchRule creates a branch rule in a given repository. |
| `securesourcemanager.projects.locations.repositories.branchRules.list` | GET | `v1/{+parent}/branchRules` | ListBranchRules lists branch rules in a given repository. |
| `securesourcemanager.projects.locations.repositories.branchRules.get` | GET | `v1/{+name}` | GetBranchRule gets a branch rule. |
| `securesourcemanager.projects.locations.repositories.branchRules.patch` | PATCH | `v1/{+name}` | UpdateBranchRule updates a branch rule. |
| `securesourcemanager.projects.locations.repositories.branchRules.delete` | DELETE | `v1/{+name}` | DeleteBranchRule deletes a branch rule. |
| `securesourcemanager.projects.locations.repositories.pullRequests.create` | POST | `v1/{+parent}/pullRequests` | Creates a pull request. |
| `securesourcemanager.projects.locations.repositories.pullRequests.get` | GET | `v1/{+name}` | Gets a pull request. |
| `securesourcemanager.projects.locations.repositories.pullRequests.list` | GET | `v1/{+parent}/pullRequests` | Lists pull requests in a repository. |
| `securesourcemanager.projects.locations.repositories.pullRequests.patch` | PATCH | `v1/{+name}` | Updates a pull request. |
| `securesourcemanager.projects.locations.repositories.pullRequests.merge` | POST | `v1/{+name}:merge` | Merges a pull request. |
| `securesourcemanager.projects.locations.repositories.pullRequests.open` | POST | `v1/{+name}:open` | Opens a pull request. |
| `securesourcemanager.projects.locations.repositories.pullRequests.close` | POST | `v1/{+name}:close` | Closes a pull request without merging. |
| `securesourcemanager.projects.locations.repositories.pullRequests.listFileDiffs` | GET | `v1/{+name}:listFileDiffs` | Lists a pull request's file diffs. |
| `securesourcemanager.projects.locations.repositories.pullRequests.pullRequestComments.get` | GET | `v1/{+name}` | Gets a pull request comment. |
| `securesourcemanager.projects.locations.repositories.pullRequests.pullRequestComments.list` | GET | `v1/{+parent}/pullRequestComments` | Lists pull request comments. |
| `securesourcemanager.projects.locations.repositories.pullRequests.pullRequestComments.create` | POST | `v1/{+parent}/pullRequestComments` | Creates a pull request comment. This function is used to create a single PullRequestComment of ty... |
| `securesourcemanager.projects.locations.repositories.pullRequests.pullRequestComments.patch` | PATCH | `v1/{+name}` | Updates a pull request comment. |
| `securesourcemanager.projects.locations.repositories.pullRequests.pullRequestComments.delete` | DELETE | `v1/{+name}` | Deletes a pull request comment. |
| `securesourcemanager.projects.locations.repositories.pullRequests.pullRequestComments.batchCreate` | POST | `v1/{+parent}/pullRequestComments:batchCreate` | Batch creates pull request comments. This function is used to create multiple PullRequestComments... |
| `securesourcemanager.projects.locations.repositories.pullRequests.pullRequestComments.resolve` | POST | `v1/{+parent}/pullRequestComments:resolve` | Resolves pull request comments. A list of PullRequestComment names must be provided. The PullRequ... |
| `securesourcemanager.projects.locations.repositories.pullRequests.pullRequestComments.unresolve` | POST | `v1/{+parent}/pullRequestComments:unresolve` | Unresolves pull request comments. A list of PullRequestComment names must be provided. The PullRe... |
| `securesourcemanager.projects.locations.repositories.issues.create` | POST | `v1/{+parent}/issues` | Creates an issue. |
| `securesourcemanager.projects.locations.repositories.issues.get` | GET | `v1/{+name}` | Gets an issue. |
| `securesourcemanager.projects.locations.repositories.issues.list` | GET | `v1/{+parent}/issues` | Lists issues in a repository. |
| `securesourcemanager.projects.locations.repositories.issues.patch` | PATCH | `v1/{+name}` | Updates a issue. |
| `securesourcemanager.projects.locations.repositories.issues.delete` | DELETE | `v1/{+name}` | Deletes an issue. |
| `securesourcemanager.projects.locations.repositories.issues.open` | POST | `v1/{+name}:open` | Opens an issue. |
| `securesourcemanager.projects.locations.repositories.issues.close` | POST | `v1/{+name}:close` | Closes an issue. |
| `securesourcemanager.projects.locations.repositories.issues.issueComments.create` | POST | `v1/{+parent}/issueComments` | Creates an issue comment. |
| `securesourcemanager.projects.locations.repositories.issues.issueComments.get` | GET | `v1/{+name}` | Gets an issue comment. |
| `securesourcemanager.projects.locations.repositories.issues.issueComments.list` | GET | `v1/{+parent}/issueComments` | Lists comments in an issue. |
| `securesourcemanager.projects.locations.repositories.issues.issueComments.patch` | PATCH | `v1/{+name}` | Updates an issue comment. |
| `securesourcemanager.projects.locations.repositories.issues.issueComments.delete` | DELETE | `v1/{+name}` | Deletes an issue comment. |

### `securesourcemanager.projects.locations.list`

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
const res = await securesourcemanager.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await securesourcemanager.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.instances.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await securesourcemanager.instances.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.instances.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await securesourcemanager.instances.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.instances.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await securesourcemanager.instances.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.instances.list`

**GET** `v1/{+parent}/instances`

Lists Instances in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for ListInstancesRequest. |
| `filter` | `string` | query | No | Optional. Filter for filtering results. |
| `orderBy` | `string` | query | No | Optional. Hint for how to order the results. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListInstancesResponse`

```typescript
const res = await securesourcemanager.instances.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.instances.get`

**GET** `v1/{+name}`

Gets details of a single instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. |

**Response**: `Instance`

```typescript
const res = await securesourcemanager.instances.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.instances.create`

**POST** `v1/{+parent}/instances`

Creates a new instance in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Value for parent. |
| `instanceId` | `string` | query | No | Required. ID of the instance to be created. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `Instance`

**Response**: `Operation`

```typescript
const res = await securesourcemanager.instances.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.instances.delete`

**DELETE** `v1/{+name}`

Deletes a single instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. |
| `force` | `boolean` | query | No | Optional. If set to true, will force the deletion of the instance. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `Operation`

```typescript
const res = await securesourcemanager.instances.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.operations.list`

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
const res = await securesourcemanager.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await securesourcemanager.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await securesourcemanager.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await securesourcemanager.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.list`

**GET** `v1/{+parent}/repositories`

Lists Repositories in a given project and location. The instance field is required in the query parameter for requests using the securesourcemanager.googleapis.com endpoint.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for ListRepositoriesRequest. |
| `filter` | `string` | query | No | Optional. Filter results. |
| `instance` | `string` | query | No | Optional. The name of the instance in which the repository is hosted, formatted as `projects/{project_number}/locatio... |
| `pageSize` | `integer` | query | No | Optional. Requested page size. If unspecified, a default size of 30 will be used. The maximum value is 100; values ab... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListRepositoriesResponse`

```typescript
const res = await securesourcemanager.repositories.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.get`

**GET** `v1/{+name}`

Gets metadata of a repository.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the repository to retrieve. The format is `projects/{project_number}/locations/{location_id}/reposi... |

**Response**: `Repository`

```typescript
const res = await securesourcemanager.repositories.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.create`

**POST** `v1/{+parent}/repositories`

Creates a new repository in a given project and location. The Repository.Instance field is required in the request body for requests using the securesourcemanager.googleapis.com endpoint.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project in which to create the repository. Values are of the form `projects/{project_number}/locations/... |
| `repositoryId` | `string` | query | No | Required. The ID to use for the repository, which will become the final component of the repository's resource name. ... |

**Request body**: `Repository`

**Response**: `Operation`

```typescript
const res = await securesourcemanager.repositories.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.patch`

**PATCH** `v1/{+name}`

Updates the metadata of a repository.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. A unique identifier for a repository. The name should be of the format: `projects/{project}/locations/{lo... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the repository resource by the update. The fi... |
| `validateOnly` | `boolean` | query | No | Optional. False by default. If set to true, the request is validated and the user is provided with an expected result... |

**Request body**: `Repository`

**Response**: `Operation`

```typescript
const res = await securesourcemanager.repositories.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.delete`

**DELETE** `v1/{+name}`

Deletes a Repository.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the repository to delete. The format is `projects/{project_number}/locations/{location_id}/reposito... |
| `allowMissing` | `boolean` | query | No | Optional. If set to true, and the repository is not found, the request will succeed but no action will be taken on th... |

**Response**: `Operation`

```typescript
const res = await securesourcemanager.repositories.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Get IAM policy for a repository.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await securesourcemanager.repositories.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Set IAM policy on a repository.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await securesourcemanager.repositories.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Test IAM permissions on a repository. IAM permission checks are not required on this method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await securesourcemanager.repositories.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.fetchTree`

**GET** `v1/{+repository}:fetchTree`

Fetches a tree from a repository.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `repository` | `string` | path | Yes | Required. The format is `projects/{project_number}/locations/{location_id}/repositories/{repository_id}`. Specifies t... |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, at most 10,000 items wil... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |
| `recursive` | `boolean` | query | No | Optional. If true, include all subfolders and their files in the response. If false, only the immediate children are ... |
| `ref` | `string` | query | No | Optional. `ref` can be a SHA-1 hash, a branch name, or a tag. Specifies which tree to fetch. If not specified, the de... |

**Response**: `FetchTreeResponse`

```typescript
const res = await securesourcemanager.repositories.fetchTree({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.fetchBlob`

**GET** `v1/{+repository}:fetchBlob`

Fetches a blob from a repository.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `repository` | `string` | path | Yes | Required. The format is `projects/{project_number}/locations/{location_id}/repositories/{repository_id}`. Specifies t... |
| `sha` | `string` | query | No | Required. The SHA-1 hash of the blob to retrieve. |

**Response**: `FetchBlobResponse`

```typescript
const res = await securesourcemanager.repositories.fetchBlob({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.hooks.list`

**GET** `v1/{+parent}/hooks`

Lists hooks in a given repository.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for ListHooksRequest. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. If unspecified, a default size of 30 will be used. The maximum value is 100; values ab... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListHooksResponse`

```typescript
const res = await securesourcemanager.hooks.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.hooks.get`

**GET** `v1/{+name}`

Gets metadata of a hook.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the hook to retrieve. The format is `projects/{project_number}/locations/{location_id}/repositories... |

**Response**: `Hook`

```typescript
const res = await securesourcemanager.hooks.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.hooks.create`

**POST** `v1/{+parent}/hooks`

Creates a new hook in a given repository.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The repository in which to create the hook. Values are of the form `projects/{project_number}/locations/{lo... |
| `hookId` | `string` | query | No | Required. The ID to use for the hook, which will become the final component of the hook's resource name. This value r... |

**Request body**: `Hook`

**Response**: `Operation`

```typescript
const res = await securesourcemanager.hooks.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.hooks.patch`

**PATCH** `v1/{+name}`

Updates the metadata of a hook.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. A unique identifier for a Hook. The name should be of the format: `projects/{project}/locations/{location... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the hook resource by the update. The fields s... |

**Request body**: `Hook`

**Response**: `Operation`

```typescript
const res = await securesourcemanager.hooks.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.hooks.delete`

**DELETE** `v1/{+name}`

Deletes a Hook.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the hook to delete. The format is `projects/{project_number}/locations/{location_id}/repositories/{... |

**Response**: `Operation`

```typescript
const res = await securesourcemanager.hooks.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.branchRules.create`

**POST** `v1/{+parent}/branchRules`

CreateBranchRule creates a branch rule in a given repository.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |
| `branchRuleId` | `string` | query | No |  |

**Request body**: `BranchRule`

**Response**: `Operation`

```typescript
const res = await securesourcemanager.branchRules.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.branchRules.list`

**GET** `v1/{+parent}/branchRules`

ListBranchRules lists branch rules in a given repository.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes |  |
| `pageSize` | `integer` | query | No | Optional. Requested page size. If unspecified, a default size of 30 will be used. The maximum value is 100; values ab... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListBranchRulesResponse`

```typescript
const res = await securesourcemanager.branchRules.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.branchRules.get`

**GET** `v1/{+name}`

GetBranchRule gets a branch rule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the repository to retrieve. The format is `projects/{project}/locations/{location}/repositories/{re... |

**Response**: `BranchRule`

```typescript
const res = await securesourcemanager.branchRules.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.branchRules.patch`

**PATCH** `v1/{+name}`

UpdateBranchRule updates a branch rule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. A unique identifier for a BranchRule. The name should be of the format: `projects/{project}/locations/{lo... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the branchRule resource by the update. The fi... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request and preview the review, but do not actually post it. (https://google.aip.dev/1... |

**Request body**: `BranchRule`

**Response**: `Operation`

```typescript
const res = await securesourcemanager.branchRules.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.branchRules.delete`

**DELETE** `v1/{+name}`

DeleteBranchRule deletes a branch rule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes |  |
| `allowMissing` | `boolean` | query | No | Optional. If set to true, and the branch rule is not found, the request will succeed but no action will be taken on t... |

**Response**: `Operation`

```typescript
const res = await securesourcemanager.branchRules.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.pullRequests.create`

**POST** `v1/{+parent}/pullRequests`

Creates a pull request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The repository that the pull request is created from. Format: `projects/{project_number}/locations/{locatio... |

**Request body**: `PullRequest`

**Response**: `Operation`

```typescript
const res = await securesourcemanager.pullRequests.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.pullRequests.get`

**GET** `v1/{+name}`

Gets a pull request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the pull request to retrieve. The format is `projects/{project}/locations/{location}/repositories/{... |

**Response**: `PullRequest`

```typescript
const res = await securesourcemanager.pullRequests.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.pullRequests.list`

**GET** `v1/{+parent}/pullRequests`

Lists pull requests in a repository.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The repository in which to list pull requests. Format: `projects/{project_number}/locations/{location_id}/r... |
| `pageSize` | `integer` | query | No | Optional. Requested page size. If unspecified, a default size of 30 will be used. The maximum value is 100; values ab... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListPullRequestsResponse`

```typescript
const res = await securesourcemanager.pullRequests.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.pullRequests.patch`

**PATCH** `v1/{+name}`

Updates a pull request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Identifier. A unique identifier for a PullRequest. The number appended at the end is generated by the se... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the pull request resource by the update. The ... |

**Request body**: `PullRequest`

**Response**: `Operation`

```typescript
const res = await securesourcemanager.pullRequests.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.pullRequests.merge`

**POST** `v1/{+name}:merge`

Merges a pull request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The pull request to merge. Format: `projects/{project_number}/locations/{location_id}/repositories/{reposit... |

**Request body**: `MergePullRequestRequest`

**Response**: `Operation`

```typescript
const res = await securesourcemanager.pullRequests.merge({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.pullRequests.open`

**POST** `v1/{+name}:open`

Opens a pull request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The pull request to open. Format: `projects/{project_number}/locations/{location_id}/repositories/{reposito... |

**Request body**: `OpenPullRequestRequest`

**Response**: `Operation`

```typescript
const res = await securesourcemanager.pullRequests.open({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.pullRequests.close`

**POST** `v1/{+name}:close`

Closes a pull request without merging.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The pull request to close. Format: `projects/{project_number}/locations/{location_id}/repositories/{reposit... |

**Request body**: `ClosePullRequestRequest`

**Response**: `Operation`

```typescript
const res = await securesourcemanager.pullRequests.close({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.pullRequests.listFileDiffs`

**GET** `v1/{+name}:listFileDiffs`

Lists a pull request's file diffs.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The pull request to list file diffs for. Format: `projects/{project_number}/locations/{location_id}/reposit... |
| `pageSize` | `integer` | query | No | Optional. Requested page size. If unspecified, a default size of 30 will be used. The maximum value is 100; values ab... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListPullRequestFileDiffsResponse`

```typescript
const res = await securesourcemanager.pullRequests.listFileDiffs({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.pullRequests.pullRequestComments.get`

**GET** `v1/{+name}`

Gets a pull request comment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the pull request comment to retrieve. The format is `projects/{project_number}/locations/{location_... |

**Response**: `PullRequestComment`

```typescript
const res = await securesourcemanager.pullRequestComments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.pullRequests.pullRequestComments.list`

**GET** `v1/{+parent}/pullRequestComments`

Lists pull request comments.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The pull request in which to list pull request comments. Format: `projects/{project_number}/locations/{loca... |
| `pageSize` | `integer` | query | No | Optional. Requested page size. If unspecified, a default size of 30 will be used. The maximum value is 100; values ab... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListPullRequestCommentsResponse`

```typescript
const res = await securesourcemanager.pullRequestComments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.pullRequests.pullRequestComments.create`

**POST** `v1/{+parent}/pullRequestComments`

Creates a pull request comment. This function is used to create a single PullRequestComment of type Comment, or a single PullRequestComment of type Code that's replying to another PullRequestComment of type Code. Use BatchCreatePullRequestComments to create multiple PullRequestComments for code reviews.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The pull request in which to create the pull request comment. Format: `projects/{project_number}/locations/... |

**Request body**: `PullRequestComment`

**Response**: `Operation`

```typescript
const res = await securesourcemanager.pullRequestComments.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.pullRequests.pullRequestComments.patch`

**PATCH** `v1/{+name}`

Updates a pull request comment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Unique identifier for the pull request comment. The comment id is generated by the server. Format: `proje... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the pull request comment resource by the upda... |

**Request body**: `PullRequestComment`

**Response**: `Operation`

```typescript
const res = await securesourcemanager.pullRequestComments.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.pullRequests.pullRequestComments.delete`

**DELETE** `v1/{+name}`

Deletes a pull request comment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the pull request comment to delete. The format is `projects/{project_number}/locations/{location_id... |

**Response**: `Operation`

```typescript
const res = await securesourcemanager.pullRequestComments.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.pullRequests.pullRequestComments.batchCreate`

**POST** `v1/{+parent}/pullRequestComments:batchCreate`

Batch creates pull request comments. This function is used to create multiple PullRequestComments for code review. There needs to be exactly one PullRequestComment of type Review, and at most 100 PullRequestComments of type Code per request. The Position of the code comments must be unique within the request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The pull request in which to create the pull request comments. Format: `projects/{project_number}/locations... |

**Request body**: `BatchCreatePullRequestCommentsRequest`

**Response**: `Operation`

```typescript
const res = await securesourcemanager.pullRequestComments.batchCreate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.pullRequests.pullRequestComments.resolve`

**POST** `v1/{+parent}/pullRequestComments:resolve`

Resolves pull request comments. A list of PullRequestComment names must be provided. The PullRequestComment names must be in the same conversation thread. If auto_fill is set, all comments in the conversation thread will be resolved.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The pull request in which to resolve the pull request comments. Format: `projects/{project_number}/location... |

**Request body**: `ResolvePullRequestCommentsRequest`

**Response**: `Operation`

```typescript
const res = await securesourcemanager.pullRequestComments.resolve({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.pullRequests.pullRequestComments.unresolve`

**POST** `v1/{+parent}/pullRequestComments:unresolve`

Unresolves pull request comments. A list of PullRequestComment names must be provided. The PullRequestComment names must be in the same conversation thread. If auto_fill is set, all comments in the conversation thread will be unresolved.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The pull request in which to resolve the pull request comments. Format: `projects/{project_number}/location... |

**Request body**: `UnresolvePullRequestCommentsRequest`

**Response**: `Operation`

```typescript
const res = await securesourcemanager.pullRequestComments.unresolve({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.issues.create`

**POST** `v1/{+parent}/issues`

Creates an issue.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The repository in which to create the issue. Format: `projects/{project_number}/locations/{location_id}/rep... |

**Request body**: `Issue`

**Response**: `Operation`

```typescript
const res = await securesourcemanager.issues.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.issues.get`

**GET** `v1/{+name}`

Gets an issue.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the issue to retrieve. The format is `projects/{project}/locations/{location}/repositories/{reposit... |

**Response**: `Issue`

```typescript
const res = await securesourcemanager.issues.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.issues.list`

**GET** `v1/{+parent}/issues`

Lists issues in a repository.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The repository in which to list issues. Format: `projects/{project_number}/locations/{location_id}/reposito... |
| `filter` | `string` | query | No | Optional. Used to filter the resulting issues list. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. If unspecified, a default size of 30 will be used. The maximum value is 100; values ab... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListIssuesResponse`

```typescript
const res = await securesourcemanager.issues.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.issues.patch`

**PATCH** `v1/{+name}`

Updates a issue.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Unique identifier for an issue. The issue id is generated by the server. Format: `projects/{project}/loca... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the issue resource by the update. The fields ... |

**Request body**: `Issue`

**Response**: `Operation`

```typescript
const res = await securesourcemanager.issues.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.issues.delete`

**DELETE** `v1/{+name}`

Deletes an issue.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the issue to delete. The format is `projects/{project_number}/locations/{location_id}/repositories/... |
| `etag` | `string` | query | No | Optional. The current etag of the issue. If the etag is provided and does not match the current etag of the issue, de... |

**Response**: `Operation`

```typescript
const res = await securesourcemanager.issues.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.issues.open`

**POST** `v1/{+name}:open`

Opens an issue.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the issue to open. The format is `projects/{project_number}/locations/{location_id}/repositories/{r... |

**Request body**: `OpenIssueRequest`

**Response**: `Operation`

```typescript
const res = await securesourcemanager.issues.open({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.issues.close`

**POST** `v1/{+name}:close`

Closes an issue.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the issue to close. The format is `projects/{project_number}/locations/{location_id}/repositories/{... |

**Request body**: `CloseIssueRequest`

**Response**: `Operation`

```typescript
const res = await securesourcemanager.issues.close({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.issues.issueComments.create`

**POST** `v1/{+parent}/issueComments`

Creates an issue comment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The issue in which to create the issue comment. Format: `projects/{project_number}/locations/{location_id}/... |

**Request body**: `IssueComment`

**Response**: `Operation`

```typescript
const res = await securesourcemanager.issueComments.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.issues.issueComments.get`

**GET** `v1/{+name}`

Gets an issue comment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the issue comment to retrieve. The format is `projects/{project}/locations/{location}/repositories/... |

**Response**: `IssueComment`

```typescript
const res = await securesourcemanager.issueComments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.issues.issueComments.list`

**GET** `v1/{+parent}/issueComments`

Lists comments in an issue.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The issue in which to list the comments. Format: `projects/{project_number}/locations/{location_id}/reposit... |
| `pageSize` | `integer` | query | No | Optional. Requested page size. If unspecified, a default size of 30 will be used. The maximum value is 100; values ab... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListIssueCommentsResponse`

```typescript
const res = await securesourcemanager.issueComments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.issues.issueComments.patch`

**PATCH** `v1/{+name}`

Updates an issue comment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Unique identifier for an issue comment. The comment id is generated by the server. Format: `projects/{pro... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the issue comment resource by the update. The... |

**Request body**: `IssueComment`

**Response**: `Operation`

```typescript
const res = await securesourcemanager.issueComments.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `securesourcemanager.projects.locations.repositories.issues.issueComments.delete`

**DELETE** `v1/{+name}`

Deletes an issue comment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the issue comment to delete. The format is `projects/{project_number}/locations/{location_id}/repos... |

**Response**: `Operation`

```typescript
const res = await securesourcemanager.issueComments.delete({
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

### `BatchCreatePullRequestCommentsRequest`

The request to batch create pull request comments.

| Property | Type | Description |
|----------|------|-------------|
| `requests` | `array<CreatePullRequestCommentRequest>` | Required. The request message specifying the resources to create. There should be exactly one Cre... |

### `BatchCreatePullRequestCommentsResponse`

The response to batch create pull request comments.

| Property | Type | Description |
|----------|------|-------------|
| `pullRequestComments` | `array<PullRequestComment>` | The list of pull request comments created. |

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `Branch`

Branch represents a branch involved in a pull request.

| Property | Type | Description |
|----------|------|-------------|
| `ref` | `string` | Required. Name of the branch. |
| `sha` | `string` | Output only. The commit at the tip of the branch. |

### `BranchRule`

Metadata of a BranchRule. BranchRule is the protection rule to enforce pre-defined rules on designated branches within a repository.

| Property | Type | Description |
|----------|------|-------------|
| `allowStaleReviews` | `boolean` | Optional. Determines if allow stale reviews or approvals before merging to the branch. |
| `annotations` | `object` | Optional. User annotations. These attributes can only be set and used by the user. See https://go... |
| `createTime` | `string` | Output only. Create timestamp. |
| `disabled` | `boolean` | Optional. Determines if the branch rule is disabled or not. |
| `etag` | `string` | Optional. This checksum is computed by the server based on the value of other fields, and may be ... |
| `includePattern` | `string` | Optional. The pattern of the branch that can match to this BranchRule. Specified as regex. .* for... |
| `minimumApprovalsCount` | `integer` | Optional. The minimum number of approvals required for the branch rule to be matched. |
| `minimumReviewsCount` | `integer` | Optional. The minimum number of reviews required for the branch rule to be matched. |
| `name` | `string` | Identifier. A unique identifier for a BranchRule. The name should be of the format: `projects/{pr... |
| `requireCommentsResolved` | `boolean` | Optional. Determines if require comments resolved before merging to the branch. |
| `requireLinearHistory` | `boolean` | Optional. Determines if require linear history before merging to the branch. |
| `requirePullRequest` | `boolean` | Optional. Determines if the branch rule requires a pull request or not. |
| `requiredStatusChecks` | `array<Check>` | Optional. List of required status checks before merging to the branch. |
| `uid` | `string` | Output only. Unique identifier of the repository. |
| `updateTime` | `string` | Output only. Update timestamp. |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `Check`

Check is a type for status check.

| Property | Type | Description |
|----------|------|-------------|
| `context` | `string` | Required. The context of the check. |

### `CloseIssueRequest`

The request to close an issue.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Optional. The current etag of the issue. If the etag is provided and does not match the current e... |

### `ClosePullRequestRequest`

ClosePullRequestRequest is the request to close a pull request.

### `Code`

The comment on a code line.

| Property | Type | Description |
|----------|------|-------------|
| `body` | `string` | Required. The comment body. |
| `effectiveCommitSha` | `string` | Output only. The effective commit sha this code comment is pointing to. |
| `effectiveRootComment` | `string` | Output only. The root comment of the conversation, derived from the reply field. |
| `position` | `Position` | Optional. The position of the comment. |
| `reply` | `string` | Optional. Input only. The PullRequestComment resource name that this comment is replying to. |
| `resolved` | `boolean` | Output only. Boolean indicator if the comment is resolved. |

### `Comment`

The general pull request comment.

| Property | Type | Description |
|----------|------|-------------|
| `body` | `string` | Required. The comment body. |

### `CreatePullRequestCommentRequest`

The request to create a pull request comment.

| Property | Type | Description |
|----------|------|-------------|
| `parent` | `string` | Required. The pull request in which to create the pull request comment. Format: `projects/{projec... |
| `pullRequestComment` | `PullRequestComment` | Required. The pull request comment to create. |

### `CustomHostConfig`

Custom host config for the instance.

| Property | Type | Description |
|----------|------|-------------|
| `api` | `string` | Required. The custom API hostname for the instance, e.g., "api.source.internal.mycompany.com" |
| `gitHttp` | `string` | Required. The custom git http hostname for the instance, e.g., "git.source.internal.mycompany.com" |
| `gitSsh` | `string` | Required. The custom git ssh hostname for the instance, e.g., "ssh.source.internal.mycompany.com" |
| `html` | `string` | Required. The custom UI hostname for the instance, e.g., "git.source.internal.mycompany.com" |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `FetchBlobResponse`

Response message containing the content of a blob.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `string` | The content of the blob, encoded as base64. |
| `sha` | `string` | The SHA-1 hash of the blob. |

### `FetchTreeResponse`

Response message containing a list of TreeEntry objects.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `treeEntries` | `array<TreeEntry>` | The list of TreeEntry objects. |

### `FileDiff`

Metadata of a FileDiff. FileDiff represents a single file diff in a pull request.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` | Output only. The action taken on the file (eg. added, modified, deleted). |
| `name` | `string` | Output only. The name of the file. |
| `patch` | `string` | Output only. The git patch containing the file changes. |
| `sha` | `string` | Output only. The commit pointing to the file changes. |

### `Hook`

Metadata of a Secure Source Manager Hook.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Create timestamp. |
| `disabled` | `boolean` | Optional. Determines if the hook disabled or not. Set to true to stop sending traffic. |
| `events` | `array<string>` | Optional. The events that trigger hook on. |
| `name` | `string` | Identifier. A unique identifier for a Hook. The name should be of the format: `projects/{project}... |
| `pushOption` | `PushOption` | Optional. The trigger option for push events. |
| `sensitiveQueryString` | `string` | Optional. The sensitive query string to be appended to the target URI. |
| `targetUri` | `string` | Required. The target URI to which the payloads will be delivered. |
| `uid` | `string` | Output only. Unique identifier of the hook. |
| `updateTime` | `string` | Output only. Update timestamp. |

### `HostConfig`

HostConfig has different instance endpoints.

| Property | Type | Description |
|----------|------|-------------|
| `api` | `string` | Output only. API hostname. |
| `gitHttp` | `string` | Output only. Git HTTP hostname. |
| `gitSsh` | `string` | Output only. Git SSH hostname. |
| `html` | `string` | Output only. HTML hostname. |

### `InitialConfig`

Repository initialization configuration.

| Property | Type | Description |
|----------|------|-------------|
| `defaultBranch` | `string` | Default branch name of the repository. |
| `gitignores` | `array<string>` | List of gitignore template names user can choose from. Valid values: actionscript, ada, agda, and... |
| `license` | `string` | License template name user can choose from. Valid values: license-0bsd, license-389-exception, aa... |
| `readme` | `string` | README template name. Valid template name(s) are: default. |

### `Instance`

A resource that represents a Secure Source Manager instance.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Create timestamp. |
| `hostConfig` | `HostConfig` | Output only. A list of hostnames for this instance. |
| `kmsKey` | `string` | Optional. Immutable. Customer-managed encryption key name, in the format projects/*/locations/*/k... |
| `labels` | `object` | Optional. Labels as key value pairs. Keys and values can contain only lowercase letters, numeric ... |
| `name` | `string` | Identifier. A unique identifier for an instance. The name should be of the format: `projects/{pro... |
| `privateConfig` | `PrivateConfig` | Optional. Private settings for private instance. |
| `state` | `string` | Output only. Current state of the instance. |
| `stateNote` | `string` | Output only. An optional field providing information about the current instance state. |
| `updateTime` | `string` | Output only. Update timestamp. |
| `workforceIdentityFederationConfig` | `WorkforceIdentityFederationConfig` | Optional. Configuration for Workforce Identity Federation to support third party identity provide... |

### `Issue`

Metadata of an Issue.

| Property | Type | Description |
|----------|------|-------------|
| `body` | `string` | Optional. Issue body. Provides a detailed description of the issue. |
| `closeTime` | `string` | Output only. Close timestamp (if closed). Cleared when is re-opened. |
| `createTime` | `string` | Output only. Creation timestamp. |
| `etag` | `string` | Optional. This checksum is computed by the server based on the value of other fields, and may be ... |
| `name` | `string` | Identifier. Unique identifier for an issue. The issue id is generated by the server. Format: `pro... |
| `state` | `string` | Output only. State of the issue. |
| `title` | `string` | Required. Issue title. |
| `updateTime` | `string` | Output only. Last updated timestamp. |

### `IssueComment`

IssueComment represents a comment on an issue.

| Property | Type | Description |
|----------|------|-------------|
| `body` | `string` | Required. The comment body. |
| `createTime` | `string` | Output only. Creation timestamp. |
| `name` | `string` | Identifier. Unique identifier for an issue comment. The comment id is generated by the server. Fo... |
| `updateTime` | `string` | Output only. Last updated timestamp. |

### `ListBranchRulesResponse`

ListBranchRulesResponse is the response to listing branchRules.

| Property | Type | Description |
|----------|------|-------------|
| `branchRules` | `array<BranchRule>` | The list of branch rules. |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |

### `ListHooksResponse`

ListHooksResponse is response to list hooks.

| Property | Type | Description |
|----------|------|-------------|
| `hooks` | `array<Hook>` | The list of hooks. |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |

### `ListInstancesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `instances` | `array<Instance>` | The list of instances. |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListIssueCommentsResponse`

The response to list issue comments.

| Property | Type | Description |
|----------|------|-------------|
| `issueComments` | `array<IssueComment>` | The list of issue comments. |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |

### `ListIssuesResponse`

The response to list issues.

| Property | Type | Description |
|----------|------|-------------|
| `issues` | `array<Issue>` | The list of issues. |
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

### `ListPullRequestCommentsResponse`

The response to list pull request comments.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token to set as page_token to retrieve the next page. If this field is omitted, there are no su... |
| `pullRequestComments` | `array<PullRequestComment>` | The list of pull request comments. |

### `ListPullRequestFileDiffsResponse`

ListPullRequestFileDiffsResponse is the response containing file diffs returned from ListPullRequestFileDiffs.

| Property | Type | Description |
|----------|------|-------------|
| `fileDiffs` | `array<FileDiff>` | The list of pull request file diffs. |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |

### `ListPullRequestsResponse`

ListPullRequestsResponse is the response to list pull requests.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `pullRequests` | `array<PullRequest>` | The list of pull requests. |

### `ListRepositoriesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `repositories` | `array<Repository>` | The list of repositories. |

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `MergePullRequestRequest`

MergePullRequestRequest is the request to merge a pull request.

### `OpenIssueRequest`

The request to open an issue.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Optional. The current etag of the issue. If the etag is provided and does not match the current e... |

### `OpenPullRequestRequest`

OpenPullRequestRequest is the request to open a pull request.

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

### `Position`

The position of the code comment.

| Property | Type | Description |
|----------|------|-------------|
| `line` | `string` | Required. The line number of the comment. Positive value means it's on the new side of the diff, ... |
| `path` | `string` | Required. The path of the file. |

### `PrivateConfig`

PrivateConfig includes settings for private instance.

| Property | Type | Description |
|----------|------|-------------|
| `caPool` | `string` | Optional. Immutable. CA pool resource, resource must in the format of `projects/{project}/locatio... |
| `customHostConfig` | `CustomHostConfig` | Optional. Custom host config for the instance. |
| `httpServiceAttachment` | `string` | Output only. Service Attachment for HTTP, resource is in the format of `projects/{project}/region... |
| `isPrivate` | `boolean` | Required. Immutable. Indicate if it's private instance. |
| `pscAllowedProjects` | `array<string>` | Optional. Additional allowed projects for setting up PSC connections. Instance host project is au... |
| `sshServiceAttachment` | `string` | Output only. Service Attachment for SSH, resource is in the format of `projects/{project}/regions... |

### `PullRequest`

Metadata of a PullRequest. PullRequest is the request from a user to merge a branch (head) into another branch (base).

| Property | Type | Description |
|----------|------|-------------|
| `base` | `Branch` | Required. The branch to merge changes in. |
| `body` | `string` | Optional. The pull request body. Provides a detailed description of the changes. |
| `closeTime` | `string` | Output only. Close timestamp (if closed or merged). Cleared when pull request is re-opened. |
| `createTime` | `string` | Output only. Creation timestamp. |
| `head` | `Branch` | Immutable. The branch containing the changes to be merged. |
| `name` | `string` | Output only. Identifier. A unique identifier for a PullRequest. The number appended at the end is... |
| `state` | `string` | Output only. State of the pull request (open, closed or merged). |
| `title` | `string` | Required. The pull request title. |
| `updateTime` | `string` | Output only. Last updated timestamp. |

### `PullRequestComment`

PullRequestComment represents a comment on a pull request.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `Code` | Optional. The comment on a code line. |
| `comment` | `Comment` | Optional. The general pull request comment. |
| `createTime` | `string` | Output only. Creation timestamp. |
| `name` | `string` | Identifier. Unique identifier for the pull request comment. The comment id is generated by the se... |
| `review` | `Review` | Optional. The review summary comment. |
| `updateTime` | `string` | Output only. Last updated timestamp. |

### `PushOption`

| Property | Type | Description |
|----------|------|-------------|
| `branchFilter` | `string` | Optional. Trigger hook for matching branches only. Specified as glob pattern. If empty or *, even... |

### `Repository`

Metadata of a Secure Source Manager repository.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Create timestamp. |
| `description` | `string` | Optional. Description of the repository, which cannot exceed 500 characters. |
| `etag` | `string` | Optional. This checksum is computed by the server based on the value of other fields, and may be ... |
| `initialConfig` | `InitialConfig` | Input only. Initial configurations for the repository. |
| `instance` | `string` | Optional. The name of the instance in which the repository is hosted, formatted as `projects/{pro... |
| `name` | `string` | Identifier. A unique identifier for a repository. The name should be of the format: `projects/{pr... |
| `uid` | `string` | Output only. Unique identifier of the repository. |
| `updateTime` | `string` | Output only. Update timestamp. |
| `uris` | `URIs` | Output only. URIs for the repository. |

### `ResolvePullRequestCommentsRequest`

The request to resolve multiple pull request comments.

| Property | Type | Description |
|----------|------|-------------|
| `autoFill` | `boolean` | Optional. If set, at least one comment in a thread is required, rest of the comments in the same ... |
| `names` | `array<string>` | Required. The names of the pull request comments to resolve. Format: `projects/{project_number}/l... |

### `ResolvePullRequestCommentsResponse`

The response to resolve multiple pull request comments.

| Property | Type | Description |
|----------|------|-------------|
| `pullRequestComments` | `array<PullRequestComment>` | The list of pull request comments resolved. |

### `Review`

The review summary comment.

| Property | Type | Description |
|----------|------|-------------|
| `actionType` | `string` | Required. The review action type. |
| `body` | `string` | Optional. The comment body. |
| `effectiveCommitSha` | `string` | Output only. The effective commit sha this review is pointing to. |

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

### `TreeEntry`

Represents an entry within a tree structure (like a Git tree).

| Property | Type | Description |
|----------|------|-------------|
| `mode` | `string` | Output only. The file mode as a string (e.g., "100644"). Indicates file type. Output-only. |
| `path` | `string` | Output only. The path of the file or directory within the tree (e.g., "src/main/java/MyClass.java... |
| `sha` | `string` | Output only. The SHA-1 hash of the object (unique identifier). Output-only. |
| `size` | `string` | Output only. The size of the object in bytes (only for blobs). Output-only. |
| `type` | `string` | Output only. The type of the object (TREE, BLOB, COMMIT). Output-only. |

### `URIs`

URIs for the repository.

| Property | Type | Description |
|----------|------|-------------|
| `api` | `string` | Output only. API is the URI for API access. |
| `gitHttps` | `string` | Output only. git_https is the git HTTPS URI for git operations. |
| `html` | `string` | Output only. HTML is the URI for user to view the repository in a browser. |

### `UnresolvePullRequestCommentsRequest`

The request to unresolve multiple pull request comments.

| Property | Type | Description |
|----------|------|-------------|
| `autoFill` | `boolean` | Optional. If set, at least one comment in a thread is required, rest of the comments in the same ... |
| `names` | `array<string>` | Required. The names of the pull request comments to unresolve. Format: `projects/{project_number}... |

### `UnresolvePullRequestCommentsResponse`

The response to unresolve multiple pull request comments.

| Property | Type | Description |
|----------|------|-------------|
| `pullRequestComments` | `array<PullRequestComment>` | The list of pull request comments unresolved. |

### `WorkforceIdentityFederationConfig`

WorkforceIdentityFederationConfig allows this instance to support users from external identity providers.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Optional. Immutable. Whether Workforce Identity Federation is enabled. |

