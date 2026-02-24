# Gemini Enterprise for Customer Experience API - API Reference

**Version**: `v1` | **Methods**: 59 | **Schemas**: 170

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `ces.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `ces.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `ces.projects.locations.apps.create` | POST | `v1/{+parent}/apps` | Creates a new app in the given project and location. |
| `ces.projects.locations.apps.importApp` | POST | `v1/{+parent}/apps:importApp` | Imports the specified app. |
| `ces.projects.locations.apps.list` | GET | `v1/{+parent}/apps` | Lists apps in the given project and location. |
| `ces.projects.locations.apps.delete` | DELETE | `v1/{+name}` | Deletes the specified app. |
| `ces.projects.locations.apps.retrieveToolSchema` | POST | `v1/{+parent}:retrieveToolSchema` | Retrieve the schema of the given tool. The schema is computed on the fly for the given instance o... |
| `ces.projects.locations.apps.exportApp` | POST | `v1/{+name}:exportApp` | Exports the specified app. |
| `ces.projects.locations.apps.executeTool` | POST | `v1/{+parent}:executeTool` | Executes the given tool with the given arguments. |
| `ces.projects.locations.apps.get` | GET | `v1/{+name}` | Gets details of the specified app. |
| `ces.projects.locations.apps.patch` | PATCH | `v1/{+name}` | Updates the specified app. |
| `ces.projects.locations.apps.toolsets.patch` | PATCH | `v1/{+name}` | Updates the specified toolset. |
| `ces.projects.locations.apps.toolsets.retrieveTools` | POST | `v1/{+toolset}:retrieveTools` | Retrieve the list of tools included in the specified toolset. |
| `ces.projects.locations.apps.toolsets.list` | GET | `v1/{+parent}/toolsets` | Lists toolsets in the given app. |
| `ces.projects.locations.apps.toolsets.create` | POST | `v1/{+parent}/toolsets` | Creates a new toolset in the given app. |
| `ces.projects.locations.apps.toolsets.delete` | DELETE | `v1/{+name}` | Deletes the specified toolset. |
| `ces.projects.locations.apps.toolsets.get` | GET | `v1/{+name}` | Gets details of the specified toolset. |
| `ces.projects.locations.apps.guardrails.delete` | DELETE | `v1/{+name}` | Deletes the specified guardrail. |
| `ces.projects.locations.apps.guardrails.patch` | PATCH | `v1/{+name}` | Updates the specified guardrail. |
| `ces.projects.locations.apps.guardrails.list` | GET | `v1/{+parent}/guardrails` | Lists guardrails in the given app. |
| `ces.projects.locations.apps.guardrails.create` | POST | `v1/{+parent}/guardrails` | Creates a new guardrail in the given app. |
| `ces.projects.locations.apps.guardrails.get` | GET | `v1/{+name}` | Gets details of the specified guardrail. |
| `ces.projects.locations.apps.deployments.delete` | DELETE | `v1/{+name}` | Deletes the specified deployment. |
| `ces.projects.locations.apps.deployments.list` | GET | `v1/{+parent}/deployments` | Lists deployments in the given app. |
| `ces.projects.locations.apps.deployments.get` | GET | `v1/{+name}` | Gets details of the specified deployment. |
| `ces.projects.locations.apps.deployments.create` | POST | `v1/{+parent}/deployments` | Creates a new deployment in the given app. |
| `ces.projects.locations.apps.deployments.patch` | PATCH | `v1/{+name}` | Updates the specified deployment. |
| `ces.projects.locations.apps.tools.create` | POST | `v1/{+parent}/tools` | Creates a new tool in the given app. |
| `ces.projects.locations.apps.tools.list` | GET | `v1/{+parent}/tools` | Lists tools in the given app. |
| `ces.projects.locations.apps.tools.delete` | DELETE | `v1/{+name}` | Deletes the specified tool. |
| `ces.projects.locations.apps.tools.patch` | PATCH | `v1/{+name}` | Updates the specified tool. |
| `ces.projects.locations.apps.tools.get` | GET | `v1/{+name}` | Gets details of the specified tool. |
| `ces.projects.locations.apps.versions.list` | GET | `v1/{+parent}/versions` | Lists all app versions in the given app. |
| `ces.projects.locations.apps.versions.delete` | DELETE | `v1/{+name}` | Deletes the specified app version. |
| `ces.projects.locations.apps.versions.restore` | POST | `v1/{+name}:restore` | Restores the specified app version. This will create a new app version from the current draft app... |
| `ces.projects.locations.apps.versions.create` | POST | `v1/{+parent}/versions` | Creates a new app version in the given app. |
| `ces.projects.locations.apps.versions.get` | GET | `v1/{+name}` | Gets details of the specified app version. |
| `ces.projects.locations.apps.agents.patch` | PATCH | `v1/{+name}` | Updates the specified agent. |
| `ces.projects.locations.apps.agents.create` | POST | `v1/{+parent}/agents` | Creates a new agent in the given app. |
| `ces.projects.locations.apps.agents.get` | GET | `v1/{+name}` | Gets details of the specified agent. |
| `ces.projects.locations.apps.agents.list` | GET | `v1/{+parent}/agents` | Lists agents in the given app. |
| `ces.projects.locations.apps.agents.delete` | DELETE | `v1/{+name}` | Deletes the specified agent. |
| `ces.projects.locations.apps.changelogs.list` | GET | `v1/{+parent}/changelogs` | Lists the changelogs of the specified app. |
| `ces.projects.locations.apps.changelogs.get` | GET | `v1/{+name}` | Gets the specified changelog. |
| `ces.projects.locations.apps.examples.patch` | PATCH | `v1/{+name}` | Updates the specified example. |
| `ces.projects.locations.apps.examples.create` | POST | `v1/{+parent}/examples` | Creates a new example in the given app. |
| `ces.projects.locations.apps.examples.list` | GET | `v1/{+parent}/examples` | Lists examples in the given app. |
| `ces.projects.locations.apps.examples.get` | GET | `v1/{+name}` | Gets details of the specified example. |
| `ces.projects.locations.apps.examples.delete` | DELETE | `v1/{+name}` | Deletes the specified example. |
| `ces.projects.locations.apps.conversations.batchDelete` | POST | `v1/{+parent}/conversations:batchDelete` | Batch deletes the specified conversations. |
| `ces.projects.locations.apps.conversations.list` | GET | `v1/{+parent}/conversations` | Lists conversations in the given app. |
| `ces.projects.locations.apps.conversations.delete` | DELETE | `v1/{+name}` | Deletes the specified conversation. |
| `ces.projects.locations.apps.conversations.get` | GET | `v1/{+name}` | Gets details of the specified conversation. |
| `ces.projects.locations.apps.sessions.generateChatToken` | POST | `v1/{+name}:generateChatToken` | Generates a session scoped token for chat widget to authenticate with Session APIs. |
| `ces.projects.locations.apps.sessions.runSession` | POST | `v1/{+session}:runSession` | Initiates a single turn interaction with the CES agent within a session. |
| `ces.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `ces.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `ces.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `ces.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |

### `ces.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await ces.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.list`

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
const res = await ces.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.create`

**POST** `v1/{+parent}/apps`

Creates a new app in the given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the location to create an app in. |
| `appId` | `string` | query | No | Optional. The ID to use for the app, which will become the final component of the app's resource name. If not provide... |

**Request body**: `App`

**Response**: `Operation`

```typescript
const res = await ces.apps.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.importApp`

**POST** `v1/{+parent}/apps:importApp`

Imports the specified app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name with the location of the app to import. |

**Request body**: `ImportAppRequest`

**Response**: `Operation`

```typescript
const res = await ces.apps.importApp({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.list`

**GET** `v1/{+parent}/apps`

Lists apps in the given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the location to list apps from. |
| `filter` | `string` | query | No | Optional. Filter to be applied when listing the apps. See https://google.aip.dev/160 for more details. |
| `orderBy` | `string` | query | No | Optional. Field to sort by. Only "name" and "create_time" is supported. See https://google.aip.dev/132#ordering for m... |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. The next_page_token value returned from a previous list AgentService.ListApps call. |

**Response**: `ListAppsResponse`

```typescript
const res = await ces.apps.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.delete`

**DELETE** `v1/{+name}`

Deletes the specified app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the app to delete. |
| `etag` | `string` | query | No | Optional. The current etag of the app. If an etag is not provided, the deletion will overwrite any concurrent changes... |

**Response**: `Operation`

```typescript
const res = await ces.apps.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.retrieveToolSchema`

**POST** `v1/{+parent}:retrieveToolSchema`

Retrieve the schema of the given tool. The schema is computed on the fly for the given instance of the tool.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the app which the tool/toolset belongs to. Format: `projects/{project}/locations/{loca... |

**Request body**: `RetrieveToolSchemaRequest`

**Response**: `RetrieveToolSchemaResponse`

```typescript
const res = await ces.apps.retrieveToolSchema({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.exportApp`

**POST** `v1/{+name}:exportApp`

Exports the specified app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the app to export. |

**Request body**: `ExportAppRequest`

**Response**: `Operation`

```typescript
const res = await ces.apps.exportApp({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.executeTool`

**POST** `v1/{+parent}:executeTool`

Executes the given tool with the given arguments.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the app which the tool/toolset belongs to. Format: `projects/{project}/locations/{loca... |

**Request body**: `ExecuteToolRequest`

**Response**: `ExecuteToolResponse`

```typescript
const res = await ces.apps.executeTool({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.get`

**GET** `v1/{+name}`

Gets details of the specified app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the app to retrieve. |

**Response**: `App`

```typescript
const res = await ces.apps.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.patch`

**PATCH** `v1/{+name}`

Updates the specified app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The unique identifier of the app. Format: `projects/{project}/locations/{location}/apps/{app}` |
| `updateMask` | `string` | query | No | Optional. Field mask is used to control which fields get updated. If the mask is not present, all fields will be upda... |

**Request body**: `App`

**Response**: `App`

```typescript
const res = await ces.apps.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.toolsets.patch`

**PATCH** `v1/{+name}`

Updates the specified toolset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The unique identifier of the toolset. Format: `projects/{project}/locations/{location}/apps/{app}/toolset... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to control which fields get updated. If the mask is not present, all fields will be upda... |

**Request body**: `Toolset`

**Response**: `Toolset`

```typescript
const res = await ces.toolsets.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.toolsets.retrieveTools`

**POST** `v1/{+toolset}:retrieveTools`

Retrieve the list of tools included in the specified toolset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `toolset` | `string` | path | Yes | Required. The name of the toolset to retrieve the tools for. Format: `projects/{project}/locations/{location}/apps/{a... |

**Request body**: `RetrieveToolsRequest`

**Response**: `RetrieveToolsResponse`

```typescript
const res = await ces.toolsets.retrieveTools({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.toolsets.list`

**GET** `v1/{+parent}/toolsets`

Lists toolsets in the given app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the app to list toolsets from. |
| `filter` | `string` | query | No | Optional. Filter to be applied when listing the toolsets. See https://google.aip.dev/160 for more details. |
| `orderBy` | `string` | query | No | Optional. Field to sort by. Only "name" and "create_time" is supported. See https://google.aip.dev/132#ordering for m... |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. The next_page_token value returned from a previous list AgentService.ListToolsets call. |

**Response**: `ListToolsetsResponse`

```typescript
const res = await ces.toolsets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.toolsets.create`

**POST** `v1/{+parent}/toolsets`

Creates a new toolset in the given app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the app to create a toolset in. |
| `toolsetId` | `string` | query | No | Optional. The ID to use for the toolset, which will become the final component of the toolset's resource name. If not... |

**Request body**: `Toolset`

**Response**: `Toolset`

```typescript
const res = await ces.toolsets.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.toolsets.delete`

**DELETE** `v1/{+name}`

Deletes the specified toolset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the toolset to delete. |
| `etag` | `string` | query | No | Optional. The current etag of the toolset. If an etag is not provided, the deletion will overwrite any concurrent cha... |
| `force` | `boolean` | query | No | Optional. Indicates whether to forcefully delete the toolset, even if it is still referenced by app/agents. * If `for... |

**Response**: `Empty`

```typescript
const res = await ces.toolsets.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.toolsets.get`

**GET** `v1/{+name}`

Gets details of the specified toolset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the toolset to retrieve. |

**Response**: `Toolset`

```typescript
const res = await ces.toolsets.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.guardrails.delete`

**DELETE** `v1/{+name}`

Deletes the specified guardrail.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the guardrail to delete. |
| `etag` | `string` | query | No | Optional. The current etag of the guardrail. If an etag is not provided, the deletion will overwrite any concurrent c... |
| `force` | `boolean` | query | No | Optional. Indicates whether to forcefully delete the guardrail, even if it is still referenced by app/agents. * If `f... |

**Response**: `Empty`

```typescript
const res = await ces.guardrails.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.guardrails.patch`

**PATCH** `v1/{+name}`

Updates the specified guardrail.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The unique identifier of the guardrail. Format: `projects/{project}/locations/{location}/apps/{app}/guard... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to control which fields get updated. If the mask is not present, all fields will be upda... |

**Request body**: `Guardrail`

**Response**: `Guardrail`

```typescript
const res = await ces.guardrails.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.guardrails.list`

**GET** `v1/{+parent}/guardrails`

Lists guardrails in the given app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the app to list guardrails from. |
| `filter` | `string` | query | No | Optional. Filter to be applied when listing the guardrails. See https://google.aip.dev/160 for more details. |
| `orderBy` | `string` | query | No | Optional. Field to sort by. Only "name" and "create_time" is supported. See https://google.aip.dev/132#ordering for m... |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. The next_page_token value returned from a previous list AgentService.ListGuardrails call. |

**Response**: `ListGuardrailsResponse`

```typescript
const res = await ces.guardrails.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.guardrails.create`

**POST** `v1/{+parent}/guardrails`

Creates a new guardrail in the given app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the app to create a guardrail in. |
| `guardrailId` | `string` | query | No | Optional. The ID to use for the guardrail, which will become the final component of the guardrail's resource name. If... |

**Request body**: `Guardrail`

**Response**: `Guardrail`

```typescript
const res = await ces.guardrails.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.guardrails.get`

**GET** `v1/{+name}`

Gets details of the specified guardrail.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the guardrail to retrieve. |

**Response**: `Guardrail`

```typescript
const res = await ces.guardrails.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.deployments.delete`

**DELETE** `v1/{+name}`

Deletes the specified deployment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the deployment to delete. Format: `projects/{project}/locations/{location}/apps/{app}/deploymen... |
| `etag` | `string` | query | No | Optional. The etag of the deployment. If an etag is provided and does not match the current etag of the deployment, d... |

**Response**: `Empty`

```typescript
const res = await ces.deployments.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.deployments.list`

**GET** `v1/{+parent}/deployments`

Lists deployments in the given app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent app. Format: `projects/{project}/locations/{location}/apps/{app}` |
| `orderBy` | `string` | query | No | Optional. Field to sort by. Only "name" and "create_time" is supported. See https://google.aip.dev/132#ordering for m... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of deployments to return. The service may return fewer than this value. If unspecified, ... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListDeployments` call. Provide this to retrieve the subsequent page... |

**Response**: `ListDeploymentsResponse`

```typescript
const res = await ces.deployments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.deployments.get`

**GET** `v1/{+name}`

Gets details of the specified deployment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the deployment. Format: `projects/{project}/locations/{location}/apps/{app}/deployments/{deploy... |

**Response**: `Deployment`

```typescript
const res = await ces.deployments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.deployments.create`

**POST** `v1/{+parent}/deployments`

Creates a new deployment in the given app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent app. Format: `projects/{project}/locations/{location}/apps/{app}` |
| `deploymentId` | `string` | query | No | Optional. The ID to use for the deployment, which will become the final component of the deployment's resource name. ... |

**Request body**: `Deployment`

**Response**: `Deployment`

```typescript
const res = await ces.deployments.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.deployments.patch`

**PATCH** `v1/{+name}`

Updates the specified deployment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the deployment. Format: projects/{project}/locations/{location}/apps/{app}/deploymen... |
| `updateMask` | `string` | query | No | Optional. The list of fields to update. |

**Request body**: `Deployment`

**Response**: `Deployment`

```typescript
const res = await ces.deployments.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.tools.create`

**POST** `v1/{+parent}/tools`

Creates a new tool in the given app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the app to create a tool in. |
| `toolId` | `string` | query | No | Optional. The ID to use for the tool, which will become the final component of the tool's resource name. If not provi... |

**Request body**: `Tool`

**Response**: `Tool`

```typescript
const res = await ces.tools.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.tools.list`

**GET** `v1/{+parent}/tools`

Lists tools in the given app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the app to list tools from. |
| `filter` | `string` | query | No | Optional. Filter to be applied when listing the tools. Use "include_system_tools=true" to include system tools in the... |
| `orderBy` | `string` | query | No | Optional. Field to sort by. Only "name" and "create_time" is supported. See https://google.aip.dev/132#ordering for m... |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. The next_page_token value returned from a previous list AgentService.ListTools call. |

**Response**: `ListToolsResponse`

```typescript
const res = await ces.tools.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.tools.delete`

**DELETE** `v1/{+name}`

Deletes the specified tool.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the tool to delete. |
| `etag` | `string` | query | No | Optional. The current etag of the tool. If an etag is not provided, the deletion will overwrite any concurrent change... |
| `force` | `boolean` | query | No | Optional. Indicates whether to forcefully delete the tool, even if it is still referenced by agents/examples. * If `f... |

**Response**: `Empty`

```typescript
const res = await ces.tools.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.tools.patch`

**PATCH** `v1/{+name}`

Updates the specified tool.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The unique identifier of the tool. Format: - `projects/{project}/locations/{location}/apps/{app}/tools/{t... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to control which fields get updated. If the mask is not present, all fields will be upda... |

**Request body**: `Tool`

**Response**: `Tool`

```typescript
const res = await ces.tools.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.tools.get`

**GET** `v1/{+name}`

Gets details of the specified tool.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the tool to retrieve. |

**Response**: `Tool`

```typescript
const res = await ces.tools.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.versions.list`

**GET** `v1/{+parent}/versions`

Lists all app versions in the given app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the app to list app versions from. |
| `filter` | `string` | query | No | Optional. Filter to be applied when listing the app versions. See https://google.aip.dev/160 for more details. |
| `orderBy` | `string` | query | No | Optional. Field to sort by. Only "name" and "create_time" is supported. See https://google.aip.dev/132#ordering for m... |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. The next_page_token value returned from a previous list AgentService.ListAppVersions call. |

**Response**: `ListAppVersionsResponse`

```typescript
const res = await ces.versions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.versions.delete`

**DELETE** `v1/{+name}`

Deletes the specified app version.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the app version to delete. |
| `etag` | `string` | query | No | Optional. The current etag of the app version. If an etag is not provided, the deletion will overwrite any concurrent... |

**Response**: `Empty`

```typescript
const res = await ces.versions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.versions.restore`

**POST** `v1/{+name}:restore`

Restores the specified app version. This will create a new app version from the current draft app and overwrite the current draft with the specified app version.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the app version to restore. |

**Request body**: `RestoreAppVersionRequest`

**Response**: `Operation`

```typescript
const res = await ces.versions.restore({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.versions.create`

**POST** `v1/{+parent}/versions`

Creates a new app version in the given app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the app to create an app version in. |
| `appVersionId` | `string` | query | No | Optional. The ID to use for the app version, which will become the final component of the app version's resource name... |

**Request body**: `AppVersion`

**Response**: `AppVersion`

```typescript
const res = await ces.versions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.versions.get`

**GET** `v1/{+name}`

Gets details of the specified app version.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the app version to retrieve. |

**Response**: `AppVersion`

```typescript
const res = await ces.versions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.agents.patch`

**PATCH** `v1/{+name}`

Updates the specified agent.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The unique identifier of the agent. Format: `projects/{project}/locations/{location}/apps/{app}/agents/{a... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to control which fields get updated. If the mask is not present, all fields will be upda... |

**Request body**: `Agent`

**Response**: `Agent`

```typescript
const res = await ces.agents.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.agents.create`

**POST** `v1/{+parent}/agents`

Creates a new agent in the given app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the app to create an agent in. |
| `agentId` | `string` | query | No | Optional. The ID to use for the agent, which will become the final component of the agent's resource name. If not pro... |

**Request body**: `Agent`

**Response**: `Agent`

```typescript
const res = await ces.agents.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.agents.get`

**GET** `v1/{+name}`

Gets details of the specified agent.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the agent to retrieve. |

**Response**: `Agent`

```typescript
const res = await ces.agents.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.agents.list`

**GET** `v1/{+parent}/agents`

Lists agents in the given app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the app to list agents from. |
| `filter` | `string` | query | No | Optional. Filter to be applied when listing the agents. See https://google.aip.dev/160 for more details. |
| `orderBy` | `string` | query | No | Optional. Field to sort by. Only "name" and "create_time" is supported. See https://google.aip.dev/132#ordering for m... |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. The next_page_token value returned from a previous list AgentService.ListAgents call. |

**Response**: `ListAgentsResponse`

```typescript
const res = await ces.agents.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.agents.delete`

**DELETE** `v1/{+name}`

Deletes the specified agent.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the agent to delete. |
| `etag` | `string` | query | No | Optional. The current etag of the agent. If an etag is not provided, the deletion will overwrite any concurrent chang... |
| `force` | `boolean` | query | No | Optional. Indicates whether to forcefully delete the agent, even if it is still referenced by other app/agents/exampl... |

**Response**: `Empty`

```typescript
const res = await ces.agents.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.changelogs.list`

**GET** `v1/{+parent}/changelogs`

Lists the changelogs of the specified app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the app to list changelogs from. |
| `filter` | `string` | query | No | Optional. Filter to be applied when listing the changelogs. See https://google.aip.dev/160 for more details. The filt... |
| `orderBy` | `string` | query | No | Optional. Field to sort by. Only "name" and "create_time" is supported. See https://google.aip.dev/132#ordering for m... |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. The next_page_token value returned from a previous list AgentService.ListChangelogs call. |

**Response**: `ListChangelogsResponse`

```typescript
const res = await ces.changelogs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.changelogs.get`

**GET** `v1/{+name}`

Gets the specified changelog.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the changelog to retrieve. |

**Response**: `Changelog`

```typescript
const res = await ces.changelogs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.examples.patch`

**PATCH** `v1/{+name}`

Updates the specified example.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The unique identifier of the example. Format: `projects/{project}/locations/{location}/apps/{app}/example... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to control which fields get updated. If the mask is not present, all fields will be upda... |

**Request body**: `Example`

**Response**: `Example`

```typescript
const res = await ces.examples.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.examples.create`

**POST** `v1/{+parent}/examples`

Creates a new example in the given app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the app to create an example in. |
| `exampleId` | `string` | query | No | Optional. The ID to use for the example, which will become the final component of the example's resource name. If not... |

**Request body**: `Example`

**Response**: `Example`

```typescript
const res = await ces.examples.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.examples.list`

**GET** `v1/{+parent}/examples`

Lists examples in the given app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the app to list examples from. |
| `filter` | `string` | query | No | Optional. Filter to be applied when listing the examples. See https://google.aip.dev/160 for more details. |
| `orderBy` | `string` | query | No | Optional. Field to sort by. Only "name" and "create_time" is supported. See https://google.aip.dev/132#ordering for m... |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. The next_page_token value returned from a previous list AgentService.ListExamples call. |

**Response**: `ListExamplesResponse`

```typescript
const res = await ces.examples.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.examples.get`

**GET** `v1/{+name}`

Gets details of the specified example.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the example to retrieve. |

**Response**: `Example`

```typescript
const res = await ces.examples.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.examples.delete`

**DELETE** `v1/{+name}`

Deletes the specified example.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the example to delete. |
| `etag` | `string` | query | No | Optional. The current etag of the example. If an etag is not provided, the deletion will overwrite any concurrent cha... |

**Response**: `Empty`

```typescript
const res = await ces.examples.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.conversations.batchDelete`

**POST** `v1/{+parent}/conversations:batchDelete`

Batch deletes the specified conversations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the app to delete conversations from. Format: `projects/{project}/locations/{location}... |

**Request body**: `BatchDeleteConversationsRequest`

**Response**: `Operation`

```typescript
const res = await ces.conversations.batchDelete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.conversations.list`

**GET** `v1/{+parent}/conversations`

Lists conversations in the given app.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The resource name of the app to list conversations from. |
| `filter` | `string` | query | No | Optional. Filter to be applied when listing the conversations. See https://google.aip.dev/160 for more details. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. The next_page_token value returned from a previous list AgentService.ListConversations call. |
| `source` | `string` | query | No | Optional. Indicate the source of the conversation. If not set, Source.Live will be applied by default. Will be deprec... |
| `sources` | `string` | query | No | Optional. Indicate the sources of the conversations. If not set, all available sources will be applied by default. |

**Response**: `ListConversationsResponse`

```typescript
const res = await ces.conversations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.conversations.delete`

**DELETE** `v1/{+name}`

Deletes the specified conversation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the conversation to delete. |
| `source` | `string` | query | No | Optional. Indicate the source of the conversation. If not set, Source.Live will be applied by default. |

**Response**: `Empty`

```typescript
const res = await ces.conversations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.conversations.get`

**GET** `v1/{+name}`

Gets details of the specified conversation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the conversation to retrieve. |
| `source` | `string` | query | No | Optional. Indicate the source of the conversation. If not set, all source will be searched. |

**Response**: `Conversation`

```typescript
const res = await ces.conversations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.sessions.generateChatToken`

**POST** `v1/{+name}:generateChatToken`

Generates a session scoped token for chat widget to authenticate with Session APIs.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The session name to generate the chat token for. Format: projects/{project}/locations/{location}/apps/{app}... |

**Request body**: `GenerateChatTokenRequest`

**Response**: `GenerateChatTokenResponse`

```typescript
const res = await ces.sessions.generateChatToken({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.apps.sessions.runSession`

**POST** `v1/{+session}:runSession`

Initiates a single turn interaction with the CES agent within a session.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `session` | `string` | path | Yes | Required. The unique identifier of the session. Format: `projects/{project}/locations/{location}/apps/{app}/sessions/... |

**Request body**: `RunSessionRequest`

**Response**: `RunSessionResponse`

```typescript
const res = await ces.sessions.runSession({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await ces.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await ces.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await ces.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `ces.projects.locations.operations.list`

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
const res = await ces.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/ces`
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `Action`

Configuration of an Action for the tool to use. Note: This can be either an Action or an Operation. See https://cloud.google.com/integration-connectors/docs/entities-operation-action for details.

| Property | Type | Description |
|----------|------|-------------|
| `connectionActionId` | `string` | ID of a Connection action for the tool to use. |
| `entityOperation` | `ActionEntityOperation` | Entity operation configuration for the tool to use. |
| `inputFields` | `array<string>` | Optional. Entity fields to use as inputs for the operation. If no fields are specified, all field... |
| `outputFields` | `array<string>` | Optional. Entity fields to return from the operation. If no fields are specified, all fields of t... |

### `ActionEntityOperation`

Entity CRUD operation specification.

| Property | Type | Description |
|----------|------|-------------|
| `entityId` | `string` | Required. ID of the entity. |
| `operation` | `string` | Required. Operation to perform on the entity. |

### `Agent`

An agent acts as the fundamental building block that provides instructions to the Large Language Model (LLM) for executing specific tasks.

| Property | Type | Description |
|----------|------|-------------|
| `afterAgentCallbacks` | `array<Callback>` | Optional. The callbacks to execute after the agent is called. The provided callbacks are executed... |
| `afterModelCallbacks` | `array<Callback>` | Optional. The callbacks to execute after the model is called. If there are multiple calls to the ... |
| `afterToolCallbacks` | `array<Callback>` | Optional. The callbacks to execute after the tool is invoked. If there are multiple tool invocati... |
| `beforeAgentCallbacks` | `array<Callback>` | Optional. The callbacks to execute before the agent is called. The provided callbacks are execute... |
| `beforeModelCallbacks` | `array<Callback>` | Optional. The callbacks to execute before the model is called. If there are multiple calls to the... |
| `beforeToolCallbacks` | `array<Callback>` | Optional. The callbacks to execute before the tool is invoked. If there are multiple tool invocat... |
| `childAgents` | `array<string>` | Optional. List of child agents in the agent tree. Format: `projects/{project}/locations/{location... |
| `createTime` | `string` | Output only. Timestamp when the agent was created. |
| `description` | `string` | Optional. Human-readable description of the agent. |
| `displayName` | `string` | Required. Display name of the agent. |
| `etag` | `string` | Etag used to ensure the object hasn't changed during a read-modify-write operation. If the etag i... |
| `generatedSummary` | `string` | Output only. If the agent is generated by the LLM assistant, this field contains a descriptive su... |
| `guardrails` | `array<string>` | Optional. List of guardrails for the agent. Format: `projects/{project}/locations/{location}/apps... |
| `instruction` | `string` | Optional. Instructions for the LLM model to guide the agent's behavior. |
| `llmAgent` | `AgentLlmAgent` | Optional. The default agent type. |
| `modelSettings` | `ModelSettings` | Optional. Configurations for the LLM model. |
| `name` | `string` | Identifier. The unique identifier of the agent. Format: `projects/{project}/locations/{location}/... |
| `remoteDialogflowAgent` | `AgentRemoteDialogflowAgent` | Optional. The remote [Dialogflow](https://cloud.google.com/dialogflow/cx/docs/concept/console-con... |
| `tools` | `array<string>` | Optional. List of available tools for the agent. Format: `projects/{project}/locations/{location}... |
| `toolsets` | `array<AgentAgentToolset>` | Optional. List of toolsets for the agent. |
| `transferRules` | `array<TransferRule>` | Optional. Agent transfer rules. If multiple rules match, the first one in the list will be used. |
| `updateTime` | `string` | Output only. Timestamp when the agent was last updated. |

### `AgentAgentToolset`

A toolset with a selection of its tools.

| Property | Type | Description |
|----------|------|-------------|
| `toolIds` | `array<string>` | Optional. The tools IDs to filter the toolset. |
| `toolset` | `string` | Required. The resource name of the toolset. Format: `projects/{project}/locations/{location}/apps... |

### `AgentLlmAgent`

Default agent type. The agent uses instructions and callbacks specified in the agent to perform the task using a large language model.

### `AgentRemoteDialogflowAgent`

The agent which will transfer execution to a remote [Dialogflow CX](https://docs.cloud.google.com/dialogflow/cx/docs/concept/agent) agent. The Dialogflow agent will process subsequent user queries until the session ends or flow ends, and the control is transferred back to the parent CES agent.

| Property | Type | Description |
|----------|------|-------------|
| `agent` | `string` | Required. The [Dialogflow](https://docs.cloud.google.com/dialogflow/cx/docs/concept/agent) agent ... |
| `environmentId` | `string` | Optional. The environment ID of the Dialogflow agent to be used for the agent execution. If not s... |
| `flowId` | `string` | Optional. The flow ID of the flow in the Dialogflow agent. |
| `inputVariableMapping` | `object` | Optional. The mapping of the app variables names to the Dialogflow session parameters names to be... |
| `outputVariableMapping` | `object` | Optional. The mapping of the Dialogflow session parameters names to the app variables names to be... |
| `respectResponseInterruptionSettings` | `boolean` | Optional. Indicates whether to respect the message-level interruption settings configured in the ... |

### `AgentTransfer`

Represents an event indicating the transfer of a conversation to a different agent.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Output only. Display name of the agent. |
| `targetAgent` | `string` | Required. The agent to which the conversation is being transferred. The agent will handle the con... |

### `AmbientSoundConfig`

Configuration for the ambient sound to be played with the synthesized agent response, to enhance the naturalness of the conversation.

| Property | Type | Description |
|----------|------|-------------|
| `gcsUri` | `string` | Optional. Ambient noise as a mono-channel, 16kHz WAV file stored in [Cloud Storage](https://cloud... |
| `prebuiltAmbientNoise` | `string` | Optional. Deprecated: `prebuilt_ambient_noise` is deprecated in favor of `prebuilt_ambient_sound`. |
| `prebuiltAmbientSound` | `string` | Optional. Name of the prebuilt ambient sound. Valid values are: - "coffee_shop" - "keyboard" - "k... |
| `volumeGainDb` | `number` | Optional. Volume gain (in dB) of the normal native volume supported by ambient noise, in the rang... |

### `ApiAuthentication`

Authentication information required for API calls.

| Property | Type | Description |
|----------|------|-------------|
| `apiKeyConfig` | `ApiKeyConfig` | Optional. Config for API key auth. |
| `bearerTokenConfig` | `BearerTokenConfig` | Optional. Config for bearer token auth. |
| `oauthConfig` | `OAuthConfig` | Optional. Config for OAuth. |
| `serviceAccountAuthConfig` | `ServiceAccountAuthConfig` | Optional. Config for service account authentication. |
| `serviceAgentIdTokenAuthConfig` | `ServiceAgentIdTokenAuthConfig` | Optional. Config for ID token auth generated from CES service agent. |

### `ApiKeyConfig`

Configurations for authentication with API key.

| Property | Type | Description |
|----------|------|-------------|
| `apiKeySecretVersion` | `string` | Required. The name of the SecretManager secret version resource storing the API key. Format: `pro... |
| `keyName` | `string` | Required. The parameter name or the header name of the API key. E.g., If the API request is "http... |
| `requestLocation` | `string` | Required. Key location in the request. |

### `App`

An app serves as a top-level container for a group of agents, including the root agent and its sub-agents, along with their associated configurations. These agents work together to achieve specific goals within the app's context.

| Property | Type | Description |
|----------|------|-------------|
| `audioProcessingConfig` | `AudioProcessingConfig` | Optional. Audio processing configuration of the app. |
| `clientCertificateSettings` | `ClientCertificateSettings` | Optional. The default client certificate settings for the app. |
| `createTime` | `string` | Output only. Timestamp when the app was created. |
| `dataStoreSettings` | `DataStoreSettings` | Optional. The data store settings for the app. |
| `defaultChannelProfile` | `ChannelProfile` | Optional. The default channel profile used by the app. |
| `deploymentCount` | `integer` | Output only. Number of deployments in the app. |
| `description` | `string` | Optional. Human-readable description of the app. |
| `displayName` | `string` | Required. Display name of the app. |
| `etag` | `string` | Output only. Etag used to ensure the object hasn't changed during a read-modify-write operation. ... |
| `evaluationMetricsThresholds` | `EvaluationMetricsThresholds` | Optional. The evaluation thresholds for the app. |
| `globalInstruction` | `string` | Optional. Instructions for all the agents in the app. You can use this instruction to set up a st... |
| `guardrails` | `array<string>` | Optional. List of guardrails for the app. Format: `projects/{project}/locations/{location}/apps/{... |
| `languageSettings` | `LanguageSettings` | Optional. Language settings of the app. |
| `locked` | `boolean` | Optional. Indicates whether the app is locked for changes. If the app is locked, modifications to... |
| `loggingSettings` | `LoggingSettings` | Optional. Logging settings of the app. |
| `metadata` | `object` | Optional. Metadata about the app. This field can be used to store additional information relevant... |
| `modelSettings` | `ModelSettings` | Optional. The default LLM model settings for the app. Individual resources (e.g. agents, guardrai... |
| `name` | `string` | Identifier. The unique identifier of the app. Format: `projects/{project}/locations/{location}/ap... |
| `pinned` | `boolean` | Optional. Whether the app is pinned in the app list. |
| `predefinedVariableDeclarations` | `array<AppVariableDeclaration>` | Output only. The declarations of predefined variables for the app. |
| `rootAgent` | `string` | Optional. The root agent is the entry point of the app. Format: `projects/{project}/locations/{lo... |
| `timeZoneSettings` | `TimeZoneSettings` | Optional. TimeZone settings of the app. |
| `toolExecutionMode` | `string` | Optional. The tool execution mode for the app. If not provided, will default to PARALLEL. |
| `updateTime` | `string` | Output only. Timestamp when the app was last updated. |
| `variableDeclarations` | `array<AppVariableDeclaration>` | Optional. The declarations of the variables. |

### `AppSnapshot`

A snapshot of the app.

| Property | Type | Description |
|----------|------|-------------|
| `agents` | `array<Agent>` | Optional. List of agents in the app. |
| `app` | `App` | Optional. The basic settings for the app. |
| `examples` | `array<Example>` | Optional. List of examples in the app. |
| `guardrails` | `array<Guardrail>` | Optional. List of guardrails in the app. |
| `tools` | `array<Tool>` | Optional. List of tools in the app. |
| `toolsets` | `array<Toolset>` | Optional. List of toolsets in the app. |

### `AppVariableDeclaration`

Defines the structure and metadata for a variable.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Required. The description of the variable. |
| `name` | `string` | Required. The name of the variable. The name must start with a letter or underscore and contain o... |
| `schema` | `Schema` | Required. The schema of the variable. |

### `AppVersion`

In Customer Engagement Suite (CES), an app version is a snapshot of the app at a specific point in time. It is immutable and cannot be modified once created.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Timestamp when the app version was created. |
| `creator` | `string` | Output only. Email of the user who created the app version. |
| `description` | `string` | Optional. The description of the app version. |
| `displayName` | `string` | Optional. The display name of the app version. |
| `etag` | `string` | Output only. Etag used to ensure the object hasn't changed during a read-modify-write operation. ... |
| `name` | `string` | Identifier. The unique identifier of the app version. Format: `projects/{project}/locations/{loca... |
| `snapshot` | `AppSnapshot` | Output only. The snapshot of the app when the version is created. |

### `AudioProcessingConfig`

Configuration for how the input and output audio should be processed and delivered.

| Property | Type | Description |
|----------|------|-------------|
| `ambientSoundConfig` | `AmbientSoundConfig` | Optional. Configuration for the ambient sound to be played with the synthesized agent response, t... |
| `bargeInConfig` | `BargeInConfig` | Optional. Configures the agent behavior for the user barge-in activities. |
| `inactivityTimeout` | `string` | Optional. The duration of user inactivity (no speech or interaction) before the agent prompts the... |
| `synthesizeSpeechConfigs` | `object` | Optional. Configuration of how the agent response should be synthesized, mapping from the languag... |

### `AudioRecordingConfig`

Configuration for how the audio interactions should be recorded.

| Property | Type | Description |
|----------|------|-------------|
| `gcsBucket` | `string` | Optional. The [Cloud Storage](https://cloud.google.com/storage) bucket to store the session audio... |
| `gcsPathPrefix` | `string` | Optional. The Cloud Storage path prefix for audio recordings. This prefix can include the followi... |

### `BargeInConfig`

Configuration for how the user barge-in activities should be handled.

| Property | Type | Description |
|----------|------|-------------|
| `bargeInAwareness` | `boolean` | Optional. If enabled, the agent will adapt its next response based on the assumption that the use... |
| `disableBargeIn` | `boolean` | Optional. Disables user barge-in while the agent is speaking. If true, user input during agent re... |

### `BatchDeleteConversationsRequest`

Request message for AgentService.BatchDeleteConversations.

| Property | Type | Description |
|----------|------|-------------|
| `conversations` | `array<string>` | Required. The resource names of the conversations to delete. |

### `BearerTokenConfig`

Configurations for authentication with a bearer token.

| Property | Type | Description |
|----------|------|-------------|
| `token` | `string` | Required. The bearer token. Must be in the format `$context.variables.`. |

### `BigQueryExportSettings`

Settings to describe the BigQuery export behaviors for the app.

| Property | Type | Description |
|----------|------|-------------|
| `dataset` | `string` | Optional. The BigQuery dataset to export the data to. |
| `enabled` | `boolean` | Optional. Indicates whether the BigQuery export is enabled. |
| `project` | `string` | Optional. The project ID of the BigQuery dataset to export the data to. Note: If the BigQuery dat... |

### `Blob`

Represents a blob input or output in the conversation.

| Property | Type | Description |
|----------|------|-------------|
| `data` | `string` | Required. Raw bytes of the blob. |
| `mimeType` | `string` | Required. The IANA standard MIME type of the source data. |

### `Callback`

A callback defines the custom logic to be executed at various stages of agent interaction.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Human-readable description of the callback. |
| `disabled` | `boolean` | Optional. Whether the callback is disabled. Disabled callbacks are ignored by the agent. |
| `proactiveExecutionEnabled` | `boolean` | Optional. If enabled, the callback will also be executed on intermediate model outputs. This sett... |
| `pythonCode` | `string` | Required. The python code to execute for the callback. |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `Changelog`

Changelogs represent a change made to the app or to an resource within the app.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` | Output only. The action that was performed on the resource. |
| `author` | `string` | Output only. Email address of the change author. |
| `createTime` | `string` | Output only. The time when the change was made. |
| `dependentResources` | `array<object>` | Output only. The dependent resources that were changed. |
| `description` | `string` | Output only. Description of the change. which typically captures the changed fields in the resource. |
| `displayName` | `string` | Output only. Display name of the change. It typically should be the display name of the resource ... |
| `name` | `string` | Identifier. The unique identifier of the changelog. Format: `projects/{project}/locations/{locati... |
| `newResource` | `object` | Output only. The new resource after the change. |
| `originalResource` | `object` | Output only. The original resource before the change. |
| `resource` | `string` | Output only. The resource that was changed. |
| `resourceType` | `string` | Output only. The type of the resource that was changed. |
| `sequenceNumber` | `string` | Output only. The monotonically increasing sequence number of the changelog. |

### `ChannelProfile`

A ChannelProfile configures the agent's behavior for a specific communication channel, such as web UI or telephony.

| Property | Type | Description |
|----------|------|-------------|
| `channelType` | `string` | Optional. The type of the channel profile. |
| `disableBargeInControl` | `boolean` | Optional. Whether to disable user barge-in control in the conversation. - **true**: User interrup... |
| `disableDtmf` | `boolean` | Optional. Whether to disable DTMF (dual-tone multi-frequency). |
| `noiseSuppressionLevel` | `string` | Optional. The noise suppression level of the channel profile. Available values are "low", "modera... |
| `personaProperty` | `ChannelProfilePersonaProperty` | Optional. The persona property of the channel profile. |
| `profileId` | `string` | Optional. The unique identifier of the channel profile. |
| `webWidgetConfig` | `ChannelProfileWebWidgetConfig` | Optional. The configuration for the web widget. |

### `ChannelProfilePersonaProperty`

Represents the persona property of a channel.

| Property | Type | Description |
|----------|------|-------------|
| `persona` | `string` | Optional. The persona of the channel. |

### `ChannelProfileWebWidgetConfig`

Message for configuration for the web widget.

| Property | Type | Description |
|----------|------|-------------|
| `modality` | `string` | Optional. The modality of the web widget. |
| `securitySettings` | `ChannelProfileWebWidgetConfigSecuritySettings` | Optional. The security settings of the web widget. |
| `theme` | `string` | Optional. The theme of the web widget. |
| `webWidgetTitle` | `string` | Optional. The title of the web widget. |

### `ChannelProfileWebWidgetConfigSecuritySettings`

Security settings for the web widget.

| Property | Type | Description |
|----------|------|-------------|
| `allowedOrigins` | `array<string>` | Optional. The origins that are allowed to host the web widget. An origin is defined by RFC 6454. ... |
| `enableOriginCheck` | `boolean` | Optional. Indicates whether origin check for the web widget is enabled. If `true`, the web widget... |
| `enablePublicAccess` | `boolean` | Optional. Indicates whether public access to the web widget is enabled. If `true`, the web widget... |
| `enableRecaptcha` | `boolean` | Optional. Indicates whether reCAPTCHA verification for the web widget is enabled. |

### `Chunk`

A chunk of content within a message.

| Property | Type | Description |
|----------|------|-------------|
| `agentTransfer` | `AgentTransfer` | Optional. Agent transfer event. |
| `defaultVariables` | `object` | A struct represents default variables at the start of the conversation, keyed by variable names. |
| `image` | `Image` | Optional. Image data. |
| `payload` | `object` | Optional. Custom payload data. |
| `text` | `string` | Optional. Text data. |
| `toolCall` | `ToolCall` | Optional. Tool execution request. |
| `toolResponse` | `ToolResponse` | Optional. Tool execution response. |
| `transcript` | `string` | Optional. Transcript associated with the audio. |
| `updatedVariables` | `object` | A struct represents variables that were updated in the conversation, keyed by variable names. |

### `Citations`

Citations associated with the agent response.

| Property | Type | Description |
|----------|------|-------------|
| `citedChunks` | `array<CitationsCitedChunk>` | List of cited pieces of information. |

### `CitationsCitedChunk`

Piece of cited information.

| Property | Type | Description |
|----------|------|-------------|
| `text` | `string` | Text used for citaiton. |
| `title` | `string` | Title of the cited document. |
| `uri` | `string` | URI used for citation. |

### `ClientCertificateSettings`

Settings for custom client certificates.

| Property | Type | Description |
|----------|------|-------------|
| `passphrase` | `string` | Optional. The name of the SecretManager secret version resource storing the passphrase to decrypt... |
| `privateKey` | `string` | Required. The name of the SecretManager secret version resource storing the private key encoded i... |
| `tlsCertificate` | `string` | Required. The TLS certificate encoded in PEM format. This string must include the begin header an... |

### `ClientFunction`

Represents a client-side function that the agent can invoke. When the tool is chosen by the agent, control is handed off to the client. The client is responsible for executing the function and returning the result as a ToolResponse to continue the interaction with the agent.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. The function description. |
| `name` | `string` | Required. The function name. |
| `parameters` | `Schema` | Optional. The schema of the function parameters. |
| `response` | `Schema` | Optional. The schema of the function response. |

### `CloudLoggingSettings`

Settings to describe the Cloud Logging behaviors for the app.

| Property | Type | Description |
|----------|------|-------------|
| `enableCloudLogging` | `boolean` | Optional. Whether to enable Cloud Logging for the sessions. |

### `CodeBlock`

A code block to be executed instead of a real tool call.

| Property | Type | Description |
|----------|------|-------------|
| `pythonCode` | `string` | Required. Python code which will be invoked in tool fake mode. Expected Python function signature... |

### `ConnectorTool`

A ConnectorTool allows connections to different integrations. See: https://cloud.google.com/integration-connectors/docs/overview.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `Action` | Required. Action for the tool to use. |
| `authConfig` | `EndUserAuthConfig` | Optional. Configures how authentication is handled in Integration Connectors. By default, an admi... |
| `connection` | `string` | Required. The full resource name of the referenced Integration Connectors Connection. Format: `pr... |
| `description` | `string` | Optional. The description of the tool that can be used by the Agent to decide whether to call thi... |
| `name` | `string` | Optional. The name of the tool that can be used by the Agent to decide whether to call this Conne... |

### `ConnectorToolset`

A toolset that generates tools from an Integration Connectors Connection.

| Property | Type | Description |
|----------|------|-------------|
| `authConfig` | `EndUserAuthConfig` | Optional. Configures how authentication is handled in Integration Connectors. By default, an admi... |
| `connection` | `string` | Required. The full resource name of the referenced Integration Connectors Connection. Format: `pr... |
| `connectorActions` | `array<Action>` | Required. The list of connector actions/entity operations to generate tools for. |

### `Conversation`

A conversation represents an interaction between an end user and the CES app.

| Property | Type | Description |
|----------|------|-------------|
| `appVersion` | `string` | Output only. The version of the app used for processing the conversation. Format: `projects/{proj... |
| `channelType` | `string` | DEPRECATED. Please use input_types instead. |
| `deployment` | `string` | Output only. The deployment of the app used for processing the conversation. Format: `projects/{p... |
| `endTime` | `string` | Output only. Timestamp when the conversation was completed. |
| `entryAgent` | `string` | Output only. The agent that initially handles the conversation. If not specified, the conversatio... |
| `inputTypes` | `array<string>` | Output only. The input types of the conversation. |
| `languageCode` | `string` | Output only. The language code of the conversation. |
| `messages` | `array<Message>` | Deprecated. Use turns instead. |
| `name` | `string` | Identifier. The unique identifier of the conversation. Format: `projects/{project}/locations/{loc... |
| `source` | `string` | Output only. Indicate the source of the conversation. |
| `startTime` | `string` | Output only. Timestamp when the conversation was created. |
| `turnCount` | `integer` | Output only. The number of turns in the conversation. |
| `turns` | `array<ConversationTurn>` | Required. The turns in the conversation. |

### `ConversationLoggingSettings`

Settings to describe the conversation logging behaviors for the app.

| Property | Type | Description |
|----------|------|-------------|
| `disableConversationLogging` | `boolean` | Optional. Whether to disable conversation logging for the sessions. |

### `ConversationTurn`

All information about a single turn in the conversation.

| Property | Type | Description |
|----------|------|-------------|
| `messages` | `array<Message>` | Optional. List of messages in the conversation turn, including user input, agent responses and in... |
| `rootSpan` | `Span` | Optional. The root span of the action processing. |

### `DataStore`

A DataStore resource in Vertex AI Search.

| Property | Type | Description |
|----------|------|-------------|
| `connectorConfig` | `DataStoreConnectorConfig` | Output only. The connector config for the data store connection. |
| `createTime` | `string` | Output only. Timestamp when the data store was created. |
| `displayName` | `string` | Output only. The display name of the data store. |
| `documentProcessingMode` | `string` | Output only. The document processing mode for the data store connection. Only set for PUBLIC_WEB ... |
| `name` | `string` | Required. Full resource name of the DataStore. Format: `projects/{project}/locations/{location}/c... |
| `type` | `string` | Output only. The type of the data store. This field is readonly and populated by the server. |

### `DataStoreConnectorConfig`

The connector config for the data store connection.

| Property | Type | Description |
|----------|------|-------------|
| `collection` | `string` | Resource name of the collection the data store belongs to. |
| `collectionDisplayName` | `string` | Display name of the collection the data store belongs to. |
| `dataSource` | `string` | The name of the data source. Example: `salesforce`, `jira`, `confluence`, `bigquery`. |

### `DataStoreSettings`

Data store related settings for the app.

| Property | Type | Description |
|----------|------|-------------|
| `engines` | `array<DataStoreSettingsEngine>` | Output only. The engines for the app. |

### `DataStoreSettingsEngine`

An engine to which the data stores are connected. See Vertex AI Search: https://cloud.google.com/generative-ai-app-builder/docs/enterprise-search-introduction.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Output only. The resource name of the engine. Format: `projects/{project}/locations/{location}/co... |
| `type` | `string` | Output only. The type of the engine. |

### `DataStoreTool`

Tool to retrieve from Vertex AI Search datastore or engine for grounding. Accepts either a datastore or an engine, but not both. See Vertex AI Search: https://cloud.google.com/generative-ai-app-builder/docs/enterprise-search-introduction.

| Property | Type | Description |
|----------|------|-------------|
| `boostSpecs` | `array<DataStoreToolBoostSpecs>` | Optional. Boost specification to boost certain documents. |
| `dataStoreSource` | `DataStoreToolDataStoreSource` | Optional. Search within a single specific DataStore. |
| `description` | `string` | Optional. The tool description. |
| `engineSource` | `DataStoreToolEngineSource` | Optional. Search within an Engine (potentially across multiple DataStores). |
| `filterParameterBehavior` | `string` | Optional. The filter parameter behavior. |
| `modalityConfigs` | `array<DataStoreToolModalityConfig>` | Optional. The modality configs for the data store. |
| `name` | `string` | Required. The data store tool name. |

### `DataStoreToolBoostSpec`

Boost specification to boost certain documents.

| Property | Type | Description |
|----------|------|-------------|
| `conditionBoostSpecs` | `array<DataStoreToolBoostSpecConditionBoostSpec>` | Required. A list of boosting specifications. |

### `DataStoreToolBoostSpecConditionBoostSpec`

Boost specification for a condition.

| Property | Type | Description |
|----------|------|-------------|
| `boost` | `number` | Optional. Strength of the boost, which should be in [-1, 1]. Negative boost means demotion. Defau... |
| `boostControlSpec` | `DataStoreToolBoostSpecConditionBoostSpecBoostControlSpec` | Optional. Complex specification for custom ranking based on customer defined attribute value. |
| `condition` | `string` | Required. An expression which specifies a boost condition. The syntax is the same as filter expre... |

### `DataStoreToolBoostSpecConditionBoostSpecBoostControlSpec`

Specification for custom ranking based on customer specified attribute value. It provides more controls for customized ranking than the simple (condition, boost) combination above.

| Property | Type | Description |
|----------|------|-------------|
| `attributeType` | `string` | Optional. The attribute type to be used to determine the boost amount. The attribute value can be... |
| `controlPoints` | `array<DataStoreToolBoostSpecConditionBoostSpecBoostControlSpecControlPoint>` | Optional. The control points used to define the curve. The monotonic function (defined through th... |
| `fieldName` | `string` | Optional. The name of the field whose value will be used to determine the boost amount. |
| `interpolationType` | `string` | Optional. The interpolation type to be applied to connect the control points listed below. |

### `DataStoreToolBoostSpecConditionBoostSpecBoostControlSpecControlPoint`

The control points used to define the curve. The curve defined through these control points can only be monotonically increasing or decreasing(constant values are acceptable).

| Property | Type | Description |
|----------|------|-------------|
| `attributeValue` | `string` | Optional. Can be one of: 1. The numerical field value. 2. The duration spec for freshness: The va... |
| `boostAmount` | `number` | Optional. The value between -1 to 1 by which to boost the score if the attribute_value evaluates ... |

### `DataStoreToolBoostSpecs`

Boost specifications to boost certain documents. For more information, please refer to https://cloud.google.com/generative-ai-app-builder/docs/boosting.

| Property | Type | Description |
|----------|------|-------------|
| `dataStores` | `array<string>` | Required. The Data Store where the boosting configuration is applied. Full resource name of DataS... |
| `spec` | `array<DataStoreToolBoostSpec>` | Required. A list of boosting specifications. |

### `DataStoreToolDataStoreSource`

Configuration for searching within a specific DataStore.

| Property | Type | Description |
|----------|------|-------------|
| `dataStore` | `DataStore` | Optional. The data store. |
| `filter` | `string` | Optional. Filter specification for the DataStore. See: https://cloud.google.com/generative-ai-app... |

### `DataStoreToolEngineSource`

Configuration for searching within an Engine, potentially targeting specific DataStores.

| Property | Type | Description |
|----------|------|-------------|
| `dataStoreSources` | `array<DataStoreToolDataStoreSource>` | Optional. Use to target specific DataStores within the Engine. If empty, the search applies to al... |
| `engine` | `string` | Required. Full resource name of the Engine. Format: `projects/{project}/locations/{location}/coll... |
| `filter` | `string` | Optional. A filter applied to the search across the Engine. Not relevant and not used if 'data_st... |

### `DataStoreToolGroundingConfig`

Grounding configuration.

| Property | Type | Description |
|----------|------|-------------|
| `disabled` | `boolean` | Optional. Whether grounding is disabled. |
| `groundingLevel` | `number` | Optional. The groundedness threshold of the answer based on the retrieved sources. The value has ... |

### `DataStoreToolModalityConfig`

If specified, will apply the given configuration for the specified modality.

| Property | Type | Description |
|----------|------|-------------|
| `groundingConfig` | `DataStoreToolGroundingConfig` | Optional. The grounding configuration. |
| `modalityType` | `string` | Required. The modality type. |
| `rewriterConfig` | `DataStoreToolRewriterConfig` | Optional. The rewriter config. |
| `summarizationConfig` | `DataStoreToolSummarizationConfig` | Optional. The summarization config. |

### `DataStoreToolRewriterConfig`

Rewriter configuration.

| Property | Type | Description |
|----------|------|-------------|
| `disabled` | `boolean` | Optional. Whether the rewriter is disabled. |
| `modelSettings` | `ModelSettings` | Required. Configurations for the LLM model. |
| `prompt` | `string` | Optional. The prompt definition. If not set, default prompt will be used. |

### `DataStoreToolSummarizationConfig`

Summarization configuration.

| Property | Type | Description |
|----------|------|-------------|
| `disabled` | `boolean` | Optional. Whether summarization is disabled. |
| `modelSettings` | `ModelSettings` | Optional. Configurations for the LLM model. |
| `prompt` | `string` | Optional. The prompt definition. If not set, default prompt will be used. |

### `Deployment`

A deployment represents an immutable, queryable version of the app. It is used to deploy an app version with a specific channel profile.

| Property | Type | Description |
|----------|------|-------------|
| `appVersion` | `string` | Required. The resource name of the app version to deploy. Format: projects/{project}/locations/{l... |
| `channelProfile` | `ChannelProfile` | Required. The channel profile used in the deployment. |
| `createTime` | `string` | Output only. Timestamp when this deployment was created. |
| `displayName` | `string` | Required. Display name of the deployment. |
| `etag` | `string` | Output only. Etag used to ensure the object hasn't changed during a read-modify-write operation. ... |
| `name` | `string` | Identifier. The resource name of the deployment. Format: projects/{project}/locations/{location}/... |
| `updateTime` | `string` | Output only. Timestamp when this deployment was last updated. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `EndSession`

Indicates the session has terminated, due to either successful completion (e.g. user says "Good bye!" ) or an agent escalation. The agent will not process any further inputs after session is terminated and the client should half-close and disconnect after receiving all remaining responses from the agent.

| Property | Type | Description |
|----------|------|-------------|
| `metadata` | `object` | Optional. Provides additional information about the end session signal, such as the reason for en... |

### `EndUserAuthConfig`

End-user authentication configuration used for Connection calls. The field values must be the names of context variables in the format `$context.variables.`.

| Property | Type | Description |
|----------|------|-------------|
| `oauth2AuthCodeConfig` | `EndUserAuthConfigOauth2AuthCodeConfig` | Oauth 2.0 Authorization Code authentication. |
| `oauth2JwtBearerConfig` | `EndUserAuthConfigOauth2JwtBearerConfig` | JWT Profile Oauth 2.0 Authorization Grant authentication. |

### `EndUserAuthConfigOauth2AuthCodeConfig`

Oauth 2.0 Authorization Code authentication configuration.

| Property | Type | Description |
|----------|------|-------------|
| `oauthToken` | `string` | Required. Oauth token parameter name to pass through. Must be in the format `$context.variables.`. |

### `EndUserAuthConfigOauth2JwtBearerConfig`

JWT Profile Oauth 2.0 Authorization Grant authentication configuration.

| Property | Type | Description |
|----------|------|-------------|
| `clientKey` | `string` | Required. Client parameter name to pass through. Must be in the format `$context.variables.`. |
| `issuer` | `string` | Required. Issuer parameter name to pass through. Must be in the format `$context.variables.`. |
| `subject` | `string` | Required. Subject parameter name to pass through. Must be in the format `$context.variables.`. |

### `EvaluationMetricsThresholds`

Threshold settings for metrics in an Evaluation.

| Property | Type | Description |
|----------|------|-------------|
| `goldenEvaluationMetricsThresholds` | `EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds` | Optional. The golden evaluation metrics thresholds. |
| `goldenHallucinationMetricBehavior` | `string` | Optional. The hallucination metric behavior for golden evaluations. |
| `hallucinationMetricBehavior` | `string` | Optional. Deprecated: Use `golden_hallucination_metric_behavior` instead. The hallucination metri... |
| `scenarioHallucinationMetricBehavior` | `string` | Optional. The hallucination metric behavior for scenario evaluations. |

### `EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholds`

Settings for golden evaluations.

| Property | Type | Description |
|----------|------|-------------|
| `expectationLevelMetricsThresholds` | `EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds` | Optional. The expectation level metrics thresholds. |
| `turnLevelMetricsThresholds` | `EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds` | Optional. The turn level metrics thresholds. |

### `EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsExpectationLevelMetricsThresholds`

Expectation level metrics thresholds.

| Property | Type | Description |
|----------|------|-------------|
| `toolInvocationParameterCorrectnessThreshold` | `number` | Optional. The success threshold for individual tool invocation parameter correctness. Must be a f... |

### `EvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsTurnLevelMetricsThresholds`

Turn level metrics thresholds.

| Property | Type | Description |
|----------|------|-------------|
| `overallToolInvocationCorrectnessThreshold` | `number` | Optional. The success threshold for overall tool invocation correctness. Must be a float between ... |
| `semanticSimilarityChannel` | `string` | Optional. The semantic similarity channel to use for evaluation. |
| `semanticSimilaritySuccessThreshold` | `integer` | Optional. The success threshold for semantic similarity. Must be an integer between 0 and 4. Defa... |

### `Event`

Event input.

| Property | Type | Description |
|----------|------|-------------|
| `event` | `string` | Required. The name of the event. |

### `Example`

An example represents a sample conversation between the user and the agent(s).

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Timestamp when the example was created. |
| `description` | `string` | Optional. Human-readable description of the example. |
| `displayName` | `string` | Required. Display name of the example. |
| `entryAgent` | `string` | Optional. The agent that initially handles the conversation. If not specified, the example repres... |
| `etag` | `string` | Etag used to ensure the object hasn't changed during a read-modify-write operation. If the etag i... |
| `invalid` | `boolean` | Output only. The example may become invalid if referencing resources are deleted. Invalid example... |
| `messages` | `array<Message>` | Optional. The collection of messages that make up the conversation. |
| `name` | `string` | Identifier. The unique identifier of the example. Format: `projects/{project}/locations/{location... |
| `updateTime` | `string` | Output only. Timestamp when the example was last updated. |

### `ExecuteToolRequest`

Request message for ToolService.ExecuteTool.

| Property | Type | Description |
|----------|------|-------------|
| `args` | `object` | Optional. The input parameters and values for the tool in JSON object format. |
| `tool` | `string` | Optional. The name of the tool to execute. Format: projects/{project}/locations/{location}/apps/{... |
| `toolsetTool` | `ToolsetTool` | Optional. The toolset tool to execute. Only one tool should match the predicate from the toolset.... |

### `ExecuteToolResponse`

Response message for ToolService.ExecuteTool.

| Property | Type | Description |
|----------|------|-------------|
| `response` | `object` | Required. The tool execution result in JSON object format. Use "output" key to specify tool respo... |
| `tool` | `string` | The name of the tool that got executed. Format: `projects/{project}/locations/{location}/apps/{ap... |
| `toolsetTool` | `ToolsetTool` | The toolset tool that got executed. |

### `ExportAppRequest`

Request message for AgentService.ExportApp.

| Property | Type | Description |
|----------|------|-------------|
| `exportFormat` | `string` | Required. The format to export the app in. |
| `gcsUri` | `string` | Optional. The [Google Cloud Storage](https://cloud.google.com/storage/docs/) URI to which to expo... |

### `ExportAppResponse`

Response message for AgentService.ExportApp.

| Property | Type | Description |
|----------|------|-------------|
| `appContent` | `string` | App folder compressed as a zip file. |
| `appUri` | `string` | The [Google Cloud Storage](https://cloud.google.com/storage/docs/) URI to which the app was expor... |

### `ExpressionCondition`

Expression condition based on session state.

| Property | Type | Description |
|----------|------|-------------|
| `expression` | `string` | Required. The string representation of cloud.api.Expression condition. |

### `FileSearchTool`

The file search tool allows the agent to search across the files uploaded by the app/agent developer. It has presets to give relatively good quality search over the uploaded files and summarization of the retrieved results.

| Property | Type | Description |
|----------|------|-------------|
| `corpusType` | `string` | Optional. The type of the corpus. Default is FULLY_MANAGED. |
| `description` | `string` | Optional. The tool description. |
| `fileCorpus` | `string` | Optional. The corpus where files are stored. Format: projects/{project}/locations/{location}/ragC... |
| `name` | `string` | Required. The tool name. |

### `GenerateChatTokenRequest`

Request message for WidgetService.GenerateChatToken.

| Property | Type | Description |
|----------|------|-------------|
| `deployment` | `string` | Required. The deployment of the app to use for the session. Format: projects/{project}/locations/... |
| `recaptchaToken` | `string` | Optional. The reCAPTCHA token generated by the client-side chat widget. |

### `GenerateChatTokenResponse`

Response message for WidgetService.GenerateChatToken.

| Property | Type | Description |
|----------|------|-------------|
| `chatToken` | `string` | The session scoped token for chat widget to authenticate with Session APIs. |
| `expireTime` | `string` | The time at which the chat token expires. |

### `GoogleSearchSuggestions`

Search suggestions from Google Search Tool.

| Property | Type | Description |
|----------|------|-------------|
| `htmls` | `array<string>` | Compliant HTML and CSS styling for search suggestions. The provided HTML and CSS automatically ad... |
| `webSearchQueries` | `array<WebSearchQuery>` | List of queries used to perform the google search along with the search result URIs forming the s... |

### `GoogleSearchTool`

Represents a tool to perform Google web searches for grounding. See https://cloud.google.com/customer-engagement-ai/conversational-agents/ps/tool#google-search.

| Property | Type | Description |
|----------|------|-------------|
| `contextUrls` | `array<string>` | Optional. Content will be fetched directly from these URLs for context and grounding. Example: "h... |
| `description` | `string` | Optional. Description of the tool's purpose. |
| `excludeDomains` | `array<string>` | Optional. List of domains to be excluded from the search results. Example: "example.com". A maxim... |
| `name` | `string` | Required. The name of the tool. |
| `preferredDomains` | `array<string>` | Optional. Specifies domains to restrict search results to. Example: "example.com", "another.site"... |
| `promptConfig` | `GoogleSearchToolPromptConfig` | Optional. Prompt instructions passed to planner on how the search results should be processed for... |

### `GoogleSearchToolPromptConfig`

Prompt settings used by the model when processing or summarizing the google search results.

| Property | Type | Description |
|----------|------|-------------|
| `textPrompt` | `string` | Optional. Defines the prompt used for the system instructions when interacting with the agent in ... |
| `voicePrompt` | `string` | Optional. Defines the prompt used for the system instructions when interacting with the agent in ... |

### `Guardrail`

Guardrail contains a list of checks and balances to keep the agents safe and secure.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `TriggerAction` | Optional. Action to take when the guardrail is triggered. |
| `codeCallback` | `GuardrailCodeCallback` | Optional. Guardrail that potentially blocks the conversation based on the result of the callback ... |
| `contentFilter` | `GuardrailContentFilter` | Optional. Guardrail that bans certain content from being used in the conversation. |
| `createTime` | `string` | Output only. Timestamp when the guardrail was created. |
| `description` | `string` | Optional. Description of the guardrail. |
| `displayName` | `string` | Required. Display name of the guardrail. |
| `enabled` | `boolean` | Optional. Whether the guardrail is enabled. |
| `etag` | `string` | Etag used to ensure the object hasn't changed during a read-modify-write operation. If the etag i... |
| `llmPolicy` | `GuardrailLlmPolicy` | Optional. Guardrail that blocks the conversation if the LLM response is considered violating the ... |
| `llmPromptSecurity` | `GuardrailLlmPromptSecurity` | Optional. Guardrail that blocks the conversation if the prompt is considered unsafe based on the ... |
| `modelSafety` | `GuardrailModelSafety` | Optional. Guardrail that blocks the conversation if the LLM response is considered unsafe based o... |
| `name` | `string` | Identifier. The unique identifier of the guardrail. Format: `projects/{project}/locations/{locati... |
| `updateTime` | `string` | Output only. Timestamp when the guardrail was last updated. |

### `GuardrailCodeCallback`

Guardrail that blocks the conversation based on the code callbacks provided.

| Property | Type | Description |
|----------|------|-------------|
| `afterAgentCallback` | `Callback` | Optional. The callback to execute after the agent is called. Each callback function is expected t... |
| `afterModelCallback` | `Callback` | Optional. The callback to execute after the model is called. If there are multiple calls to the m... |
| `beforeAgentCallback` | `Callback` | Optional. The callback to execute before the agent is called. Each callback function is expected ... |
| `beforeModelCallback` | `Callback` | Optional. The callback to execute before the model is called. If there are multiple calls to the ... |

### `GuardrailContentFilter`

Guardrail that bans certain content from being used in the conversation.

| Property | Type | Description |
|----------|------|-------------|
| `bannedContents` | `array<string>` | Optional. List of banned phrases. Applies to both user inputs and agent responses. |
| `bannedContentsInAgentResponse` | `array<string>` | Optional. List of banned phrases. Applies only to agent responses. |
| `bannedContentsInUserInput` | `array<string>` | Optional. List of banned phrases. Applies only to user inputs. |
| `disregardDiacritics` | `boolean` | Optional. If true, diacritics are ignored during matching. |
| `matchType` | `string` | Required. Match type for the content filter. |

### `GuardrailLlmPolicy`

Guardrail that blocks the conversation if the LLM response is considered violating the policy based on the LLM classification.

| Property | Type | Description |
|----------|------|-------------|
| `allowShortUtterance` | `boolean` | Optional. By default, the LLM policy check is bypassed for short utterances. Enabling this settin... |
| `failOpen` | `boolean` | Optional. If an error occurs during the policy check, fail open and do not trigger the guardrail. |
| `maxConversationMessages` | `integer` | Optional. When checking this policy, consider the last 'n' messages in the conversation. When not... |
| `modelSettings` | `ModelSettings` | Optional. Model settings. |
| `policyScope` | `string` | Required. Defines when to apply the policy check during the conversation. If set to `POLICY_SCOPE... |
| `prompt` | `string` | Required. Policy prompt. |

### `GuardrailLlmPromptSecurity`

Guardrail that blocks the conversation if the input is considered unsafe based on the LLM classification.

| Property | Type | Description |
|----------|------|-------------|
| `customPolicy` | `GuardrailLlmPolicy` | Optional. Use a user-defined LlmPolicy to configure the security guardrail. |
| `defaultSettings` | `GuardrailLlmPromptSecurityDefaultSecuritySettings` | Optional. Use the system's predefined default security settings. To select this mode, include an ... |
| `failOpen` | `boolean` | Optional. Determines the behavior when the guardrail encounters an LLM error. - If true: the guar... |

### `GuardrailLlmPromptSecurityDefaultSecuritySettings`

Configuration for default system security settings.

| Property | Type | Description |
|----------|------|-------------|
| `defaultPromptTemplate` | `string` | Output only. The default prompt template used by the system. This field is for display purposes t... |

### `GuardrailModelSafety`

Model safety settings overrides. When this is set, it will override the default settings and trigger the guardrail if the response is considered unsafe.

| Property | Type | Description |
|----------|------|-------------|
| `safetySettings` | `array<GuardrailModelSafetySafetySetting>` | Required. List of safety settings. |

### `GuardrailModelSafetySafetySetting`

Safety setting.

| Property | Type | Description |
|----------|------|-------------|
| `category` | `string` | Required. The harm category. |
| `threshold` | `string` | Required. The harm block threshold. |

### `Image`

Represents an image input or output in the conversation.

| Property | Type | Description |
|----------|------|-------------|
| `data` | `string` | Required. Raw bytes of the image. |
| `mimeType` | `string` | Required. The IANA standard MIME type of the source data. Supported image types includes: * image... |

### `ImportAppRequest`

Request message for AgentService.ImportApp.

| Property | Type | Description |
|----------|------|-------------|
| `appContent` | `string` | Raw bytes representing the compressed zip file with the app folder structure. |
| `appId` | `string` | Optional. The ID to use for the imported app. * If not specified, a unique ID will be automatical... |
| `displayName` | `string` | Optional. The display name of the app to import. * If the app is created on import, and the displ... |
| `gcsUri` | `string` | The [Google Cloud Storage](https://cloud.google.com/storage/docs/) URI from which to import app. ... |
| `ignoreAppLock` | `boolean` | Optional. Flag for overriding the app lock during import. If set to true, the import process will... |
| `importOptions` | `ImportAppRequestImportOptions` | Optional. Options governing the import process for the app. |

### `ImportAppRequestImportOptions`

Configuration options for the app import process. These options control how the import behaves, particularly when conflicts arise with existing app data.

| Property | Type | Description |
|----------|------|-------------|
| `conflictResolutionStrategy` | `string` | Optional. The strategy to use when resolving conflicts during import. |

### `ImportAppResponse`

Response message for AgentService.ImportApp.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The resource name of the app that was imported. |
| `warnings` | `array<string>` | Warning messages generated during the import process. If errors occur for specific resources, the... |

### `InputAudioConfig`

InputAudioConfig configures how the CES agent should interpret the incoming audio data.

| Property | Type | Description |
|----------|------|-------------|
| `audioEncoding` | `string` | Required. The encoding of the input audio data. |
| `noiseSuppressionLevel` | `string` | Optional. Whether to enable noise suppression on the input audio. Available values are "low", "mo... |
| `sampleRateHertz` | `integer` | Required. The sample rate (in Hertz) of the input audio data. |

### `LanguageSettings`

Language settings of the app.

| Property | Type | Description |
|----------|------|-------------|
| `defaultLanguageCode` | `string` | Optional. The default language code of the app. |
| `enableMultilingualSupport` | `boolean` | Optional. Enables multilingual support. If true, agents in the app will use pre-built instruction... |
| `fallbackAction` | `string` | Optional. The action to perform when an agent receives input in an unsupported language. This can... |
| `supportedLanguageCodes` | `array<string>` | Optional. List of languages codes supported by the app, in addition to the `default_language_code`. |

### `ListAgentsResponse`

Response message for AgentService.ListAgents.

| Property | Type | Description |
|----------|------|-------------|
| `agents` | `array<Agent>` | The list of agents. |
| `nextPageToken` | `string` | A token that can be sent as ListAgentsRequest.page_token to retrieve the next page. Absence of th... |

### `ListAppVersionsResponse`

Response message for AgentService.ListAppVersions.

| Property | Type | Description |
|----------|------|-------------|
| `appVersions` | `array<AppVersion>` | The list of app versions. |
| `nextPageToken` | `string` | A token that can be sent as ListAppVersionsRequest.page_token to retrieve the next page. Absence ... |

### `ListAppsResponse`

Response message for AgentService.ListApps.

| Property | Type | Description |
|----------|------|-------------|
| `apps` | `array<App>` | The list of apps. |
| `nextPageToken` | `string` | A token that can be sent as ListAppsRequest.page_token to retrieve the next page. Absence of this... |
| `unreachable` | `array<string>` | Unordered list. Locations that could not be reached. |

### `ListChangelogsResponse`

Response message for AgentService.ListChangelogs.

| Property | Type | Description |
|----------|------|-------------|
| `changelogs` | `array<Changelog>` | The list of changelogs. |
| `nextPageToken` | `string` | A token that can be sent as ListChangelogsRequest.page_token to retrieve the next page. Absence o... |

### `ListConversationsResponse`

Response message for AgentService.ListConversations.

| Property | Type | Description |
|----------|------|-------------|
| `conversations` | `array<Conversation>` | The list of conversations. |
| `nextPageToken` | `string` | A token that can be sent as ListConversationsRequest.page_token to retrieve the next page. Absenc... |

### `ListDeploymentsResponse`

Response message for AgentService.ListDeployments.

| Property | Type | Description |
|----------|------|-------------|
| `deployments` | `array<Deployment>` | The list of deployments. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `ListExamplesResponse`

Response message for AgentService.ListExamples.

| Property | Type | Description |
|----------|------|-------------|
| `examples` | `array<Example>` | The list of examples. |
| `nextPageToken` | `string` | A token that can be sent as ListExamplesRequest.page_token to retrieve the next page. Absence of ... |

### `ListGuardrailsResponse`

Response message for AgentService.ListGuardrails.

| Property | Type | Description |
|----------|------|-------------|
| `guardrails` | `array<Guardrail>` | The list of guardrails. |
| `nextPageToken` | `string` | A token that can be sent as ListGuardrailsRequest.page_token to retrieve the next page. Absence o... |

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

### `ListToolsResponse`

Response message for AgentService.ListTools.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token that can be sent as ListToolsRequest.page_token to retrieve the next page. Absence of thi... |
| `tools` | `array<Tool>` | The list of tools. |

### `ListToolsetsResponse`

Response message for AgentService.ListToolsets.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token that can be sent as ListToolsetsRequest.page_token to retrieve the next page. Absence of ... |
| `toolsets` | `array<Toolset>` | The list of toolsets. |

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `LoggingSettings`

Settings to describe the logging behaviors for the app.

| Property | Type | Description |
|----------|------|-------------|
| `audioRecordingConfig` | `AudioRecordingConfig` | Optional. Configuration for how audio interactions should be recorded. |
| `bigqueryExportSettings` | `BigQueryExportSettings` | Optional. Settings to describe the BigQuery export behaviors for the app. The conversation data w... |
| `cloudLoggingSettings` | `CloudLoggingSettings` | Optional. Settings to describe the Cloud Logging behaviors for the app. |
| `conversationLoggingSettings` | `ConversationLoggingSettings` | Optional. Settings to describe the conversation logging behaviors for the app. |
| `evaluationAudioRecordingConfig` | `AudioRecordingConfig` | Optional. Configuration for how audio interactions should be recorded for the evaluation. By defa... |
| `metricAnalysisSettings` | `MetricAnalysisSettings` | Optional. Settings to describe the conversation data collection behaviors for the LLM analysis pi... |
| `redactionConfig` | `RedactionConfig` | Optional. Configuration for how sensitive data should be redacted. |

### `McpTool`

An MCP tool. See https://modelcontextprotocol.io/specification/2025-06-18/server/tools for more details.

| Property | Type | Description |
|----------|------|-------------|
| `apiAuthentication` | `ApiAuthentication` | Optional. Authentication information required to execute the tool against the MCP server. For bea... |
| `description` | `string` | Optional. The description of the MCP tool. |
| `inputSchema` | `Schema` | Optional. The schema of the input arguments of the MCP tool. |
| `name` | `string` | Required. The name of the MCP tool. |
| `outputSchema` | `Schema` | Optional. The schema of the output arguments of the MCP tool. |
| `serverAddress` | `string` | Required. The server address of the MCP server, e.g., "https://example.com/mcp/". If the server i... |
| `serviceDirectoryConfig` | `ServiceDirectoryConfig` | Optional. Service Directory configuration for VPC-SC, used to resolve service names within a peri... |
| `tlsConfig` | `TlsConfig` | Optional. The TLS configuration. Includes the custom server certificates that the client should t... |

### `McpToolset`

A toolset that contains a list of tools that are offered by the MCP server.

| Property | Type | Description |
|----------|------|-------------|
| `apiAuthentication` | `ApiAuthentication` | Optional. Authentication information required to access tools and execute a tool against the MCP ... |
| `serverAddress` | `string` | Required. The address of the MCP server, for example, "https://example.com/mcp/". If the server i... |
| `serviceDirectoryConfig` | `ServiceDirectoryConfig` | Optional. Service Directory configuration for VPC-SC, used to resolve service names within a peri... |
| `tlsConfig` | `TlsConfig` | Optional. The TLS configuration. Includes the custom server certificates that the client should t... |

### `Message`

A message within a conversation.

| Property | Type | Description |
|----------|------|-------------|
| `chunks` | `array<Chunk>` | Optional. Content of the message as a series of chunks. |
| `eventTime` | `string` | Optional. Timestamp when the message was sent or received. Should not be used if the message is p... |
| `role` | `string` | Optional. The role within the conversation, e.g., user, agent. |

### `MetricAnalysisSettings`

Settings to describe the conversation data collection behaviors for LLM analysis metrics pipeline.

| Property | Type | Description |
|----------|------|-------------|
| `llmMetricsOptedOut` | `boolean` | Optional. Whether to collect conversation data for llm analysis metrics. If true, conversation da... |

### `ModelSettings`

Model settings contains various configurations for the LLM model.

| Property | Type | Description |
|----------|------|-------------|
| `model` | `string` | Optional. The LLM model that the agent should use. If not set, the agent will inherit the model f... |
| `temperature` | `number` | Optional. If set, this temperature will be used for the LLM model. Temperature controls the rando... |

### `OAuthConfig`

Configurations for authentication with OAuth.

| Property | Type | Description |
|----------|------|-------------|
| `clientId` | `string` | Required. The client ID from the OAuth provider. |
| `clientSecretVersion` | `string` | Required. The name of the SecretManager secret version resource storing the client secret. Format... |
| `oauthGrantType` | `string` | Required. OAuth grant types. |
| `scopes` | `array<string>` | Optional. The OAuth scopes to grant. |
| `tokenEndpoint` | `string` | Required. The token endpoint in the OAuth provider to exchange for an access token. |

### `Omnichannel`

Represents an Omnichannel resource.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Timestamp when the omnichannel resource was created. |
| `description` | `string` | Optional. Human-readable description of the omnichannel resource. |
| `displayName` | `string` | Required. Display name of the omnichannel resource. |
| `etag` | `string` | Output only. Etag used to ensure the object hasn't changed during a read-modify-write operation. |
| `integrationConfig` | `OmnichannelIntegrationConfig` | Optional. The integration config for the omnichannel resource. |
| `name` | `string` | Identifier. The unique identifier of the omnichannel resource. Format: `projects/{project}/locati... |
| `updateTime` | `string` | Output only. Timestamp when the omnichannel resource was last updated. |

### `OmnichannelIntegrationConfig`

OmnichannelIntegrationConfig contains all App integration configs.

| Property | Type | Description |
|----------|------|-------------|
| `channelConfigs` | `object` | Optional. Various of configuration for handling App events. |
| `routingConfigs` | `object` | Optional. The key of routing_configs is a key of `app_configs`, value is a `RoutingConfig`, which... |
| `subscriberConfigs` | `object` | Optional. Various of subscribers configs. |

### `OmnichannelIntegrationConfigCesAppConfig`

Configs for CES app.

| Property | Type | Description |
|----------|------|-------------|
| `app` | `string` | The unique identifier of the CES app. Format: `projects/{project}/locations/{location}/apps/{app}` |

### `OmnichannelIntegrationConfigChannelConfig`

ChannelConfig contains config for various of app integration.

| Property | Type | Description |
|----------|------|-------------|
| `whatsappConfig` | `OmnichannelIntegrationConfigWhatsappConfig` | WhatsApp config. |

### `OmnichannelIntegrationConfigRoutingConfig`

Routing config specify how/who to route app events to a subscriber.

| Property | Type | Description |
|----------|------|-------------|
| `subscriberKey` | `string` | The key of the subscriber. |

### `OmnichannelIntegrationConfigSubscriberConfig`

Configs of subscribers.

| Property | Type | Description |
|----------|------|-------------|
| `cesAppConfig` | `OmnichannelIntegrationConfigCesAppConfig` | Ces app config. |

### `OmnichannelIntegrationConfigWhatsappConfig`

How Omnichannel should receive/reply events from WhatsApp.

| Property | Type | Description |
|----------|------|-------------|
| `metaBusinessPortfolioId` | `string` | The Meta Business Portfolio (MBP) ID. https://www.facebook.com/business/help/1710077379203657 |
| `phoneNumber` | `string` | The phone number used for sending/receiving messages. |
| `phoneNumberId` | `string` | The Phone Number ID associated with the WhatsApp Business Account. |
| `webhookVerifyToken` | `string` | The verify token configured in the Meta App Dashboard for webhook verification. |
| `whatsappBusinessAccountId` | `string` | The customer's WhatsApp Business Account (WABA) ID. |
| `whatsappBusinessToken` | `string` | The access token for authenticating API calls to the WhatsApp Cloud API. https://developers.faceb... |

### `OmnichannelOperationMetadata`

Represents the metadata of the long-running operation.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `requestedCancellation` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. |
| `statusMessage` | `string` | Output only. Human-readable status of the operation, if any. |

### `OpenApiTool`

A remote API tool defined by an OpenAPI schema.

| Property | Type | Description |
|----------|------|-------------|
| `apiAuthentication` | `ApiAuthentication` | Optional. Authentication information required by the API. |
| `description` | `string` | Optional. The description of the tool. If not provided, the description of the tool will be deriv... |
| `ignoreUnknownFields` | `boolean` | Optional. If true, the agent will ignore unknown fields in the API response. |
| `name` | `string` | Optional. The name of the tool. If not provided, the name of the tool will be derived from the Op... |
| `openApiSchema` | `string` | Required. The OpenAPI schema in JSON or YAML format. |
| `serviceDirectoryConfig` | `ServiceDirectoryConfig` | Optional. Service Directory configuration. |
| `tlsConfig` | `TlsConfig` | Optional. The TLS configuration. Includes the custom server certificates that the client will trust. |
| `url` | `string` | Optional. The server URL of the Open API schema. This field is only set in tools in the environme... |

### `OpenApiToolset`

A toolset that contains a list of tools that are defined by an OpenAPI schema.

| Property | Type | Description |
|----------|------|-------------|
| `apiAuthentication` | `ApiAuthentication` | Optional. Authentication information required by the API. |
| `ignoreUnknownFields` | `boolean` | Optional. If true, the agent will ignore unknown fields in the API response for all operations de... |
| `openApiSchema` | `string` | Required. The OpenAPI schema of the toolset. |
| `serviceDirectoryConfig` | `ServiceDirectoryConfig` | Optional. Service Directory configuration. |
| `tlsConfig` | `TlsConfig` | Optional. The TLS configuration. Includes the custom server certificates |
| `url` | `string` | Optional. The server URL of the Open API schema. This field is only set in toolsets in the enviro... |

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
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `requestedCancellation` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. Operations ... |
| `statusMessage` | `string` | Output only. Human-readable status of the operation, if any. |

### `OutputAudioConfig`

OutputAudioConfig configures how the CES agent should synthesize outgoing audio responses.

| Property | Type | Description |
|----------|------|-------------|
| `audioEncoding` | `string` | Required. The encoding of the output audio data. |
| `sampleRateHertz` | `integer` | Required. The sample rate (in Hertz) of the output audio data. |

### `PythonCodeCondition`

Python code block to evaluate the condition.

| Property | Type | Description |
|----------|------|-------------|
| `pythonCode` | `string` | Required. The python code to execute. |

### `PythonFunction`

A Python function tool.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Output only. The description of the Python function, parsed from the python code's docstring. |
| `name` | `string` | Optional. The name of the Python function to execute. Must match a Python function name defined i... |
| `pythonCode` | `string` | Optional. The Python code to execute for the tool. |

### `RedactionConfig`

Configuration to instruct how sensitive data should be handled.

| Property | Type | Description |
|----------|------|-------------|
| `deidentifyTemplate` | `string` | Optional. [DLP](https://cloud.google.com/dlp/docs) deidentify template name to instruct on how to... |
| `enableRedaction` | `boolean` | Optional. If true, redaction will be applied in various logging scenarios, including conversation... |
| `inspectTemplate` | `string` | Optional. [DLP](https://cloud.google.com/dlp/docs) inspect template name to configure detection o... |

### `RestoreAppVersionRequest`

Request message for AgentService.RestoreAppVersion

### `RetrieveToolSchemaRequest`

Request message for ToolService.RetrieveToolSchema.

| Property | Type | Description |
|----------|------|-------------|
| `tool` | `string` | Optional. The name of the tool to retrieve the schema for. Format: projects/{project}/locations/{... |
| `toolsetTool` | `ToolsetTool` | Optional. The toolset tool to retrieve the schema for. Only one tool should match the predicate f... |

### `RetrieveToolSchemaResponse`

Response message for ToolService.RetrieveToolSchema.

| Property | Type | Description |
|----------|------|-------------|
| `inputSchema` | `Schema` | Required. The schema of the tool input parameters. |
| `outputSchema` | `Schema` | Required. The schema of the tool output parameters. |
| `tool` | `string` | The name of the tool that the schema is for. Format: `projects/{project}/locations/{location}/app... |
| `toolsetTool` | `ToolsetTool` | The toolset tool that the schema is for. |

### `RetrieveToolsRequest`

Request message for ToolService.RetrieveTools.

| Property | Type | Description |
|----------|------|-------------|
| `toolIds` | `array<string>` | Optional. The identifiers of the tools to retrieve from the toolset. If empty, all tools in the t... |

### `RetrieveToolsResponse`

Response message for ToolService.RetrieveTools.

| Property | Type | Description |
|----------|------|-------------|
| `tools` | `array<Tool>` | Required. The list of tools that are included in the specified toolset. |

### `RunSessionRequest`

Request message for SessionService.RunSession.

| Property | Type | Description |
|----------|------|-------------|
| `config` | `SessionConfig` | Required. The configuration for the session. |
| `inputs` | `array<SessionInput>` | Required. Inputs for the session. |

### `RunSessionResponse`

Response message for SessionService.RunSession.

| Property | Type | Description |
|----------|------|-------------|
| `outputs` | `array<SessionOutput>` | Outputs for the session. |

### `Schema`

Represents a select subset of an OpenAPI 3.0 schema object.

| Property | Type | Description |
|----------|------|-------------|
| `additionalProperties` | `Schema` | Optional. Can either be a boolean or an object, controls the presence of additional properties. |
| `anyOf` | `array<Schema>` | Optional. The value should be validated against any (one or more) of the subschemas in the list. |
| `default` | `any` | Optional. Default value of the data. |
| `defs` | `object` | Optional. A map of definitions for use by `ref`. Only allowed at the root of the schema. |
| `description` | `string` | Optional. The description of the data. |
| `enum` | `array<string>` | Optional. Possible values of the element of primitive type with enum format. Examples: 1. We can ... |
| `items` | `Schema` | Optional. Schema of the elements of Type.ARRAY. |
| `maxItems` | `string` | Optional. Maximum number of the elements for Type.ARRAY. |
| `maximum` | `number` | Optional. Maximum value for Type.INTEGER and Type.NUMBER. |
| `minItems` | `string` | Optional. Minimum number of the elements for Type.ARRAY. |
| `minimum` | `number` | Optional. Minimum value for Type.INTEGER and Type.NUMBER. |
| `nullable` | `boolean` | Optional. Indicates if the value may be null. |
| `prefixItems` | `array<Schema>` | Optional. Schemas of initial elements of Type.ARRAY. |
| `properties` | `object` | Optional. Properties of Type.OBJECT. |
| `ref` | `string` | Optional. Allows indirect references between schema nodes. The value should be a valid reference ... |
| `required` | `array<string>` | Optional. Required properties of Type.OBJECT. |
| `title` | `string` | Optional. The title of the schema. |
| `type` | `string` | Required. The type of the data. |
| `uniqueItems` | `boolean` | Optional. Indicate the items in the array must be unique. Only applies to TYPE.ARRAY. |

### `ServiceAccountAuthConfig`

Configurations for authentication using a custom service account.

| Property | Type | Description |
|----------|------|-------------|
| `scopes` | `array<string>` | Optional. The OAuth scopes to grant. If not specified, the default scope `https://www.googleapis.... |
| `serviceAccount` | `string` | Required. The email address of the service account used for authentication. CES uses this service... |

### `ServiceAgentIdTokenAuthConfig`

Configurations for authentication with [ID token](https://cloud.google.com/docs/authentication/token-types#id) generated from service agent.

### `ServiceDirectoryConfig`

Configuration for tools using Service Directory.

| Property | Type | Description |
|----------|------|-------------|
| `service` | `string` | Required. The name of [Service Directory](https://cloud.google.com/service-directory) service. Fo... |

### `SessionConfig`

The configuration for the session.

| Property | Type | Description |
|----------|------|-------------|
| `deployment` | `string` | Optional. The deployment of the app to use for the session. Format: `projects/{project}/locations... |
| `entryAgent` | `string` | Optional. The entry agent to handle the session. If not specified, the session will be handled by... |
| `historicalContexts` | `array<Message>` | Optional. The historical context of the session, including user inputs, agent responses, and othe... |
| `inputAudioConfig` | `InputAudioConfig` | Optional. Configuration for processing the input audio. |
| `outputAudioConfig` | `OutputAudioConfig` | Optional. Configuration for generating the output audio. |
| `remoteDialogflowQueryParameters` | `SessionConfigRemoteDialogflowQueryParameters` | Optional. [QueryParameters](https://cloud.google.com/dialogflow/cx/docs/reference/rpc/google.clou... |
| `timeZone` | `string` | Optional. The time zone of the user. If provided, the agent will use the time zone for date and t... |

### `SessionConfigRemoteDialogflowQueryParameters`

[QueryParameters](https://cloud.google.com/dialogflow/cx/docs/reference/rpc/google.cloud.dialogflow.cx.v3#queryparameters) to send to the remote [Dialogflow](https://cloud.google.com/dialogflow/cx/docs/concept/console-conversational-agents) agent when the session control is transferred to the remote agent.

| Property | Type | Description |
|----------|------|-------------|
| `endUserMetadata` | `object` | Optional. The end user metadata to be sent in [QueryParameters](https://cloud.google.com/dialogfl... |
| `payload` | `object` | Optional. The payload to be sent in [QueryParameters](https://cloud.google.com/dialogflow/cx/docs... |
| `webhookHeaders` | `object` | Optional. The HTTP headers to be sent as webhook_headers in [QueryParameters](https://cloud.googl... |

### `SessionInput`

Input for the session.

| Property | Type | Description |
|----------|------|-------------|
| `audio` | `string` | Optional. Audio data from the end user. |
| `blob` | `Blob` | Optional. Blob data from the end user. |
| `dtmf` | `string` | Optional. DTMF digits from the end user. |
| `event` | `Event` | Optional. Event input. |
| `image` | `Image` | Optional. Image data from the end user. |
| `text` | `string` | Optional. Text data from the end user. |
| `toolResponses` | `ToolResponses` | Optional. Execution results for the tool calls from the client. |
| `variables` | `object` | Optional. Contextual variables for the session, keyed by name. Only variables declared in the app... |
| `willContinue` | `boolean` | Optional. A flag to indicate if the current message is a fragment of a larger input in the bidi s... |

### `SessionOutput`

Output for the session.

| Property | Type | Description |
|----------|------|-------------|
| `audio` | `string` | Output audio from the CES agent. |
| `citations` | `Citations` | Citations that provide the source information for the agent's generated text. |
| `diagnosticInfo` | `SessionOutputDiagnosticInfo` | Optional. Diagnostic information contains execution details during the processing of the input. O... |
| `endSession` | `EndSession` | Indicates the session has ended. |
| `googleSearchSuggestions` | `GoogleSearchSuggestions` | The suggestions returned from Google Search as a result of invoking the GoogleSearchTool. |
| `payload` | `object` | Custom payload with structured output from the CES agent. |
| `text` | `string` | Output text from the CES agent. |
| `toolCalls` | `ToolCalls` | Request for the client to execute the tools. |
| `turnCompleted` | `boolean` | If true, the CES agent has detected the end of the current conversation turn and will provide no ... |
| `turnIndex` | `integer` | Indicates the sequential order of conversation turn to which this output belongs to, starting fro... |

### `SessionOutputDiagnosticInfo`

Contains execution details during the processing.

| Property | Type | Description |
|----------|------|-------------|
| `messages` | `array<Message>` | List of the messages that happened during the processing. |
| `rootSpan` | `Span` | A trace of the entire request processing, represented as a root span. This span can contain neste... |

### `Span`

A span is a unit of work or a single operation during the request processing.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `object` | Output only. Key-value attributes associated with the span. |
| `childSpans` | `array<Span>` | Output only. The child spans that are nested under this span. |
| `duration` | `string` | Output only. The duration of the span. |
| `endTime` | `string` | Output only. The end time of the span. |
| `name` | `string` | Output only. The name of the span. |
| `startTime` | `string` | Output only. The start time of the span. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `SynthesizeSpeechConfig`

Configuration for how the agent response should be synthesized.

| Property | Type | Description |
|----------|------|-------------|
| `speakingRate` | `number` | Optional. The speaking rate/speed in the range [0.25, 2.0]. 1.0 is the normal native speed suppor... |
| `voice` | `string` | Optional. The name of the voice. If not set, the service will choose a voice based on the other p... |

### `SystemTool`

Pre-defined system tool.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Output only. The description of the system tool. |
| `name` | `string` | Required. The name of the system tool. |

### `TimeZoneSettings`

TimeZone settings of the app.

| Property | Type | Description |
|----------|------|-------------|
| `timeZone` | `string` | Optional. The time zone of the app from the [time zone database](https://www.iana.org/time-zones)... |

### `TlsConfig`

The TLS configuration.

| Property | Type | Description |
|----------|------|-------------|
| `caCerts` | `array<TlsConfigCaCert>` | Required. Specifies a list of allowed custom CA certificates for HTTPS verification. |

### `TlsConfigCaCert`

The CA certificate.

| Property | Type | Description |
|----------|------|-------------|
| `cert` | `string` | Required. The allowed custom CA certificates (in DER format) for HTTPS verification. This overrid... |
| `displayName` | `string` | Required. The name of the allowed custom CA certificates. This can be used to disambiguate the cu... |

### `Tool`

A tool represents an action that the CES agent can take to achieve certain goals.

| Property | Type | Description |
|----------|------|-------------|
| `clientFunction` | `ClientFunction` | Optional. The client function. |
| `connectorTool` | `ConnectorTool` | Optional. The Integration Connector tool. |
| `createTime` | `string` | Output only. Timestamp when the tool was created. |
| `dataStoreTool` | `DataStoreTool` | Optional. The data store tool. |
| `displayName` | `string` | Output only. The display name of the tool, derived based on the tool's type. For example, display... |
| `etag` | `string` | Etag used to ensure the object hasn't changed during a read-modify-write operation. If the etag i... |
| `executionType` | `string` | Optional. The execution type of the tool. |
| `fileSearchTool` | `FileSearchTool` | Optional. The file search tool. |
| `generatedSummary` | `string` | Output only. If the tool is generated by the LLM assistant, this field contains a descriptive sum... |
| `googleSearchTool` | `GoogleSearchTool` | Optional. The google search tool. |
| `mcpTool` | `McpTool` | Optional. The MCP tool. An MCP tool cannot be created or updated directly and is managed by the M... |
| `name` | `string` | Identifier. The unique identifier of the tool. Format: - `projects/{project}/locations/{location}... |
| `openApiTool` | `OpenApiTool` | Optional. The open API tool. |
| `pythonFunction` | `PythonFunction` | Optional. The python function tool. |
| `systemTool` | `SystemTool` | Optional. The system tool. |
| `toolFakeConfig` | `ToolFakeConfig` | Optional. Configuration for tool behavior in fake mode. |
| `updateTime` | `string` | Output only. Timestamp when the tool was last updated. |
| `widgetTool` | `WidgetTool` | Optional. The widget tool. |

### `ToolCall`

Request for the client or the agent to execute the specified tool.

| Property | Type | Description |
|----------|------|-------------|
| `args` | `object` | Optional. The input parameters and values for the tool in JSON object format. |
| `displayName` | `string` | Output only. Display name of the tool. |
| `id` | `string` | Optional. The unique identifier of the tool call. If populated, the client should return the exec... |
| `tool` | `string` | Optional. The name of the tool to execute. Format: `projects/{project}/locations/{location}/apps/... |
| `toolsetTool` | `ToolsetTool` | Optional. The toolset tool to execute. |

### `ToolCalls`

Request for the client to execute the tools and return the execution results before continuing the session.

| Property | Type | Description |
|----------|------|-------------|
| `toolCalls` | `array<ToolCall>` | Optional. The list of tool calls to execute. |

### `ToolFakeConfig`

Configuration for tool behavior in fake mode.

| Property | Type | Description |
|----------|------|-------------|
| `codeBlock` | `CodeBlock` | Optional. Code block which will be executed instead of a real tool call. |
| `enableFakeMode` | `boolean` | Optional. Whether the tool is using fake mode. |

### `ToolResponse`

The execution result of a specific tool from the client or the agent.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Output only. Display name of the tool. |
| `id` | `string` | Optional. The matching ID of the tool call the response is for. |
| `response` | `object` | Required. The tool execution result in JSON object format. Use "output" key to specify tool respo... |
| `tool` | `string` | Optional. The name of the tool to execute. Format: `projects/{project}/locations/{location}/apps/... |
| `toolsetTool` | `ToolsetTool` | Optional. The toolset tool that got executed. |

### `ToolResponses`

Execution results for the requested tool calls from the client.

| Property | Type | Description |
|----------|------|-------------|
| `toolResponses` | `array<ToolResponse>` | Optional. The list of tool execution results. |

### `Toolset`

A toolset represents a group of dynamically managed tools that can be used by the agent.

| Property | Type | Description |
|----------|------|-------------|
| `connectorToolset` | `ConnectorToolset` | Optional. A toolset that generates tools from an Integration Connectors Connection. |
| `createTime` | `string` | Output only. Timestamp when the toolset was created. |
| `description` | `string` | Optional. The description of the toolset. |
| `displayName` | `string` | Optional. The display name of the toolset. Must be unique within the same app. |
| `etag` | `string` | ETag used to ensure the object hasn't changed during a read-modify-write operation. If the etag i... |
| `executionType` | `string` | Optional. The execution type of the tools in the toolset. |
| `mcpToolset` | `McpToolset` | Optional. A toolset that contains a list of tools that are offered by the MCP server. |
| `name` | `string` | Identifier. The unique identifier of the toolset. Format: `projects/{project}/locations/{location... |
| `openApiToolset` | `OpenApiToolset` | Optional. A toolset that contains a list of tools that are defined by an OpenAPI schema. |
| `toolFakeConfig` | `ToolFakeConfig` | Optional. Configuration for tools behavior in fake mode. |
| `updateTime` | `string` | Output only. Timestamp when the toolset was last updated. |

### `ToolsetTool`

A tool that is created from a toolset.

| Property | Type | Description |
|----------|------|-------------|
| `toolId` | `string` | Optional. The tool ID to filter the tools to retrieve the schema for. |
| `toolset` | `string` | Required. The resource name of the Toolset from which this tool is derived. Format: `projects/{pr... |

### `TransferRule`

Rule for transferring to a specific agent.

| Property | Type | Description |
|----------|------|-------------|
| `childAgent` | `string` | Required. The resource name of the child agent the rule applies to. Format: `projects/{project}/l... |
| `deterministicTransfer` | `TransferRuleDeterministicTransfer` | Optional. A rule that immediately transfers to the target agent when the condition is met. |
| `direction` | `string` | Required. The direction of the transfer. |
| `disablePlannerTransfer` | `TransferRuleDisablePlannerTransfer` | Optional. Rule that prevents the planner from transferring to the target agent. |

### `TransferRuleDeterministicTransfer`

Deterministic transfer rule. When the condition evaluates to true, the transfer occurs.

| Property | Type | Description |
|----------|------|-------------|
| `expressionCondition` | `ExpressionCondition` | Optional. A rule that evaluates a session state condition. If the condition evaluates to true, th... |
| `pythonCodeCondition` | `PythonCodeCondition` | Optional. A rule that uses Python code block to evaluate the conditions. If the condition evaluat... |

### `TransferRuleDisablePlannerTransfer`

A rule that prevents the planner from transferring to the target agent.

| Property | Type | Description |
|----------|------|-------------|
| `expressionCondition` | `ExpressionCondition` | Required. If the condition evaluates to true, planner will not be allowed to transfer to the targ... |

### `TriggerAction`

Action that is taken when a certain precondition is met.

| Property | Type | Description |
|----------|------|-------------|
| `generativeAnswer` | `TriggerActionGenerativeAnswer` | Optional. Respond with a generative answer. |
| `respondImmediately` | `TriggerActionRespondImmediately` | Optional. Immediately respond with a preconfigured response. |
| `transferAgent` | `TriggerActionTransferAgent` | Optional. Transfer the conversation to a different agent. |

### `TriggerActionGenerativeAnswer`

The agent will immediately respond with a generative answer.

| Property | Type | Description |
|----------|------|-------------|
| `prompt` | `string` | Required. The prompt to use for the generative answer. |

### `TriggerActionRespondImmediately`

The agent will immediately respond with a preconfigured response.

| Property | Type | Description |
|----------|------|-------------|
| `responses` | `array<TriggerActionResponse>` | Required. The canned responses for the agent to choose from. The response is chosen randomly. |

### `TriggerActionResponse`

Represents a response from the agent.

| Property | Type | Description |
|----------|------|-------------|
| `disabled` | `boolean` | Optional. Whether the response is disabled. Disabled responses are not used by the agent. |
| `text` | `string` | Required. Text for the agent to respond with. |

### `TriggerActionTransferAgent`

The agent will transfer the conversation to a different agent.

| Property | Type | Description |
|----------|------|-------------|
| `agent` | `string` | Required. The name of the agent to transfer the conversation to. The agent must be in the same ap... |

### `WebSearchQuery`

Represents a single web search query and its associated search uri.

| Property | Type | Description |
|----------|------|-------------|
| `query` | `string` | The search query text. |
| `uri` | `string` | The URI to the Google Search results page for the query. |

### `WidgetTool`

Represents a widget tool that the agent can invoke. When the tool is chosen by the agent, agent will return the widget to the client. The client is responsible for processing the widget and generating the next user query to continue the interaction with the agent.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. The description of the widget tool. |
| `name` | `string` | Required. The display name of the widget tool. |
| `parameters` | `Schema` | Optional. The input parameters of the widget tool. |
| `widgetType` | `string` | Optional. The type of the widget tool. If not specified, the default type will be CUSTOMIZED. |

