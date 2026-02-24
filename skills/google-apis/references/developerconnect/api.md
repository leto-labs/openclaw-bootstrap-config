# Developer Connect API - API Reference

**Version**: `v1` | **Methods**: 44 | **Schemas**: 67

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `developerconnect.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `developerconnect.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `developerconnect.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `developerconnect.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `developerconnect.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `developerconnect.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `developerconnect.projects.locations.connections.list` | GET | `v1/{+parent}/connections` | Lists Connections in a given project and location. |
| `developerconnect.projects.locations.connections.get` | GET | `v1/{+name}` | Gets details of a single Connection. |
| `developerconnect.projects.locations.connections.create` | POST | `v1/{+parent}/connections` | Creates a new Connection in a given project and location. |
| `developerconnect.projects.locations.connections.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single Connection. |
| `developerconnect.projects.locations.connections.delete` | DELETE | `v1/{+name}` | Deletes a single Connection. |
| `developerconnect.projects.locations.connections.fetchLinkableGitRepositories` | GET | `v1/{+connection}:fetchLinkableGitRepositories` | FetchLinkableGitRepositories returns a list of git repositories from an SCM that are available to... |
| `developerconnect.projects.locations.connections.fetchGitHubInstallations` | GET | `v1/{+connection}:fetchGitHubInstallations` | FetchGitHubInstallations returns the list of GitHub Installations that are available to be added ... |
| `developerconnect.projects.locations.connections.processGitHubEnterpriseWebhook` | POST | `v1/{+parent}/connections:processGitHubEnterpriseWebhook` | ProcessGitHubEnterpriseWebhook is called by the external GitHub Enterprise instances for notifyin... |
| `developerconnect.projects.locations.connections.gitRepositoryLinks.create` | POST | `v1/{+parent}/gitRepositoryLinks` | Creates a GitRepositoryLink. Upon linking a Git Repository, Developer Connect will configure the ... |
| `developerconnect.projects.locations.connections.gitRepositoryLinks.delete` | DELETE | `v1/{+name}` | Deletes a single GitRepositoryLink. |
| `developerconnect.projects.locations.connections.gitRepositoryLinks.list` | GET | `v1/{+parent}/gitRepositoryLinks` | Lists GitRepositoryLinks in a given project, location, and connection. |
| `developerconnect.projects.locations.connections.gitRepositoryLinks.get` | GET | `v1/{+name}` | Gets details of a single GitRepositoryLink. |
| `developerconnect.projects.locations.connections.gitRepositoryLinks.fetchReadWriteToken` | POST | `v1/{+gitRepositoryLink}:fetchReadWriteToken` | Fetches read/write token of a given gitRepositoryLink. |
| `developerconnect.projects.locations.connections.gitRepositoryLinks.fetchReadToken` | POST | `v1/{+gitRepositoryLink}:fetchReadToken` | Fetches read token of a given gitRepositoryLink. |
| `developerconnect.projects.locations.connections.gitRepositoryLinks.fetchGitRefs` | GET | `v1/{+gitRepositoryLink}:fetchGitRefs` | Fetch the list of branches or tags for a given repository. |
| `developerconnect.projects.locations.connections.gitRepositoryLinks.processGitLabEnterpriseWebhook` | POST | `v1/{+name}:processGitLabEnterpriseWebhook` | ProcessGitLabEnterpriseWebhook is called by the external GitLab Enterprise instances for notifyin... |
| `developerconnect.projects.locations.connections.gitRepositoryLinks.processGitLabWebhook` | POST | `v1/{+name}:processGitLabWebhook` | ProcessGitLabWebhook is called by the GitLab.com for notifying events. |
| `developerconnect.projects.locations.connections.gitRepositoryLinks.processBitbucketDataCenterWebhook` | POST | `v1/{+name}:processBitbucketDataCenterWebhook` | ProcessBitbucketDataCenterWebhook is called by the external Bitbucket Data Center instances for n... |
| `developerconnect.projects.locations.connections.gitRepositoryLinks.processBitbucketCloudWebhook` | POST | `v1/{+name}:processBitbucketCloudWebhook` | ProcessBitbucketCloudWebhook is called by the external Bitbucket Cloud instances for notifying ev... |
| `developerconnect.projects.locations.accountConnectors.list` | GET | `v1/{+parent}/accountConnectors` | Lists AccountConnectors in a given project and location. |
| `developerconnect.projects.locations.accountConnectors.get` | GET | `v1/{+name}` | Gets details of a single AccountConnector. |
| `developerconnect.projects.locations.accountConnectors.create` | POST | `v1/{+parent}/accountConnectors` | Creates a new AccountConnector in a given project and location. |
| `developerconnect.projects.locations.accountConnectors.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single AccountConnector. |
| `developerconnect.projects.locations.accountConnectors.delete` | DELETE | `v1/{+name}` | Deletes a single AccountConnector. |
| `developerconnect.projects.locations.accountConnectors.users.fetchAccessToken` | POST | `v1/{+accountConnector}/users:fetchAccessToken` | Fetches OAuth access token based on end user credentials. |
| `developerconnect.projects.locations.accountConnectors.users.list` | GET | `v1/{+parent}/users` | Lists Users in a given project, location, and account_connector. |
| `developerconnect.projects.locations.accountConnectors.users.delete` | DELETE | `v1/{+name}` | Deletes a single User. |
| `developerconnect.projects.locations.accountConnectors.users.fetchSelf` | GET | `v1/{+name}/users:fetchSelf` | Fetch the User based on the user credentials. |
| `developerconnect.projects.locations.accountConnectors.users.deleteSelf` | DELETE | `v1/{+name}/users:deleteSelf` | Delete the User based on the user credentials. |
| `developerconnect.projects.locations.accountConnectors.users.startOAuthFlow` | GET | `v1/{+accountConnector}/users:startOAuthFlow` | Starts OAuth flow for an account connector. |
| `developerconnect.projects.locations.accountConnectors.users.finishOAuthFlow` | GET | `v1/{+accountConnector}/users:finishOAuthFlow` | Finishes OAuth flow for an account connector. |
| `developerconnect.projects.locations.insightsConfigs.list` | GET | `v1/{+parent}/insightsConfigs` | Lists InsightsConfigs in a given project and location. |
| `developerconnect.projects.locations.insightsConfigs.create` | POST | `v1/{+parent}/insightsConfigs` | Creates a new InsightsConfig in a given project and location. |
| `developerconnect.projects.locations.insightsConfigs.get` | GET | `v1/{+name}` | Gets details of a single Insight. |
| `developerconnect.projects.locations.insightsConfigs.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single InsightsConfig. |
| `developerconnect.projects.locations.insightsConfigs.delete` | DELETE | `v1/{+name}` | Deletes a single Insight. |
| `developerconnect.projects.locations.insightsConfigs.deploymentEvents.get` | GET | `v1/{+name}` | Gets a single Deployment Event. |
| `developerconnect.projects.locations.insightsConfigs.deploymentEvents.list` | GET | `v1/{+parent}/deploymentEvents` | Lists Deployment Events in a given insights config. |

### `developerconnect.projects.locations.list`

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
const res = await developerconnect.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `developerconnect.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await developerconnect.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `developerconnect.projects.locations.operations.list`

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
const res = await developerconnect.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `developerconnect.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await developerconnect.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `developerconnect.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await developerconnect.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `developerconnect.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await developerconnect.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `developerconnect.projects.locations.connections.list`

**GET** `v1/{+parent}/connections`

Lists Connections in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for ListConnectionsRequest |
| `filter` | `string` | query | No | Optional. Filtering results |
| `orderBy` | `string` | query | No | Optional. Hint for how to order the results |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListConnectionsResponse`

```typescript
const res = await developerconnect.connections.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `developerconnect.projects.locations.connections.get`

**GET** `v1/{+name}`

Gets details of a single Connection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource |

**Response**: `Connection`

```typescript
const res = await developerconnect.connections.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `developerconnect.projects.locations.connections.create`

**POST** `v1/{+parent}/connections`

Creates a new Connection in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Value for parent. |
| `connectionId` | `string` | query | No | Required. Id of the requesting object If auto-generating Id server-side, remove this field and connection_id from the... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request, but do not actually post it. |

**Request body**: `Connection`

**Response**: `Operation`

```typescript
const res = await developerconnect.connections.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `developerconnect.projects.locations.connections.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single Connection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the connection, in the format `projects/{project}/locations/{location}/connections/{... |
| `allowMissing` | `boolean` | query | No | Optional. If set to true, and the connection is not found a new connection will be created. In this situation `update... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the Connection resource by the update. The fi... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request, but do not actually post it. |

**Request body**: `Connection`

**Response**: `Operation`

```typescript
const res = await developerconnect.connections.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `developerconnect.projects.locations.connections.delete`

**DELETE** `v1/{+name}`

Deletes a single Connection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource |
| `etag` | `string` | query | No | Optional. The current etag of the Connection. If an etag is provided and does not match the current etag of the Conne... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request, but do not actually post it. |

**Response**: `Operation`

```typescript
const res = await developerconnect.connections.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `developerconnect.projects.locations.connections.fetchLinkableGitRepositories`

**GET** `v1/{+connection}:fetchLinkableGitRepositories`

FetchLinkableGitRepositories returns a list of git repositories from an SCM that are available to be added to a Connection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `connection` | `string` | path | Yes | Required. The name of the Connection. Format: `projects/*/locations/*/connections/*`. |
| `pageSize` | `integer` | query | No | Optional. Number of results to return in the list. Defaults to 20. |
| `pageToken` | `string` | query | No | Optional. Page start. |

**Response**: `FetchLinkableGitRepositoriesResponse`

```typescript
const res = await developerconnect.connections.fetchLinkableGitRepositories({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `developerconnect.projects.locations.connections.fetchGitHubInstallations`

**GET** `v1/{+connection}:fetchGitHubInstallations`

FetchGitHubInstallations returns the list of GitHub Installations that are available to be added to a Connection. For github.com, only installations accessible to the authorizer token are returned. For GitHub Enterprise, all installations are returned.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `connection` | `string` | path | Yes | Required. The resource name of the connection in the format `projects/*/locations/*/connections/*`. |

**Response**: `FetchGitHubInstallationsResponse`

```typescript
const res = await developerconnect.connections.fetchGitHubInstallations({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `developerconnect.projects.locations.connections.processGitHubEnterpriseWebhook`

**POST** `v1/{+parent}/connections:processGitHubEnterpriseWebhook`

ProcessGitHubEnterpriseWebhook is called by the external GitHub Enterprise instances for notifying events.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Project and location where the webhook will be received. Format: `projects/*/locations/*`. |

**Request body**: `ProcessGitHubEnterpriseWebhookRequest`

**Response**: `Empty`

```typescript
const res = await developerconnect.connections.processGitHubEnterpriseWebhook({
  // parameters
});
```

---

### `developerconnect.projects.locations.connections.gitRepositoryLinks.create`

**POST** `v1/{+parent}/gitRepositoryLinks`

Creates a GitRepositoryLink. Upon linking a Git Repository, Developer Connect will configure the Git Repository to send webhook events to Developer Connect. Connections that use Firebase GitHub Application will have events forwarded to the Firebase service. Connections that use Gemini Code Assist will have events forwarded to Gemini Code Assist service. All other Connections will have events forwarded to Cloud Build.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Value for parent. |
| `gitRepositoryLinkId` | `string` | query | No | Required. The ID to use for the repository, which will become the final component of the repository's resource name. ... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request, but do not actually post it. |

**Request body**: `GitRepositoryLink`

**Response**: `Operation`

```typescript
const res = await developerconnect.gitRepositoryLinks.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `developerconnect.projects.locations.connections.gitRepositoryLinks.delete`

**DELETE** `v1/{+name}`

Deletes a single GitRepositoryLink.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource |
| `etag` | `string` | query | No | Optional. This checksum is computed by the server based on the value of other fields, and may be sent on update and d... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request, but do not actually post it. |

**Response**: `Operation`

```typescript
const res = await developerconnect.gitRepositoryLinks.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `developerconnect.projects.locations.connections.gitRepositoryLinks.list`

**GET** `v1/{+parent}/gitRepositoryLinks`

Lists GitRepositoryLinks in a given project, location, and connection.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for ListGitRepositoryLinksRequest |
| `filter` | `string` | query | No | Optional. Filtering results |
| `orderBy` | `string` | query | No | Optional. Hint for how to order the results |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListGitRepositoryLinksResponse`

```typescript
const res = await developerconnect.gitRepositoryLinks.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `developerconnect.projects.locations.connections.gitRepositoryLinks.get`

**GET** `v1/{+name}`

Gets details of a single GitRepositoryLink.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource |

**Response**: `GitRepositoryLink`

```typescript
const res = await developerconnect.gitRepositoryLinks.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `developerconnect.projects.locations.connections.gitRepositoryLinks.fetchReadWriteToken`

**POST** `v1/{+gitRepositoryLink}:fetchReadWriteToken`

Fetches read/write token of a given gitRepositoryLink.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `gitRepositoryLink` | `string` | path | Yes | Required. The resource name of the gitRepositoryLink in the format `projects/*/locations/*/connections/*/gitRepositor... |

**Request body**: `FetchReadWriteTokenRequest`

**Response**: `FetchReadWriteTokenResponse`

```typescript
const res = await developerconnect.gitRepositoryLinks.fetchReadWriteToken({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `developerconnect.projects.locations.connections.gitRepositoryLinks.fetchReadToken`

**POST** `v1/{+gitRepositoryLink}:fetchReadToken`

Fetches read token of a given gitRepositoryLink.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `gitRepositoryLink` | `string` | path | Yes | Required. The resource name of the gitRepositoryLink in the format `projects/*/locations/*/connections/*/gitRepositor... |

**Request body**: `FetchReadTokenRequest`

**Response**: `FetchReadTokenResponse`

```typescript
const res = await developerconnect.gitRepositoryLinks.fetchReadToken({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `developerconnect.projects.locations.connections.gitRepositoryLinks.fetchGitRefs`

**GET** `v1/{+gitRepositoryLink}:fetchGitRefs`

Fetch the list of branches or tags for a given repository.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `gitRepositoryLink` | `string` | path | Yes | Required. The resource name of GitRepositoryLink in the format `projects/*/locations/*/connections/*/gitRepositoryLin... |
| `pageSize` | `integer` | query | No | Optional. Number of results to return in the list. Default to 20. |
| `pageToken` | `string` | query | No | Optional. Page start. |
| `refType` | `string` | query | No | Required. Type of refs to fetch. |

**Response**: `FetchGitRefsResponse`

```typescript
const res = await developerconnect.gitRepositoryLinks.fetchGitRefs({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `developerconnect.projects.locations.connections.gitRepositoryLinks.processGitLabEnterpriseWebhook`

**POST** `v1/{+name}:processGitLabEnterpriseWebhook`

ProcessGitLabEnterpriseWebhook is called by the external GitLab Enterprise instances for notifying events.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The GitRepositoryLink resource where the webhook will be received. Format: `projects/*/locations/*/connecti... |

**Request body**: `ProcessGitLabEnterpriseWebhookRequest`

**Response**: `Empty`

```typescript
const res = await developerconnect.gitRepositoryLinks.processGitLabEnterpriseWebhook({
  // parameters
});
```

---

### `developerconnect.projects.locations.connections.gitRepositoryLinks.processGitLabWebhook`

**POST** `v1/{+name}:processGitLabWebhook`

ProcessGitLabWebhook is called by the GitLab.com for notifying events.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The GitRepositoryLink resource where the webhook will be received. Format: `projects/*/locations/*/connecti... |

**Request body**: `ProcessGitLabWebhookRequest`

**Response**: `Empty`

```typescript
const res = await developerconnect.gitRepositoryLinks.processGitLabWebhook({
  // parameters
});
```

---

### `developerconnect.projects.locations.connections.gitRepositoryLinks.processBitbucketDataCenterWebhook`

**POST** `v1/{+name}:processBitbucketDataCenterWebhook`

ProcessBitbucketDataCenterWebhook is called by the external Bitbucket Data Center instances for notifying events.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The GitRepositoryLink where the webhook will be received. Format: `projects/*/locations/*/connections/*/git... |

**Request body**: `ProcessBitbucketDataCenterWebhookRequest`

**Response**: `Empty`

```typescript
const res = await developerconnect.gitRepositoryLinks.processBitbucketDataCenterWebhook({
  // parameters
});
```

---

### `developerconnect.projects.locations.connections.gitRepositoryLinks.processBitbucketCloudWebhook`

**POST** `v1/{+name}:processBitbucketCloudWebhook`

ProcessBitbucketCloudWebhook is called by the external Bitbucket Cloud instances for notifying events.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The GitRepositoryLink where the webhook will be received. Format: `projects/*/locations/*/connections/*/git... |

**Request body**: `ProcessBitbucketCloudWebhookRequest`

**Response**: `Empty`

```typescript
const res = await developerconnect.gitRepositoryLinks.processBitbucketCloudWebhook({
  // parameters
});
```

---

### `developerconnect.projects.locations.accountConnectors.list`

**GET** `v1/{+parent}/accountConnectors`

Lists AccountConnectors in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for ListAccountConnectorsRequest |
| `filter` | `string` | query | No | Optional. Filtering results |
| `orderBy` | `string` | query | No | Optional. Hint for how to order the results |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListAccountConnectorsResponse`

```typescript
const res = await developerconnect.accountConnectors.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `developerconnect.projects.locations.accountConnectors.get`

**GET** `v1/{+name}`

Gets details of a single AccountConnector.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource |

**Response**: `AccountConnector`

```typescript
const res = await developerconnect.accountConnectors.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `developerconnect.projects.locations.accountConnectors.create`

**POST** `v1/{+parent}/accountConnectors`

Creates a new AccountConnector in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Location resource name as the account_connector’s parent. |
| `accountConnectorId` | `string` | query | No | Required. The ID to use for the AccountConnector, which will become the final component of the AccountConnector's res... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request, but do not actually post it. |

**Request body**: `AccountConnector`

**Response**: `Operation`

```typescript
const res = await developerconnect.accountConnectors.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `developerconnect.projects.locations.accountConnectors.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single AccountConnector.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the accountConnector, in the format `projects/{project}/locations/{location}/account... |
| `allowMissing` | `boolean` | query | No | Optional. If set to true, and the accountConnector is not found a new accountConnector will be created. In this situa... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Optional. The list of fields to be updated. |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request, but do not actually post it. |

**Request body**: `AccountConnector`

**Response**: `Operation`

```typescript
const res = await developerconnect.accountConnectors.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `developerconnect.projects.locations.accountConnectors.delete`

**DELETE** `v1/{+name}`

Deletes a single AccountConnector.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource |
| `etag` | `string` | query | No | Optional. The current etag of the AccountConnectorn. If an etag is provided and does not match the current etag of th... |
| `force` | `boolean` | query | No | Optional. If set to true, any Users from this AccountConnector will also be deleted. (Otherwise, the request will onl... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request, but do not actually post it. |

**Response**: `Operation`

```typescript
const res = await developerconnect.accountConnectors.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `developerconnect.projects.locations.accountConnectors.users.fetchAccessToken`

**POST** `v1/{+accountConnector}/users:fetchAccessToken`

Fetches OAuth access token based on end user credentials.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountConnector` | `string` | path | Yes | Required. The resource name of the AccountConnector in the format `projects/*/locations/*/accountConnectors/*`. |

**Request body**: `FetchAccessTokenRequest`

**Response**: `FetchAccessTokenResponse`

```typescript
const res = await developerconnect.users.fetchAccessToken({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `developerconnect.projects.locations.accountConnectors.users.list`

**GET** `v1/{+parent}/users`

Lists Users in a given project, location, and account_connector.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for ListUsersRequest |
| `filter` | `string` | query | No | Optional. Filtering results |
| `orderBy` | `string` | query | No | Optional. Hint for how to order the results |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListUsersResponse`

```typescript
const res = await developerconnect.users.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `developerconnect.projects.locations.accountConnectors.users.delete`

**DELETE** `v1/{+name}`

Deletes a single User.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource |
| `etag` | `string` | query | No | Optional. This checksum is computed by the server based on the value of other fields, and may be sent on update and d... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request, but do not actually post it. |

**Response**: `Operation`

```typescript
const res = await developerconnect.users.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `developerconnect.projects.locations.accountConnectors.users.fetchSelf`

**GET** `v1/{+name}/users:fetchSelf`

Fetch the User based on the user credentials.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the AccountConnector resource |

**Response**: `User`

```typescript
const res = await developerconnect.users.fetchSelf({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `developerconnect.projects.locations.accountConnectors.users.deleteSelf`

**DELETE** `v1/{+name}/users:deleteSelf`

Delete the User based on the user credentials.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the AccountConnector resource |

**Response**: `Operation`

```typescript
const res = await developerconnect.users.deleteSelf({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `developerconnect.projects.locations.accountConnectors.users.startOAuthFlow`

**GET** `v1/{+accountConnector}/users:startOAuthFlow`

Starts OAuth flow for an account connector.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountConnector` | `string` | path | Yes | Required. The resource name of the AccountConnector in the format `projects/*/locations/*/accountConnectors/*`. |

**Response**: `StartOAuthResponse`

```typescript
const res = await developerconnect.users.startOAuthFlow({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `developerconnect.projects.locations.accountConnectors.users.finishOAuthFlow`

**GET** `v1/{+accountConnector}/users:finishOAuthFlow`

Finishes OAuth flow for an account connector.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `accountConnector` | `string` | path | Yes | Required. The resource name of the AccountConnector in the format `projects/*/locations/*/accountConnectors/*`. |
| `googleOauthParams.scopes` | `string` | query | No | Required. The scopes returned by Google OAuth flow. |
| `googleOauthParams.ticket` | `string` | query | No | Required. The ticket to be used for post processing the callback from Google OAuth flow. |
| `googleOauthParams.versionInfo` | `string` | query | No | Optional. The version info returned by Google OAuth flow. |
| `oauthParams.code` | `string` | query | No | Required. The code to be used for getting the token from SCM provider. |
| `oauthParams.ticket` | `string` | query | No | Required. The ticket to be used for post processing the callback from SCM provider. |

**Response**: `FinishOAuthResponse`

```typescript
const res = await developerconnect.users.finishOAuthFlow({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `developerconnect.projects.locations.insightsConfigs.list`

**GET** `v1/{+parent}/insightsConfigs`

Lists InsightsConfigs in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for ListInsightsConfigsRequest. |
| `filter` | `string` | query | No | Optional. Filtering results. See https://google.aip.dev/160 for more details. Filter string, adhering to the rules in... |
| `orderBy` | `string` | query | No | Optional. Hint for how to order the results. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListInsightsConfigsResponse`

```typescript
const res = await developerconnect.insightsConfigs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `developerconnect.projects.locations.insightsConfigs.create`

**POST** `v1/{+parent}/insightsConfigs`

Creates a new InsightsConfig in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Value for parent. |
| `insightsConfigId` | `string` | query | No | Required. ID of the requesting InsightsConfig. |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request, but do not actually post it. |

**Request body**: `InsightsConfig`

**Response**: `Operation`

```typescript
const res = await developerconnect.insightsConfigs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `developerconnect.projects.locations.insightsConfigs.get`

**GET** `v1/{+name}`

Gets details of a single Insight.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. |

**Response**: `InsightsConfig`

```typescript
const res = await developerconnect.insightsConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `developerconnect.projects.locations.insightsConfigs.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single InsightsConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The name of the InsightsConfig. Format: projects/{project}/locations/{location}/insightsConfigs/{insights... |
| `allowMissing` | `boolean` | query | No | Optional. If set to true, and the insightsConfig is not found a new insightsConfig will be created. In this situation... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request, but do not actually post it. |

**Request body**: `InsightsConfig`

**Response**: `Operation`

```typescript
const res = await developerconnect.insightsConfigs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `developerconnect.projects.locations.insightsConfigs.delete`

**DELETE** `v1/{+name}`

Deletes a single Insight.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Value for parent. |
| `etag` | `string` | query | No | Optional. This checksum is computed by the server based on the value of other fields, and may be sent on update and d... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `validateOnly` | `boolean` | query | No | Optional. If set, validate the request, but do not actually post it. |

**Response**: `Operation`

```typescript
const res = await developerconnect.insightsConfigs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `developerconnect.projects.locations.insightsConfigs.deploymentEvents.get`

**GET** `v1/{+name}`

Gets a single Deployment Event.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the deployment event to retrieve. Format: projects/{project}/locations/{location}/insightsConfi... |

**Response**: `DeploymentEvent`

```typescript
const res = await developerconnect.deploymentEvents.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `developerconnect.projects.locations.insightsConfigs.deploymentEvents.list`

**GET** `v1/{+parent}/deploymentEvents`

Lists Deployment Events in a given insights config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent insights config that owns this collection of deployment events. Format: projects/{project}/locat... |
| `filter` | `string` | query | No | Optional. Filter expression that matches a subset of the DeploymentEvents. https://google.aip.dev/160. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of deployment events to return. The service may return fewer than this value. If unspeci... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListDeploymentEvents` call. Provide this to retrieve the subsequent... |

**Response**: `ListDeploymentEventsResponse`

```typescript
const res = await developerconnect.deploymentEvents.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AccountConnector`

AccountConnector encapsulates what a platform administrator needs to configure for users to connect to the service providers, which includes, among other fields, the OAuth client ID, client secret, and authorization and token endpoints.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. Allows users to store small amounts of arbitrary data. |
| `createTime` | `string` | Output only. The timestamp when the accountConnector was created. |
| `etag` | `string` | Optional. This checksum is computed by the server based on the value of other fields, and may be ... |
| `labels` | `object` | Optional. Labels as key value pairs |
| `name` | `string` | Identifier. The resource name of the accountConnector, in the format `projects/{project}/location... |
| `oauthStartUri` | `string` | Output only. Start OAuth flow by clicking on this URL. |
| `providerOauthConfig` | `ProviderOAuthConfig` | Optional. Provider OAuth config. |
| `updateTime` | `string` | Output only. The timestamp when the accountConnector was updated. |

### `AppHubService`

AppHubService represents the App Hub Service.

| Property | Type | Description |
|----------|------|-------------|
| `apphubService` | `string` | Required. Output only. Immutable. The name of the App Hub Service. Format: `projects/{project}/lo... |
| `criticality` | `string` | Output only. The criticality of the App Hub Service. |
| `environment` | `string` | Output only. The environment of the App Hub Service. |

### `AppHubWorkload`

AppHubWorkload represents the App Hub Workload.

| Property | Type | Description |
|----------|------|-------------|
| `criticality` | `string` | Output only. The criticality of the App Hub Workload. |
| `environment` | `string` | Output only. The environment of the App Hub Workload. |
| `workload` | `string` | Required. Output only. Immutable. The name of the App Hub Workload. Format: `projects/{project}/l... |

### `ArtifactConfig`

The artifact config of the artifact that is deployed.

| Property | Type | Description |
|----------|------|-------------|
| `googleArtifactAnalysis` | `GoogleArtifactAnalysis` | Optional. Set if the artifact metadata is stored in Artifact analysis. |
| `googleArtifactRegistry` | `GoogleArtifactRegistry` | Optional. Set if the artifact is stored in Artifact registry. |
| `uri` | `string` | Required. Immutable. The URI of the artifact that is deployed. e.g. `us-docker.pkg.dev/my-project... |

### `ArtifactDeployment`

The ArtifactDeployment resource represents the deployment of the artifact within the InsightsConfig resource.

| Property | Type | Description |
|----------|------|-------------|
| `artifactAlias` | `string` | Output only. The artifact alias in the deployment spec, with Tag/SHA. e.g. us-docker.pkg.dev/my-p... |
| `artifactReference` | `string` | Output only. The artifact that is deployed. |
| `containerStatusSummary` | `string` | Output only. The summary of container status of the artifact deployment. Format as `ContainerStat... |
| `deployTime` | `string` | Output only. The time at which the deployment was deployed. |
| `id` | `string` | Output only. Unique identifier of `ArtifactDeployment`. |
| `sourceCommitUris` | `array<string>` | Output only. The source commits at which this artifact was built. Extracted from provenance. |
| `undeployTime` | `string` | Output only. The time at which the deployment was undeployed, all artifacts are considered undepl... |

### `BasicAuthentication`

Basic authentication with username and password.

| Property | Type | Description |
|----------|------|-------------|
| `passwordSecretVersion` | `string` | The password SecretManager secret version to authenticate as. |
| `username` | `string` | Required. The username to authenticate as. |

### `BearerTokenAuthentication`

Bearer token authentication with a token.

| Property | Type | Description |
|----------|------|-------------|
| `tokenSecretVersion` | `string` | Optional. The token SecretManager secret version to authenticate as. |

### `BitbucketCloudConfig`

Configuration for connections to an instance of Bitbucket Cloud.

| Property | Type | Description |
|----------|------|-------------|
| `authorizerCredential` | `UserCredential` | Required. An access token with the minimum `repository`, `pullrequest` and `webhook` scope access... |
| `readAuthorizerCredential` | `UserCredential` | Required. An access token with the minimum `repository` access. It can either be a workspace, pro... |
| `webhookSecretSecretVersion` | `string` | Required. Immutable. SecretManager resource containing the webhook secret used to verify webhook ... |
| `workspace` | `string` | Required. The Bitbucket Cloud Workspace ID to be connected to Google Cloud Platform. |

### `BitbucketDataCenterConfig`

Configuration for connections to an instance of Bitbucket Data Center.

| Property | Type | Description |
|----------|------|-------------|
| `authorizerCredential` | `UserCredential` | Required. An http access token with the minimum `Repository admin` scope access. This is needed t... |
| `hostUri` | `string` | Required. The URI of the Bitbucket Data Center host this connection is for. |
| `readAuthorizerCredential` | `UserCredential` | Required. An http access token with the minimum `Repository read` access. It's recommended to use... |
| `serverVersion` | `string` | Output only. Version of the Bitbucket Data Center server running on the `host_uri`. |
| `serviceDirectoryConfig` | `ServiceDirectoryConfig` | Optional. Configuration for using Service Directory to privately connect to a Bitbucket Data Cent... |
| `sslCaCertificate` | `string` | Optional. SSL certificate authority to trust when making requests to Bitbucket Data Center. |
| `webhookSecretSecretVersion` | `string` | Required. Immutable. SecretManager resource containing the webhook secret used to verify webhook ... |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `Connection`

Message describing Connection object

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. Allows clients to store small amounts of arbitrary data. |
| `bitbucketCloudConfig` | `BitbucketCloudConfig` | Configuration for connections to an instance of Bitbucket Clouds. |
| `bitbucketDataCenterConfig` | `BitbucketDataCenterConfig` | Configuration for connections to an instance of Bitbucket Data Center. |
| `createTime` | `string` | Output only. [Output only] Create timestamp |
| `cryptoKeyConfig` | `CryptoKeyConfig` | Optional. The crypto key configuration. This field is used by the Customer-Managed Encryption Key... |
| `deleteTime` | `string` | Output only. [Output only] Delete timestamp |
| `disabled` | `boolean` | Optional. If disabled is set to true, functionality is disabled for this connection. Repository b... |
| `etag` | `string` | Optional. This checksum is computed by the server based on the value of other fields, and may be ... |
| `gitProxyConfig` | `GitProxyConfig` | Optional. Configuration for the git proxy feature. Enabling the git proxy allows clients to perfo... |
| `githubConfig` | `GitHubConfig` | Configuration for connections to github.com. |
| `githubEnterpriseConfig` | `GitHubEnterpriseConfig` | Configuration for connections to an instance of GitHub Enterprise. |
| `gitlabConfig` | `GitLabConfig` | Configuration for connections to gitlab.com. |
| `gitlabEnterpriseConfig` | `GitLabEnterpriseConfig` | Configuration for connections to an instance of GitLab Enterprise. |
| `httpConfig` | `GenericHTTPEndpointConfig` | Optional. Configuration for connections to an HTTP service provider. |
| `installationState` | `InstallationState` | Output only. Installation state of the Connection. |
| `labels` | `object` | Optional. Labels as key value pairs |
| `name` | `string` | Identifier. The resource name of the connection, in the format `projects/{project}/locations/{loc... |
| `reconciling` | `boolean` | Output only. Set to true when the connection is being set up or updated in the background. |
| `secureSourceManagerInstanceConfig` | `SecureSourceManagerInstanceConfig` | Configuration for connections to an instance of Secure Source Manager. |
| `uid` | `string` | Output only. A system-assigned unique identifier for the Connection. |
| `updateTime` | `string` | Output only. [Output only] Update timestamp |

### `CryptoKeyConfig`

The crypto key configuration. This field is used by the Customer-managed encryption keys (CMEK) feature.

| Property | Type | Description |
|----------|------|-------------|
| `keyReference` | `string` | Required. The name of the key which is used to encrypt/decrypt customer data. For key in Cloud KM... |

### `DeploymentEvent`

The DeploymentEvent resource represents the deployment of the artifact within the InsightsConfig resource.

| Property | Type | Description |
|----------|------|-------------|
| `artifactDeployments` | `array<ArtifactDeployment>` | Output only. The artifact deployments of the DeploymentEvent. Each artifact deployment contains t... |
| `createTime` | `string` | Output only. The create time of the DeploymentEvent. |
| `deployTime` | `string` | Output only. The time at which the DeploymentEvent was deployed. This would be the min of all Art... |
| `name` | `string` | Identifier. The name of the DeploymentEvent. This name is provided by Developer Connect insights.... |
| `runtimeConfig` | `RuntimeConfig` | Output only. The runtime configurations where the DeploymentEvent happened. |
| `runtimeDeploymentUri` | `string` | Output only. The runtime assigned URI of the DeploymentEvent. For GKE, this is the fully qualifie... |
| `state` | `string` | Output only. The state of the DeploymentEvent. |
| `undeployTime` | `string` | Output only. The time at which the DeploymentEvent was undeployed, all artifacts are considered u... |
| `updateTime` | `string` | Output only. The update time of the DeploymentEvent. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `ExchangeError`

Message for representing an error from exchanging OAuth tokens.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | https://datatracker.ietf.org/doc/html/rfc6749#section-5.2 - error |
| `description` | `string` | https://datatracker.ietf.org/doc/html/rfc6749#section-5.2 - error_description |

### `FetchAccessTokenRequest`

Message for fetching an OAuth access token.

### `FetchAccessTokenResponse`

Message for responding to getting an OAuth access token.

| Property | Type | Description |
|----------|------|-------------|
| `exchangeError` | `ExchangeError` | The error resulted from exchanging OAuth tokens from the service provider. |
| `expirationTime` | `string` | Expiration timestamp. Can be empty if unknown or non-expiring. |
| `scopes` | `array<string>` | The scopes of the access token. |
| `token` | `string` | The token content. |

### `FetchGitHubInstallationsResponse`

Response of fetching github installations.

| Property | Type | Description |
|----------|------|-------------|
| `installations` | `array<Installation>` | List of installations available to the OAuth user (for github.com) or all the installations (for ... |

### `FetchGitRefsResponse`

Response for fetching git refs.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `refNames` | `array<string>` | Name of the refs fetched. |

### `FetchLinkableGitRepositoriesResponse`

Response message for FetchLinkableGitRepositories.

| Property | Type | Description |
|----------|------|-------------|
| `linkableGitRepositories` | `array<LinkableGitRepository>` | The git repositories that can be linked to the connection. |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |

### `FetchReadTokenRequest`

Message for fetching SCM read token.

### `FetchReadTokenResponse`

Message for responding to get read token.

| Property | Type | Description |
|----------|------|-------------|
| `expirationTime` | `string` | Expiration timestamp. Can be empty if unknown or non-expiring. |
| `gitUsername` | `string` | The git_username to specify when making a git clone with the token. For example, for GitHub GitRe... |
| `token` | `string` | The token content. |

### `FetchReadWriteTokenRequest`

Message for fetching SCM read/write token.

### `FetchReadWriteTokenResponse`

Message for responding to get read/write token.

| Property | Type | Description |
|----------|------|-------------|
| `expirationTime` | `string` | Expiration timestamp. Can be empty if unknown or non-expiring. |
| `gitUsername` | `string` | The git_username to specify when making a git clone with the token. For example, for GitHub GitRe... |
| `token` | `string` | The token content. |

### `FinishOAuthResponse`

Message for responding to finishing an OAuth flow.

| Property | Type | Description |
|----------|------|-------------|
| `exchangeError` | `ExchangeError` | The error resulted from exchanging OAuth tokens from the service provider. |

### `GKEWorkload`

GKEWorkload represents the Google Kubernetes Engine runtime.

| Property | Type | Description |
|----------|------|-------------|
| `cluster` | `string` | Required. Immutable. The name of the GKE cluster. Format: `projects/{project}/locations/{location... |
| `deployment` | `string` | Output only. The name of the GKE deployment. Format: `projects/{project}/locations/{location}/clu... |

### `GenericHTTPEndpointConfig`

Defines the configuration for connections to an HTTP service provider.

| Property | Type | Description |
|----------|------|-------------|
| `basicAuthentication` | `BasicAuthentication` | Optional. Basic authentication with username and password. |
| `bearerTokenAuthentication` | `BearerTokenAuthentication` | Optional. Bearer token authentication with a token. |
| `hostUri` | `string` | Required. Immutable. The service provider's https endpoint. |
| `serviceDirectoryConfig` | `ServiceDirectoryConfig` | Optional. Configuration for using Service Directory to privately connect to a HTTP service provid... |
| `sslCaCertificate` | `string` | Optional. The SSL certificate to use for requests to the HTTP service provider. |

### `GitHubConfig`

Configuration for connections to github.com.

| Property | Type | Description |
|----------|------|-------------|
| `appInstallationId` | `string` | Optional. GitHub App installation id. |
| `authorizerCredential` | `OAuthCredential` | Optional. OAuth credential of the account that authorized the GitHub App. It is recommended to us... |
| `githubApp` | `string` | Required. Immutable. The GitHub Application that was installed to the GitHub user or organization. |
| `installationUri` | `string` | Output only. The URI to navigate to in order to manage the installation associated with this GitH... |

### `GitHubEnterpriseConfig`

Configuration for connections to an instance of GitHub Enterprise.

| Property | Type | Description |
|----------|------|-------------|
| `appId` | `string` | Optional. ID of the GitHub App created from the manifest. |
| `appInstallationId` | `string` | Optional. ID of the installation of the GitHub App. |
| `appSlug` | `string` | Output only. The URL-friendly name of the GitHub App. |
| `hostUri` | `string` | Required. The URI of the GitHub Enterprise host this connection is for. |
| `installationUri` | `string` | Output only. The URI to navigate to in order to manage the installation associated with this GitH... |
| `organization` | `string` | Optional. Immutable. GitHub Enterprise organization in which the GitHub App is created. |
| `privateKeySecretVersion` | `string` | Optional. SecretManager resource containing the private key of the GitHub App, formatted as `proj... |
| `serverVersion` | `string` | Output only. GitHub Enterprise version installed at the host_uri. |
| `serviceDirectoryConfig` | `ServiceDirectoryConfig` | Optional. Configuration for using Service Directory to privately connect to a GitHub Enterprise s... |
| `sslCaCertificate` | `string` | Optional. SSL certificate to use for requests to GitHub Enterprise. |
| `webhookSecretSecretVersion` | `string` | Optional. SecretManager resource containing the webhook secret of the GitHub App, formatted as `p... |

### `GitLabConfig`

Configuration for connections to gitlab.com.

| Property | Type | Description |
|----------|------|-------------|
| `authorizerCredential` | `UserCredential` | Required. A GitLab personal access token with the minimum `api` scope access and a minimum role o... |
| `readAuthorizerCredential` | `UserCredential` | Required. A GitLab personal access token with the minimum `read_api` scope access and a minimum r... |
| `webhookSecretSecretVersion` | `string` | Required. Immutable. SecretManager resource containing the webhook secret of a GitLab project, fo... |

### `GitLabEnterpriseConfig`

Configuration for connections to an instance of GitLab Enterprise.

| Property | Type | Description |
|----------|------|-------------|
| `authorizerCredential` | `UserCredential` | Required. A GitLab personal access token with the minimum `api` scope access and a minimum role o... |
| `hostUri` | `string` | Required. The URI of the GitLab Enterprise host this connection is for. |
| `readAuthorizerCredential` | `UserCredential` | Required. A GitLab personal access token with the minimum `read_api` scope access and a minimum r... |
| `serverVersion` | `string` | Output only. Version of the GitLab Enterprise server running on the `host_uri`. |
| `serviceDirectoryConfig` | `ServiceDirectoryConfig` | Optional. Configuration for using Service Directory to privately connect to a GitLab Enterprise i... |
| `sslCaCertificate` | `string` | Optional. SSL Certificate Authority certificate to use for requests to GitLab Enterprise instance. |
| `webhookSecretSecretVersion` | `string` | Required. Immutable. SecretManager resource containing the webhook secret of a GitLab project, fo... |

### `GitProxyConfig`

The git proxy configuration.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Optional. Setting this to true allows the git proxy to be used for performing git operations on t... |
| `httpProxyBaseUri` | `string` | Output only. The base URI for the HTTP proxy endpoint. Has the format `https://{generatedID}-c-h-... |

### `GitRepositoryLink`

Message describing the GitRepositoryLink object

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. Allows clients to store small amounts of arbitrary data. |
| `cloneUri` | `string` | Required. Git Clone URI. |
| `createTime` | `string` | Output only. [Output only] Create timestamp |
| `deleteTime` | `string` | Output only. [Output only] Delete timestamp |
| `etag` | `string` | Optional. This checksum is computed by the server based on the value of other fields, and may be ... |
| `gitProxyUri` | `string` | Output only. URI to access the linked repository through the Git Proxy. This field is only popula... |
| `labels` | `object` | Optional. Labels as key value pairs |
| `name` | `string` | Identifier. Resource name of the repository, in the format `projects/*/locations/*/connections/*/... |
| `reconciling` | `boolean` | Output only. Set to true when the connection is being set up or updated in the background. |
| `uid` | `string` | Output only. A system-assigned unique identifier for the GitRepositoryLink. |
| `updateTime` | `string` | Output only. [Output only] Update timestamp |
| `webhookId` | `string` | Output only. External ID of the webhook created for the repository. |

### `GoogleArtifactAnalysis`

Google Artifact Analysis configurations.

| Property | Type | Description |
|----------|------|-------------|
| `projectId` | `string` | Required. The project id of the project where the provenance is stored. |

### `GoogleArtifactRegistry`

Google Artifact Registry configurations.

| Property | Type | Description |
|----------|------|-------------|
| `artifactRegistryPackage` | `string` | Required. Immutable. The name of the artifact registry package. |
| `projectId` | `string` | Required. The host project of Artifact Registry. |

### `GoogleCloudRun`

GoogleCloudRun represents the Cloud Run runtime.

| Property | Type | Description |
|----------|------|-------------|
| `serviceUri` | `string` | Required. Immutable. The name of the Cloud Run service. Format: `projects/{project}/locations/{lo... |

### `HttpBody`

Message that represents an arbitrary HTTP body. It should only be used for payload formats that can't be represented as JSON, such as raw binary or an HTML page. This message can be used both in streaming and non-streaming API methods in the request as well as the response. It can be used as a top-level request field, which is convenient if one wants to extract parameters from either the URL or HTTP template into the request fields and also want access to the raw HTTP body. Example: message GetResourceRequest { // A unique request id. string request_id = 1; // The raw HTTP body is bound to this field. google.api.HttpBody http_body = 2; } service ResourceService { rpc GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); } Example with streaming methods: service CaldavService { rpc GetCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); } Use of this type only changes how the request and response bodies are handled, all other features will continue to work unchanged.

| Property | Type | Description |
|----------|------|-------------|
| `contentType` | `string` | The HTTP Content-Type header value specifying the content type of the body. |
| `data` | `string` | The HTTP request/response body as raw binary. |
| `extensions` | `array<object>` | Application specific response metadata. Must be set in the first response for streaming APIs. |

### `InsightsConfig`

The InsightsConfig resource is the core configuration object to capture events from your Software Development Lifecycle. It acts as the central hub for managing how Developer Connect understands your application, its runtime environments, and the artifacts deployed within them.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `object` | Optional. User specified annotations. See https://google.aip.dev/148#annotations for more details... |
| `appHubApplication` | `string` | Optional. The name of the App Hub Application. Format: projects/{project}/locations/{location}/ap... |
| `artifactConfigs` | `array<ArtifactConfig>` | Optional. The artifact configurations of the artifacts that are deployed. |
| `createTime` | `string` | Output only. Create timestamp. |
| `errors` | `array<Status>` | Output only. Any errors that occurred while setting up the InsightsConfig. Each error will be in ... |
| `labels` | `object` | Optional. Set of labels associated with an InsightsConfig. |
| `name` | `string` | Identifier. The name of the InsightsConfig. Format: projects/{project}/locations/{location}/insig... |
| `projects` | `Projects` | Optional. The projects to track with the InsightsConfig. |
| `reconciling` | `boolean` | Output only. Reconciling (https://google.aip.dev/128#reconciliation). Set to true if the current ... |
| `runtimeConfigs` | `array<RuntimeConfig>` | Output only. The runtime configurations where the application is deployed. |
| `state` | `string` | Optional. Output only. The state of the InsightsConfig. |
| `updateTime` | `string` | Output only. Update timestamp. |

### `Installation`

Represents an installation of the GitHub App.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | ID of the installation in GitHub. |
| `name` | `string` | Name of the GitHub user or organization that owns this installation. |
| `type` | `string` | Either "user" or "organization". |

### `InstallationState`

Describes stage and necessary actions to be taken by the user to complete the installation. Used for GitHub and GitHub Enterprise based connections.

| Property | Type | Description |
|----------|------|-------------|
| `actionUri` | `string` | Output only. Link to follow for next action. Empty string if the installation is already complete. |
| `message` | `string` | Output only. Message of what the user should do next to continue the installation. Empty string i... |
| `stage` | `string` | Output only. Current step of the installation process. |

### `LinkableGitRepository`

LinkableGitRepository represents a git repository that can be linked to a connection.

| Property | Type | Description |
|----------|------|-------------|
| `cloneUri` | `string` | The clone uri of the repository. |

### `ListAccountConnectorsResponse`

Message for response to listing AccountConnectors

| Property | Type | Description |
|----------|------|-------------|
| `accountConnectors` | `array<AccountConnector>` | The list of AccountConnectors |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListConnectionsResponse`

Message for response to listing Connections

| Property | Type | Description |
|----------|------|-------------|
| `connections` | `array<Connection>` | The list of Connection |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListDeploymentEventsResponse`

Response to listing DeploymentEvents.

| Property | Type | Description |
|----------|------|-------------|
| `deploymentEvents` | `array<DeploymentEvent>` | The list of DeploymentEvents. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `ListGitRepositoryLinksResponse`

Message for response to listing GitRepositoryLinks

| Property | Type | Description |
|----------|------|-------------|
| `gitRepositoryLinks` | `array<GitRepositoryLink>` | The list of GitRepositoryLinks |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListInsightsConfigsResponse`

Request for response to listing InsightsConfigs.

| Property | Type | Description |
|----------|------|-------------|
| `insightsConfigs` | `array<InsightsConfig>` | The list of InsightsConfigs. |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
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

### `ListUsersResponse`

Message for response to listing Users

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `unreachable` | `array<string>` | Locations that could not be reached. |
| `users` | `array<User>` | The list of Users |

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
| `oauthTokenSecretVersion` | `string` | Required. A SecretManager resource containing the OAuth token that authorizes the connection. For... |
| `username` | `string` | Output only. The username associated with this token. |

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

### `ProcessBitbucketCloudWebhookRequest`

RPC request object accepted by the ProcessBitbucketCloudWebhook RPC method.

| Property | Type | Description |
|----------|------|-------------|
| `body` | `HttpBody` | Required. HTTP request body. |

### `ProcessBitbucketDataCenterWebhookRequest`

RPC request object accepted by the ProcessBitbucketDataCenterWebhook RPC method.

| Property | Type | Description |
|----------|------|-------------|
| `body` | `HttpBody` | Required. HTTP request body. |

### `ProcessGitHubEnterpriseWebhookRequest`

RPC request object accepted by the ProcessGitHubEnterpriseWebhook RPC method.

| Property | Type | Description |
|----------|------|-------------|
| `body` | `HttpBody` | Required. HTTP request body. |

### `ProcessGitLabEnterpriseWebhookRequest`

RPC request object accepted by the ProcessGitLabEnterpriseWebhook RPC method.

| Property | Type | Description |
|----------|------|-------------|
| `body` | `HttpBody` | Required. HTTP request body. |

### `ProcessGitLabWebhookRequest`

RPC request object accepted by the ProcessGitLabWebhook RPC method.

| Property | Type | Description |
|----------|------|-------------|
| `body` | `HttpBody` | Required. HTTP request body. |

### `Projects`

Projects represents the projects to track with the InsightsConfig.

| Property | Type | Description |
|----------|------|-------------|
| `projectIds` | `array<string>` | Optional. The project IDs. Format: {project} |

### `ProviderOAuthConfig`

ProviderOAuthConfig is the OAuth config for a provider.

| Property | Type | Description |
|----------|------|-------------|
| `scopes` | `array<string>` | Required. User selected scopes to apply to the Oauth config In the event of changing scopes, user... |
| `systemProviderId` | `string` | Optional. Immutable. Developer Connect provided OAuth. |

### `RuntimeConfig`

RuntimeConfig represents the runtimes where the application is deployed.

| Property | Type | Description |
|----------|------|-------------|
| `appHubService` | `AppHubService` | Output only. App Hub Service. |
| `appHubWorkload` | `AppHubWorkload` | Output only. App Hub Workload. |
| `gkeWorkload` | `GKEWorkload` | Output only. Google Kubernetes Engine runtime. |
| `googleCloudRun` | `GoogleCloudRun` | Output only. Cloud Run runtime. |
| `state` | `string` | Output only. The state of the Runtime. |
| `uri` | `string` | Required. Immutable. The URI of the runtime configuration. For GKE, this is the cluster name. For... |

### `SecureSourceManagerInstanceConfig`

Configuration for connections to SSM instance

| Property | Type | Description |
|----------|------|-------------|
| `instance` | `string` | Required. Immutable. SSM instance resource, formatted as `projects/*/locations/*/instances/*` |

### `ServiceDirectoryConfig`

ServiceDirectoryConfig represents Service Directory configuration for a connection.

| Property | Type | Description |
|----------|------|-------------|
| `service` | `string` | Required. The Service Directory service name. Format: projects/{project}/locations/{location}/nam... |

### `StartOAuthResponse`

Message for responding to starting an OAuth flow.

| Property | Type | Description |
|----------|------|-------------|
| `authUri` | `string` | The authorization server URL to the OAuth flow of the service provider. |
| `clientId` | `string` | The client ID to the OAuth App of the service provider. |
| `codeChallenge` | `string` | Please refer to https://datatracker.ietf.org/doc/html/rfc7636#section-4.1 |
| `codeChallengeMethod` | `string` | Please refer to https://datatracker.ietf.org/doc/html/rfc7636#section-4.2 |
| `scopes` | `array<string>` | The list of scopes requested by the application. |
| `systemProviderId` | `string` | The ID of the system provider. |
| `ticket` | `string` | The ticket to be used for post processing the callback from the service provider. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `User`

User represents a user connected to the service providers through a AccountConnector.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The timestamp when the user was created. |
| `displayName` | `string` | Output only. Developer Connect automatically converts user identity to some human readable descri... |
| `lastTokenRequestTime` | `string` | Output only. The timestamp when the token was last requested. |
| `name` | `string` | Identifier. Resource name of the user, in the format `projects/*/locations/*/accountConnectors/*/... |

### `UserCredential`

Represents a personal access token that authorized the Connection, and associated metadata.

| Property | Type | Description |
|----------|------|-------------|
| `userTokenSecretVersion` | `string` | Required. A SecretManager resource containing the user token that authorizes the Developer Connec... |
| `username` | `string` | Output only. The username associated with this token. |

