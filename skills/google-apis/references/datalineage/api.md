# Data Lineage API - API Reference

**Version**: `v1` | **Methods**: 27 | **Schemas**: 30

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `datalineage.organizations.locations.config.patch` | PATCH | `v1/{+name}` | Update the Config for a given resource. |
| `datalineage.organizations.locations.config.get` | GET | `v1/{+name}` | Get the Config for a given resource. |
| `datalineage.projects.locations.batchSearchLinkProcesses` | POST | `v1/{+parent}:batchSearchLinkProcesses` | Retrieve information about LineageProcesses associated with specific links. LineageProcesses are ... |
| `datalineage.projects.locations.searchLinks` | POST | `v1/{+parent}:searchLinks` | Retrieve a list of links connected to a specific asset. Links represent the data flow between **s... |
| `datalineage.projects.locations.processOpenLineageRunEvent` | POST | `v1/{+parent}:processOpenLineageRunEvent` | Creates new lineage events together with their parents: process and run. Updates the process and ... |
| `datalineage.projects.locations.processes.list` | GET | `v1/{+parent}/processes` | List processes in the given project and location. List order is descending by insertion time. |
| `datalineage.projects.locations.processes.create` | POST | `v1/{+parent}/processes` | Creates a new process. |
| `datalineage.projects.locations.processes.delete` | DELETE | `v1/{+name}` | Deletes the process with the specified name. |
| `datalineage.projects.locations.processes.patch` | PATCH | `v1/{+name}` | Updates a process. |
| `datalineage.projects.locations.processes.get` | GET | `v1/{+name}` | Gets the details of the specified process. |
| `datalineage.projects.locations.processes.runs.delete` | DELETE | `v1/{+name}` | Deletes the run with the specified name. |
| `datalineage.projects.locations.processes.runs.create` | POST | `v1/{+parent}/runs` | Creates a new run. |
| `datalineage.projects.locations.processes.runs.patch` | PATCH | `v1/{+name}` | Updates a run. |
| `datalineage.projects.locations.processes.runs.get` | GET | `v1/{+name}` | Gets the details of the specified run. |
| `datalineage.projects.locations.processes.runs.list` | GET | `v1/{+parent}/runs` | Lists runs in the given project and location. List order is descending by `start_time`. |
| `datalineage.projects.locations.processes.runs.lineageEvents.list` | GET | `v1/{+parent}/lineageEvents` | Lists lineage events in the given project and location. The list order is not defined. |
| `datalineage.projects.locations.processes.runs.lineageEvents.get` | GET | `v1/{+name}` | Gets details of a specified lineage event. |
| `datalineage.projects.locations.processes.runs.lineageEvents.create` | POST | `v1/{+parent}/lineageEvents` | Creates a new lineage event. |
| `datalineage.projects.locations.processes.runs.lineageEvents.delete` | DELETE | `v1/{+name}` | Deletes the lineage event with the specified name. |
| `datalineage.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `datalineage.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `datalineage.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `datalineage.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `datalineage.projects.locations.config.patch` | PATCH | `v1/{+name}` | Update the Config for a given resource. |
| `datalineage.projects.locations.config.get` | GET | `v1/{+name}` | Get the Config for a given resource. |
| `datalineage.folders.locations.config.get` | GET | `v1/{+name}` | Get the Config for a given resource. |
| `datalineage.folders.locations.config.patch` | PATCH | `v1/{+name}` | Update the Config for a given resource. |

### `datalineage.organizations.locations.config.patch`

**PATCH** `v1/{+name}`

Update the Config for a given resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the config. Format: `organizations/{organization_id}/locations/global/config` `folde... |

**Request body**: `GoogleCloudDatacatalogLineageConfigmanagementV1Config`

**Response**: `GoogleCloudDatacatalogLineageConfigmanagementV1Config`

```typescript
const res = await datalineage.config.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalineage.organizations.locations.config.get`

**GET** `v1/{+name}`

Get the Config for a given resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. REQUIRED: The resource name of the config to be fetched. Format: `organizations/{organization_id}/locations... |

**Response**: `GoogleCloudDatacatalogLineageConfigmanagementV1Config`

```typescript
const res = await datalineage.config.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalineage.projects.locations.batchSearchLinkProcesses`

**POST** `v1/{+parent}:batchSearchLinkProcesses`

Retrieve information about LineageProcesses associated with specific links. LineageProcesses are transformation pipelines that result in data flowing from **source** to **target** assets. Links between assets represent this operation. If you have specific link names, you can use this method to verify which LineageProcesses contribute to creating those links. See the SearchLinks method for more information on how to retrieve link name. You can retrieve the LineageProcess information in every project where you have the `datalineage.events.get` permission. The project provided in the URL is used for Billing and Quota.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location where you want to search. |

**Request body**: `GoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesRequest`

**Response**: `GoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesResponse`

```typescript
const res = await datalineage.locations.batchSearchLinkProcesses({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalineage.projects.locations.searchLinks`

**POST** `v1/{+parent}:searchLinks`

Retrieve a list of links connected to a specific asset. Links represent the data flow between **source** (upstream) and **target** (downstream) assets in transformation pipelines. Links are stored in the same project as the Lineage Events that create them. You can retrieve links in every project where you have the `datalineage.events.get` permission. The project provided in the URL is used for Billing and Quota.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location you want search in. |

**Request body**: `GoogleCloudDatacatalogLineageV1SearchLinksRequest`

**Response**: `GoogleCloudDatacatalogLineageV1SearchLinksResponse`

```typescript
const res = await datalineage.locations.searchLinks({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalineage.projects.locations.processOpenLineageRunEvent`

**POST** `v1/{+parent}:processOpenLineageRunEvent`

Creates new lineage events together with their parents: process and run. Updates the process and run if they already exist. Mapped from Open Lineage specification: https://github.com/OpenLineage/OpenLineage/blob/main/spec/OpenLineage.json.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project and its location that should own the process, run, and lineage event. |
| `requestId` | `string` | query | No | Optional. A unique identifier for this request. Restricted to 36 ASCII characters. A random UUID is recommended. This... |

**Response**: `GoogleCloudDatacatalogLineageV1ProcessOpenLineageRunEventResponse`

```typescript
const res = await datalineage.locations.processOpenLineageRunEvent({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalineage.projects.locations.processes.list`

**GET** `v1/{+parent}/processes`

List processes in the given project and location. List order is descending by insertion time.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project and its location that owns this collection of processes. |
| `pageSize` | `integer` | query | No | The maximum number of processes to return. The service may return fewer than this value. If unspecified, at most 50 p... |
| `pageToken` | `string` | query | No | The page token received from a previous `ListProcesses` call. Specify it to get the next page. When paginating, all o... |

**Response**: `GoogleCloudDatacatalogLineageV1ListProcessesResponse`

```typescript
const res = await datalineage.processes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalineage.projects.locations.processes.create`

**POST** `v1/{+parent}/processes`

Creates a new process.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project and its location that should own the process. |
| `requestId` | `string` | query | No | Optional. A unique identifier for this request. Restricted to 36 ASCII characters. A random UUID is recommended. This... |

**Request body**: `GoogleCloudDatacatalogLineageV1Process`

**Response**: `GoogleCloudDatacatalogLineageV1Process`

```typescript
const res = await datalineage.processes.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalineage.projects.locations.processes.delete`

**DELETE** `v1/{+name}`

Deletes the process with the specified name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the process to delete. |
| `allowMissing` | `boolean` | query | No | If set to true and the process is not found, the request succeeds but the server doesn't perform any actions. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await datalineage.processes.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalineage.projects.locations.processes.patch`

**PATCH** `v1/{+name}`

Updates a process.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The resource name of the lineage process. Format: `projects/{project}/locations/{location}/processes/{proc... |
| `allowMissing` | `boolean` | query | No | If set to true and the process is not found, the request inserts it. |
| `requestId` | `string` | query | No | Optional. A unique identifier for this request. Restricted to 36 ASCII characters. A random UUID is recommended. This... |
| `updateMask` | `string` | query | No | The list of fields to update. Currently not used. The whole message is updated. |

**Request body**: `GoogleCloudDatacatalogLineageV1Process`

**Response**: `GoogleCloudDatacatalogLineageV1Process`

```typescript
const res = await datalineage.processes.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalineage.projects.locations.processes.get`

**GET** `v1/{+name}`

Gets the details of the specified process.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the process to get. |

**Response**: `GoogleCloudDatacatalogLineageV1Process`

```typescript
const res = await datalineage.processes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalineage.projects.locations.processes.runs.delete`

**DELETE** `v1/{+name}`

Deletes the run with the specified name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the run to delete. |
| `allowMissing` | `boolean` | query | No | If set to true and the run is not found, the request succeeds but the server doesn't perform any actions. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await datalineage.runs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalineage.projects.locations.processes.runs.create`

**POST** `v1/{+parent}/runs`

Creates a new run.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the process that should own the run. |
| `requestId` | `string` | query | No | Optional. A unique identifier for this request. Restricted to 36 ASCII characters. A random UUID is recommended. This... |

**Request body**: `GoogleCloudDatacatalogLineageV1Run`

**Response**: `GoogleCloudDatacatalogLineageV1Run`

```typescript
const res = await datalineage.runs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalineage.projects.locations.processes.runs.patch`

**PATCH** `v1/{+name}`

Updates a run.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The resource name of the run. Format: `projects/{project}/locations/{location}/processes/{process}/runs/{r... |
| `allowMissing` | `boolean` | query | No | If set to true and the run is not found, the request creates it. |
| `updateMask` | `string` | query | No | The list of fields to update. Currently not used. The whole message is updated. |

**Request body**: `GoogleCloudDatacatalogLineageV1Run`

**Response**: `GoogleCloudDatacatalogLineageV1Run`

```typescript
const res = await datalineage.runs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalineage.projects.locations.processes.runs.get`

**GET** `v1/{+name}`

Gets the details of the specified run.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the run to get. |

**Response**: `GoogleCloudDatacatalogLineageV1Run`

```typescript
const res = await datalineage.runs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalineage.projects.locations.processes.runs.list`

**GET** `v1/{+parent}/runs`

Lists runs in the given project and location. List order is descending by `start_time`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of process that owns this collection of runs. |
| `pageSize` | `integer` | query | No | The maximum number of runs to return. The service may return fewer than this value. If unspecified, at most 50 runs a... |
| `pageToken` | `string` | query | No | The page token received from a previous `ListRuns` call. Specify it to get the next page. When paginating, all other ... |

**Response**: `GoogleCloudDatacatalogLineageV1ListRunsResponse`

```typescript
const res = await datalineage.runs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalineage.projects.locations.processes.runs.lineageEvents.list`

**GET** `v1/{+parent}/lineageEvents`

Lists lineage events in the given project and location. The list order is not defined.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the run that owns the collection of lineage events to get. |
| `pageSize` | `integer` | query | No | The maximum number of lineage events to return. The service may return fewer events than this value. If unspecified, ... |
| `pageToken` | `string` | query | No | The page token received from a previous `ListLineageEvents` call. Specify it to get the next page. When paginating, a... |

**Response**: `GoogleCloudDatacatalogLineageV1ListLineageEventsResponse`

```typescript
const res = await datalineage.lineageEvents.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalineage.projects.locations.processes.runs.lineageEvents.get`

**GET** `v1/{+name}`

Gets details of a specified lineage event.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the lineage event to get. |

**Response**: `GoogleCloudDatacatalogLineageV1LineageEvent`

```typescript
const res = await datalineage.lineageEvents.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalineage.projects.locations.processes.runs.lineageEvents.create`

**POST** `v1/{+parent}/lineageEvents`

Creates a new lineage event.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the run that should own the lineage event. |
| `requestId` | `string` | query | No | Optional. A unique identifier for this request. Restricted to 36 ASCII characters. A random UUID is recommended. This... |

**Request body**: `GoogleCloudDatacatalogLineageV1LineageEvent`

**Response**: `GoogleCloudDatacatalogLineageV1LineageEvent`

```typescript
const res = await datalineage.lineageEvents.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalineage.projects.locations.processes.runs.lineageEvents.delete`

**DELETE** `v1/{+name}`

Deletes the lineage event with the specified name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the lineage event to delete. |
| `allowMissing` | `boolean` | query | No | If set to true and the lineage event is not found, the request succeeds but the server doesn't perform any actions. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await datalineage.lineageEvents.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalineage.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `GoogleLongrunningCancelOperationRequest`

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await datalineage.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalineage.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await datalineage.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalineage.projects.locations.operations.list`

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

**Response**: `GoogleLongrunningListOperationsResponse`

```typescript
const res = await datalineage.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalineage.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await datalineage.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalineage.projects.locations.config.patch`

**PATCH** `v1/{+name}`

Update the Config for a given resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the config. Format: `organizations/{organization_id}/locations/global/config` `folde... |

**Request body**: `GoogleCloudDatacatalogLineageConfigmanagementV1Config`

**Response**: `GoogleCloudDatacatalogLineageConfigmanagementV1Config`

```typescript
const res = await datalineage.config.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalineage.projects.locations.config.get`

**GET** `v1/{+name}`

Get the Config for a given resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. REQUIRED: The resource name of the config to be fetched. Format: `organizations/{organization_id}/locations... |

**Response**: `GoogleCloudDatacatalogLineageConfigmanagementV1Config`

```typescript
const res = await datalineage.config.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalineage.folders.locations.config.get`

**GET** `v1/{+name}`

Get the Config for a given resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. REQUIRED: The resource name of the config to be fetched. Format: `organizations/{organization_id}/locations... |

**Response**: `GoogleCloudDatacatalogLineageConfigmanagementV1Config`

```typescript
const res = await datalineage.config.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datalineage.folders.locations.config.patch`

**PATCH** `v1/{+name}`

Update the Config for a given resource.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the config. Format: `organizations/{organization_id}/locations/global/config` `folde... |

**Request body**: `GoogleCloudDatacatalogLineageConfigmanagementV1Config`

**Response**: `GoogleCloudDatacatalogLineageConfigmanagementV1Config`

```typescript
const res = await datalineage.config.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `ApiservingMcpMcpToolDataHandlingProfile`

Profile describing the data handling characteristics of an MCP tool. When used within the McpTool.meta field, this message should be packed into a google.protobuf.Any and associated with the key: "google.com/tool.profiles/data_handling"

| Property | Type | Description |
|----------|------|-------------|
| `inputDataAccessLevel` | `string` | // The data access level of the tool's inputs. |
| `outputDataAccessLevel` | `string` | The data access level of the tool's outputs. |

### `ApiservingMcpMcpToolLifecycleProfile`

Profile describing the lifecycle stage of an MCP tool. When used within the McpTool.meta field, this message should be packed into a google.protobuf.Any and associated with the key: "google.com/tool.profiles/lifecycle"

| Property | Type | Description |
|----------|------|-------------|
| `launchState` | `string` | Output only. The current launch state of the MCP tool. |

### `GoogleCloudDatacatalogLineageConfigmanagementV1Config`

Configuration for Data Lineage. Defines different configuration options for Lineage customers to control behaviour of lineage systems.

| Property | Type | Description |
|----------|------|-------------|
| `etag` | `string` | Optional. `etag` is used for optimistic concurrency control as a way to help prevent simultaneous... |
| `ingestion` | `GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestion` | Optional. Ingestion rule for Data Lineage ingestion. |
| `name` | `string` | Identifier. The resource name of the config. Format: `organizations/{organization_id}/locations/g... |

### `GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestion`

Defines how Lineage should be ingested for a given resource.

| Property | Type | Description |
|----------|------|-------------|
| `rules` | `array<GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRule>` | Optional. List of rules for Data Lineage ingestion. |

### `GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRule`

Ingestion rule for Data Lineage ingestion.

| Property | Type | Description |
|----------|------|-------------|
| `integrationSelector` | `GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleIntegrationSelector` | Required. Integration selector of the rule. The rule is only applied to the Integration selected ... |
| `lineageEnablement` | `GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleLineageEnablement` | Required. Lineage enablement configuration. Defines configurations for the ingestion of lineage f... |

### `GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleIntegrationSelector`

Integration selector of the rule. The rule is only applied to the Integration selected by the selector.

| Property | Type | Description |
|----------|------|-------------|
| `integration` | `string` | Required. Integration to which the rule applies. This field can be used to specify the integratio... |

### `GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleLineageEnablement`

Lineage enablement configuration. Defines configurations for the ingestion of lineage for the resource and its children.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Optional. If true, ingestion of lineage should be enabled. If false, it should be disabled. If un... |

### `GoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesRequest`

Request message for BatchSearchLinkProcesses.

| Property | Type | Description |
|----------|------|-------------|
| `links` | `array<string>` | Required. An array of links to check for their associated LineageProcesses. The maximum number of... |
| `pageSize` | `integer` | The maximum number of processes to return in a single page of the response. A page may contain fe... |
| `pageToken` | `string` | The page token received from a previous `BatchSearchLinkProcesses` call. Use it to get the next p... |

### `GoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesResponse`

Response message for BatchSearchLinkProcesses.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The token to specify as `page_token` in the subsequent call to get the next page. Omitted if ther... |
| `processLinks` | `array<GoogleCloudDatacatalogLineageV1ProcessLinks>` | An array of processes associated with the specified links. |

### `GoogleCloudDatacatalogLineageV1EntityReference`

The soft reference to everything you can attach a lineage event to.

| Property | Type | Description |
|----------|------|-------------|
| `fullyQualifiedName` | `string` | Required. [Fully Qualified Name (FQN)](https://cloud.google.com/dataplex/docs/fully-qualified-nam... |

### `GoogleCloudDatacatalogLineageV1EventLink`

A lineage between source and target entities.

| Property | Type | Description |
|----------|------|-------------|
| `source` | `GoogleCloudDatacatalogLineageV1EntityReference` | Required. Reference to the source entity |
| `target` | `GoogleCloudDatacatalogLineageV1EntityReference` | Required. Reference to the target entity |

### `GoogleCloudDatacatalogLineageV1LineageEvent`

A lineage event represents an operation on assets. Within the operation, the data flows from the source to the target defined in the links field.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | Optional. The end of the transformation which resulted in this lineage event. For streaming scena... |
| `links` | `array<GoogleCloudDatacatalogLineageV1EventLink>` | Optional. List of source-target pairs. Can't contain more than 100 tuples. |
| `name` | `string` | Immutable. The resource name of the lineage event. Format: `projects/{project}/locations/{locatio... |
| `startTime` | `string` | Required. The beginning of the transformation which resulted in this lineage event. For streaming... |

### `GoogleCloudDatacatalogLineageV1Link`

Links represent the data flow between **source** (upstream) and **target** (downstream) assets in transformation pipelines. Links are created when LineageEvents record data transformation between related assets.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | The end of the last event establishing this link. |
| `name` | `string` | Output only. Immutable. The name of the link. Format: `projects/{project}/locations/{location}/li... |
| `source` | `GoogleCloudDatacatalogLineageV1EntityReference` | The pointer to the entity that is the **source** of this link. |
| `startTime` | `string` | The start of the first event establishing this link. |
| `target` | `GoogleCloudDatacatalogLineageV1EntityReference` | The pointer to the entity that is the **target** of this link. |

### `GoogleCloudDatacatalogLineageV1ListLineageEventsResponse`

Response message for ListLineageEvents.

| Property | Type | Description |
|----------|------|-------------|
| `lineageEvents` | `array<GoogleCloudDatacatalogLineageV1LineageEvent>` | Lineage events from the specified project and location. |
| `nextPageToken` | `string` | The token to specify as `page_token` in the next call to get the next page. If this field is omit... |

### `GoogleCloudDatacatalogLineageV1ListProcessesResponse`

Response message for ListProcesses.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The token to specify as `page_token` in the next call to get the next page. If this field is omit... |
| `processes` | `array<GoogleCloudDatacatalogLineageV1Process>` | The processes from the specified project and location. |

### `GoogleCloudDatacatalogLineageV1ListRunsResponse`

Response message for ListRuns.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The token to specify as `page_token` in the next call to get the next page. If this field is omit... |
| `runs` | `array<GoogleCloudDatacatalogLineageV1Run>` | The runs from the specified project and location. |

### `GoogleCloudDatacatalogLineageV1OperationMetadata`

Metadata describing the operation.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The timestamp of the operation submission to the server. |
| `endTime` | `string` | Output only. The timestamp of the operation termination, regardless of its success. This field is... |
| `operationType` | `string` | Output only. The type of the operation being performed. |
| `resource` | `string` | Output only. The [relative name] (https://cloud.google.com//apis/design/resource_names#relative_r... |
| `resourceUuid` | `string` | Output only. The UUID of the resource being operated on. |
| `state` | `string` | Output only. The current operation state. |

### `GoogleCloudDatacatalogLineageV1Origin`

Origin of a process.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | If the source_type isn't CUSTOM, the value of this field should be a Google Cloud resource name o... |
| `sourceType` | `string` | Type of the source. Use of a source_type other than `CUSTOM` for process creation or updating is ... |

### `GoogleCloudDatacatalogLineageV1Process`

A process is the definition of a data transformation operation.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `object` | Optional. The attributes of the process. Should only be used for the purpose of non-semantic mana... |
| `displayName` | `string` | Optional. A human-readable name you can set to display in a user interface. Must be not longer th... |
| `name` | `string` | Immutable. The resource name of the lineage process. Format: `projects/{project}/locations/{locat... |
| `origin` | `GoogleCloudDatacatalogLineageV1Origin` | Optional. The origin of this process and its runs and lineage events. |

### `GoogleCloudDatacatalogLineageV1ProcessLinkInfo`

Link details.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | The end of the last event establishing this link-process tuple. |
| `link` | `string` | The name of the link in the format of `projects/{project}/locations/{location}/links/{link}`. |
| `startTime` | `string` | The start of the first event establishing this link-process tuple. |

### `GoogleCloudDatacatalogLineageV1ProcessLinks`

Links associated with a specific process.

| Property | Type | Description |
|----------|------|-------------|
| `links` | `array<GoogleCloudDatacatalogLineageV1ProcessLinkInfo>` | An array containing link details objects of the links provided in the original request. A single ... |
| `process` | `string` | The process name in the format of `projects/{project}/locations/{location}/processes/{process}`. |

### `GoogleCloudDatacatalogLineageV1ProcessOpenLineageRunEventResponse`

Response message for ProcessOpenLineageRunEvent.

| Property | Type | Description |
|----------|------|-------------|
| `lineageEvents` | `array<string>` | Created lineage event names. Format: `projects/{project}/locations/{location}/processes/{process}... |
| `process` | `string` | Created process name. Format: `projects/{project}/locations/{location}/processes/{process}`. |
| `run` | `string` | Created run name. Format: `projects/{project}/locations/{location}/processes/{process}/runs/{run}`. |

### `GoogleCloudDatacatalogLineageV1Run`

A lineage run represents an execution of a process that creates lineage events.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `object` | Optional. The attributes of the run. Should only be used for the purpose of non-semantic manageme... |
| `displayName` | `string` | Optional. A human-readable name you can set to display in a user interface. Must be not longer th... |
| `endTime` | `string` | Optional. The timestamp of the end of the run. |
| `name` | `string` | Immutable. The resource name of the run. Format: `projects/{project}/locations/{location}/process... |
| `startTime` | `string` | Required. The timestamp of the start of the run. |
| `state` | `string` | Required. The state of the run. |

### `GoogleCloudDatacatalogLineageV1SearchLinksRequest`

Request message for SearchLinks.

| Property | Type | Description |
|----------|------|-------------|
| `pageSize` | `integer` | Optional. The maximum number of links to return in a single page of the response. A page may cont... |
| `pageToken` | `string` | Optional. The page token received from a previous `SearchLinksRequest` call. Use it to get the ne... |
| `source` | `GoogleCloudDatacatalogLineageV1EntityReference` | Optional. Send asset information in the **source** field to retrieve all links that lead from the... |
| `target` | `GoogleCloudDatacatalogLineageV1EntityReference` | Optional. Send asset information in the **target** field to retrieve all links that lead from ups... |

### `GoogleCloudDatacatalogLineageV1SearchLinksResponse`

Response message for SearchLinks.

| Property | Type | Description |
|----------|------|-------------|
| `links` | `array<GoogleCloudDatacatalogLineageV1Link>` | The list of links for a given asset. Can be empty if the asset has no relations of requested type... |
| `nextPageToken` | `string` | The token to specify as `page_token` in the subsequent call to get the next page. Omitted if ther... |

### `GoogleLongrunningCancelOperationRequest`

The request message for Operations.CancelOperation.

### `GoogleLongrunningListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<GoogleLongrunningOperation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `GoogleLongrunningOperation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `GoogleRpcStatus` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `GoogleProtobufEmpty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `GoogleRpcStatus`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

