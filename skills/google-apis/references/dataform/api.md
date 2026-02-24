# Dataform API - API Reference

**Version**: `v1` | **Methods**: 72 | **Schemas**: 116

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `dataform.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `dataform.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `dataform.projects.locations.getConfig` | GET | `v1/{+name}` | Get default config for a given project and location. |
| `dataform.projects.locations.updateConfig` | PATCH | `v1/{+name}` | Update default config for a given project and location. **Note:** *This method does not fully imp... |
| `dataform.projects.locations.repositories.computeAccessTokenStatus` | GET | `v1/{+name}:computeAccessTokenStatus` | Computes a Repository's Git access token status. |
| `dataform.projects.locations.repositories.get` | GET | `v1/{+name}` | Fetches a single Repository. |
| `dataform.projects.locations.repositories.readFile` | GET | `v1/{+name}:readFile` | Returns the contents of a file (inside a Repository). The Repository must not have a value for `g... |
| `dataform.projects.locations.repositories.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `dataform.projects.locations.repositories.delete` | DELETE | `v1/{+name}` | Deletes a single Repository. |
| `dataform.projects.locations.repositories.fetchHistory` | GET | `v1/{+name}:fetchHistory` | Fetches a Repository's history of commits. The Repository must not have a value for `git_remote_s... |
| `dataform.projects.locations.repositories.patch` | PATCH | `v1/{+name}` | Updates a single Repository. **Note:** *This method does not fully implement [AIP/134](https://go... |
| `dataform.projects.locations.repositories.list` | GET | `v1/{+parent}/repositories` | Lists Repositories in a given project and location. **Note:** *This method can return repositorie... |
| `dataform.projects.locations.repositories.fetchRemoteBranches` | GET | `v1/{+name}:fetchRemoteBranches` | Fetches a Repository's remote branches. |
| `dataform.projects.locations.repositories.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `dataform.projects.locations.repositories.queryDirectoryContents` | GET | `v1/{+name}:queryDirectoryContents` | Returns the contents of a given Repository directory. The Repository must not have a value for `g... |
| `dataform.projects.locations.repositories.commit` | POST | `v1/{+name}:commit` | Applies a Git commit to a Repository. The Repository must not have a value for `git_remote_settin... |
| `dataform.projects.locations.repositories.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `dataform.projects.locations.repositories.create` | POST | `v1/{+parent}/repositories` | Creates a new Repository in a given project and location. |
| `dataform.projects.locations.repositories.releaseConfigs.create` | POST | `v1/{+parent}/releaseConfigs` | Creates a new ReleaseConfig in a given Repository. |
| `dataform.projects.locations.repositories.releaseConfigs.delete` | DELETE | `v1/{+name}` | Deletes a single ReleaseConfig. |
| `dataform.projects.locations.repositories.releaseConfigs.patch` | PATCH | `v1/{+name}` | Updates a single ReleaseConfig. **Note:** *This method does not fully implement [AIP/134](https:/... |
| `dataform.projects.locations.repositories.releaseConfigs.list` | GET | `v1/{+parent}/releaseConfigs` | Lists ReleaseConfigs in a given Repository. |
| `dataform.projects.locations.repositories.releaseConfigs.get` | GET | `v1/{+name}` | Fetches a single ReleaseConfig. |
| `dataform.projects.locations.repositories.compilationResults.get` | GET | `v1/{+name}` | Fetches a single CompilationResult. |
| `dataform.projects.locations.repositories.compilationResults.list` | GET | `v1/{+parent}/compilationResults` | Lists CompilationResults in a given Repository. |
| `dataform.projects.locations.repositories.compilationResults.create` | POST | `v1/{+parent}/compilationResults` | Creates a new CompilationResult in a given project and location. |
| `dataform.projects.locations.repositories.compilationResults.query` | GET | `v1/{+name}:query` | Returns CompilationResultActions in a given CompilationResult. |
| `dataform.projects.locations.repositories.workflowConfigs.create` | POST | `v1/{+parent}/workflowConfigs` | Creates a new WorkflowConfig in a given Repository. |
| `dataform.projects.locations.repositories.workflowConfigs.delete` | DELETE | `v1/{+name}` | Deletes a single WorkflowConfig. |
| `dataform.projects.locations.repositories.workflowConfigs.get` | GET | `v1/{+name}` | Fetches a single WorkflowConfig. |
| `dataform.projects.locations.repositories.workflowConfigs.patch` | PATCH | `v1/{+name}` | Updates a single WorkflowConfig. **Note:** *This method does not fully implement [AIP/134](https:... |
| `dataform.projects.locations.repositories.workflowConfigs.list` | GET | `v1/{+parent}/workflowConfigs` | Lists WorkflowConfigs in a given Repository. |
| `dataform.projects.locations.repositories.workspaces.fetchGitAheadBehind` | GET | `v1/{+name}:fetchGitAheadBehind` | Fetches Git ahead/behind against a remote branch. |
| `dataform.projects.locations.repositories.workspaces.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `dataform.projects.locations.repositories.workspaces.reset` | POST | `v1/{+name}:reset` | Performs a Git reset for uncommitted files in a Workspace. |
| `dataform.projects.locations.repositories.workspaces.push` | POST | `v1/{+name}:push` | Pushes Git commits from a Workspace to the Repository's remote. |
| `dataform.projects.locations.repositories.workspaces.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `dataform.projects.locations.repositories.workspaces.get` | GET | `v1/{+name}` | Fetches a single Workspace. |
| `dataform.projects.locations.repositories.workspaces.readFile` | GET | `v1/{+workspace}:readFile` | Returns the contents of a file (inside a Workspace). |
| `dataform.projects.locations.repositories.workspaces.list` | GET | `v1/{+parent}/workspaces` | Lists Workspaces in a given Repository. |
| `dataform.projects.locations.repositories.workspaces.moveDirectory` | POST | `v1/{+workspace}:moveDirectory` | Moves a directory (inside a Workspace), and all of its contents, to a new location. |
| `dataform.projects.locations.repositories.workspaces.create` | POST | `v1/{+parent}/workspaces` | Creates a new Workspace in a given Repository. |
| `dataform.projects.locations.repositories.workspaces.makeDirectory` | POST | `v1/{+workspace}:makeDirectory` | Creates a directory inside a Workspace. |
| `dataform.projects.locations.repositories.workspaces.searchFiles` | GET | `v1/{+workspace}:searchFiles` | Finds the contents of a given Workspace directory by filter. |
| `dataform.projects.locations.repositories.workspaces.removeDirectory` | POST | `v1/{+workspace}:removeDirectory` | Deletes a directory (inside a Workspace) and all of its contents. |
| `dataform.projects.locations.repositories.workspaces.fetchFileGitStatuses` | GET | `v1/{+name}:fetchFileGitStatuses` | Fetches Git statuses for the files in a Workspace. |
| `dataform.projects.locations.repositories.workspaces.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `dataform.projects.locations.repositories.workspaces.fetchFileDiff` | GET | `v1/{+workspace}:fetchFileDiff` | Fetches Git diff for an uncommitted file in a Workspace. |
| `dataform.projects.locations.repositories.workspaces.writeFile` | POST | `v1/{+workspace}:writeFile` | Writes to a file (inside a Workspace). |
| `dataform.projects.locations.repositories.workspaces.queryDirectoryContents` | GET | `v1/{+workspace}:queryDirectoryContents` | Returns the contents of a given Workspace directory. |
| `dataform.projects.locations.repositories.workspaces.delete` | DELETE | `v1/{+name}` | Deletes a single Workspace. |
| `dataform.projects.locations.repositories.workspaces.moveFile` | POST | `v1/{+workspace}:moveFile` | Moves a file (inside a Workspace) to a new location. |
| `dataform.projects.locations.repositories.workspaces.installNpmPackages` | POST | `v1/{+workspace}:installNpmPackages` | Installs dependency NPM packages (inside a Workspace). |
| `dataform.projects.locations.repositories.workspaces.pull` | POST | `v1/{+name}:pull` | Pulls Git commits from the Repository's remote into a Workspace. |
| `dataform.projects.locations.repositories.workspaces.removeFile` | POST | `v1/{+workspace}:removeFile` | Deletes a file (inside a Workspace). |
| `dataform.projects.locations.repositories.workspaces.commit` | POST | `v1/{+name}:commit` | Applies a Git commit for uncommitted files in a Workspace. |
| `dataform.projects.locations.repositories.workflowInvocations.get` | GET | `v1/{+name}` | Fetches a single WorkflowInvocation. |
| `dataform.projects.locations.repositories.workflowInvocations.list` | GET | `v1/{+parent}/workflowInvocations` | Lists WorkflowInvocations in a given Repository. |
| `dataform.projects.locations.repositories.workflowInvocations.cancel` | POST | `v1/{+name}:cancel` | Requests cancellation of a running WorkflowInvocation. |
| `dataform.projects.locations.repositories.workflowInvocations.query` | GET | `v1/{+name}:query` | Returns WorkflowInvocationActions in a given WorkflowInvocation. |
| `dataform.projects.locations.repositories.workflowInvocations.create` | POST | `v1/{+parent}/workflowInvocations` | Creates a new WorkflowInvocation in a given Repository. |
| `dataform.projects.locations.repositories.workflowInvocations.delete` | DELETE | `v1/{+name}` | Deletes a single WorkflowInvocation. |
| `dataform.projects.locations.folders.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `dataform.projects.locations.folders.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `dataform.projects.locations.folders.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `dataform.projects.locations.teamFolders.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `dataform.projects.locations.teamFolders.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `dataform.projects.locations.teamFolders.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `dataform.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `dataform.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `dataform.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `dataform.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |

### `dataform.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await dataform.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.list`

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
const res = await dataform.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.getConfig`

**GET** `v1/{+name}`

Get default config for a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The config name. |

**Response**: `Config`

```typescript
const res = await dataform.locations.getConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.updateConfig`

**PATCH** `v1/{+name}`

Update default config for a given project and location. **Note:** *This method does not fully implement [AIP/134](https://google.aip.dev/134). The wildcard entry (\*) is treated as a bad request, and when the `field_mask` is omitted, the request is treated as a full update on all modifiable fields.*

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The config name. |
| `updateMask` | `string` | query | No | Optional. Specifies the fields to be updated in the config. |

**Request body**: `Config`

**Response**: `Config`

```typescript
const res = await dataform.locations.updateConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.computeAccessTokenStatus`

**GET** `v1/{+name}:computeAccessTokenStatus`

Computes a Repository's Git access token status.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The repository's name. |

**Response**: `ComputeRepositoryAccessTokenStatusResponse`

```typescript
const res = await dataform.repositories.computeAccessTokenStatus({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.get`

**GET** `v1/{+name}`

Fetches a single Repository.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The repository's name. |

**Response**: `Repository`

```typescript
const res = await dataform.repositories.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.readFile`

**GET** `v1/{+name}:readFile`

Returns the contents of a file (inside a Repository). The Repository must not have a value for `git_remote_settings.url`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The repository's name. |
| `commitSha` | `string` | query | No | Optional. The commit SHA for the commit to read from. If unset, the file will be read from HEAD. |
| `path` | `string` | query | No | Required. Full file path to read including filename, from repository root. |

**Response**: `ReadRepositoryFileResponse`

```typescript
const res = await dataform.repositories.readFile({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await dataform.repositories.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.delete`

**DELETE** `v1/{+name}`

Deletes a single Repository.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The repository's name. |
| `force` | `boolean` | query | No | Optional. If set to true, child resources of this repository (compilation results and workflow invocations) will also... |

**Response**: `Empty`

```typescript
const res = await dataform.repositories.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.fetchHistory`

**GET** `v1/{+name}:fetchHistory`

Fetches a Repository's history of commits. The Repository must not have a value for `git_remote_settings.url`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The repository's name. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of commits to return. The server may return fewer items than requested. If unspecified, the ... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous `FetchRepositoryHistory` call. Provide this to retrieve the subsequent ... |

**Response**: `FetchRepositoryHistoryResponse`

```typescript
const res = await dataform.repositories.fetchHistory({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.patch`

**PATCH** `v1/{+name}`

Updates a single Repository. **Note:** *This method does not fully implement [AIP/134](https://google.aip.dev/134). The wildcard entry (\*) is treated as a bad request, and when the `field_mask` is omitted, the request is treated as a full update on all modifiable fields.*

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The repository's name. |
| `updateMask` | `string` | query | No | Optional. Specifies the fields to be updated in the repository. If left unset, all fields will be updated. |

**Request body**: `Repository`

**Response**: `Repository`

```typescript
const res = await dataform.repositories.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.list`

**GET** `v1/{+parent}/repositories`

Lists Repositories in a given project and location. **Note:** *This method can return repositories not shown in the [Dataform UI](https://console.cloud.google.com/bigquery/dataform)*.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The location in which to list repositories. Must be in the format `projects/*/locations/*`. |
| `filter` | `string` | query | No | Optional. Filter for the returned list. |
| `orderBy` | `string` | query | No | Optional. This field only supports ordering by `name`. If unspecified, the server will choose the ordering. If specif... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of repositories to return. The server may return fewer items than requested. If unspecified,... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous `ListRepositories` call. Provide this to retrieve the subsequent page. ... |

**Response**: `ListRepositoriesResponse`

```typescript
const res = await dataform.repositories.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.fetchRemoteBranches`

**GET** `v1/{+name}:fetchRemoteBranches`

Fetches a Repository's remote branches.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The repository's name. |

**Response**: `FetchRemoteBranchesResponse`

```typescript
const res = await dataform.repositories.fetchRemoteBranches({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await dataform.repositories.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.queryDirectoryContents`

**GET** `v1/{+name}:queryDirectoryContents`

Returns the contents of a given Repository directory. The Repository must not have a value for `git_remote_settings.url`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The repository's name. |
| `commitSha` | `string` | query | No | Optional. The Commit SHA for the commit to query from. If unset, the directory will be queried from HEAD. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of paths to return. The server may return fewer items than requested. If unspecified, the se... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous `QueryRepositoryDirectoryContents` call. Provide this to retrieve the s... |
| `path` | `string` | query | No | Optional. The directory's full path including directory name, relative to root. If left unset, the root is used. |

**Response**: `QueryRepositoryDirectoryContentsResponse`

```typescript
const res = await dataform.repositories.queryDirectoryContents({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.commit`

**POST** `v1/{+name}:commit`

Applies a Git commit to a Repository. The Repository must not have a value for `git_remote_settings.url`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The repository's name. |

**Request body**: `CommitRepositoryChangesRequest`

**Response**: `CommitRepositoryChangesResponse`

```typescript
const res = await dataform.repositories.commit({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await dataform.repositories.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.create`

**POST** `v1/{+parent}/repositories`

Creates a new Repository in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The location in which to create the repository. Must be in the format `projects/*/locations/*`. |
| `repositoryId` | `string` | query | No | Required. The ID to use for the repository, which will become the final component of the repository's resource name. |

**Request body**: `Repository`

**Response**: `Repository`

```typescript
const res = await dataform.repositories.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.releaseConfigs.create`

**POST** `v1/{+parent}/releaseConfigs`

Creates a new ReleaseConfig in a given Repository.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The repository in which to create the release config. Must be in the format `projects/*/locations/*/reposit... |
| `releaseConfigId` | `string` | query | No | Required. The ID to use for the release config, which will become the final component of the release config's resourc... |

**Request body**: `ReleaseConfig`

**Response**: `ReleaseConfig`

```typescript
const res = await dataform.releaseConfigs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.releaseConfigs.delete`

**DELETE** `v1/{+name}`

Deletes a single ReleaseConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The release config's name. |

**Response**: `Empty`

```typescript
const res = await dataform.releaseConfigs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.releaseConfigs.patch`

**PATCH** `v1/{+name}`

Updates a single ReleaseConfig. **Note:** *This method does not fully implement [AIP/134](https://google.aip.dev/134). The wildcard entry (\*) is treated as a bad request, and when the `field_mask` is omitted, the request is treated as a full update on all modifiable fields.*

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The release config's name. |
| `updateMask` | `string` | query | No | Optional. Specifies the fields to be updated in the release config. If left unset, all fields will be updated. |

**Request body**: `ReleaseConfig`

**Response**: `ReleaseConfig`

```typescript
const res = await dataform.releaseConfigs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.releaseConfigs.list`

**GET** `v1/{+parent}/releaseConfigs`

Lists ReleaseConfigs in a given Repository.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The repository in which to list release configs. Must be in the format `projects/*/locations/*/repositories... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of release configs to return. The server may return fewer items than requested. If unspecifi... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous `ListReleaseConfigs` call. Provide this to retrieve the subsequent page... |

**Response**: `ListReleaseConfigsResponse`

```typescript
const res = await dataform.releaseConfigs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.releaseConfigs.get`

**GET** `v1/{+name}`

Fetches a single ReleaseConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The release config's name. |

**Response**: `ReleaseConfig`

```typescript
const res = await dataform.releaseConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.compilationResults.get`

**GET** `v1/{+name}`

Fetches a single CompilationResult.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The compilation result's name. |

**Response**: `CompilationResult`

```typescript
const res = await dataform.compilationResults.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.compilationResults.list`

**GET** `v1/{+parent}/compilationResults`

Lists CompilationResults in a given Repository.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The repository in which to list compilation results. Must be in the format `projects/*/locations/*/reposito... |
| `filter` | `string` | query | No | Optional. Filter for the returned list. |
| `orderBy` | `string` | query | No | Optional. This field only supports ordering by `name` and `create_time`. If unspecified, the server will choose the o... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of compilation results to return. The server may return fewer items than requested. If unspe... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous `ListCompilationResults` call. Provide this to retrieve the subsequent ... |

**Response**: `ListCompilationResultsResponse`

```typescript
const res = await dataform.compilationResults.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.compilationResults.create`

**POST** `v1/{+parent}/compilationResults`

Creates a new CompilationResult in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The repository in which to create the compilation result. Must be in the format `projects/*/locations/*/rep... |

**Request body**: `CompilationResult`

**Response**: `CompilationResult`

```typescript
const res = await dataform.compilationResults.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.compilationResults.query`

**GET** `v1/{+name}:query`

Returns CompilationResultActions in a given CompilationResult.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The compilation result's name. |
| `filter` | `string` | query | No | Optional. Optional filter for the returned list. Filtering is only currently supported on the `file_path` field. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of compilation results to return. The server may return fewer items than requested. If unspe... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous `QueryCompilationResultActions` call. Provide this to retrieve the subs... |

**Response**: `QueryCompilationResultActionsResponse`

```typescript
const res = await dataform.compilationResults.query({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.workflowConfigs.create`

**POST** `v1/{+parent}/workflowConfigs`

Creates a new WorkflowConfig in a given Repository.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The repository in which to create the workflow config. Must be in the format `projects/*/locations/*/reposi... |
| `workflowConfigId` | `string` | query | No | Required. The ID to use for the workflow config, which will become the final component of the workflow config's resou... |

**Request body**: `WorkflowConfig`

**Response**: `WorkflowConfig`

```typescript
const res = await dataform.workflowConfigs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.workflowConfigs.delete`

**DELETE** `v1/{+name}`

Deletes a single WorkflowConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The workflow config's name. |

**Response**: `Empty`

```typescript
const res = await dataform.workflowConfigs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.workflowConfigs.get`

**GET** `v1/{+name}`

Fetches a single WorkflowConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The workflow config's name. |

**Response**: `WorkflowConfig`

```typescript
const res = await dataform.workflowConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.workflowConfigs.patch`

**PATCH** `v1/{+name}`

Updates a single WorkflowConfig. **Note:** *This method does not fully implement [AIP/134](https://google.aip.dev/134). The wildcard entry (\*) is treated as a bad request, and when the `field_mask` is omitted, the request is treated as a full update on all modifiable fields.*

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The workflow config's name. |
| `updateMask` | `string` | query | No | Optional. Specifies the fields to be updated in the workflow config. If left unset, all fields will be updated. |

**Request body**: `WorkflowConfig`

**Response**: `WorkflowConfig`

```typescript
const res = await dataform.workflowConfigs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.workflowConfigs.list`

**GET** `v1/{+parent}/workflowConfigs`

Lists WorkflowConfigs in a given Repository.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The repository in which to list workflow configs. Must be in the format `projects/*/locations/*/repositorie... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of workflow configs to return. The server may return fewer items than requested. If unspecif... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous `ListWorkflowConfigs` call. Provide this to retrieve the subsequent pag... |

**Response**: `ListWorkflowConfigsResponse`

```typescript
const res = await dataform.workflowConfigs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.workspaces.fetchGitAheadBehind`

**GET** `v1/{+name}:fetchGitAheadBehind`

Fetches Git ahead/behind against a remote branch.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The workspace's name. |
| `remoteBranch` | `string` | query | No | Optional. The name of the branch in the Git remote against which this workspace should be compared. If left unset, th... |

**Response**: `FetchGitAheadBehindResponse`

```typescript
const res = await dataform.workspaces.fetchGitAheadBehind({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.workspaces.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await dataform.workspaces.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.workspaces.reset`

**POST** `v1/{+name}:reset`

Performs a Git reset for uncommitted files in a Workspace.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The workspace's name. |

**Request body**: `ResetWorkspaceChangesRequest`

**Response**: `ResetWorkspaceChangesResponse`

```typescript
const res = await dataform.workspaces.reset({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.workspaces.push`

**POST** `v1/{+name}:push`

Pushes Git commits from a Workspace to the Repository's remote.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The workspace's name. |

**Request body**: `PushGitCommitsRequest`

**Response**: `PushGitCommitsResponse`

```typescript
const res = await dataform.workspaces.push({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.workspaces.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await dataform.workspaces.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.workspaces.get`

**GET** `v1/{+name}`

Fetches a single Workspace.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The workspace's name. |

**Response**: `Workspace`

```typescript
const res = await dataform.workspaces.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.workspaces.readFile`

**GET** `v1/{+workspace}:readFile`

Returns the contents of a file (inside a Workspace).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `workspace` | `string` | path | Yes | Required. The workspace's name. |
| `path` | `string` | query | No | Required. The file's full path including filename, relative to the workspace root. |
| `revision` | `string` | query | No | Optional. The Git revision of the file to return. If left empty, the current contents of `path` will be returned. |

**Response**: `ReadFileResponse`

```typescript
const res = await dataform.workspaces.readFile({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.workspaces.list`

**GET** `v1/{+parent}/workspaces`

Lists Workspaces in a given Repository.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The repository in which to list workspaces. Must be in the format `projects/*/locations/*/repositories/*`. |
| `filter` | `string` | query | No | Optional. Filter for the returned list. |
| `orderBy` | `string` | query | No | Optional. This field only supports ordering by `name`. If unspecified, the server will choose the ordering. If specif... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of workspaces to return. The server may return fewer items than requested. If unspecified, t... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous `ListWorkspaces` call. Provide this to retrieve the subsequent page. Wh... |

**Response**: `ListWorkspacesResponse`

```typescript
const res = await dataform.workspaces.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.workspaces.moveDirectory`

**POST** `v1/{+workspace}:moveDirectory`

Moves a directory (inside a Workspace), and all of its contents, to a new location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `workspace` | `string` | path | Yes | Required. The workspace's name. |

**Request body**: `MoveDirectoryRequest`

**Response**: `MoveDirectoryResponse`

```typescript
const res = await dataform.workspaces.moveDirectory({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.workspaces.create`

**POST** `v1/{+parent}/workspaces`

Creates a new Workspace in a given Repository.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The repository in which to create the workspace. Must be in the format `projects/*/locations/*/repositories... |
| `workspaceId` | `string` | query | No | Required. The ID to use for the workspace, which will become the final component of the workspace's resource name. |

**Request body**: `Workspace`

**Response**: `Workspace`

```typescript
const res = await dataform.workspaces.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.workspaces.makeDirectory`

**POST** `v1/{+workspace}:makeDirectory`

Creates a directory inside a Workspace.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `workspace` | `string` | path | Yes | Required. The workspace's name. |

**Request body**: `MakeDirectoryRequest`

**Response**: `MakeDirectoryResponse`

```typescript
const res = await dataform.workspaces.makeDirectory({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.workspaces.searchFiles`

**GET** `v1/{+workspace}:searchFiles`

Finds the contents of a given Workspace directory by filter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `workspace` | `string` | path | Yes | Required. The workspace's name. |
| `filter` | `string` | query | No | Optional. Optional filter for the returned list in filtering format. Filtering is only currently supported on the `pa... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of search results to return. The server may return fewer items than requested. If unspecifie... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous `SearchFilesRequest` call. Provide this to retrieve the subsequent page... |

**Response**: `SearchFilesResponse`

```typescript
const res = await dataform.workspaces.searchFiles({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.workspaces.removeDirectory`

**POST** `v1/{+workspace}:removeDirectory`

Deletes a directory (inside a Workspace) and all of its contents.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `workspace` | `string` | path | Yes | Required. The workspace's name. |

**Request body**: `RemoveDirectoryRequest`

**Response**: `RemoveDirectoryResponse`

```typescript
const res = await dataform.workspaces.removeDirectory({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.workspaces.fetchFileGitStatuses`

**GET** `v1/{+name}:fetchFileGitStatuses`

Fetches Git statuses for the files in a Workspace.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The workspace's name. |

**Response**: `FetchFileGitStatusesResponse`

```typescript
const res = await dataform.workspaces.fetchFileGitStatuses({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.workspaces.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await dataform.workspaces.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.workspaces.fetchFileDiff`

**GET** `v1/{+workspace}:fetchFileDiff`

Fetches Git diff for an uncommitted file in a Workspace.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `workspace` | `string` | path | Yes | Required. The workspace's name. |
| `path` | `string` | query | No | Required. The file's full path including filename, relative to the workspace root. |

**Response**: `FetchFileDiffResponse`

```typescript
const res = await dataform.workspaces.fetchFileDiff({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.workspaces.writeFile`

**POST** `v1/{+workspace}:writeFile`

Writes to a file (inside a Workspace).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `workspace` | `string` | path | Yes | Required. The workspace's name. |

**Request body**: `WriteFileRequest`

**Response**: `WriteFileResponse`

```typescript
const res = await dataform.workspaces.writeFile({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.workspaces.queryDirectoryContents`

**GET** `v1/{+workspace}:queryDirectoryContents`

Returns the contents of a given Workspace directory.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `workspace` | `string` | path | Yes | Required. The workspace's name. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of paths to return. The server may return fewer items than requested. If unspecified, the se... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous `QueryDirectoryContents` call. Provide this to retrieve the subsequent ... |
| `path` | `string` | query | No | Optional. The directory's full path including directory name, relative to the workspace root. If left unset, the work... |

**Response**: `QueryDirectoryContentsResponse`

```typescript
const res = await dataform.workspaces.queryDirectoryContents({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.workspaces.delete`

**DELETE** `v1/{+name}`

Deletes a single Workspace.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The workspace resource's name. |

**Response**: `Empty`

```typescript
const res = await dataform.workspaces.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.workspaces.moveFile`

**POST** `v1/{+workspace}:moveFile`

Moves a file (inside a Workspace) to a new location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `workspace` | `string` | path | Yes | Required. The workspace's name. |

**Request body**: `MoveFileRequest`

**Response**: `MoveFileResponse`

```typescript
const res = await dataform.workspaces.moveFile({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.workspaces.installNpmPackages`

**POST** `v1/{+workspace}:installNpmPackages`

Installs dependency NPM packages (inside a Workspace).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `workspace` | `string` | path | Yes | Required. The workspace's name. |

**Request body**: `InstallNpmPackagesRequest`

**Response**: `InstallNpmPackagesResponse`

```typescript
const res = await dataform.workspaces.installNpmPackages({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.workspaces.pull`

**POST** `v1/{+name}:pull`

Pulls Git commits from the Repository's remote into a Workspace.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The workspace's name. |

**Request body**: `PullGitCommitsRequest`

**Response**: `PullGitCommitsResponse`

```typescript
const res = await dataform.workspaces.pull({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.workspaces.removeFile`

**POST** `v1/{+workspace}:removeFile`

Deletes a file (inside a Workspace).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `workspace` | `string` | path | Yes | Required. The workspace's name. |

**Request body**: `RemoveFileRequest`

**Response**: `RemoveFileResponse`

```typescript
const res = await dataform.workspaces.removeFile({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.workspaces.commit`

**POST** `v1/{+name}:commit`

Applies a Git commit for uncommitted files in a Workspace.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The workspace's name. |

**Request body**: `CommitWorkspaceChangesRequest`

**Response**: `CommitWorkspaceChangesResponse`

```typescript
const res = await dataform.workspaces.commit({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.workflowInvocations.get`

**GET** `v1/{+name}`

Fetches a single WorkflowInvocation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The workflow invocation resource's name. |

**Response**: `WorkflowInvocation`

```typescript
const res = await dataform.workflowInvocations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.workflowInvocations.list`

**GET** `v1/{+parent}/workflowInvocations`

Lists WorkflowInvocations in a given Repository.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the WorkflowInvocation type. Must be in the format `projects/*/locations/*/repositor... |
| `filter` | `string` | query | No | Optional. Filter for the returned list. |
| `orderBy` | `string` | query | No | Optional. This field only supports ordering by `name`. If unspecified, the server will choose the ordering. If specif... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of workflow invocations to return. The server may return fewer items than requested. If unsp... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous `ListWorkflowInvocations` call. Provide this to retrieve the subsequent... |

**Response**: `ListWorkflowInvocationsResponse`

```typescript
const res = await dataform.workflowInvocations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.workflowInvocations.cancel`

**POST** `v1/{+name}:cancel`

Requests cancellation of a running WorkflowInvocation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The workflow invocation resource's name. |

**Request body**: `CancelWorkflowInvocationRequest`

**Response**: `CancelWorkflowInvocationResponse`

```typescript
const res = await dataform.workflowInvocations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.workflowInvocations.query`

**GET** `v1/{+name}:query`

Returns WorkflowInvocationActions in a given WorkflowInvocation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The workflow invocation's name. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of workflow invocations to return. The server may return fewer items than requested. If unsp... |
| `pageToken` | `string` | query | No | Optional. Page token received from a previous `QueryWorkflowInvocationActions` call. Provide this to retrieve the sub... |

**Response**: `QueryWorkflowInvocationActionsResponse`

```typescript
const res = await dataform.workflowInvocations.query({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.workflowInvocations.create`

**POST** `v1/{+parent}/workflowInvocations`

Creates a new WorkflowInvocation in a given Repository.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The repository in which to create the workflow invocation. Must be in the format `projects/*/locations/*/re... |

**Request body**: `WorkflowInvocation`

**Response**: `WorkflowInvocation`

```typescript
const res = await dataform.workflowInvocations.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.repositories.workflowInvocations.delete`

**DELETE** `v1/{+name}`

Deletes a single WorkflowInvocation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The workflow invocation resource's name. |

**Response**: `Empty`

```typescript
const res = await dataform.workflowInvocations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.folders.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await dataform.folders.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.folders.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await dataform.folders.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.folders.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await dataform.folders.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.teamFolders.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await dataform.teamFolders.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.teamFolders.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await dataform.teamFolders.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.teamFolders.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await dataform.teamFolders.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await dataform.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.operations.list`

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
const res = await dataform.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await dataform.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `dataform.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await dataform.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `ActionErrorTable`

Error table information, used to write error data into a BigQuery table.

| Property | Type | Description |
|----------|------|-------------|
| `retentionDays` | `integer` | Error table partition expiration in days. Only positive values are allowed. |
| `target` | `Target` | Error Table target. |

### `ActionIncrementalLoadMode`

Load definition for incremental load modes

| Property | Type | Description |
|----------|------|-------------|
| `column` | `string` | Column name for incremental load modes |

### `ActionLoadConfig`

Simplified load configuration for actions

| Property | Type | Description |
|----------|------|-------------|
| `append` | `ActionSimpleLoadMode` | Append into destination table |
| `maximum` | `ActionIncrementalLoadMode` | Insert records where the value exceeds the previous maximum value for a column in the destination... |
| `replace` | `ActionSimpleLoadMode` | Replace destination table |
| `unique` | `ActionIncrementalLoadMode` | Insert records where the value of a column is not already present in the destination table |

### `ActionSimpleLoadMode`

Simple load definition

### `ActionSqlDefinition`

Definition of a SQL Data Preparation

| Property | Type | Description |
|----------|------|-------------|
| `errorTable` | `ActionErrorTable` | Error table configuration, |
| `loadConfig` | `ActionLoadConfig` | Load configuration. |
| `query` | `string` | The SQL query representing the data preparation steps. Formatted as a Pipe SQL query statement. |

### `Assertion`

Represents an assertion upon a SQL query which is required return zero rows.

| Property | Type | Description |
|----------|------|-------------|
| `dependencyTargets` | `array<Target>` | A list of actions that this action depends on. |
| `disabled` | `boolean` | Whether this action is disabled (i.e. should not be run). |
| `parentAction` | `Target` | The parent action of this assertion. Only set if this assertion was automatically generated. |
| `relationDescriptor` | `RelationDescriptor` | Descriptor for the assertion's automatically-generated view and its columns. |
| `selectQuery` | `string` | The SELECT query which must return zero rows in order for this assertion to succeed. |
| `tags` | `array<string>` | Arbitrary, user-defined tags on this action. |

### `BigQueryAction`

Represents a workflow action that will run against BigQuery.

| Property | Type | Description |
|----------|------|-------------|
| `jobId` | `string` | Output only. The ID of the BigQuery job that executed the SQL in sql_script. Only set once the jo... |
| `sqlScript` | `string` | Output only. The generated BigQuery SQL script that will be executed. |

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `CancelWorkflowInvocationRequest`

`CancelWorkflowInvocation` request message.

### `CancelWorkflowInvocationResponse`

`CancelWorkflowInvocation` response message.

### `CodeCompilationConfig`

Configures various aspects of Dataform code compilation.

| Property | Type | Description |
|----------|------|-------------|
| `assertionSchema` | `string` | Optional. The default schema (BigQuery dataset ID) for assertions. |
| `builtinAssertionNamePrefix` | `string` | Optional. The prefix to prepend to built-in assertion names. |
| `databaseSuffix` | `string` | Optional. The suffix that should be appended to all database (Google Cloud project ID) names. |
| `defaultDatabase` | `string` | Optional. The default database (Google Cloud project ID). |
| `defaultLocation` | `string` | Optional. The default BigQuery location to use. Defaults to "US". See the BigQuery docs for a ful... |
| `defaultNotebookRuntimeOptions` | `NotebookRuntimeOptions` | Optional. The default notebook runtime options. |
| `defaultSchema` | `string` | Optional. The default schema (BigQuery dataset ID). |
| `schemaSuffix` | `string` | Optional. The suffix that should be appended to all schema (BigQuery dataset ID) names. |
| `tablePrefix` | `string` | Optional. The prefix that should be prepended to all table names. |
| `vars` | `object` | Optional. User-defined variables that are made available to project code during compilation. |

### `ColumnDescriptor`

Describes a column.

| Property | Type | Description |
|----------|------|-------------|
| `bigqueryPolicyTags` | `array<string>` | A list of BigQuery policy tags that will be applied to the column. |
| `description` | `string` | A textual description of the column. |
| `path` | `array<string>` | The identifier for the column. Each entry in `path` represents one level of nesting. |

### `CommitAuthor`

Represents the author of a Git commit.

| Property | Type | Description |
|----------|------|-------------|
| `emailAddress` | `string` | Required. The commit author's email address. |
| `name` | `string` | Required. The commit author's name. |

### `CommitLogEntry`

Represents a single commit log.

| Property | Type | Description |
|----------|------|-------------|
| `author` | `CommitAuthor` | The commit author for this commit log entry. |
| `commitMessage` | `string` | The commit message for this commit log entry. |
| `commitSha` | `string` | The commit SHA for this commit log entry. |
| `commitTime` | `string` | Commit timestamp. |

### `CommitMetadata`

Represents a Dataform Git commit.

| Property | Type | Description |
|----------|------|-------------|
| `author` | `CommitAuthor` | Required. The commit's author. |
| `commitMessage` | `string` | Optional. The commit's message. |

### `CommitRepositoryChangesRequest`

`CommitRepositoryChanges` request message.

| Property | Type | Description |
|----------|------|-------------|
| `commitMetadata` | `CommitMetadata` | Required. The changes to commit to the repository. |
| `fileOperations` | `object` | Optional. A map to the path of the file to the operation. The path is the full file path includin... |
| `requiredHeadCommitSha` | `string` | Optional. The commit SHA which must be the repository's current HEAD before applying this commit;... |

### `CommitRepositoryChangesResponse`

`CommitRepositoryChanges` response message.

| Property | Type | Description |
|----------|------|-------------|
| `commitSha` | `string` | The commit SHA of the current commit. |

### `CommitWorkspaceChangesRequest`

`CommitWorkspaceChanges` request message.

| Property | Type | Description |
|----------|------|-------------|
| `author` | `CommitAuthor` | Required. The commit's author. |
| `commitMessage` | `string` | Optional. The commit's message. |
| `paths` | `array<string>` | Optional. Full file paths to commit including filename, rooted at workspace root. If left empty, ... |

### `CommitWorkspaceChangesResponse`

`CommitWorkspaceChanges` response message.

### `CompilationError`

An error encountered when attempting to compile a Dataform project.

| Property | Type | Description |
|----------|------|-------------|
| `actionTarget` | `Target` | Output only. The identifier of the action where this error occurred, if available. |
| `message` | `string` | Output only. The error's top level message. |
| `path` | `string` | Output only. The path of the file where this error occurred, if available, relative to the projec... |
| `stack` | `string` | Output only. The error's full stack trace. |

### `CompilationResult`

Represents the result of compiling a Dataform project.

| Property | Type | Description |
|----------|------|-------------|
| `codeCompilationConfig` | `CodeCompilationConfig` | Immutable. If set, fields of `code_compilation_config` override the default compilation settings ... |
| `compilationErrors` | `array<CompilationError>` | Output only. Errors encountered during project compilation. |
| `createTime` | `string` | Output only. The timestamp of when the compilation result was created. |
| `dataEncryptionState` | `DataEncryptionState` | Output only. Only set if the repository has a KMS Key. |
| `dataformCoreVersion` | `string` | Output only. The version of `@dataform/core` that was used for compilation. |
| `gitCommitish` | `string` | Immutable. Git commit/tag/branch name at which the repository should be compiled. Must exist in t... |
| `internalMetadata` | `string` | Output only. All the metadata information that is used internally to serve the resource. For exam... |
| `name` | `string` | Output only. The compilation result's name. |
| `privateResourceMetadata` | `PrivateResourceMetadata` | Output only. Metadata indicating whether this resource is user-scoped. `CompilationResult` resour... |
| `releaseConfig` | `string` | Immutable. The name of the release config to compile. Must be in the format `projects/*/locations... |
| `resolvedGitCommitSha` | `string` | Output only. The fully resolved Git commit SHA of the code that was compiled. Not set for compila... |
| `workspace` | `string` | Immutable. The name of the workspace to compile. Must be in the format `projects/*/locations/*/re... |

### `CompilationResultAction`

Represents a single Dataform action in a compilation result.

| Property | Type | Description |
|----------|------|-------------|
| `assertion` | `Assertion` | The assertion executed by this action. |
| `canonicalTarget` | `Target` | The action's identifier if the project had been compiled without any overrides configured. Unique... |
| `dataPreparation` | `DataPreparation` | The data preparation executed by this action. |
| `declaration` | `Declaration` | The declaration declared by this action. |
| `filePath` | `string` | The full path including filename in which this action is located, relative to the workspace root. |
| `internalMetadata` | `string` | Output only. All the metadata information that is used internally to serve the resource. For exam... |
| `notebook` | `Notebook` | The notebook executed by this action. |
| `operations` | `Operations` | The database operations executed by this action. |
| `relation` | `Relation` | The database relation created/updated by this action. |
| `target` | `Target` | This action's identifier. Unique within the compilation result. |

### `ComputeRepositoryAccessTokenStatusResponse`

`ComputeRepositoryAccessTokenStatus` response message.

| Property | Type | Description |
|----------|------|-------------|
| `tokenStatus` | `string` | Indicates the status of the Git access token. |

### `Config`

Config for all repositories in a given project and location.

| Property | Type | Description |
|----------|------|-------------|
| `defaultKmsKeyName` | `string` | Optional. The default KMS key that is used if no encryption key is provided when a repository is ... |
| `internalMetadata` | `string` | Output only. All the metadata information that is used internally to serve the resource. For exam... |
| `name` | `string` | Identifier. The config name. |

### `DataEncryptionState`

Describes encryption state of a resource.

| Property | Type | Description |
|----------|------|-------------|
| `kmsKeyVersionName` | `string` | Required. The KMS key version name with which data of a resource is encrypted. |

### `DataPreparation`

Defines a compiled Data Preparation entity

| Property | Type | Description |
|----------|------|-------------|
| `contentsSql` | `SqlDefinition` | SQL definition for a Data Preparation. Contains a SQL query and additional context information. |
| `contentsYaml` | `string` | The data preparation definition, stored as a YAML string. |
| `dependencyTargets` | `array<Target>` | A list of actions that this action depends on. |
| `disabled` | `boolean` | Whether this action is disabled (i.e. should not be run). |
| `tags` | `array<string>` | Arbitrary, user-defined tags on this action. |

### `DataPreparationAction`

Represents a workflow action that will run a Data Preparation.

| Property | Type | Description |
|----------|------|-------------|
| `contentsSql` | `ActionSqlDefinition` | SQL definition for a Data Preparation. Contains a SQL query and additional context information. |
| `contentsYaml` | `string` | Output only. YAML representing the contents of the data preparation. Can be used to show the cust... |
| `generatedSql` | `string` | Output only. The generated BigQuery SQL script that will be executed. For reference only. |
| `jobId` | `string` | Output only. The ID of the BigQuery job that executed the SQL in sql_script. Only set once the jo... |

### `Declaration`

Represents a relation which is not managed by Dataform but which may be referenced by Dataform actions.

| Property | Type | Description |
|----------|------|-------------|
| `relationDescriptor` | `RelationDescriptor` | Descriptor for the relation and its columns. Used as documentation only, i.e. values here will re... |

### `DeleteFile`

Represents the delete file operation.

### `DirectoryEntry`

Represents a single entry in a directory.

| Property | Type | Description |
|----------|------|-------------|
| `directory` | `string` | A child directory in the directory. |
| `file` | `string` | A file in the directory. |

### `DirectorySearchResult`

Client-facing representation of a directory entry in search results.

| Property | Type | Description |
|----------|------|-------------|
| `path` | `string` | File system path relative to the workspace root. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `ErrorTable`

Error table information, used to write error data into a BigQuery table.

| Property | Type | Description |
|----------|------|-------------|
| `retentionDays` | `integer` | Error table partition expiration in days. Only positive values are allowed. |
| `target` | `Target` | Error Table target. |

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `FetchFileDiffResponse`

`FetchFileDiff` response message.

| Property | Type | Description |
|----------|------|-------------|
| `formattedDiff` | `string` | The raw formatted Git diff for the file. |

### `FetchFileGitStatusesResponse`

`FetchFileGitStatuses` response message.

| Property | Type | Description |
|----------|------|-------------|
| `uncommittedFileChanges` | `array<UncommittedFileChange>` | A list of all files which have uncommitted Git changes. There will only be a single entry for any... |

### `FetchGitAheadBehindResponse`

`FetchGitAheadBehind` response message.

| Property | Type | Description |
|----------|------|-------------|
| `commitsAhead` | `integer` | The number of commits in the remote branch that are not in the workspace. |
| `commitsBehind` | `integer` | The number of commits in the workspace that are not in the remote branch. |

### `FetchRemoteBranchesResponse`

`FetchRemoteBranches` response message.

| Property | Type | Description |
|----------|------|-------------|
| `branches` | `array<string>` | The remote repository's branch names. |

### `FetchRepositoryHistoryResponse`

`FetchRepositoryHistory` response message.

| Property | Type | Description |
|----------|------|-------------|
| `commits` | `array<CommitLogEntry>` | A list of commit logs, ordered by 'git log' default order. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `FileOperation`

Represents a single file operation to the repository.

| Property | Type | Description |
|----------|------|-------------|
| `deleteFile` | `DeleteFile` | Represents the delete operation. |
| `writeFile` | `WriteFile` | Represents the write operation. |

### `FileSearchResult`

Client-facing representation of a file entry in search results.

| Property | Type | Description |
|----------|------|-------------|
| `path` | `string` | File system path relative to the workspace root. |

### `GitRemoteSettings`

Controls Git remote configuration for a repository.

| Property | Type | Description |
|----------|------|-------------|
| `authenticationTokenSecretVersion` | `string` | Optional. The name of the Secret Manager secret version to use as an authentication token for Git... |
| `defaultBranch` | `string` | Required. The Git remote's default branch name. |
| `sshAuthenticationConfig` | `SshAuthenticationConfig` | Optional. Authentication fields for remote uris using SSH protocol. |
| `tokenStatus` | `string` | Output only. Deprecated: The field does not contain any token status information. |
| `url` | `string` | Required. The Git remote's URL. |

### `IamPolicyOverrideView`

Contains metadata about the IAM policy override for a given Dataform resource. If is_active is true, this the policy encoded in iam_policy_name is the source of truth for this resource. Will be provided in internal ESV2 views for: Workspaces, Repositories, Folders, TeamFolders.

| Property | Type | Description |
|----------|------|-------------|
| `iamPolicyName` | `PolicyName` | The IAM policy name for the resource. |
| `isActive` | `boolean` | Whether the IAM policy encoded in this view is active. |

### `IncrementalLoadMode`

Load definition for incremental load modes

| Property | Type | Description |
|----------|------|-------------|
| `column` | `string` | Column name for incremental load modes |

### `IncrementalTableConfig`

Contains settings for relations of type `INCREMENTAL_TABLE`.

| Property | Type | Description |
|----------|------|-------------|
| `incrementalPostOperations` | `array<string>` | SQL statements to be executed after inserting new rows into the relation. |
| `incrementalPreOperations` | `array<string>` | SQL statements to be executed before inserting new rows into the relation. |
| `incrementalSelectQuery` | `string` | The SELECT query which returns rows which should be inserted into the relation if it already exis... |
| `refreshDisabled` | `boolean` | Whether this table should be protected from being refreshed. |
| `uniqueKeyParts` | `array<string>` | A set of columns or SQL expressions used to define row uniqueness. If any duplicates are discover... |
| `updatePartitionFilter` | `string` | A SQL expression conditional used to limit the set of existing rows considered for a merge operat... |

### `InstallNpmPackagesRequest`

`InstallNpmPackages` request message.

### `InstallNpmPackagesResponse`

`InstallNpmPackages` response message.

### `Interval`

Represents a time interval, encoded as a Timestamp start (inclusive) and a Timestamp end (exclusive). The start must be less than or equal to the end. When the start equals the end, the interval is empty (matches no time). When both start and end are unspecified, the interval matches any time.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | Optional. Exclusive end of the interval. If specified, a Timestamp matching this interval will ha... |
| `startTime` | `string` | Optional. Inclusive start of the interval. If specified, a Timestamp matching this interval will ... |

### `InvocationConfig`

Includes various configuration options for a workflow invocation. If both `included_targets` and `included_tags` are unset, all actions will be included.

| Property | Type | Description |
|----------|------|-------------|
| `fullyRefreshIncrementalTablesEnabled` | `boolean` | Optional. When set to true, any incremental tables will be fully refreshed. |
| `includedTags` | `array<string>` | Optional. The set of tags to include. |
| `includedTargets` | `array<Target>` | Optional. The set of action identifiers to include. |
| `queryPriority` | `string` | Optional. Specifies the priority for query execution in BigQuery. More information can be found a... |
| `serviceAccount` | `string` | Optional. The service account to run workflow invocations under. |
| `transitiveDependenciesIncluded` | `boolean` | Optional. When set to true, transitive dependencies of included actions will be executed. |
| `transitiveDependentsIncluded` | `boolean` | Optional. When set to true, transitive dependents of included actions will be executed. |

### `ListCompilationResultsResponse`

`ListCompilationResults` response message.

| Property | Type | Description |
|----------|------|-------------|
| `compilationResults` | `array<CompilationResult>` | List of compilation results. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `unreachable` | `array<string>` | Locations which could not be reached. |

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

### `ListReleaseConfigsResponse`

`ListReleaseConfigs` response message.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `releaseConfigs` | `array<ReleaseConfig>` | List of release configs. |
| `unreachable` | `array<string>` | Locations which could not be reached. |

### `ListRepositoriesResponse`

`ListRepositories` response message.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token which can be sent as `page_token` to retrieve the next page. If this field is omitted, th... |
| `repositories` | `array<Repository>` | List of repositories. |
| `unreachable` | `array<string>` | Locations which could not be reached. |

### `ListWorkflowConfigsResponse`

`ListWorkflowConfigs` response message.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `unreachable` | `array<string>` | Locations which could not be reached. |
| `workflowConfigs` | `array<WorkflowConfig>` | List of workflow configs. |

### `ListWorkflowInvocationsResponse`

`ListWorkflowInvocations` response message.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `unreachable` | `array<string>` | Locations which could not be reached. |
| `workflowInvocations` | `array<WorkflowInvocation>` | List of workflow invocations. |

### `ListWorkspacesResponse`

`ListWorkspaces` response message.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `unreachable` | `array<string>` | Locations which could not be reached. |
| `workspaces` | `array<Workspace>` | List of workspaces. |

### `LoadConfig`

Simplified load configuration for actions

| Property | Type | Description |
|----------|------|-------------|
| `append` | `SimpleLoadMode` | Append into destination table |
| `maximum` | `IncrementalLoadMode` | Insert records where the value exceeds the previous maximum value for a column in the destination... |
| `replace` | `SimpleLoadMode` | Replace destination table |
| `unique` | `IncrementalLoadMode` | Insert records where the value of a column is not already present in the destination table |

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `MakeDirectoryRequest`

`MakeDirectory` request message.

| Property | Type | Description |
|----------|------|-------------|
| `path` | `string` | Required. The directory's full path including directory name, relative to the workspace root. |

### `MakeDirectoryResponse`

`MakeDirectory` response message.

### `MoveDirectoryRequest`

`MoveDirectory` request message.

| Property | Type | Description |
|----------|------|-------------|
| `newPath` | `string` | Required. The new path for the directory including directory name, rooted at workspace root. |
| `path` | `string` | Required. The directory's full path including directory name, relative to the workspace root. |

### `MoveDirectoryResponse`

`MoveDirectory` response message.

### `MoveFileRequest`

`MoveFile` request message.

| Property | Type | Description |
|----------|------|-------------|
| `newPath` | `string` | Required. The file's new path including filename, relative to the workspace root. |
| `path` | `string` | Required. The file's full path including filename, relative to the workspace root. |

### `MoveFileResponse`

`MoveFile` response message.

### `Notebook`

Represents a notebook.

| Property | Type | Description |
|----------|------|-------------|
| `contents` | `string` | The contents of the notebook. |
| `dependencyTargets` | `array<Target>` | A list of actions that this action depends on. |
| `disabled` | `boolean` | Whether this action is disabled (i.e. should not be run). |
| `tags` | `array<string>` | Arbitrary, user-defined tags on this action. |

### `NotebookAction`

Represents a workflow action that will run against a Notebook runtime.

| Property | Type | Description |
|----------|------|-------------|
| `contents` | `string` | Output only. The code contents of a Notebook to be run. |
| `jobId` | `string` | Output only. The ID of the Vertex job that executed the notebook in contents and also the ID used... |

### `NotebookRuntimeOptions`

Configures various aspects of Dataform notebook runtime.

| Property | Type | Description |
|----------|------|-------------|
| `aiPlatformNotebookRuntimeTemplate` | `string` | Optional. The resource name of the [Colab runtime template] (https://cloud.google.com/colab/docs/... |
| `gcsOutputBucket` | `string` | Optional. The Google Cloud Storage location to upload the result to. Format: `gs://bucket-name`. |

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

### `Operations`

Represents a list of arbitrary database operations.

| Property | Type | Description |
|----------|------|-------------|
| `dependencyTargets` | `array<Target>` | A list of actions that this action depends on. |
| `disabled` | `boolean` | Whether this action is disabled (i.e. should not be run). |
| `hasOutput` | `boolean` | Whether these operations produce an output relation. |
| `queries` | `array<string>` | A list of arbitrary SQL statements that will be executed without alteration. |
| `relationDescriptor` | `RelationDescriptor` | Descriptor for any output relation and its columns. Only set if `has_output` is true. |
| `tags` | `array<string>` | Arbitrary, user-defined tags on this action. |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `PolicyName`

An internal name for an IAM policy, based on the resource to which the policy applies. Not to be confused with a resource's external full resource name. For more information on this distinction, see go/iam-full-resource-names.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | Identifies an instance of the type. ID format varies by type. The ID format is defined in the IAM... |
| `region` | `string` | For Cloud IAM: The location of the Policy. Must be empty or "global" for Policies owned by global... |
| `type` | `string` | Resource type. Types are defined in IAM's .service files. Valid values for type might be 'storage... |

### `PrivateResourceMetadata`

Metadata used to identify if a resource is user scoped.

| Property | Type | Description |
|----------|------|-------------|
| `userScoped` | `boolean` | Output only. If true, this resource is user-scoped, meaning it is either a workspace or sourced f... |

### `PullGitCommitsRequest`

`PullGitCommits` request message.

| Property | Type | Description |
|----------|------|-------------|
| `author` | `CommitAuthor` | Required. The author of any merge commit which may be created as a result of merging fetched Git ... |
| `remoteBranch` | `string` | Optional. The name of the branch in the Git remote from which to pull commits. If left unset, the... |

### `PullGitCommitsResponse`

`PullGitCommits` response message.

### `PushGitCommitsRequest`

`PushGitCommits` request message.

| Property | Type | Description |
|----------|------|-------------|
| `remoteBranch` | `string` | Optional. The name of the branch in the Git remote to which commits should be pushed. If left uns... |

### `PushGitCommitsResponse`

`PushGitCommits` response message.

### `QueryCompilationResultActionsResponse`

`QueryCompilationResultActions` response message.

| Property | Type | Description |
|----------|------|-------------|
| `compilationResultActions` | `array<CompilationResultAction>` | List of compilation result actions. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `QueryDirectoryContentsResponse`

`QueryDirectoryContents` response message.

| Property | Type | Description |
|----------|------|-------------|
| `directoryEntries` | `array<DirectoryEntry>` | List of entries in the directory. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `QueryRepositoryDirectoryContentsResponse`

`QueryRepositoryDirectoryContents` response message.

| Property | Type | Description |
|----------|------|-------------|
| `directoryEntries` | `array<DirectoryEntry>` | List of entries in the directory. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `QueryWorkflowInvocationActionsResponse`

`QueryWorkflowInvocationActions` response message.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `workflowInvocationActions` | `array<WorkflowInvocationAction>` | List of workflow invocation actions. |

### `ReadFileResponse`

`ReadFile` response message.

| Property | Type | Description |
|----------|------|-------------|
| `fileContents` | `string` | The file's contents. |

### `ReadRepositoryFileResponse`

`ReadRepositoryFile` response message.

| Property | Type | Description |
|----------|------|-------------|
| `contents` | `string` | The file's contents. |

### `Relation`

Represents a database relation.

| Property | Type | Description |
|----------|------|-------------|
| `additionalOptions` | `object` | Additional options that will be provided as key/value pairs into the options clause of a create t... |
| `clusterExpressions` | `array<string>` | A list of columns or SQL expressions used to cluster the table. |
| `connection` | `string` | Optional. The connection specifying the credentials to be used to read and write to external stor... |
| `dependencyTargets` | `array<Target>` | A list of actions that this action depends on. |
| `disabled` | `boolean` | Whether this action is disabled (i.e. should not be run). |
| `fileFormat` | `string` | Optional. The file format for the BigQuery table. |
| `incrementalTableConfig` | `IncrementalTableConfig` | Configures `INCREMENTAL_TABLE` settings for this relation. Only set if `relation_type` is `INCREM... |
| `partitionExpirationDays` | `integer` | Sets the partition expiration in days. |
| `partitionExpression` | `string` | The SQL expression used to partition the relation. |
| `postOperations` | `array<string>` | SQL statements to be executed after creating the relation. |
| `preOperations` | `array<string>` | SQL statements to be executed before creating the relation. |
| `relationDescriptor` | `RelationDescriptor` | Descriptor for the relation and its columns. |
| `relationType` | `string` | The type of this relation. |
| `requirePartitionFilter` | `boolean` | Specifies whether queries on this table must include a predicate filter that filters on the parti... |
| `selectQuery` | `string` | The SELECT query which returns rows which this relation should contain. |
| `storageUri` | `string` | Optional. The fully qualified location prefix of the external folder where table data is stored. ... |
| `tableFormat` | `string` | Optional. The table format for the BigQuery table. |
| `tags` | `array<string>` | Arbitrary, user-defined tags on this action. |

### `RelationDescriptor`

Describes a relation and its columns.

| Property | Type | Description |
|----------|------|-------------|
| `bigqueryLabels` | `object` | A set of BigQuery labels that should be applied to the relation. |
| `columns` | `array<ColumnDescriptor>` | A list of descriptions of columns within the relation. |
| `description` | `string` | A text description of the relation. |

### `ReleaseConfig`

Represents a Dataform release configuration.

| Property | Type | Description |
|----------|------|-------------|
| `codeCompilationConfig` | `CodeCompilationConfig` | Optional. If set, fields of `code_compilation_config` override the default compilation settings t... |
| `cronSchedule` | `string` | Optional. Optional schedule (in cron format) for automatic creation of compilation results. |
| `disabled` | `boolean` | Optional. Disables automatic creation of compilation results. |
| `gitCommitish` | `string` | Required. Git commit/tag/branch name at which the repository should be compiled. Must exist in th... |
| `internalMetadata` | `string` | Output only. All the metadata information that is used internally to serve the resource. For exam... |
| `name` | `string` | Identifier. The release config's name. |
| `recentScheduledReleaseRecords` | `array<ScheduledReleaseRecord>` | Output only. Records of the 10 most recent scheduled release attempts, ordered in descending orde... |
| `releaseCompilationResult` | `string` | Optional. The name of the currently released compilation result for this release config. This val... |
| `timeZone` | `string` | Optional. Specifies the time zone to be used when interpreting cron_schedule. Must be a time zone... |

### `RemoveDirectoryRequest`

`RemoveDirectory` request message.

| Property | Type | Description |
|----------|------|-------------|
| `path` | `string` | Required. The directory's full path including directory name, relative to the workspace root. |

### `RemoveDirectoryResponse`

`RemoveDirectory` response message.

### `RemoveFileRequest`

`RemoveFile` request message.

| Property | Type | Description |
|----------|------|-------------|
| `path` | `string` | Required. The file's full path including filename, relative to the workspace root. |

### `RemoveFileResponse`

`RemoveFile` response message.

### `Repository`

Represents a Dataform Git repository.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The timestamp of when the repository was created. |
| `dataEncryptionState` | `DataEncryptionState` | Output only. A data encryption state of a Git repository if this Repository is protected by a KMS... |
| `displayName` | `string` | Optional. The repository's user-friendly name. |
| `gitRemoteSettings` | `GitRemoteSettings` | Optional. If set, configures this repository to be linked to a Git remote. |
| `internalMetadata` | `string` | Output only. All the metadata information that is used internally to serve the resource. For exam... |
| `kmsKeyName` | `string` | Optional. The reference to a KMS encryption key. If provided, it will be used to encrypt user dat... |
| `labels` | `object` | Optional. Repository user labels. |
| `name` | `string` | Identifier. The repository's name. |
| `npmrcEnvironmentVariablesSecretVersion` | `string` | Optional. The name of the Secret Manager secret version to be used to interpolate variables into ... |
| `serviceAccount` | `string` | Optional. The service account to run workflow invocations under. |
| `setAuthenticatedUserAdmin` | `boolean` | Optional. Input only. If set to true, the authenticated user will be granted the roles/dataform.a... |
| `workspaceCompilationOverrides` | `WorkspaceCompilationOverrides` | Optional. If set, fields of `workspace_compilation_overrides` override the default compilation se... |

### `ResetWorkspaceChangesRequest`

`ResetWorkspaceChanges` request message.

| Property | Type | Description |
|----------|------|-------------|
| `clean` | `boolean` | Optional. If set to true, untracked files will be deleted. |
| `paths` | `array<string>` | Optional. Full file paths to reset back to their committed state including filename, rooted at wo... |

### `ResetWorkspaceChangesResponse`

`ResetWorkspaceChanges` response message.

### `ScheduledExecutionRecord`

A record of an attempt to create a workflow invocation for this workflow config.

| Property | Type | Description |
|----------|------|-------------|
| `errorStatus` | `Status` | The error status encountered upon this attempt to create the workflow invocation, if the attempt ... |
| `executionTime` | `string` | Output only. The timestamp of this execution attempt. |
| `workflowInvocation` | `string` | The name of the created workflow invocation, if one was successfully created. Must be in the form... |

### `ScheduledReleaseRecord`

A record of an attempt to create a compilation result for this release config.

| Property | Type | Description |
|----------|------|-------------|
| `compilationResult` | `string` | The name of the created compilation result, if one was successfully created. Must be in the forma... |
| `errorStatus` | `Status` | The error status encountered upon this attempt to create the compilation result, if the attempt w... |
| `releaseTime` | `string` | Output only. The timestamp of this release attempt. |

### `SearchFilesResponse`

Client-facing representation of a file search response.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Optional. A token, which can be sent as `page_token` to retrieve the next page. If this field is ... |
| `searchResults` | `array<SearchResult>` | List of matched results. |

### `SearchResult`

Client-facing representation of a search result entry.

| Property | Type | Description |
|----------|------|-------------|
| `directory` | `DirectorySearchResult` | Details when search result is a directory. |
| `file` | `FileSearchResult` | Details when search result is a file. |

### `SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |

### `SimpleLoadMode`

Simple load definition

### `SqlDefinition`

Definition of a SQL Data Preparation

| Property | Type | Description |
|----------|------|-------------|
| `errorTable` | `ErrorTable` | Error table configuration, |
| `load` | `LoadConfig` | Load configuration. |
| `query` | `string` | The SQL query representing the data preparation steps. Formatted as a Pipe SQL query statement. |

### `SshAuthenticationConfig`

Configures fields for performing SSH authentication.

| Property | Type | Description |
|----------|------|-------------|
| `hostPublicKey` | `string` | Required. Content of a public SSH key to verify an identity of a remote Git host. |
| `userPrivateKeySecretVersion` | `string` | Required. The name of the Secret Manager secret version to use as a ssh private key for Git opera... |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `Target`

Represents an action identifier. If the action writes output, the output will be written to the referenced database object.

| Property | Type | Description |
|----------|------|-------------|
| `database` | `string` | Optional. The action's database (Google Cloud project ID) . |
| `name` | `string` | Optional. The action's name, within `database` and `schema`. |
| `schema` | `string` | Optional. The action's schema (BigQuery dataset ID), within `database`. |

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

### `UncommittedFileChange`

Represents the Git state of a file with uncommitted changes.

| Property | Type | Description |
|----------|------|-------------|
| `path` | `string` | The file's full path including filename, relative to the workspace root. |
| `state` | `string` | Output only. Indicates the status of the file. |

### `WorkflowConfig`

Represents a Dataform workflow configuration.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The timestamp of when the WorkflowConfig was created. |
| `cronSchedule` | `string` | Optional. Optional schedule (in cron format) for automatic execution of this workflow config. |
| `disabled` | `boolean` | Optional. Disables automatic creation of workflow invocations. |
| `internalMetadata` | `string` | Output only. All the metadata information that is used internally to serve the resource. For exam... |
| `invocationConfig` | `InvocationConfig` | Optional. If left unset, a default InvocationConfig will be used. |
| `name` | `string` | Identifier. The workflow config's name. |
| `recentScheduledExecutionRecords` | `array<ScheduledExecutionRecord>` | Output only. Records of the 10 most recent scheduled execution attempts, ordered in descending or... |
| `releaseConfig` | `string` | Required. The name of the release config whose release_compilation_result should be executed. Mus... |
| `timeZone` | `string` | Optional. Specifies the time zone to be used when interpreting cron_schedule. Must be a time zone... |
| `updateTime` | `string` | Output only. The timestamp of when the WorkflowConfig was last updated. |

### `WorkflowInvocation`

Represents a single invocation of a compilation result.

| Property | Type | Description |
|----------|------|-------------|
| `compilationResult` | `string` | Immutable. The name of the compilation result to use for this invocation. Must be in the format `... |
| `dataEncryptionState` | `DataEncryptionState` | Output only. Only set if the repository has a KMS Key. |
| `internalMetadata` | `string` | Output only. All the metadata information that is used internally to serve the resource. For exam... |
| `invocationConfig` | `InvocationConfig` | Immutable. If left unset, a default InvocationConfig will be used. |
| `invocationTiming` | `Interval` | Output only. This workflow invocation's timing details. |
| `name` | `string` | Output only. The workflow invocation's name. |
| `privateResourceMetadata` | `PrivateResourceMetadata` | Output only. Metadata indicating whether this resource is user-scoped. `WorkflowInvocation` resou... |
| `resolvedCompilationResult` | `string` | Output only. The resolved compilation result that was used to create this invocation. Will be in ... |
| `state` | `string` | Output only. This workflow invocation's current state. |
| `workflowConfig` | `string` | Immutable. The name of the workflow config to invoke. Must be in the format `projects/*/locations... |

### `WorkflowInvocationAction`

Represents a single action in a workflow invocation.

| Property | Type | Description |
|----------|------|-------------|
| `bigqueryAction` | `BigQueryAction` | Output only. The workflow action's bigquery action details. |
| `canonicalTarget` | `Target` | Output only. The action's identifier if the project had been compiled without any overrides confi... |
| `dataPreparationAction` | `DataPreparationAction` | Output only. The workflow action's data preparation action details. |
| `failureReason` | `string` | Output only. If and only if action's state is FAILED a failure reason is set. |
| `internalMetadata` | `string` | Output only. All the metadata information that is used internally to serve the resource. For exam... |
| `invocationTiming` | `Interval` | Output only. This action's timing details. `start_time` will be set if the action is in [RUNNING,... |
| `notebookAction` | `NotebookAction` | Output only. The workflow action's notebook action details. |
| `state` | `string` | Output only. This action's current state. |
| `target` | `Target` | Output only. This action's identifier. Unique within the workflow invocation. |

### `Workspace`

Represents a Dataform Git workspace.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The timestamp of when the workspace was created. |
| `dataEncryptionState` | `DataEncryptionState` | Output only. A data encryption state of a Git repository if this Workspace is protected by a KMS ... |
| `internalMetadata` | `string` | Output only. All the metadata information that is used internally to serve the resource. For exam... |
| `name` | `string` | Identifier. The workspace's name. |
| `privateResourceMetadata` | `PrivateResourceMetadata` | Output only. Metadata indicating whether this resource is user-scoped. For `Workspace` resources,... |

### `WorkspaceCompilationOverrides`

Configures workspace compilation overrides for a repository.

| Property | Type | Description |
|----------|------|-------------|
| `defaultDatabase` | `string` | Optional. The default database (Google Cloud project ID). |
| `schemaSuffix` | `string` | Optional. The suffix that should be appended to all schema (BigQuery dataset ID) names. |
| `tablePrefix` | `string` | Optional. The prefix that should be prepended to all table names. |

### `WriteFile`

Represents the write file operation (for files added or modified).

| Property | Type | Description |
|----------|------|-------------|
| `contents` | `string` | The file's contents. |

### `WriteFileRequest`

`WriteFile` request message.

| Property | Type | Description |
|----------|------|-------------|
| `contents` | `string` | Required. The file's contents. |
| `path` | `string` | Required. The file. |

### `WriteFileResponse`

`WriteFile` response message.

