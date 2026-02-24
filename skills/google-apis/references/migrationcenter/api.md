# Migration Center API - API Reference

**Version**: `v1` | **Methods**: 67 | **Schemas**: 200

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `migrationcenter.projects.locations.updateSettings` | PATCH | `v1/{+name}` | Updates the regional-level project settings. |
| `migrationcenter.projects.locations.getSettings` | GET | `v1/{+name}` | Gets the details of regional settings. |
| `migrationcenter.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `migrationcenter.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `migrationcenter.projects.locations.importJobs.patch` | PATCH | `v1/{+name}` | Updates an import job. |
| `migrationcenter.projects.locations.importJobs.get` | GET | `v1/{+name}` | Gets the details of an import job. |
| `migrationcenter.projects.locations.importJobs.list` | GET | `v1/{+parent}/importJobs` | Lists all import jobs. |
| `migrationcenter.projects.locations.importJobs.validate` | POST | `v1/{+name}:validate` | Validates an import job. |
| `migrationcenter.projects.locations.importJobs.run` | POST | `v1/{+name}:run` | Runs an import job. |
| `migrationcenter.projects.locations.importJobs.delete` | DELETE | `v1/{+name}` | Deletes an import job. |
| `migrationcenter.projects.locations.importJobs.create` | POST | `v1/{+parent}/importJobs` | Creates an import job. |
| `migrationcenter.projects.locations.importJobs.importDataFiles.create` | POST | `v1/{+parent}/importDataFiles` | Creates an import data file. |
| `migrationcenter.projects.locations.importJobs.importDataFiles.list` | GET | `v1/{+parent}/importDataFiles` | List import data files. |
| `migrationcenter.projects.locations.importJobs.importDataFiles.get` | GET | `v1/{+name}` | Gets an import data file. |
| `migrationcenter.projects.locations.importJobs.importDataFiles.delete` | DELETE | `v1/{+name}` | Delete an import data file. |
| `migrationcenter.projects.locations.sources.get` | GET | `v1/{+name}` | Gets the details of a source. |
| `migrationcenter.projects.locations.sources.delete` | DELETE | `v1/{+name}` | Deletes a source. |
| `migrationcenter.projects.locations.sources.create` | POST | `v1/{+parent}/sources` | Creates a new source in a given project and location. |
| `migrationcenter.projects.locations.sources.patch` | PATCH | `v1/{+name}` | Updates the parameters of a source. |
| `migrationcenter.projects.locations.sources.list` | GET | `v1/{+parent}/sources` | Lists all the sources in a given project and location. |
| `migrationcenter.projects.locations.sources.errorFrames.list` | GET | `v1/{+parent}/errorFrames` | Lists all error frames in a given source and location. |
| `migrationcenter.projects.locations.sources.errorFrames.get` | GET | `v1/{+name}` | Gets the details of an error frame. |
| `migrationcenter.projects.locations.assetsExportJobs.delete` | DELETE | `v1/{+name}` | Deletes an assets export job. |
| `migrationcenter.projects.locations.assetsExportJobs.get` | GET | `v1/{+name}` | Gets the details of an assets export job. |
| `migrationcenter.projects.locations.assetsExportJobs.create` | POST | `v1/{+parent}/assetsExportJobs` | Creates a new assets export job. |
| `migrationcenter.projects.locations.assetsExportJobs.run` | POST | `v1/{+name}:run` | Runs an assets export job, returning an AssetsExportJobExecution. |
| `migrationcenter.projects.locations.assetsExportJobs.list` | GET | `v1/{+parent}/assetsExportJobs` | Lists all the assets export jobs in a given project and location. |
| `migrationcenter.projects.locations.discoveryClients.delete` | DELETE | `v1/{+name}` | Deletes a discovery client. |
| `migrationcenter.projects.locations.discoveryClients.get` | GET | `v1/{+name}` | Gets the details of a discovery client. |
| `migrationcenter.projects.locations.discoveryClients.sendHeartbeat` | POST | `v1/{+name}:sendHeartbeat` | Sends a discovery client heartbeat. Healthy clients are expected to send heartbeats regularly (no... |
| `migrationcenter.projects.locations.discoveryClients.create` | POST | `v1/{+parent}/discoveryClients` | Creates a new discovery client. |
| `migrationcenter.projects.locations.discoveryClients.list` | GET | `v1/{+parent}/discoveryClients` | Lists all the discovery clients in a given project and location. |
| `migrationcenter.projects.locations.discoveryClients.patch` | PATCH | `v1/{+name}` | Updates a discovery client. |
| `migrationcenter.projects.locations.relations.list` | GET | `v1/{+parent}/relations` | Lists all the relations in a given project and location. |
| `migrationcenter.projects.locations.relations.get` | GET | `v1/{+name}` | Gets the details of an relation. |
| `migrationcenter.projects.locations.reportConfigs.list` | GET | `v1/{+parent}/reportConfigs` | Lists ReportConfigs in a given project and location. |
| `migrationcenter.projects.locations.reportConfigs.create` | POST | `v1/{+parent}/reportConfigs` | Creates a report configuration. |
| `migrationcenter.projects.locations.reportConfigs.delete` | DELETE | `v1/{+name}` | Deletes a ReportConfig. |
| `migrationcenter.projects.locations.reportConfigs.get` | GET | `v1/{+name}` | Gets details of a single ReportConfig. |
| `migrationcenter.projects.locations.reportConfigs.reports.delete` | DELETE | `v1/{+name}` | Deletes a Report. |
| `migrationcenter.projects.locations.reportConfigs.reports.get` | GET | `v1/{+name}` | Gets details of a single Report. |
| `migrationcenter.projects.locations.reportConfigs.reports.create` | POST | `v1/{+parent}/reports` | Creates a report. |
| `migrationcenter.projects.locations.reportConfigs.reports.list` | GET | `v1/{+parent}/reports` | Lists Reports in a given ReportConfig. |
| `migrationcenter.projects.locations.groups.addAssets` | POST | `v1/{+group}:addAssets` | Adds assets to a group. |
| `migrationcenter.projects.locations.groups.list` | GET | `v1/{+parent}/groups` | Lists all groups in a given project and location. |
| `migrationcenter.projects.locations.groups.create` | POST | `v1/{+parent}/groups` | Creates a new group in a given project and location. |
| `migrationcenter.projects.locations.groups.removeAssets` | POST | `v1/{+group}:removeAssets` | Removes assets from a group. |
| `migrationcenter.projects.locations.groups.get` | GET | `v1/{+name}` | Gets the details of a group. |
| `migrationcenter.projects.locations.groups.delete` | DELETE | `v1/{+name}` | Deletes a group. |
| `migrationcenter.projects.locations.groups.patch` | PATCH | `v1/{+name}` | Updates the parameters of a group. |
| `migrationcenter.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `migrationcenter.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `migrationcenter.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `migrationcenter.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `migrationcenter.projects.locations.assets.delete` | DELETE | `v1/{+name}` | Deletes an asset. |
| `migrationcenter.projects.locations.assets.batchDelete` | POST | `v1/{+parent}/assets:batchDelete` | Deletes list of Assets. |
| `migrationcenter.projects.locations.assets.aggregateValues` | POST | `v1/{+parent}/assets:aggregateValues` | Aggregates the requested fields based on provided function. |
| `migrationcenter.projects.locations.assets.patch` | PATCH | `v1/{+name}` | Updates the parameters of an asset. |
| `migrationcenter.projects.locations.assets.get` | GET | `v1/{+name}` | Gets the details of an asset. |
| `migrationcenter.projects.locations.assets.batchUpdate` | POST | `v1/{+parent}/assets:batchUpdate` | Updates the parameters of a list of assets. |
| `migrationcenter.projects.locations.assets.list` | GET | `v1/{+parent}/assets` | Lists all the assets in a given project and location. |
| `migrationcenter.projects.locations.assets.reportAssetFrames` | POST | `v1/{+parent}/assets:reportAssetFrames` | Reports a set of frames. |
| `migrationcenter.projects.locations.preferenceSets.patch` | PATCH | `v1/{+name}` | Updates the parameters of a preference set. |
| `migrationcenter.projects.locations.preferenceSets.list` | GET | `v1/{+parent}/preferenceSets` | Lists all the preference sets in a given project and location. |
| `migrationcenter.projects.locations.preferenceSets.create` | POST | `v1/{+parent}/preferenceSets` | Creates a new preference set in a given project and location. |
| `migrationcenter.projects.locations.preferenceSets.delete` | DELETE | `v1/{+name}` | Deletes a preference set. |
| `migrationcenter.projects.locations.preferenceSets.get` | GET | `v1/{+name}` | Gets the details of a preference set. |

### `migrationcenter.projects.locations.updateSettings`

**PATCH** `v1/{+name}`

Updates the regional-level project settings.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The name of the resource. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the `Settings` resource by the update. The va... |

**Request body**: `Settings`

**Response**: `Operation`

```typescript
const res = await migrationcenter.locations.updateSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.getSettings`

**GET** `v1/{+name}`

Gets the details of regional settings.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. |

**Response**: `Settings`

```typescript
const res = await migrationcenter.locations.getSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await migrationcenter.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.list`

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
const res = await migrationcenter.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.importJobs.patch`

**PATCH** `v1/{+name}`

Updates an import job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The full name of the import job. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the `Asset` resource by the update. The value... |

**Request body**: `ImportJob`

**Response**: `Operation`

```typescript
const res = await migrationcenter.importJobs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.importJobs.get`

**GET** `v1/{+name}`

Gets the details of an import job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. |
| `view` | `string` | query | No | Optional. The level of details of the import job. Default value is FULL. |

**Response**: `ImportJob`

```typescript
const res = await migrationcenter.importJobs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.importJobs.list`

**GET** `v1/{+parent}/importJobs`

Lists all import jobs.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for `ListImportJobsRequest`. |
| `filter` | `string` | query | No | Filtering results. |
| `orderBy` | `string` | query | No | Field to sort by. See https://google.aip.dev/132#ordering for more details. |
| `pageSize` | `integer` | query | No | Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appropriate de... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. |
| `view` | `string` | query | No | Optional. The level of details of each import job. Default value is BASIC. |

**Response**: `ListImportJobsResponse`

```typescript
const res = await migrationcenter.importJobs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.importJobs.validate`

**POST** `v1/{+name}:validate`

Validates an import job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the import job to validate. |

**Request body**: `ValidateImportJobRequest`

**Response**: `Operation`

```typescript
const res = await migrationcenter.importJobs.validate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.importJobs.run`

**POST** `v1/{+name}:run`

Runs an import job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the import job to run. |

**Request body**: `RunImportJobRequest`

**Response**: `Operation`

```typescript
const res = await migrationcenter.importJobs.run({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.importJobs.delete`

**DELETE** `v1/{+name}`

Deletes an import job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. |
| `force` | `boolean` | query | No | Optional. If set to `true`, any `ImportDataFiles` of this job will also be deleted If set to `false`, the request onl... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `Operation`

```typescript
const res = await migrationcenter.importJobs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.importJobs.create`

**POST** `v1/{+parent}/importJobs`

Creates an import job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Value for parent. |
| `importJobId` | `string` | query | No | Required. ID of the import job. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `ImportJob`

**Response**: `Operation`

```typescript
const res = await migrationcenter.importJobs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.importJobs.importDataFiles.create`

**POST** `v1/{+parent}/importDataFiles`

Creates an import data file.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the parent of the ImportDataFile. |
| `importDataFileId` | `string` | query | No | Required. The ID of the new data file. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `ImportDataFile`

**Response**: `Operation`

```typescript
const res = await migrationcenter.importDataFiles.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.importJobs.importDataFiles.list`

**GET** `v1/{+parent}/importDataFiles`

List import data files.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the parent of the `ImportDataFiles` resource. |
| `filter` | `string` | query | No | Filtering results. |
| `orderBy` | `string` | query | No | Field to sort by. See https://google.aip.dev/132#ordering for more details. |
| `pageSize` | `integer` | query | No | The maximum number of data files to return. The service may return fewer than this value. If unspecified, at most 500... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListImportDataFiles` call. Provide this to retrieve the subsequent page. When... |

**Response**: `ListImportDataFilesResponse`

```typescript
const res = await migrationcenter.importDataFiles.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.importJobs.importDataFiles.get`

**GET** `v1/{+name}`

Gets an import data file.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the ImportDataFile. |

**Response**: `ImportDataFile`

```typescript
const res = await migrationcenter.importDataFiles.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.importJobs.importDataFiles.delete`

**DELETE** `v1/{+name}`

Delete an import data file.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the ImportDataFile to delete. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `Operation`

```typescript
const res = await migrationcenter.importDataFiles.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.sources.get`

**GET** `v1/{+name}`

Gets the details of a source.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. |

**Response**: `Source`

```typescript
const res = await migrationcenter.sources.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.sources.delete`

**DELETE** `v1/{+name}`

Deletes a source.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `Operation`

```typescript
const res = await migrationcenter.sources.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.sources.create`

**POST** `v1/{+parent}/sources`

Creates a new source in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Value for parent. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `sourceId` | `string` | query | No | Required. User specified ID for the source. It will become the last component of the source name. The ID must be uniq... |

**Request body**: `Source`

**Response**: `Operation`

```typescript
const res = await migrationcenter.sources.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.sources.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a source.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The full name of the source. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the `Source` resource by the update. The valu... |

**Request body**: `Source`

**Response**: `Operation`

```typescript
const res = await migrationcenter.sources.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.sources.list`

**GET** `v1/{+parent}/sources`

Lists all the sources in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for `ListSourcesRequest`. |
| `filter` | `string` | query | No | Filtering results. |
| `orderBy` | `string` | query | No | Field to sort by. See https://google.aip.dev/132#ordering for more details. |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer items than requested. If unspecified, the server will pick an approp... |
| `pageToken` | `string` | query | No | A token identifying a page of results that the server should return. |

**Response**: `ListSourcesResponse`

```typescript
const res = await migrationcenter.sources.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.sources.errorFrames.list`

**GET** `v1/{+parent}/errorFrames`

Lists all error frames in a given source and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value (the source) for `ListErrorFramesRequest`. |
| `pageSize` | `integer` | query | No | Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appropriate de... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. |
| `view` | `string` | query | No | Optional. An optional view mode to control the level of details of each error frame. The default is a BASIC frame view. |

**Response**: `ListErrorFramesResponse`

```typescript
const res = await migrationcenter.errorFrames.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.sources.errorFrames.get`

**GET** `v1/{+name}`

Gets the details of an error frame.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the frame to retrieve. Format: projects/{project}/locations/{location}/sources/{source}/errorFr... |
| `view` | `string` | query | No | Optional. An optional view mode to control the level of details for the frame. The default is a basic frame view. |

**Response**: `ErrorFrame`

```typescript
const res = await migrationcenter.errorFrames.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.assetsExportJobs.delete`

**DELETE** `v1/{+name}`

Deletes an assets export job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the assets export job to delete. |

**Response**: `Operation`

```typescript
const res = await migrationcenter.assetsExportJobs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.assetsExportJobs.get`

**GET** `v1/{+name}`

Gets the details of an assets export job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. |

**Response**: `AssetsExportJob`

```typescript
const res = await migrationcenter.assetsExportJobs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.assetsExportJobs.create`

**POST** `v1/{+parent}/assetsExportJobs`

Creates a new assets export job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where the assts export job will be created. |
| `assetsExportJobId` | `string` | query | No | Required. The ID to use for the asset export job. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `AssetsExportJob`

**Response**: `Operation`

```typescript
const res = await migrationcenter.assetsExportJobs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.assetsExportJobs.run`

**POST** `v1/{+name}:run`

Runs an assets export job, returning an AssetsExportJobExecution.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. |

**Request body**: `RunAssetsExportJobRequest`

**Response**: `Operation`

```typescript
const res = await migrationcenter.assetsExportJobs.run({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.assetsExportJobs.list`

**GET** `v1/{+parent}/assetsExportJobs`

Lists all the assets export jobs in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. The server may return fewer items than requested. If unspecified, the server will pick... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results that the server should return. |

**Response**: `ListAssetsExportJobsResponse`

```typescript
const res = await migrationcenter.assetsExportJobs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.discoveryClients.delete`

**DELETE** `v1/{+name}`

Deletes a discovery client.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The discovery client name. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `Operation`

```typescript
const res = await migrationcenter.discoveryClients.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.discoveryClients.get`

**GET** `v1/{+name}`

Gets the details of a discovery client.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The discovery client name. |

**Response**: `DiscoveryClient`

```typescript
const res = await migrationcenter.discoveryClients.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.discoveryClients.sendHeartbeat`

**POST** `v1/{+name}:sendHeartbeat`

Sends a discovery client heartbeat. Healthy clients are expected to send heartbeats regularly (normally every few minutes).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The discovery client name. |

**Request body**: `SendDiscoveryClientHeartbeatRequest`

**Response**: `Operation`

```typescript
const res = await migrationcenter.discoveryClients.sendHeartbeat({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.discoveryClients.create`

**POST** `v1/{+parent}/discoveryClients`

Creates a new discovery client.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource. |
| `discoveryClientId` | `string` | query | No | Required. User specified ID for the discovery client. It will become the last component of the discovery client name.... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `DiscoveryClient`

**Response**: `Operation`

```typescript
const res = await migrationcenter.discoveryClients.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.discoveryClients.list`

**GET** `v1/{+parent}/discoveryClients`

Lists all the discovery clients in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent resource. |
| `filter` | `string` | query | No | Optional. Filter expression to filter results by. |
| `orderBy` | `string` | query | No | Optional. Field to sort by. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of items to return. The server may return fewer items than requested. If unspecified, th... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListDiscoveryClients` call. Provide this to retrieve the subsequent... |

**Response**: `ListDiscoveryClientsResponse`

```typescript
const res = await migrationcenter.discoveryClients.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.discoveryClients.patch`

**PATCH** `v1/{+name}`

Updates a discovery client.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Identifier. Full name of this discovery client. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Required. Update mask is used to specify the fields to be overwritten in the `DiscoveryClient` resource by the update... |

**Request body**: `DiscoveryClient`

**Response**: `Operation`

```typescript
const res = await migrationcenter.discoveryClients.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.relations.list`

**GET** `v1/{+parent}/relations`

Lists all the relations in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for `ListRelationsRequest`. |
| `filter` | `string` | query | No | Optional. Filtering results. |
| `orderBy` | `string` | query | No | Optional. Field to sort by. See https://google.aip.dev/132#ordering for more details. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results the server should return. |

**Response**: `ListRelationsResponse`

```typescript
const res = await migrationcenter.relations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.relations.get`

**GET** `v1/{+name}`

Gets the details of an relation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. |

**Response**: `Relation`

```typescript
const res = await migrationcenter.relations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.reportConfigs.list`

**GET** `v1/{+parent}/reportConfigs`

Lists ReportConfigs in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for `ListReportConfigsRequest`. |
| `filter` | `string` | query | No | Filtering results. |
| `orderBy` | `string` | query | No | Field to sort by. See https://google.aip.dev/132#ordering for more details. |
| `pageSize` | `integer` | query | No | Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appropriate de... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. |

**Response**: `ListReportConfigsResponse`

```typescript
const res = await migrationcenter.reportConfigs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.reportConfigs.create`

**POST** `v1/{+parent}/reportConfigs`

Creates a report configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Value for parent. |
| `reportConfigId` | `string` | query | No | Required. User specified ID for the report config. It will become the last component of the report config name. The I... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `ReportConfig`

**Response**: `Operation`

```typescript
const res = await migrationcenter.reportConfigs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.reportConfigs.delete`

**DELETE** `v1/{+name}`

Deletes a ReportConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. |
| `force` | `boolean` | query | No | Optional. If set to `true`, any child `Reports` of this entity will also be deleted. If set to `false`, the request o... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `Operation`

```typescript
const res = await migrationcenter.reportConfigs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.reportConfigs.get`

**GET** `v1/{+name}`

Gets details of a single ReportConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. |

**Response**: `ReportConfig`

```typescript
const res = await migrationcenter.reportConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.reportConfigs.reports.delete`

**DELETE** `v1/{+name}`

Deletes a Report.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `Operation`

```typescript
const res = await migrationcenter.reports.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.reportConfigs.reports.get`

**GET** `v1/{+name}`

Gets details of a single Report.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. |
| `view` | `string` | query | No | Determines what information to retrieve for the Report. |

**Response**: `Report`

```typescript
const res = await migrationcenter.reports.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.reportConfigs.reports.create`

**POST** `v1/{+parent}/reports`

Creates a report.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Value for parent. |
| `reportId` | `string` | query | No | Required. User specified id for the report. It will become the last component of the report name. The id must be uniq... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `Report`

**Response**: `Operation`

```typescript
const res = await migrationcenter.reports.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.reportConfigs.reports.list`

**GET** `v1/{+parent}/reports`

Lists Reports in a given ReportConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for `ListReportsRequest`. |
| `filter` | `string` | query | No | Filtering results. |
| `orderBy` | `string` | query | No | Field to sort by. See https://google.aip.dev/132#ordering for more details. |
| `pageSize` | `integer` | query | No | Requested page size. The server may return fewer items than requested. If unspecified, the server will pick an approp... |
| `pageToken` | `string` | query | No | A token identifying a page of results that the server should return. |
| `view` | `string` | query | No | Determines what information to retrieve for each Report. |

**Response**: `ListReportsResponse`

```typescript
const res = await migrationcenter.reports.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.groups.addAssets`

**POST** `v1/{+group}:addAssets`

Adds assets to a group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `group` | `string` | path | Yes | Required. Group reference. |

**Request body**: `AddAssetsToGroupRequest`

**Response**: `Operation`

```typescript
const res = await migrationcenter.groups.addAssets({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.groups.list`

**GET** `v1/{+parent}/groups`

Lists all groups in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for `ListGroupsRequest`. |
| `filter` | `string` | query | No | Filtering results. |
| `orderBy` | `string` | query | No | Field to sort by. See https://google.aip.dev/132#ordering for more details. |
| `pageSize` | `integer` | query | No | Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appropriate de... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. |

**Response**: `ListGroupsResponse`

```typescript
const res = await migrationcenter.groups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.groups.create`

**POST** `v1/{+parent}/groups`

Creates a new group in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Value for parent. |
| `groupId` | `string` | query | No | Required. User specified ID for the group. It will become the last component of the group name. The ID must be unique... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `Group`

**Response**: `Operation`

```typescript
const res = await migrationcenter.groups.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.groups.removeAssets`

**POST** `v1/{+group}:removeAssets`

Removes assets from a group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `group` | `string` | path | Yes | Required. Group reference. |

**Request body**: `RemoveAssetsFromGroupRequest`

**Response**: `Operation`

```typescript
const res = await migrationcenter.groups.removeAssets({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.groups.get`

**GET** `v1/{+name}`

Gets the details of a group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. |

**Response**: `Group`

```typescript
const res = await migrationcenter.groups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.groups.delete`

**DELETE** `v1/{+name}`

Deletes a group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the group resource. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `Operation`

```typescript
const res = await migrationcenter.groups.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.groups.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The name of the group. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the `Group` resource by the update. The value... |

**Request body**: `Group`

**Response**: `Operation`

```typescript
const res = await migrationcenter.groups.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.operations.list`

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
const res = await migrationcenter.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await migrationcenter.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await migrationcenter.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await migrationcenter.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.assets.delete`

**DELETE** `v1/{+name}`

Deletes an asset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `Empty`

```typescript
const res = await migrationcenter.assets.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.assets.batchDelete`

**POST** `v1/{+parent}/assets:batchDelete`

Deletes list of Assets.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for batch asset delete. |

**Request body**: `BatchDeleteAssetsRequest`

**Response**: `Empty`

```typescript
const res = await migrationcenter.assets.batchDelete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.assets.aggregateValues`

**POST** `v1/{+parent}/assets:aggregateValues`

Aggregates the requested fields based on provided function.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for `AggregateAssetsValuesRequest`. |

**Request body**: `AggregateAssetsValuesRequest`

**Response**: `AggregateAssetsValuesResponse`

```typescript
const res = await migrationcenter.assets.aggregateValues({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.assets.patch`

**PATCH** `v1/{+name}`

Updates the parameters of an asset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The full name of the asset. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the `Asset` resource by the update. The value... |

**Request body**: `Asset`

**Response**: `Asset`

```typescript
const res = await migrationcenter.assets.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.assets.get`

**GET** `v1/{+name}`

Gets the details of an asset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. |
| `view` | `string` | query | No | View of the assets. Defaults to BASIC. |

**Response**: `Asset`

```typescript
const res = await migrationcenter.assets.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.assets.batchUpdate`

**POST** `v1/{+parent}/assets:batchUpdate`

Updates the parameters of a list of assets.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for batch asset update. |

**Request body**: `BatchUpdateAssetsRequest`

**Response**: `BatchUpdateAssetsResponse`

```typescript
const res = await migrationcenter.assets.batchUpdate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.assets.list`

**GET** `v1/{+parent}/assets`

Lists all the assets in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for `ListAssetsRequest`. |
| `filter` | `string` | query | No | Filtering results. |
| `orderBy` | `string` | query | No | Field to sort by. See https://google.aip.dev/132#ordering for more details. |
| `pageSize` | `integer` | query | No | Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appropriate de... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. |
| `showHidden` | `boolean` | query | No | Optional. When this value is set to 'true,' the response will include all assets, including those that are hidden. |
| `view` | `string` | query | No | View of the assets. Defaults to BASIC. |

**Response**: `ListAssetsResponse`

```typescript
const res = await migrationcenter.assets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.assets.reportAssetFrames`

**POST** `v1/{+parent}/assets:reportAssetFrames`

Reports a set of frames.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent of the resource. |
| `source` | `string` | query | No | Required. Reference to a source. |

**Request body**: `Frames`

**Response**: `ReportAssetFramesResponse`

```typescript
const res = await migrationcenter.assets.reportAssetFrames({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.preferenceSets.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a preference set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. Name of the preference set. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the `PreferenceSet` resource by the update. T... |

**Request body**: `PreferenceSet`

**Response**: `Operation`

```typescript
const res = await migrationcenter.preferenceSets.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.preferenceSets.list`

**GET** `v1/{+parent}/preferenceSets`

Lists all the preference sets in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for `ListPreferenceSetsRequest`. |
| `orderBy` | `string` | query | No | Field to sort by. See https://google.aip.dev/132#ordering for more details. |
| `pageSize` | `integer` | query | No | Requested page size. Server may return fewer items than requested. If unspecified, at most 500 preference sets will b... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. |

**Response**: `ListPreferenceSetsResponse`

```typescript
const res = await migrationcenter.preferenceSets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.preferenceSets.create`

**POST** `v1/{+parent}/preferenceSets`

Creates a new preference set in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Value for parent. |
| `preferenceSetId` | `string` | query | No | Required. User specified ID for the preference set. It will become the last component of the preference set name. The... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `PreferenceSet`

**Response**: `Operation`

```typescript
const res = await migrationcenter.preferenceSets.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.preferenceSets.delete`

**DELETE** `v1/{+name}`

Deletes a preference set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the group resource. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `Operation`

```typescript
const res = await migrationcenter.preferenceSets.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `migrationcenter.projects.locations.preferenceSets.get`

**GET** `v1/{+name}`

Gets the details of a preference set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. |

**Response**: `PreferenceSet`

```typescript
const res = await migrationcenter.preferenceSets.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AddAssetsToGroupRequest`

A request to add assets to a group.

| Property | Type | Description |
|----------|------|-------------|
| `allowExisting` | `boolean` | Optional. When this value is set to `false` and one of the given assets is already an existing me... |
| `assets` | `AssetList` | Required. List of assets to be added. The maximum number of assets that can be added in a single ... |
| `requestId` | `string` | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you... |

### `AggregateAssetsValuesRequest`

A request to aggregate one or more values.

| Property | Type | Description |
|----------|------|-------------|
| `aggregations` | `array<Aggregation>` | Array of aggregations to perform. Up to 25 aggregations can be defined. |
| `filter` | `string` | Optional. The aggregation will be performed on assets that match the provided filter. |
| `showHidden` | `boolean` | Optional. When this value is set to 'true' the response will include all assets, including those ... |

### `AggregateAssetsValuesResponse`

A response to a request to aggregated assets values.

| Property | Type | Description |
|----------|------|-------------|
| `results` | `array<AggregationResult>` | The aggregation results. |

### `Aggregation`

Message describing an aggregation. The message includes the aggregation type, parameters, and the field on which to perform the aggregation.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `AggregationCount` | Count the number of matching objects. |
| `field` | `string` | The name of the field on which to aggregate. |
| `frequency` | `AggregationFrequency` | Creates a frequency distribution of all field values. |
| `histogram` | `AggregationHistogram` | Creates a bucketed histogram of field values. |
| `sum` | `AggregationSum` | Sum over a numeric field. |

### `AggregationCount`

Object count.

### `AggregationFrequency`

Frequency distribution of all field values.

### `AggregationHistogram`

Histogram of bucketed assets counts by field value.

| Property | Type | Description |
|----------|------|-------------|
| `lowerBounds` | `array<number>` | Lower bounds of buckets. The response will contain `n+1` buckets for `n` bounds. The first bucket... |

### `AggregationResult`

Message describing a result of an aggregation.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `AggregationResultCount` |  |
| `field` | `string` |  |
| `frequency` | `AggregationResultFrequency` |  |
| `histogram` | `AggregationResultHistogram` |  |
| `sum` | `AggregationResultSum` |  |

### `AggregationResultCount`

The result of a count aggregation.

| Property | Type | Description |
|----------|------|-------------|
| `value` | `string` |  |

### `AggregationResultFrequency`

The result of a frequency distribution aggregation.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `object` |  |

### `AggregationResultHistogram`

The result of a bucketed histogram aggregation.

| Property | Type | Description |
|----------|------|-------------|
| `buckets` | `array<AggregationResultHistogramBucket>` | Buckets in the histogram. There will be `n+1` buckets matching `n` lower bounds in the request. T... |

### `AggregationResultHistogramBucket`

A histogram bucket with a lower and upper bound, and a count of items with a field value between those bounds. The lower bound is inclusive and the upper bound is exclusive. Lower bound may be -infinity and upper bound may be infinity.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `string` | Count of items in the bucket. |
| `lowerBound` | `number` | Lower bound - inclusive. |
| `upperBound` | `number` | Upper bound - exclusive. |

### `AggregationResultSum`

The result of a sum aggregation.

| Property | Type | Description |
|----------|------|-------------|
| `value` | `number` |  |

### `AggregationSum`

Sum of field values.

### `Asset`

An asset represents a resource in your environment. Asset types include virtual machines and databases.

| Property | Type | Description |
|----------|------|-------------|
| `assignedGroups` | `array<string>` | Output only. The list of groups that the asset is assigned to. |
| `attributes` | `object` | Generic asset attributes. |
| `createTime` | `string` | Output only. The timestamp when the asset was created. |
| `databaseDeploymentDetails` | `DatabaseDeploymentDetails` | Output only. Asset information specific for database deployments. |
| `databaseDetails` | `DatabaseDetails` | Output only. Asset information specific for logical databases. |
| `hidden` | `boolean` | Optional. Indicates if the asset is hidden. |
| `hideReason` | `string` | Optional. An optional reason for marking this asset as hidden. |
| `hideTime` | `string` | Output only. The timestamp when the asset was marked as hidden. |
| `insightList` | `InsightList` | Output only. The list of insights associated with the asset. |
| `labels` | `object` | Labels as key value pairs. |
| `machineDetails` | `MachineDetails` | Output only. Asset information specific for virtual and physical machines. |
| `name` | `string` | Output only. The full name of the asset. |
| `performanceData` | `AssetPerformanceData` | Output only. Performance data for the asset. |
| `sources` | `array<string>` | Output only. The list of sources contributing to the asset. |
| `title` | `string` | Output only. Server generated human readable name of the asset. |
| `updateTime` | `string` | Output only. The timestamp when the asset was last updated. |

### `AssetFrame`

Contains data reported from an inventory source on an asset.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `object` | Generic asset attributes. |
| `collectionType` | `string` | Optional. Frame collection type, if not specified the collection type will be based on the source... |
| `databaseDeploymentDetails` | `DatabaseDeploymentDetails` | Asset information specific for database deployments. |
| `databaseDetails` | `DatabaseDetails` | Asset information specific for logical databases. |
| `labels` | `object` | Labels as key value pairs. |
| `machineDetails` | `MachineDetails` | Asset information specific for virtual machines. |
| `performanceSamples` | `array<PerformanceSample>` | Asset performance data samples. Samples that are from more than 40 days ago or after tomorrow are... |
| `reportTime` | `string` | The time the data was reported. |
| `traceToken` | `string` | Optional. Trace token is optionally provided to assist with debugging and traceability. |

### `AssetList`

Lists the asset IDs of all assets.

| Property | Type | Description |
|----------|------|-------------|
| `assetIds` | `array<string>` | Required. A list of asset IDs |

### `AssetPerformanceData`

Performance data for an asset.

| Property | Type | Description |
|----------|------|-------------|
| `dailyResourceUsageAggregations` | `array<DailyResourceUsageAggregation>` | Daily resource usage aggregations. Contains all of the data available for an asset, up to the las... |

### `AssetsExportJob`

Assets export job message.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `AssetsExportJobExportCondition` | Optional. Conditions for selecting assets to export. |
| `createTime` | `string` | Output only. Resource creation time. |
| `inventory` | `AssetsExportJobInventory` | Export asset inventory details. |
| `labels` | `object` | Optional. Labels as key value pairs. Labels must meet the following constraints: * Keys and value... |
| `name` | `string` | Output only. Identifier. Resource name. |
| `networkDependencies` | `AssetsExportJobNetworkDependencies` | Export data regarding asset network dependencies. |
| `performanceData` | `AssetsExportJobPerformanceData` | Export asset with performance data. |
| `recentExecutions` | `array<AssetsExportJobExecution>` | Output only. Recent non expired executions of the job. |
| `showHidden` | `boolean` | Optional. When this value is set to 'true' the response will include all assets, including those ... |
| `signedUriDestination` | `SignedUriDestination` | Export to Cloud Storage files downloadable using signed URIs. |
| `updateTime` | `string` | Output only. Resource update time. |

### `AssetsExportJobExecution`

Execution status of assets export job.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | Output only. Completion time of the export. |
| `executionId` | `string` | Output only. Globally unique identifier of the execution. |
| `expireTime` | `string` | Output only. Expiration time for the export and artifacts. |
| `requestedAssetCount` | `integer` | Output only. Number of assets requested for export after resolving the requested filters. |
| `result` | `AssetsExportJobExecutionResult` | Output only. Result of the export execution. |
| `startTime` | `string` | Output only. Execution timestamp. |

### `AssetsExportJobExecutionResult`

Contains the result of the assets export.

| Property | Type | Description |
|----------|------|-------------|
| `error` | `Status` | Output only. Error encountered during export. |
| `outputFiles` | `OutputFileList` | Output only. List of output files. |
| `signedUris` | `SignedUris` | Output only. Signed URLs for downloading export artifacts. |

### `AssetsExportJobExportCondition`

Conditions for selecting assets to export.

| Property | Type | Description |
|----------|------|-------------|
| `filter` | `string` | Optional. Assets filter, supports the same syntax as asset listing. |

### `AssetsExportJobInventory`

Configuration for asset inventory details exports.

### `AssetsExportJobNetworkDependencies`

Configuration for network dependencies exports.

### `AssetsExportJobPerformanceData`

Configuration for performance data exports.

| Property | Type | Description |
|----------|------|-------------|
| `maxDays` | `integer` | Optional. When this value is set to a positive integer, performance data will be returned for the... |

### `AwsEc2PlatformDetails`

AWS EC2 specific details.

| Property | Type | Description |
|----------|------|-------------|
| `hyperthreading` | `string` | Optional. Whether the machine is hyperthreaded. |
| `location` | `string` | The location of the machine in the AWS format. |
| `machineTypeLabel` | `string` | AWS platform's machine type label. |

### `AwsRds`

Specific details for an AWS RDS database deployment.

### `AzureVmPlatformDetails`

Azure VM specific details.

| Property | Type | Description |
|----------|------|-------------|
| `hyperthreading` | `string` | Whether the machine is hyperthreaded. |
| `location` | `string` | The location of the machine in the Azure format. |
| `machineTypeLabel` | `string` | Azure platform's machine type label. |
| `provisioningState` | `string` | Azure platform's provisioning state. |

### `BatchDeleteAssetsRequest`

A request to delete a list of asset.

| Property | Type | Description |
|----------|------|-------------|
| `allowMissing` | `boolean` | Optional. When this value is set to `true` the request is a no-op for non-existing assets. See ht... |
| `cascadingRules` | `array<CascadingRule>` | Optional. Optional cascading rules for deleting related assets. |
| `names` | `array<string>` | Required. The IDs of the assets to delete. A maximum of 1000 assets can be deleted in a batch. Fo... |

### `BatchUpdateAssetsRequest`

A request to update a list of assets.

| Property | Type | Description |
|----------|------|-------------|
| `requests` | `array<UpdateAssetRequest>` | Required. The request message specifying the resources to update. A maximum of 1000 assets can be... |

### `BatchUpdateAssetsResponse`

Response for updating a list of assets.

| Property | Type | Description |
|----------|------|-------------|
| `assets` | `array<Asset>` | Update asset content. The content only includes values after field mask being applied. |

### `BiosDetails`

Details about the BIOS.

| Property | Type | Description |
|----------|------|-------------|
| `biosName` | `string` | BIOS name. This fields is deprecated. Please use the `id` field instead. |
| `id` | `string` | BIOS ID. |
| `manufacturer` | `string` | BIOS manufacturer. |
| `releaseDate` | `Date` | BIOS release date. |
| `smbiosUuid` | `string` | SMBIOS UUID. |
| `version` | `string` | BIOS version. |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `CascadeLogicalDBsRule`

Cascading rule for related logical DBs.

### `CascadingRule`

Specifies cascading rules for traversing relations.

| Property | Type | Description |
|----------|------|-------------|
| `cascadeLogicalDbs` | `CascadeLogicalDBsRule` | Cascading rule for related logical DBs. |

### `ComputeEngineMigrationTarget`

Compute engine migration target.

| Property | Type | Description |
|----------|------|-------------|
| `shape` | `ComputeEngineShapeDescriptor` | Description of the suggested shape for the migration target. |

### `ComputeEnginePreferences`

The user preferences relating to Compute Engine target platform.

| Property | Type | Description |
|----------|------|-------------|
| `licenseType` | `string` | License type to consider when calculating costs for virtual machine insights and recommendations.... |
| `machinePreferences` | `MachinePreferences` | Preferences concerning the machine types to consider on Compute Engine. |
| `persistentDiskType` | `string` | Persistent disk type to use. If unspecified (default), all types are considered, based on availab... |

### `ComputeEngineShapeDescriptor`

Compute Engine target shape descriptor.

| Property | Type | Description |
|----------|------|-------------|
| `logicalCoreCount` | `integer` | Output only. Number of logical cores. |
| `machineType` | `string` | Output only. Compute Engine machine type. |
| `memoryMb` | `integer` | Memory in mebibytes. |
| `physicalCoreCount` | `integer` | Number of physical cores. |
| `series` | `string` | Output only. Compute Engine machine series. |
| `storage` | `array<ComputeStorageDescriptor>` | Output only. Compute Engine storage. Never empty. |

### `ComputeStorageDescriptor`

Compute Engine storage option descriptor.

| Property | Type | Description |
|----------|------|-------------|
| `sizeGb` | `integer` | Output only. Disk size in GiB. |
| `type` | `string` | Output only. Disk type backing the storage. |

### `CpuUsageSample`

CPU usage sample.

| Property | Type | Description |
|----------|------|-------------|
| `utilizedPercentage` | `number` | Percentage of total CPU capacity utilized. Must be in the interval [0, 100]. On most systems can ... |

### `CsvOutputFile`

Contains a single output file of type CSV.

| Property | Type | Description |
|----------|------|-------------|
| `columnsCount` | `integer` | Output only. Number of columns in the file. |
| `rowCount` | `integer` | Output only. Number of rows in the file. |
| `signedUri` | `SignedUri` | Output only. Signed URI destination. |

### `DailyResourceUsageAggregation`

Usage data aggregation for a single day.

| Property | Type | Description |
|----------|------|-------------|
| `cpu` | `DailyResourceUsageAggregationCPU` | CPU usage. |
| `date` | `Date` | Aggregation date. Day boundaries are at midnight UTC. |
| `disk` | `DailyResourceUsageAggregationDisk` | Disk usage. |
| `memory` | `DailyResourceUsageAggregationMemory` | Memory usage. |
| `network` | `DailyResourceUsageAggregationNetwork` | Network usage. |

### `DailyResourceUsageAggregationCPU`

Statistical aggregation of CPU usage.

| Property | Type | Description |
|----------|------|-------------|
| `utilizationPercentage` | `DailyResourceUsageAggregationStats` | CPU utilization percentage. |

### `DailyResourceUsageAggregationDisk`

Statistical aggregation of disk usage.

| Property | Type | Description |
|----------|------|-------------|
| `iops` | `DailyResourceUsageAggregationStats` | Optional. Disk I/O operations per second. |
| `readIops` | `DailyResourceUsageAggregationStats` | Optional. Disk read I/O operations per second. |
| `writeIops` | `DailyResourceUsageAggregationStats` | Optional. Disk write I/O operations per second. |

### `DailyResourceUsageAggregationMemory`

Statistical aggregation of memory usage.

| Property | Type | Description |
|----------|------|-------------|
| `utilizationPercentage` | `DailyResourceUsageAggregationStats` | Memory utilization percentage. |

### `DailyResourceUsageAggregationNetwork`

Statistical aggregation of network usage.

| Property | Type | Description |
|----------|------|-------------|
| `egressBps` | `DailyResourceUsageAggregationStats` | Network egress in B/s. |
| `ingressBps` | `DailyResourceUsageAggregationStats` | Network ingress in B/s. |

### `DailyResourceUsageAggregationStats`

Statistical aggregation of samples for a single resource usage.

| Property | Type | Description |
|----------|------|-------------|
| `average` | `number` | Average usage value. |
| `median` | `number` | Median usage value. |
| `ninteyFifthPercentile` | `number` | 95th percentile usage value. |
| `peak` | `number` | Peak usage value. |

### `DatabaseDeploymentDetails`

The details of a database deployment asset.

| Property | Type | Description |
|----------|------|-------------|
| `aggregatedStats` | `DatabaseDeploymentDetailsAggregatedStats` | Output only. Aggregated stats for the database deployment. |
| `awsRds` | `AwsRds` | Optional. Details of an AWS RDS instance. |
| `edition` | `string` | Optional. The database deployment edition. |
| `generatedId` | `string` | Optional. The database deployment generated ID. |
| `manualUniqueId` | `string` | Optional. A manual unique ID set by the user. |
| `mysql` | `MysqlDatabaseDeployment` | Optional. Details of a MYSQL database deployment. |
| `postgresql` | `PostgreSqlDatabaseDeployment` | Optional. Details of a PostgreSQL database deployment. |
| `sqlServer` | `SqlServerDatabaseDeployment` | Optional. Details of a Microsoft SQL Server database deployment. |
| `topology` | `DatabaseDeploymentTopology` | Optional. Details of the database deployment topology. |
| `version` | `string` | Optional. The database deployment version. |

### `DatabaseDeploymentDetailsAggregatedStats`

Aggregated stats for the database deployment.

| Property | Type | Description |
|----------|------|-------------|
| `databaseCount` | `integer` | Output only. The number of databases in the deployment. |

### `DatabaseDeploymentTopology`

Details of database deployment's topology.

| Property | Type | Description |
|----------|------|-------------|
| `coreCount` | `integer` | Optional. Number of total logical cores. |
| `coreLimit` | `integer` | Optional. Number of total logical cores limited by db deployment. |
| `diskAllocatedBytes` | `string` | Optional. Disk allocated in bytes. |
| `diskUsedBytes` | `string` | Optional. Disk used in bytes. |
| `instances` | `array<DatabaseInstance>` | Optional. List of database instances. |
| `memoryBytes` | `string` | Optional. Total memory in bytes. |
| `memoryLimitBytes` | `string` | Optional. Total memory in bytes limited by db deployment. |
| `physicalCoreCount` | `integer` | Optional. Number of total physical cores. |
| `physicalCoreLimit` | `integer` | Optional. Number of total physical cores limited by db deployment. |

### `DatabaseDetails`

Details of a logical database.

| Property | Type | Description |
|----------|------|-------------|
| `allocatedStorageBytes` | `string` | Optional. The allocated storage for the database in bytes. |
| `databaseName` | `string` | Required. The name of the database. |
| `parentDatabaseDeployment` | `DatabaseDetailsParentDatabaseDeployment` | Required. The parent database deployment that contains the logical database. |
| `schemas` | `array<DatabaseSchema>` | Optional. The database schemas. |

### `DatabaseDetailsParentDatabaseDeployment`

The identifiers of the parent database deployment.

| Property | Type | Description |
|----------|------|-------------|
| `generatedId` | `string` | Optional. The parent database deployment generated ID. |
| `manualUniqueId` | `string` | Optional. The parent database deployment optional manual unique ID set by the user. |

### `DatabaseInstance`

Details of a database instance.

| Property | Type | Description |
|----------|------|-------------|
| `instanceName` | `string` | Optional. The instance's name. |
| `network` | `DatabaseInstanceNetwork` | Optional. Networking details. |
| `role` | `string` | Optional. The instance role in the database engine. |

### `DatabaseInstanceNetwork`

Network details of a database instance.

| Property | Type | Description |
|----------|------|-------------|
| `hostNames` | `array<string>` | Optional. The instance's host names. |
| `ipAddresses` | `array<string>` | Optional. The instance's IP addresses. |
| `primaryMacAddress` | `string` | Optional. The instance's primary MAC address. |

### `DatabaseObjects`

Details of a group of database objects.

| Property | Type | Description |
|----------|------|-------------|
| `category` | `string` | Optional. The category of the objects. |
| `count` | `string` | Optional. The number of objects. |

### `DatabaseSchema`

Details of a database schema.

| Property | Type | Description |
|----------|------|-------------|
| `mysql` | `MySqlSchemaDetails` | Optional. Details of a Mysql schema. |
| `objects` | `array<DatabaseObjects>` | Optional. List of details of objects by category. |
| `postgresql` | `PostgreSqlSchemaDetails` | Optional. Details of a PostgreSql schema. |
| `schemaName` | `string` | Required. The name of the schema. |
| `sqlServer` | `SqlServerSchemaDetails` | Optional. Details of a SqlServer schema. |
| `tablesSizeBytes` | `string` | Optional. The total size of tables in bytes. |

### `Date`

Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by ... |
| `month` | `integer` | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day. |
| `year` | `integer` | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year. |

### `DiscoveryClient`

Represents an installed Migration Center Discovery Client instance.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Time when the discovery client was first created. |
| `description` | `string` | Optional. Free text description. Maximum length is 1000 characters. |
| `displayName` | `string` | Optional. Free text display name. Maximum length is 63 characters. |
| `errors` | `array<Status>` | Output only. Errors affecting client functionality. |
| `expireTime` | `string` | Optional. Client expiration time in UTC. If specified, the backend will not accept new frames aft... |
| `heartbeatTime` | `string` | Output only. Last heartbeat time. Healthy clients are expected to send heartbeats regularly (norm... |
| `labels` | `object` | Optional. Labels as key value pairs. |
| `name` | `string` | Output only. Identifier. Full name of this discovery client. |
| `serviceAccount` | `string` | Required. Service account used by the discovery client for various operation. |
| `signalsEndpoint` | `string` | Output only. This field is intended for internal use. |
| `source` | `string` | Required. Immutable. Full name of the source object associated with this discovery client. |
| `state` | `string` | Output only. Current state of the discovery client. |
| `ttl` | `string` | Optional. Input only. Client time-to-live. If specified, the backend will not accept new frames a... |
| `updateTime` | `string` | Output only. Time when the discovery client was last updated. This value is not updated by heartb... |
| `version` | `string` | Output only. Client version, as reported in recent heartbeat. |

### `DiskEntry`

Single disk entry.

| Property | Type | Description |
|----------|------|-------------|
| `capacityBytes` | `string` | Disk capacity. |
| `diskLabel` | `string` | Disk label. |
| `diskLabelType` | `string` | Disk label type (e.g. BIOS/GPT) |
| `freeBytes` | `string` | Disk free space. |
| `hwAddress` | `string` | Disk hardware address (e.g. 0:1 for SCSI). |
| `interfaceType` | `string` | Disks interface type. |
| `partitions` | `DiskPartitionList` | Partition layout. |
| `vmware` | `VmwareDiskConfig` | VMware disk details. |

### `DiskEntryList`

VM disks.

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<DiskEntry>` | Disk entries. |

### `DiskPartition`

Disk Partition details.

| Property | Type | Description |
|----------|------|-------------|
| `capacityBytes` | `string` | Partition capacity. |
| `fileSystem` | `string` | Partition file system. |
| `freeBytes` | `string` | Partition free space. |
| `mountPoint` | `string` | Mount point (Linux/Windows) or drive letter (Windows). |
| `subPartitions` | `DiskPartitionList` | Sub-partitions. |
| `type` | `string` | Partition type. |
| `uuid` | `string` | Partition UUID. |

### `DiskPartitionDetails`

Disk partition details.

| Property | Type | Description |
|----------|------|-------------|
| `freeSpaceBytes` | `string` | Output only. Total free space of all partitions. |
| `partitions` | `DiskPartitionList` | Optional. List of partitions. |
| `totalCapacityBytes` | `string` | Output only. Total capacity of all partitions. |

### `DiskPartitionList`

Disk partition list.

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<DiskPartition>` | Partition entries. |

### `DiskUsageSample`

Disk usage sample. Values are across all disks.

| Property | Type | Description |
|----------|------|-------------|
| `averageIops` | `number` | Optional. Average IOPS sampled over a short window. Must be non-negative. If read or write are se... |
| `averageReadIops` | `number` | Optional. Average read IOPS sampled over a short window. Must be non-negative. If both read and w... |
| `averageWriteIops` | `number` | Optional. Average write IOPS sampled over a short window. Must be non-negative. If both read and ... |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `ErrorFrame`

Message representing a frame which failed to be processed due to an error.

| Property | Type | Description |
|----------|------|-------------|
| `ingestionTime` | `string` | Output only. Frame ingestion time. |
| `name` | `string` | Output only. The identifier of the ErrorFrame. |
| `originalFrame` | `AssetFrame` | Output only. The frame that was originally reported. |
| `violations` | `array<FrameViolationEntry>` | Output only. All the violations that were detected for the frame. |

### `ExecutionReport`

A resource that reports result of the import job execution.

| Property | Type | Description |
|----------|------|-------------|
| `executionErrors` | `ValidationReport` | Validation errors encountered during the execution of the import job. |
| `framesReported` | `integer` | Total number of asset frames reported for the import job. |
| `totalRowsCount` | `integer` | Output only. Total number of rows in the import job. |

### `FileValidationReport`

A resource that aggregates the validation errors found in an import job file.

| Property | Type | Description |
|----------|------|-------------|
| `fileErrors` | `array<ImportError>` | List of file level errors. |
| `fileName` | `string` | The name of the file. |
| `partialReport` | `boolean` | Flag indicating that processing was aborted due to maximum number of errors. |
| `rowErrors` | `array<ImportRowError>` | Partial list of rows that encountered validation error. |

### `FitDescriptor`

Describes the fit level of an asset for migration to a specific target.

| Property | Type | Description |
|----------|------|-------------|
| `fitLevel` | `string` | Output only. Fit level. |

### `FrameViolationEntry`

A resource that contains a single violation of a reported `AssetFrame` resource.

| Property | Type | Description |
|----------|------|-------------|
| `field` | `string` | The field of the original frame where the violation occurred. |
| `violation` | `string` | A message describing the violation. |

### `Frames`

Collection of frame data.

| Property | Type | Description |
|----------|------|-------------|
| `framesData` | `array<AssetFrame>` | A repeated field of asset data. |

### `FstabEntry`

Single fstab entry.

| Property | Type | Description |
|----------|------|-------------|
| `file` | `string` | The mount point for the filesystem. |
| `freq` | `integer` | Used by dump to determine which filesystems need to be dumped. |
| `mntops` | `string` | Mount options associated with the filesystem. |
| `passno` | `integer` | Used by the fsck(8) program to determine the order in which filesystem checks are done at reboot ... |
| `spec` | `string` | The block special device or remote filesystem to be mounted. |
| `vfstype` | `string` | The type of the filesystem. |

### `FstabEntryList`

Fstab content.

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<FstabEntry>` | Fstab entries. |

### `GenericInsight`

A generic insight about an asset.

| Property | Type | Description |
|----------|------|-------------|
| `additionalInformation` | `array<string>` | Output only. Additional information about the insight, each entry can be a logical entry and must... |
| `defaultMessage` | `string` | Output only. In case message_code is not yet known by the client default_message will be the mess... |
| `messageId` | `string` | Output only. Represents a globally unique message id for this insight, can be used for localizati... |

### `GenericPlatformDetails`

Generic platform details.

| Property | Type | Description |
|----------|------|-------------|
| `hyperthreading` | `string` | Whether the machine is hyperthreaded. |
| `location` | `string` | Free text representation of the machine location. The format of this field should not be relied o... |

### `Group`

A resource that represents an asset group. The purpose of an asset group is to bundle a set of assets that have something in common, while allowing users to add annotations to the group. An asset can belong to multiple groups.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The timestamp when the group was created. |
| `description` | `string` | Optional. The description of the group. |
| `displayName` | `string` | Optional. User-friendly display name. |
| `labels` | `object` | Labels as key value pairs. |
| `name` | `string` | Output only. The name of the group. |
| `updateTime` | `string` | Output only. The timestamp when the group was last updated. |

### `GuestConfigDetails`

Guest OS config information.

| Property | Type | Description |
|----------|------|-------------|
| `fstab` | `FstabEntryList` | Mount list (Linux fstab). |
| `hosts` | `HostsEntryList` | Hosts file (/etc/hosts). |
| `issue` | `string` | OS issue (typically /etc/issue in Linux). |
| `nfsExports` | `NfsExportList` | NFS exports. |
| `selinuxMode` | `string` | Security-Enhanced Linux (SELinux) mode. |

### `GuestInstalledApplication`

Guest installed application information.

| Property | Type | Description |
|----------|------|-------------|
| `applicationName` | `string` | Installed application name. |
| `installTime` | `string` | The time when the application was installed. |
| `licenses` | `array<string>` | License strings associated with the installed application. |
| `path` | `string` | Source path. |
| `vendor` | `string` | Installed application vendor. |
| `version` | `string` | Installed application version. |

### `GuestInstalledApplicationList`

Guest installed application list.

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<GuestInstalledApplication>` | Application entries. |

### `GuestOsDetails`

Information from Guest-level collections.

| Property | Type | Description |
|----------|------|-------------|
| `config` | `GuestConfigDetails` | OS and app configuration. |
| `family` | `string` | What family the OS belong to, if known. |
| `osName` | `string` | The name of the operating system. |
| `runtime` | `GuestRuntimeDetails` | Runtime information. |
| `version` | `string` | The version of the operating system. |

### `GuestRuntimeDetails`

Guest OS runtime information.

| Property | Type | Description |
|----------|------|-------------|
| `domain` | `string` | Domain, e.g. c.stratozone-development.internal. |
| `installedApps` | `GuestInstalledApplicationList` | Installed applications information. |
| `lastBootTime` | `string` | Last time the OS was booted. |
| `machineName` | `string` | Machine name. |
| `network` | `RuntimeNetworkInfo` | Runtime network information (connections, ports). |
| `openFileList` | `OpenFileList` | Open files information. |
| `processes` | `RunningProcessList` | Running processes. |
| `services` | `RunningServiceList` | Running background services. |

### `HostsEntry`

Single /etc/hosts entry.

| Property | Type | Description |
|----------|------|-------------|
| `hostNames` | `array<string>` | List of host names / aliases. |
| `ip` | `string` | IP (raw, IPv4/6 agnostic). |

### `HostsEntryList`

Hosts content.

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<HostsEntry>` | Hosts entries. |

### `ImportDataFile`

A resource that represents a payload file in an import job.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The timestamp when the file was created. |
| `displayName` | `string` | Optional. User-friendly display name. Maximum length is 63 characters. |
| `format` | `string` | Required. The payload format. |
| `name` | `string` | Output only. The name of the file. |
| `state` | `string` | Output only. The state of the import data file. |
| `uploadFileInfo` | `UploadFileInfo` | Information about a file that is uploaded to a storage service. |

### `ImportError`

A resource that reports the errors encountered while processing an import job.

| Property | Type | Description |
|----------|------|-------------|
| `errorDetails` | `string` | The error information. |
| `severity` | `string` | The severity of the error. |

### `ImportJob`

A resource that represents the background job that imports asset frames.

| Property | Type | Description |
|----------|------|-------------|
| `assetSource` | `string` | Required. Reference to a source. |
| `completeTime` | `string` | Output only. The timestamp when the import job was completed. |
| `createTime` | `string` | Output only. The timestamp when the import job was created. |
| `displayName` | `string` | Optional. User-friendly display name. Maximum length is 256 characters. |
| `executionReport` | `ExecutionReport` | Output only. The report with the results of running the import job. |
| `labels` | `object` | Labels as key value pairs. |
| `name` | `string` | Output only. The full name of the import job. |
| `state` | `string` | Output only. The state of the import job. |
| `updateTime` | `string` | Output only. The timestamp when the import job was last updated. |
| `validationReport` | `ValidationReport` | Output only. The report with the validation results of the import job. |

### `ImportRowError`

A resource that reports the import job errors at row level.

| Property | Type | Description |
|----------|------|-------------|
| `archiveError` | `ImportRowErrorArchiveErrorDetails` | Error details for an archive file. |
| `assetTitle` | `string` | Output only. The asset title. |
| `csvError` | `ImportRowErrorCsvErrorDetails` | Error details for a CSV file. |
| `errors` | `array<ImportError>` | The list of errors detected in the row. |
| `rowNumber` | `integer` | The row number where the error was detected. |
| `vmName` | `string` | The name of the VM in the row. |
| `vmUuid` | `string` | The VM UUID. |
| `xlsxError` | `ImportRowErrorXlsxErrorDetails` | Error details for an XLSX file. |

### `ImportRowErrorArchiveErrorDetails`

Error details for an archive file.

| Property | Type | Description |
|----------|------|-------------|
| `csvError` | `ImportRowErrorCsvErrorDetails` | Error details for a CSV file. |
| `filePath` | `string` | Output only. The file path inside the archive where the error was detected. |

### `ImportRowErrorCsvErrorDetails`

Error details for a CSV file.

| Property | Type | Description |
|----------|------|-------------|
| `rowNumber` | `integer` | The row number where the error was detected. |

### `ImportRowErrorXlsxErrorDetails`

Error details for an XLSX file.

| Property | Type | Description |
|----------|------|-------------|
| `rowNumber` | `integer` | The row number where the error was detected. |
| `sheet` | `string` | The name of the sheet where the error was detected. |

### `Insight`

An insight about an asset.

| Property | Type | Description |
|----------|------|-------------|
| `genericInsight` | `GenericInsight` | Output only. A generic insight about an asset. |
| `migrationInsight` | `MigrationInsight` | Output only. An insight about potential migrations for an asset. |

### `InsightList`

Message containing insights list.

| Property | Type | Description |
|----------|------|-------------|
| `insights` | `array<Insight>` | Output only. Insights of the list. |
| `updateTime` | `string` | Output only. Update timestamp. |

### `ListAssetsExportJobsResponse`

Response message for listing assets export jobs.

| Property | Type | Description |
|----------|------|-------------|
| `assetsExportJobs` | `array<AssetsExportJob>` | Output only. The list of assets export jobs. |
| `nextPageToken` | `string` | Output only. A token identifying a page of results the server should return. |

### `ListAssetsResponse`

Response message for listing assets.

| Property | Type | Description |
|----------|------|-------------|
| `assets` | `array<Asset>` | A list of assets. |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListDiscoveryClientsResponse`

Response message for listing discovery clients.

| Property | Type | Description |
|----------|------|-------------|
| `discoveryClients` | `array<DiscoveryClient>` | List of discovery clients. |
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, the... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListErrorFramesResponse`

A response for listing error frames.

| Property | Type | Description |
|----------|------|-------------|
| `errorFrames` | `array<ErrorFrame>` | The list of error frames. |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListGroupsResponse`

A response for listing groups.

| Property | Type | Description |
|----------|------|-------------|
| `groups` | `array<Group>` | The list of Group |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListImportDataFilesResponse`

Response for listing payload files of an import job.

| Property | Type | Description |
|----------|------|-------------|
| `importDataFiles` | `array<ImportDataFile>` | The list of import data files. |
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, the... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListImportJobsResponse`

A response for listing import jobs.

| Property | Type | Description |
|----------|------|-------------|
| `importJobs` | `array<ImportJob>` | The list of import jobs. |
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

### `ListPreferenceSetsResponse`

Response message for listing preference sets.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `preferenceSets` | `array<PreferenceSet>` | The list of PreferenceSets |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListRelationsResponse`

Response message for listing relations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `relations` | `array<Relation>` | A list of relations. |

### `ListReportConfigsResponse`

Response message for listing report configs.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `reportConfigs` | `array<ReportConfig>` | A list of report configs. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListReportsResponse`

Response message for listing Reports.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `reports` | `array<Report>` | The list of Reports. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListSourcesResponse`

Response message for listing sources.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `sources` | `array<Source>` | The list of sources. |
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

### `MachineArchitectureDetails`

Details of the machine architecture.

| Property | Type | Description |
|----------|------|-------------|
| `bios` | `BiosDetails` | BIOS Details. |
| `cpuArchitecture` | `string` | CPU architecture, e.g., "x64-based PC", "x86_64", "i686" etc. |
| `cpuManufacturer` | `string` | Optional. CPU manufacturer, e.g., "Intel", "AMD". |
| `cpuName` | `string` | CPU name, e.g., "Intel Xeon E5-2690", "AMD EPYC 7571" etc. |
| `cpuSocketCount` | `integer` | Number of processor sockets allocated to the machine. |
| `cpuThreadCount` | `integer` | Deprecated: use MachineDetails.core_count instead. Number of CPU threads allocated to the machine. |
| `firmwareType` | `string` | Firmware type. |
| `hyperthreading` | `string` | CPU hyper-threading support. |
| `vendor` | `string` | Hardware vendor. |

### `MachineDetails`

Details of a machine.

| Property | Type | Description |
|----------|------|-------------|
| `architecture` | `MachineArchitectureDetails` | Architecture details (vendor, CPU architecture). |
| `coreCount` | `integer` | Number of logical CPU cores in the machine. Must be non-negative. |
| `createTime` | `string` | Machine creation time. |
| `diskPartitions` | `DiskPartitionDetails` | Optional. Disk partitions details. Note: Partitions are not necessarily mounted on local disks an... |
| `disks` | `MachineDiskDetails` | Disk details. |
| `guestOs` | `GuestOsDetails` | Guest OS information. |
| `machineName` | `string` | Machine name. |
| `memoryMb` | `integer` | The amount of memory in the machine. Must be non-negative. |
| `network` | `MachineNetworkDetails` | Network details. |
| `platform` | `PlatformDetails` | Platform specific information. |
| `powerState` | `string` | Power state of the machine. |
| `uuid` | `string` | Machine unique identifier. |

### `MachineDiskDetails`

Details of machine disks.

| Property | Type | Description |
|----------|------|-------------|
| `disks` | `DiskEntryList` | List of disks. |
| `totalCapacityBytes` | `string` | Disk total Capacity. |
| `totalFreeBytes` | `string` | Total disk free space. |

### `MachineNetworkDetails`

Details of network adapters and settings.

| Property | Type | Description |
|----------|------|-------------|
| `adapters` | `NetworkAdapterList` | List of network adapters. |
| `defaultGateway` | `string` | Optional. Default gateway address. |
| `primaryIpAddress` | `string` | The primary IP address of the machine. |
| `primaryMacAddress` | `string` | MAC address of the machine. This property is used to uniqly identify the machine. |
| `publicIpAddress` | `string` | The public IP address of the machine. |

### `MachinePreferences`

The type of machines to consider when calculating virtual machine migration insights and recommendations. Not all machine types are available in all zones and regions.

| Property | Type | Description |
|----------|------|-------------|
| `allowedMachineSeries` | `array<MachineSeries>` | Compute Engine machine series to consider for insights and recommendations. If empty, no restrict... |

### `MachineSeries`

A machine series, for a target product (e.g. Compute Engine, Google Cloud VMware Engine).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | Code to identify a machine series. Consult this for more details on the available series for Comp... |

### `MemoryUsageSample`

Memory usage sample.

| Property | Type | Description |
|----------|------|-------------|
| `utilizedPercentage` | `number` | Percentage of system memory utilized. Must be in the interval [0, 100]. |

### `MigrationInsight`

An insight about potential migrations for an asset.

| Property | Type | Description |
|----------|------|-------------|
| `computeEngineTarget` | `ComputeEngineMigrationTarget` | Output only. A Google Compute Engine target. |
| `fit` | `FitDescriptor` | Output only. Description of how well the asset this insight is associated with fits the proposed ... |

### `Money`

Represents an amount of money with its currency type.

| Property | Type | Description |
|----------|------|-------------|
| `currencyCode` | `string` | The three-letter currency code defined in ISO 4217. |
| `nanos` | `integer` | Number of nano (10^-9) units of the amount. The value must be between -999,999,999 and +999,999,9... |
| `units` | `string` | The whole units of the amount. For example if `currencyCode` is `"USD"`, then 1 unit is one US do... |

### `MySqlPlugin`

MySql plugin.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Required. The plugin is active. |
| `plugin` | `string` | Required. The plugin name. |
| `version` | `string` | Required. The plugin version. |

### `MySqlProperty`

MySql property.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Required. The property is enabled. |
| `numericValue` | `string` | Required. The property numeric value. |
| `property` | `string` | Required. The property name. |

### `MySqlSchemaDetails`

Specific details for a Mysql database.

| Property | Type | Description |
|----------|------|-------------|
| `storageEngines` | `array<MySqlStorageEngineDetails>` | Optional. Mysql storage engine tables. |

### `MySqlStorageEngineDetails`

Mysql storage engine tables.

| Property | Type | Description |
|----------|------|-------------|
| `encryptedTableCount` | `integer` | Optional. The number of encrypted tables. |
| `engine` | `string` | Required. The storage engine. |
| `tableCount` | `integer` | Optional. The number of tables. |

### `MySqlVariable`

MySql variable.

| Property | Type | Description |
|----------|------|-------------|
| `category` | `string` | Required. The variable category. |
| `value` | `string` | Required. The variable value. |
| `variable` | `string` | Required. The variable name. |

### `MysqlDatabaseDeployment`

Specific details for a Mysql database deployment.

| Property | Type | Description |
|----------|------|-------------|
| `plugins` | `array<MySqlPlugin>` | Optional. List of MySql plugins. |
| `properties` | `array<MySqlProperty>` | Optional. List of MySql properties. |
| `resourceGroupsCount` | `integer` | Optional. Number of resource groups. |
| `variables` | `array<MySqlVariable>` | Optional. List of MySql variables. |

### `NetworkAdapterDetails`

Details of network adapter.

| Property | Type | Description |
|----------|------|-------------|
| `adapterType` | `string` | Network adapter type (e.g. VMXNET3). |
| `addresses` | `NetworkAddressList` | NetworkAddressList |
| `macAddress` | `string` | MAC address. |

### `NetworkAdapterList`

List of network adapters.

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<NetworkAdapterDetails>` | Network adapter entries. |

### `NetworkAddress`

Details of network address.

| Property | Type | Description |
|----------|------|-------------|
| `assignment` | `string` | Whether DHCP is used to assign addresses. |
| `bcast` | `string` | Broadcast address. |
| `fqdn` | `string` | Fully qualified domain name. |
| `ipAddress` | `string` | Assigned or configured IP Address. |
| `subnetMask` | `string` | Subnet mask. |

### `NetworkAddressList`

List of allocated/assigned network addresses.

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<NetworkAddress>` | Network address entries. |

### `NetworkConnection`

| Property | Type | Description |
|----------|------|-------------|
| `localIpAddress` | `string` | Local IP address. |
| `localPort` | `integer` | Local port. |
| `pid` | `string` | Process ID. |
| `processName` | `string` | Process or service name. |
| `protocol` | `string` | Connection protocol (e.g. TCP/UDP). |
| `remoteIpAddress` | `string` | Remote IP address. |
| `remotePort` | `integer` | Remote port. |
| `state` | `string` | Network connection state. |

### `NetworkConnectionList`

Network connection list.

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<NetworkConnection>` | Network connection entries. |

### `NetworkUsageSample`

Network usage sample. Values are across all network interfaces.

| Property | Type | Description |
|----------|------|-------------|
| `averageEgressBps` | `number` | Average network egress in B/s sampled over a short window. Must be non-negative. |
| `averageIngressBps` | `number` | Average network ingress in B/s sampled over a short window. Must be non-negative. |

### `NfsExport`

NFS export.

| Property | Type | Description |
|----------|------|-------------|
| `exportDirectory` | `string` | The directory being exported. |
| `hosts` | `array<string>` | The hosts or networks to which the export is being shared. |

### `NfsExportList`

NFS exports.

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<NfsExport>` | NFS export entries. |

### `OpenFileDetails`

Open file Information.

| Property | Type | Description |
|----------|------|-------------|
| `command` | `string` | Opened file command. |
| `filePath` | `string` | Opened file file path. |
| `fileType` | `string` | Opened file file type. |
| `user` | `string` | Opened file user. |

### `OpenFileList`

Open file list.

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<OpenFileDetails>` | Open file details entries. |

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

### `OutputFile`

Contains a single output file.

| Property | Type | Description |
|----------|------|-------------|
| `csvOutputFile` | `CsvOutputFile` | Output only. CSV output file. |
| `fileSizeBytes` | `string` | Output only. File size in bytes. |
| `xlsxOutputFile` | `XlsxOutputFile` | Output only. XLSX output file. |

### `OutputFileList`

Contains a list of output files.

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<OutputFile>` | Output only. List of output files. |

### `PerformanceSample`

Performance data sample.

| Property | Type | Description |
|----------|------|-------------|
| `cpu` | `CpuUsageSample` | CPU usage sample. |
| `disk` | `DiskUsageSample` | Disk usage sample. |
| `memory` | `MemoryUsageSample` | Memory usage sample. |
| `network` | `NetworkUsageSample` | Network usage sample. |
| `sampleTime` | `string` | Time the sample was collected. If omitted, the frame report time will be used. |

### `PhysicalPlatformDetails`

Platform specific details for Physical Machines.

| Property | Type | Description |
|----------|------|-------------|
| `hyperthreading` | `string` | Whether the machine is hyperthreaded. |
| `location` | `string` | Free text representation of the machine location. The format of this field should not be relied o... |

### `PlatformDetails`

Information about the platform.

| Property | Type | Description |
|----------|------|-------------|
| `awsEc2Details` | `AwsEc2PlatformDetails` | AWS EC2 specific details. |
| `azureVmDetails` | `AzureVmPlatformDetails` | Azure VM specific details. |
| `genericDetails` | `GenericPlatformDetails` | Generic platform details. |
| `physicalDetails` | `PhysicalPlatformDetails` | Physical machines platform details. |
| `vmwareDetails` | `VmwarePlatformDetails` | VMware specific details. |

### `PostgreSqlDatabaseDeployment`

Specific details for a PostgreSQL database deployment.

| Property | Type | Description |
|----------|------|-------------|
| `properties` | `array<PostgreSqlProperty>` | Optional. List of PostgreSql properties. |
| `settings` | `array<PostgreSqlSetting>` | Optional. List of PostgreSql settings. |

### `PostgreSqlExtension`

PostgreSql extension.

| Property | Type | Description |
|----------|------|-------------|
| `extension` | `string` | Required. The extension name. |
| `version` | `string` | Required. The extension version. |

### `PostgreSqlProperty`

PostgreSql property.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Required. The property is enabled. |
| `numericValue` | `string` | Required. The property numeric value. |
| `property` | `string` | Required. The property name. |

### `PostgreSqlSchemaDetails`

Specific details for a PostgreSql schema.

| Property | Type | Description |
|----------|------|-------------|
| `foreignTablesCount` | `integer` | Optional. PostgreSql foreign tables. |
| `postgresqlExtensions` | `array<PostgreSqlExtension>` | Optional. PostgreSql extensions. |

### `PostgreSqlSetting`

PostgreSql setting.

| Property | Type | Description |
|----------|------|-------------|
| `boolValue` | `boolean` | Required. The setting boolean value. |
| `intValue` | `string` | Required. The setting int value. |
| `realValue` | `number` | Required. The setting real value. |
| `setting` | `string` | Required. The setting name. |
| `source` | `string` | Required. The setting source. |
| `stringValue` | `string` | Required. The setting string value. Notice that enum values are stored as strings. |
| `unit` | `string` | Optional. The setting unit. |

### `PreferenceSet`

The preferences that apply to all assets in a given context.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The timestamp when the preference set was created. |
| `description` | `string` | A description of the preference set. |
| `displayName` | `string` | User-friendly display name. Maximum length is 63 characters. |
| `name` | `string` | Output only. Name of the preference set. |
| `updateTime` | `string` | Output only. The timestamp when the preference set was last updated. |
| `virtualMachinePreferences` | `VirtualMachinePreferences` | Optional. A set of preferences that applies to all virtual machines in the context. |

### `RegionPreferences`

The user preferences relating to target regions.

| Property | Type | Description |
|----------|------|-------------|
| `preferredRegions` | `array<string>` | A list of preferred regions, ordered by the most preferred region first. Set only valid Google Cl... |

### `Relation`

Message representing a relation between 2 resource.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The timestamp when the relation was created. |
| `dstAsset` | `string` | Output only. The destination asset name in the relation. |
| `name` | `string` | Output only. Identifier. The identifier of the relation. |
| `srcAsset` | `string` | Output only. The source asset name in the relation. |
| `type` | `string` | Optional. The type of the relation. |

### `RemoveAssetsFromGroupRequest`

A request to remove assets from a group.

| Property | Type | Description |
|----------|------|-------------|
| `allowMissing` | `boolean` | Optional. When this value is set to `false` and one of the given assets is not an existing member... |
| `assets` | `AssetList` | Required. List of assets to be removed. The maximum number of assets that can be removed in a sin... |
| `requestId` | `string` | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you... |

### `Report`

Report represents a point-in-time rendering of the ReportConfig results.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Creation timestamp. |
| `description` | `string` | Free-text description. |
| `displayName` | `string` | User-friendly display name. Maximum length is 63 characters. |
| `name` | `string` | Output only. Name of resource. |
| `state` | `string` | Report creation state. |
| `summary` | `ReportSummary` | Output only. Summary view of the Report. |
| `type` | `string` | Report type. |
| `updateTime` | `string` | Output only. Last update timestamp. |

### `ReportAssetFramesResponse`

A response to a call to `ReportAssetFrame`.

### `ReportConfig`

The groups and associated preference sets on which we can generate reports.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The timestamp when the resource was created. |
| `description` | `string` | Free-text description. |
| `displayName` | `string` | User-friendly display name. Maximum length is 63 characters. |
| `groupPreferencesetAssignments` | `array<ReportConfigGroupPreferenceSetAssignment>` | Required. Collection of combinations of groups and preference sets. |
| `name` | `string` | Output only. Name of resource. |
| `updateTime` | `string` | Output only. The timestamp when the resource was last updated. |

### `ReportConfigGroupPreferenceSetAssignment`

Represents a combination of a group with a preference set.

| Property | Type | Description |
|----------|------|-------------|
| `group` | `string` | Required. Name of the group. |
| `preferenceSet` | `string` | Required. Name of the Preference Set. |

### `ReportSummary`

Describes the Summary view of a Report, which contains aggregated values for all the groups and preference sets included in this Report.

| Property | Type | Description |
|----------|------|-------------|
| `allAssetsStats` | `ReportSummaryAssetAggregateStats` | Aggregate statistics for all the assets across all the groups. |
| `groupFindings` | `array<ReportSummaryGroupFinding>` | Findings for each Group included in this report. |

### `ReportSummaryAssetAggregateStats`

Aggregate statistics for a collection of assets.

| Property | Type | Description |
|----------|------|-------------|
| `coreCountHistogram` | `ReportSummaryHistogramChartData` | Histogram showing a distribution of logical CPU core counts. |
| `memoryBytesHistogram` | `ReportSummaryHistogramChartData` | Histogram showing a distribution of memory sizes. |
| `memoryUtilizationChart` | `ReportSummaryUtilizationChartData` | Total memory split into Used/Free buckets. |
| `operatingSystem` | `ReportSummaryChartData` | Count of assets grouped by Operating System families. |
| `softwareInstances` | `ReportSummaryChartData` | Output only. Count of assets grouped by software name. Only present for virtual machines. |
| `storageBytesHistogram` | `ReportSummaryHistogramChartData` | Histogram showing a distribution of storage sizes. |
| `storageUtilizationChart` | `ReportSummaryUtilizationChartData` | Total memory split into Used/Free buckets. |
| `totalAssets` | `string` | Count of the number of unique assets in this collection. |
| `totalCores` | `string` | Sum of the CPU core count of all the assets in this collection. |
| `totalMemoryBytes` | `string` | Sum of the memory in bytes of all the assets in this collection. |
| `totalStorageBytes` | `string` | Sum of persistent storage in bytes of all the assets in this collection. |

### `ReportSummaryChartData`

Describes a collection of data points rendered as a Chart.

| Property | Type | Description |
|----------|------|-------------|
| `dataPoints` | `array<ReportSummaryChartDataDataPoint>` | Each data point in the chart is represented as a name-value pair with the name being the x-axis l... |

### `ReportSummaryChartDataDataPoint`

Describes a single data point in the Chart.

| Property | Type | Description |
|----------|------|-------------|
| `label` | `string` | The X-axis label for this data point. |
| `value` | `number` | The Y-axis value for this data point. |

### `ReportSummaryComputeEngineFinding`

A set of findings that applies to assets destined for Compute Engine.

| Property | Type | Description |
|----------|------|-------------|
| `allocatedAssetCount` | `string` | Count of assets which were allocated. |
| `allocatedDiskTypes` | `array<string>` | Set of disk types allocated to assets. |
| `allocatedRegions` | `array<string>` | Set of regions in which the assets were allocated. |
| `machineSeriesAllocations` | `array<ReportSummaryMachineSeriesAllocation>` | Distribution of assets based on the Machine Series. |

### `ReportSummaryGroupFinding`

Summary Findings for a specific Group.

| Property | Type | Description |
|----------|------|-------------|
| `assetAggregateStats` | `ReportSummaryAssetAggregateStats` | Summary statistics for all the assets in this group. |
| `description` | `string` | Description for the Group. |
| `displayName` | `string` | Display Name for the Group. |
| `overlappingAssetCount` | `string` | This field is deprecated, do not rely on it having a value. |
| `preferenceSetFindings` | `array<ReportSummaryGroupPreferenceSetFinding>` | Findings for each of the PreferenceSets for this group. |

### `ReportSummaryGroupPreferenceSetFinding`

Summary Findings for a specific Group/PreferenceSet combination.

| Property | Type | Description |
|----------|------|-------------|
| `computeEngineFinding` | `ReportSummaryComputeEngineFinding` | A set of findings that applies to Compute Engine machines in the input. |
| `description` | `string` | Description for the Preference Set. |
| `displayName` | `string` | Display Name of the Preference Set |
| `machinePreferences` | `VirtualMachinePreferences` | A set of preferences that applies to all machines in the context. |
| `monthlyCostCompute` | `Money` | Compute monthly cost for this preference set. |
| `monthlyCostNetworkEgress` | `Money` | Network Egress monthly cost for this preference set. |
| `monthlyCostOsLicense` | `Money` | Licensing monthly cost for this preference set. |
| `monthlyCostOther` | `Money` | Miscellaneous monthly cost for this preference set. |
| `monthlyCostStorage` | `Money` | Storage monthly cost for this preference set. |
| `monthlyCostTotal` | `Money` | Total monthly cost for this preference set. |
| `soleTenantFinding` | `ReportSummarySoleTenantFinding` | A set of findings that applies to Sole-Tenant machines in the input. |
| `vmwareEngineFinding` | `ReportSummaryVmwareEngineFinding` | A set of findings that applies to VMWare machines in the input. |

### `ReportSummaryHistogramChartData`

A Histogram Chart shows a distribution of values into buckets, showing a count of values which fall into a bucket.

| Property | Type | Description |
|----------|------|-------------|
| `buckets` | `array<ReportSummaryHistogramChartDataBucket>` | Buckets in the histogram. There will be `n+1` buckets matching `n` lower bounds in the request. T... |

### `ReportSummaryHistogramChartDataBucket`

A histogram bucket with a lower and upper bound, and a count of items with a field value between those bounds. The lower bound is inclusive and the upper bound is exclusive. Lower bound may be -infinity and upper bound may be infinity.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `string` | Count of items in the bucket. |
| `lowerBound` | `string` | Lower bound - inclusive. |
| `upperBound` | `string` | Upper bound - exclusive. |

### `ReportSummaryMachineSeriesAllocation`

Represents a data point tracking the count of assets allocated for a specific Machine Series.

| Property | Type | Description |
|----------|------|-------------|
| `allocatedAssetCount` | `string` | Count of assets allocated to this machine series. |
| `machineSeries` | `MachineSeries` | The Machine Series (e.g. "E2", "N2") |

### `ReportSummarySoleTenantFinding`

A set of findings that applies to assets destined for Sole-Tenant nodes.

| Property | Type | Description |
|----------|------|-------------|
| `allocatedAssetCount` | `string` | Count of assets which are allocated |
| `allocatedRegions` | `array<string>` | Set of regions in which the assets are allocated |
| `nodeAllocations` | `array<ReportSummarySoleTenantNodeAllocation>` | Set of per-nodetype allocation records |

### `ReportSummarySoleTenantNodeAllocation`

Represents the assets allocated to a specific Sole-Tenant node type.

| Property | Type | Description |
|----------|------|-------------|
| `allocatedAssetCount` | `string` | Count of assets allocated to these nodes |
| `node` | `SoleTenantNodeType` | Sole Tenant node type, e.g. "m3-node-128-3904" |
| `nodeCount` | `string` | Count of this node type to be provisioned |

### `ReportSummaryUtilizationChartData`

Utilization Chart is a specific type of visualization which displays a metric classified into "Used" and "Free" buckets.

| Property | Type | Description |
|----------|------|-------------|
| `free` | `string` | Aggregate value which falls into the "Free" bucket. |
| `used` | `string` | Aggregate value which falls into the "Used" bucket. |

### `ReportSummaryVmwareEngineFinding`

A set of findings that applies to assets destined for VMWare Engine.

| Property | Type | Description |
|----------|------|-------------|
| `allocatedAssetCount` | `string` | Count of assets which are allocated |
| `allocatedRegions` | `array<string>` | Set of regions in which the assets were allocated |
| `nodeAllocations` | `array<ReportSummaryVmwareNodeAllocation>` | Set of per-nodetype allocation records |

### `ReportSummaryVmwareNode`

A VMWare Engine Node

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | Code to identify VMware Engine node series, e.g. "ve1-standard-72". Based on the displayName of c... |

### `ReportSummaryVmwareNodeAllocation`

Represents assets allocated to a specific VMWare Node type.

| Property | Type | Description |
|----------|------|-------------|
| `allocatedAssetCount` | `string` | Count of assets allocated to these nodes |
| `nodeCount` | `string` | Count of this node type to be provisioned |
| `vmwareNode` | `ReportSummaryVmwareNode` | VMWare node type, e.g. "ve1-standard-72" |

### `RunAssetsExportJobRequest`

A request to run an assets export job.

| Property | Type | Description |
|----------|------|-------------|
| `requestId` | `string` | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you... |

### `RunAssetsExportJobResponse`

Response message for running an assets export job.

| Property | Type | Description |
|----------|------|-------------|
| `assetsExportJobExecution` | `AssetsExportJobExecution` | Output only. Execution status of the assets export operation. |

### `RunImportJobRequest`

A request to run an import job.

| Property | Type | Description |
|----------|------|-------------|
| `requestId` | `string` | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you... |

### `RunningProcess`

Guest OS running process details.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `object` | Process extended attributes. |
| `cmdline` | `string` | Process full command line. |
| `exePath` | `string` | Process binary path. |
| `pid` | `string` | Process ID. |
| `user` | `string` | User running the process. |

### `RunningProcessList`

List of running guest OS processes.

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<RunningProcess>` | Running process entries. |

### `RunningService`

Guest OS running service details.

| Property | Type | Description |
|----------|------|-------------|
| `cmdline` | `string` | Service command line. |
| `exePath` | `string` | Service binary path. |
| `pid` | `string` | Service pid. |
| `serviceName` | `string` | Service name. |
| `startMode` | `string` | Service start mode (OS-agnostic). |
| `state` | `string` | Service state (OS-agnostic). |

### `RunningServiceList`

List of running guest OS services.

| Property | Type | Description |
|----------|------|-------------|
| `entries` | `array<RunningService>` | Running service entries. |

### `RuntimeNetworkInfo`

Runtime networking information.

| Property | Type | Description |
|----------|------|-------------|
| `connections` | `NetworkConnectionList` | Network connections. |
| `scanTime` | `string` | Time of the last network scan. |

### `SendDiscoveryClientHeartbeatRequest`

A request to send a discovery client heartbeat.

| Property | Type | Description |
|----------|------|-------------|
| `errors` | `array<Status>` | Optional. Errors affecting client functionality. |
| `version` | `string` | Optional. Client application version. |

### `Settings`

Describes the Migration Center settings related to the project.

| Property | Type | Description |
|----------|------|-------------|
| `disableCloudLogging` | `boolean` | Disable Cloud Logging for the Migration Center API. Users are billed for the logs. |
| `name` | `string` | Output only. The name of the resource. |
| `preferenceSet` | `string` | The preference set used by default for a project. |

### `SignedUri`

Contains a signed URI.

| Property | Type | Description |
|----------|------|-------------|
| `file` | `string` | Output only. Name of the file the Signed URI references. |
| `uri` | `string` | Output only. Download URI for the file. |

### `SignedUriDestination`

Signed URI destination configuration.

| Property | Type | Description |
|----------|------|-------------|
| `fileFormat` | `string` | Required. The file format to export. |

### `SignedUris`

Contains a list of Signed URIs.

| Property | Type | Description |
|----------|------|-------------|
| `signedUris` | `array<SignedUri>` | Output only. List of signed URIs. |

### `SoleTenancyPreferences`

Preferences concerning Sole Tenancy nodes and VMs.

| Property | Type | Description |
|----------|------|-------------|
| `commitmentPlan` | `string` | Commitment plan to consider when calculating costs for virtual machine insights and recommendatio... |
| `cpuOvercommitRatio` | `number` | CPU overcommit ratio. Acceptable values are between 1.0 and 2.0 inclusive. |
| `hostMaintenancePolicy` | `string` | Sole Tenancy nodes maintenance policy. |
| `nodeTypes` | `array<SoleTenantNodeType>` | A list of sole tenant node types. An empty list means that all possible node types will be consid... |

### `SoleTenantNodeType`

A Sole Tenant node type.

| Property | Type | Description |
|----------|------|-------------|
| `nodeName` | `string` | Name of the Sole Tenant node. Consult https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes |

### `Source`

Source represents an object from which asset information is streamed to Migration Center.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The timestamp when the source was created. |
| `description` | `string` | Free-text description. |
| `displayName` | `string` | User-friendly display name. |
| `errorFrameCount` | `integer` | Output only. The number of frames that were reported by the source and contained errors. |
| `managed` | `boolean` | If `true`, the source is managed by other service(s). |
| `name` | `string` | Output only. The full name of the source. |
| `pendingFrameCount` | `integer` | Output only. Number of frames that are still being processed. |
| `priority` | `integer` | The information confidence of the source. The higher the value, the higher the confidence. |
| `state` | `string` | Output only. The state of the source. |
| `type` | `string` | Data source type. |
| `updateTime` | `string` | Output only. The timestamp when the source was last updated. |

### `SqlServerDatabaseDeployment`

Specific details for a Microsoft SQL Server database deployment.

| Property | Type | Description |
|----------|------|-------------|
| `features` | `array<SqlServerFeature>` | Optional. List of SQL Server features. |
| `serverFlags` | `array<SqlServerServerFlag>` | Optional. List of SQL Server server flags. |
| `traceFlags` | `array<SqlServerTraceFlag>` | Optional. List of SQL Server trace flags. |

### `SqlServerFeature`

SQL Server feature details.

| Property | Type | Description |
|----------|------|-------------|
| `enabled` | `boolean` | Required. Field enabled is set when a feature is used on the source deployment. |
| `featureName` | `string` | Required. The feature name. |

### `SqlServerSchemaDetails`

Specific details for a SqlServer database.

| Property | Type | Description |
|----------|------|-------------|
| `clrObjectCount` | `integer` | Optional. SqlServer number of CLR objects. |

### `SqlServerServerFlag`

SQL Server server flag details.

| Property | Type | Description |
|----------|------|-------------|
| `serverFlagName` | `string` | Required. The server flag name. |
| `value` | `string` | Required. The server flag value set by the user. |
| `valueInUse` | `string` | Required. The server flag actual value. If `value_in_use` is different from `value` it means that... |

### `SqlServerTraceFlag`

SQL Server trace flag details.

| Property | Type | Description |
|----------|------|-------------|
| `scope` | `string` | Required. The trace flag scope. |
| `traceFlagName` | `string` | Required. The trace flag name. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `UpdateAssetRequest`

A request to update an asset.

| Property | Type | Description |
|----------|------|-------------|
| `asset` | `Asset` | Required. The resource being updated. |
| `requestId` | `string` | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you... |
| `updateMask` | `string` | Required. Field mask is used to specify the fields to be overwritten in the `Asset` resource by t... |

### `UploadFileInfo`

A resource that contains a URI to which a data file can be uploaded.

| Property | Type | Description |
|----------|------|-------------|
| `headers` | `object` | Output only. The headers that were used to sign the URI. |
| `signedUri` | `string` | Output only. Upload URI for the file. |
| `uriExpirationTime` | `string` | Output only. Expiration time of the upload URI. |

### `ValidateImportJobRequest`

A request to validate an import job.

| Property | Type | Description |
|----------|------|-------------|
| `requestId` | `string` | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you... |

### `ValidationReport`

A resource that aggregates errors across import job files.

| Property | Type | Description |
|----------|------|-------------|
| `fileValidations` | `array<FileValidationReport>` | List of errors found in files. |
| `jobErrors` | `array<ImportError>` | List of job level errors. |

### `VirtualMachinePreferences`

VirtualMachinePreferences enables you to create sets of assumptions, for example, a geographical location and pricing track, for your migrated virtual machines. The set of preferences influence recommendations for migrating virtual machine assets.

| Property | Type | Description |
|----------|------|-------------|
| `commitmentPlan` | `string` | Commitment plan to consider when calculating costs for virtual machine insights and recommendatio... |
| `computeEnginePreferences` | `ComputeEnginePreferences` | Compute Engine preferences concern insights and recommendations for Compute Engine target. |
| `regionPreferences` | `RegionPreferences` | Region preferences for assets using this preference set. If you are unsure which value to set, th... |
| `sizingOptimizationStrategy` | `string` | Sizing optimization strategy specifies the preferred strategy used when extrapolating usage data ... |
| `soleTenancyPreferences` | `SoleTenancyPreferences` | Preferences concerning Sole Tenant nodes and virtual machines. |
| `targetProduct` | `string` | Target product for assets using this preference set. Specify either target product or business go... |
| `vmwareEnginePreferences` | `VmwareEnginePreferences` | Preferences concerning insights and recommendations for Google Cloud VMware Engine. |

### `VmwareDiskConfig`

VMware disk config details.

| Property | Type | Description |
|----------|------|-------------|
| `backingType` | `string` | VMDK backing type. |
| `rdmCompatibility` | `string` | RDM compatibility mode. |
| `shared` | `boolean` | Is VMDK shared with other VMs. |
| `vmdkMode` | `string` | VMDK disk mode. |

### `VmwareEnginePreferences`

The user preferences relating to Google Cloud VMware Engine target platform.

| Property | Type | Description |
|----------|------|-------------|
| `commitmentPlan` | `string` | Commitment plan to consider when calculating costs for virtual machine insights and recommendatio... |
| `cpuOvercommitRatio` | `number` | CPU overcommit ratio. Acceptable values are between 1.0 and 8.0, with 0.1 increment. |
| `memoryOvercommitRatio` | `number` | Memory overcommit ratio. Acceptable values are 1.0, 1.25, 1.5, 1.75 and 2.0. |
| `storageDeduplicationCompressionRatio` | `number` | The Deduplication and Compression ratio is based on the logical (Used Before) space required to s... |

### `VmwarePlatformDetails`

VMware specific details.

| Property | Type | Description |
|----------|------|-------------|
| `esxHyperthreading` | `string` | Whether the ESX is hyperthreaded. |
| `esxVersion` | `string` | ESX version. |
| `osid` | `string` | VMware os enum - https://vdc-repo.vmware.com/vmwb-repository/dcr-public/da47f910-60ac-438b-8b9b-6... |
| `vcenterFolder` | `string` | Folder name in vCenter where asset resides. |
| `vcenterUri` | `string` | vCenter URI used in collection. |
| `vcenterVersion` | `string` | vCenter version. |
| `vcenterVmId` | `string` | vCenter VM ID. |

### `XlsxOutputFile`

Contains a single output file of type XLSX.

| Property | Type | Description |
|----------|------|-------------|
| `signedUri` | `SignedUri` | Output only. Signed URI destination. |

