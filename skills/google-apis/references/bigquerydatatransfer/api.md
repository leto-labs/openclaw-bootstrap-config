# BigQuery Data Transfer API - API Reference

**Version**: `v1` | **Methods**: 33 | **Schemas**: 30

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `bigquerydatatransfer.projects.enrollDataSources` | POST | `v1/{+name}:enrollDataSources` | Enroll data sources in a user project. This allows users to create transfer configurations for th... |
| `bigquerydatatransfer.projects.dataSources.checkValidCreds` | POST | `v1/{+name}:checkValidCreds` | Returns true if valid credentials exist for the given data source and requesting user. |
| `bigquerydatatransfer.projects.dataSources.list` | GET | `v1/{+parent}/dataSources` | Lists supported data sources and returns their settings. |
| `bigquerydatatransfer.projects.dataSources.get` | GET | `v1/{+name}` | Retrieves a supported data source and returns its settings. |
| `bigquerydatatransfer.projects.locations.unenrollDataSources` | POST | `v1/{+name}:unenrollDataSources` | Unenroll data sources in a user project. This allows users to remove transfer configurations for ... |
| `bigquerydatatransfer.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `bigquerydatatransfer.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `bigquerydatatransfer.projects.locations.enrollDataSources` | POST | `v1/{+name}:enrollDataSources` | Enroll data sources in a user project. This allows users to create transfer configurations for th... |
| `bigquerydatatransfer.projects.locations.transferConfigs.patch` | PATCH | `v1/{+name}` | Updates a data transfer configuration. All fields must be set, even if they are not updated. |
| `bigquerydatatransfer.projects.locations.transferConfigs.list` | GET | `v1/{+parent}/transferConfigs` | Returns information about all transfer configs owned by a project in the specified location. |
| `bigquerydatatransfer.projects.locations.transferConfigs.get` | GET | `v1/{+name}` | Returns information about a data transfer config. |
| `bigquerydatatransfer.projects.locations.transferConfigs.scheduleRuns` | POST | `v1/{+parent}:scheduleRuns` | Creates transfer runs for a time range [start_time, end_time]. For each date - or whatever granul... |
| `bigquerydatatransfer.projects.locations.transferConfigs.startManualRuns` | POST | `v1/{+parent}:startManualRuns` | Manually initiates transfer runs. You can schedule these runs in two ways: 1. For a specific poin... |
| `bigquerydatatransfer.projects.locations.transferConfigs.delete` | DELETE | `v1/{+name}` | Deletes a data transfer configuration, including any associated transfer runs and logs. |
| `bigquerydatatransfer.projects.locations.transferConfigs.create` | POST | `v1/{+parent}/transferConfigs` | Creates a new data transfer configuration. |
| `bigquerydatatransfer.projects.locations.transferConfigs.runs.list` | GET | `v1/{+parent}/runs` | Returns information about running and completed transfer runs. |
| `bigquerydatatransfer.projects.locations.transferConfigs.runs.delete` | DELETE | `v1/{+name}` | Deletes the specified transfer run. |
| `bigquerydatatransfer.projects.locations.transferConfigs.runs.get` | GET | `v1/{+name}` | Returns information about the particular transfer run. |
| `bigquerydatatransfer.projects.locations.transferConfigs.runs.transferLogs.list` | GET | `v1/{+parent}/transferLogs` | Returns log messages for the transfer run. |
| `bigquerydatatransfer.projects.locations.dataSources.get` | GET | `v1/{+name}` | Retrieves a supported data source and returns its settings. |
| `bigquerydatatransfer.projects.locations.dataSources.checkValidCreds` | POST | `v1/{+name}:checkValidCreds` | Returns true if valid credentials exist for the given data source and requesting user. |
| `bigquerydatatransfer.projects.locations.dataSources.list` | GET | `v1/{+parent}/dataSources` | Lists supported data sources and returns their settings. |
| `bigquerydatatransfer.projects.transferConfigs.patch` | PATCH | `v1/{+name}` | Updates a data transfer configuration. All fields must be set, even if they are not updated. |
| `bigquerydatatransfer.projects.transferConfigs.scheduleRuns` | POST | `v1/{+parent}:scheduleRuns` | Creates transfer runs for a time range [start_time, end_time]. For each date - or whatever granul... |
| `bigquerydatatransfer.projects.transferConfigs.create` | POST | `v1/{+parent}/transferConfigs` | Creates a new data transfer configuration. |
| `bigquerydatatransfer.projects.transferConfigs.startManualRuns` | POST | `v1/{+parent}:startManualRuns` | Manually initiates transfer runs. You can schedule these runs in two ways: 1. For a specific poin... |
| `bigquerydatatransfer.projects.transferConfigs.list` | GET | `v1/{+parent}/transferConfigs` | Returns information about all transfer configs owned by a project in the specified location. |
| `bigquerydatatransfer.projects.transferConfigs.delete` | DELETE | `v1/{+name}` | Deletes a data transfer configuration, including any associated transfer runs and logs. |
| `bigquerydatatransfer.projects.transferConfigs.get` | GET | `v1/{+name}` | Returns information about a data transfer config. |
| `bigquerydatatransfer.projects.transferConfigs.runs.get` | GET | `v1/{+name}` | Returns information about the particular transfer run. |
| `bigquerydatatransfer.projects.transferConfigs.runs.delete` | DELETE | `v1/{+name}` | Deletes the specified transfer run. |
| `bigquerydatatransfer.projects.transferConfigs.runs.list` | GET | `v1/{+parent}/runs` | Returns information about running and completed transfer runs. |
| `bigquerydatatransfer.projects.transferConfigs.runs.transferLogs.list` | GET | `v1/{+parent}/transferLogs` | Returns log messages for the transfer run. |

### `bigquerydatatransfer.projects.enrollDataSources`

**POST** `v1/{+name}:enrollDataSources`

Enroll data sources in a user project. This allows users to create transfer configurations for these data sources. They will also appear in the ListDataSources RPC and as such, will appear in the [BigQuery UI](https://console.cloud.google.com/bigquery), and the documents can be found in the public guide for [BigQuery Web UI](https://cloud.google.com/bigquery/bigquery-web-ui) and [Data Transfer Service](https://cloud.google.com/bigquery/docs/working-with-transfers).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the project resource in the form: `projects/{project_id}` |

**Request body**: `EnrollDataSourcesRequest`

**Response**: `Empty`

```typescript
const res = await bigquerydatatransfer.projects.enrollDataSources({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquerydatatransfer.projects.dataSources.checkValidCreds`

**POST** `v1/{+name}:checkValidCreds`

Returns true if valid credentials exist for the given data source and requesting user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the data source. If you are using the regionless method, the location must be `US` and the name... |

**Request body**: `CheckValidCredsRequest`

**Response**: `CheckValidCredsResponse`

```typescript
const res = await bigquerydatatransfer.dataSources.checkValidCreds({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigquerydatatransfer.projects.dataSources.list`

**GET** `v1/{+parent}/dataSources`

Lists supported data sources and returns their settings.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The BigQuery project id for which data sources should be returned. Must be in the form: `projects/{project_... |
| `pageSize` | `integer` | query | No | Page size. The default page size is the maximum value of 1000 results. |
| `pageToken` | `string` | query | No | Pagination token, which can be used to request a specific page of `ListDataSourcesRequest` list results. For multiple... |

**Response**: `ListDataSourcesResponse`

```typescript
const res = await bigquerydatatransfer.dataSources.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigquerydatatransfer.projects.dataSources.get`

**GET** `v1/{+name}`

Retrieves a supported data source and returns its settings.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource requested. If you are using the regionless method, the location must be `US` and t... |

**Response**: `DataSource`

```typescript
const res = await bigquerydatatransfer.dataSources.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigquerydatatransfer.projects.locations.unenrollDataSources`

**POST** `v1/{+name}:unenrollDataSources`

Unenroll data sources in a user project. This allows users to remove transfer configurations for these data sources. They will no longer appear in the ListDataSources RPC and will also no longer appear in the [BigQuery UI](https://console.cloud.google.com/bigquery). Data transfers configurations of unenrolled data sources will not be scheduled.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the project resource in the form: `projects/{project_id}` |

**Request body**: `UnenrollDataSourcesRequest`

**Response**: `Empty`

```typescript
const res = await bigquerydatatransfer.locations.unenrollDataSources({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquerydatatransfer.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await bigquerydatatransfer.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigquerydatatransfer.projects.locations.list`

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
const res = await bigquerydatatransfer.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigquerydatatransfer.projects.locations.enrollDataSources`

**POST** `v1/{+name}:enrollDataSources`

Enroll data sources in a user project. This allows users to create transfer configurations for these data sources. They will also appear in the ListDataSources RPC and as such, will appear in the [BigQuery UI](https://console.cloud.google.com/bigquery), and the documents can be found in the public guide for [BigQuery Web UI](https://cloud.google.com/bigquery/bigquery-web-ui) and [Data Transfer Service](https://cloud.google.com/bigquery/docs/working-with-transfers).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the project resource in the form: `projects/{project_id}` |

**Request body**: `EnrollDataSourcesRequest`

**Response**: `Empty`

```typescript
const res = await bigquerydatatransfer.locations.enrollDataSources({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquerydatatransfer.projects.locations.transferConfigs.patch`

**PATCH** `v1/{+name}`

Updates a data transfer configuration. All fields must be set, even if they are not updated.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the transfer config. Transfer config names have the form either `projects/{project_i... |
| `authorizationCode` | `string` | query | No | Deprecated: Authorization code was required when `transferConfig.dataSourceId` is 'youtube_channel' but it is no long... |
| `serviceAccountName` | `string` | query | No | Optional service account email. If this field is set, the transfer config will be created with this service account's... |
| `updateMask` | `string` | query | No | Required. Required list of fields to be updated in this request. |
| `versionInfo` | `string` | query | No | Optional version info. This parameter replaces `authorization_code` which is no longer used in any data sources. This... |

**Request body**: `TransferConfig`

**Response**: `TransferConfig`

```typescript
const res = await bigquerydatatransfer.transferConfigs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquerydatatransfer.projects.locations.transferConfigs.list`

**GET** `v1/{+parent}/transferConfigs`

Returns information about all transfer configs owned by a project in the specified location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The BigQuery project id for which transfer configs should be returned. If you are using the regionless meth... |
| `dataSourceIds` | `string` | query | No | When specified, only configurations of requested data sources are returned. |
| `pageSize` | `integer` | query | No | Page size. The default page size is the maximum value of 1000 results. |
| `pageToken` | `string` | query | No | Pagination token, which can be used to request a specific page of `ListTransfersRequest` list results. For multiple-p... |

**Response**: `ListTransferConfigsResponse`

```typescript
const res = await bigquerydatatransfer.transferConfigs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigquerydatatransfer.projects.locations.transferConfigs.get`

**GET** `v1/{+name}`

Returns information about a data transfer config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource requested. If you are using the regionless method, the location must be `US` and t... |

**Response**: `TransferConfig`

```typescript
const res = await bigquerydatatransfer.transferConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigquerydatatransfer.projects.locations.transferConfigs.scheduleRuns`

**POST** `v1/{+parent}:scheduleRuns`

Creates transfer runs for a time range [start_time, end_time]. For each date - or whatever granularity the data source supports - in the range, one transfer run is created. Note that runs are created per UTC time in the time range. DEPRECATED: use StartManualTransferRuns instead.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Transfer configuration name. If you are using the regionless method, the location must be `US` and the name... |

**Request body**: `ScheduleTransferRunsRequest`

**Response**: `ScheduleTransferRunsResponse`

```typescript
const res = await bigquerydatatransfer.transferConfigs.scheduleRuns({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquerydatatransfer.projects.locations.transferConfigs.startManualRuns`

**POST** `v1/{+parent}:startManualRuns`

Manually initiates transfer runs. You can schedule these runs in two ways: 1. For a specific point in time using the 'requested_run_time' parameter. 2. For a period between 'start_time' (inclusive) and 'end_time' (exclusive). If scheduling a single run, it is set to execute immediately (schedule_time equals the current time). When scheduling multiple runs within a time range, the first run starts now, and subsequent runs are delayed by 15 seconds each.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Transfer configuration name. If you are using the regionless method, the location must be `US` and the name... |

**Request body**: `StartManualTransferRunsRequest`

**Response**: `StartManualTransferRunsResponse`

```typescript
const res = await bigquerydatatransfer.transferConfigs.startManualRuns({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquerydatatransfer.projects.locations.transferConfigs.delete`

**DELETE** `v1/{+name}`

Deletes a data transfer configuration, including any associated transfer runs and logs.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource to delete. If you are using the regionless method, the location must be `US` and t... |

**Response**: `Empty`

```typescript
const res = await bigquerydatatransfer.transferConfigs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquerydatatransfer.projects.locations.transferConfigs.create`

**POST** `v1/{+parent}/transferConfigs`

Creates a new data transfer configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The BigQuery project id where the transfer configuration should be created. Must be in the format projects/... |
| `authorizationCode` | `string` | query | No | Deprecated: Authorization code was required when `transferConfig.dataSourceId` is 'youtube_channel' but it is no long... |
| `serviceAccountName` | `string` | query | No | Optional service account email. If this field is set, the transfer config will be created with this service account's... |
| `versionInfo` | `string` | query | No | Optional version info. This parameter replaces `authorization_code` which is no longer used in any data sources. This... |

**Request body**: `TransferConfig`

**Response**: `TransferConfig`

```typescript
const res = await bigquerydatatransfer.transferConfigs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquerydatatransfer.projects.locations.transferConfigs.runs.list`

**GET** `v1/{+parent}/runs`

Returns information about running and completed transfer runs.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of transfer configuration for which transfer runs should be retrieved. If you are using the regionless... |
| `pageSize` | `integer` | query | No | Page size. The default page size is the maximum value of 1000 results. |
| `pageToken` | `string` | query | No | Pagination token, which can be used to request a specific page of `ListTransferRunsRequest` list results. For multipl... |
| `runAttempt` | `string` | query | No | Indicates how run attempts are to be pulled. |
| `states` | `string` | query | No | When specified, only transfer runs with requested states are returned. |

**Response**: `ListTransferRunsResponse`

```typescript
const res = await bigquerydatatransfer.runs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigquerydatatransfer.projects.locations.transferConfigs.runs.delete`

**DELETE** `v1/{+name}`

Deletes the specified transfer run.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource requested. If you are using the regionless method, the location must be `US` and t... |

**Response**: `Empty`

```typescript
const res = await bigquerydatatransfer.runs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquerydatatransfer.projects.locations.transferConfigs.runs.get`

**GET** `v1/{+name}`

Returns information about the particular transfer run.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource requested. If you are using the regionless method, the location must be `US` and t... |

**Response**: `TransferRun`

```typescript
const res = await bigquerydatatransfer.runs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigquerydatatransfer.projects.locations.transferConfigs.runs.transferLogs.list`

**GET** `v1/{+parent}/transferLogs`

Returns log messages for the transfer run.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Transfer run name. If you are using the regionless method, the location must be `US` and the name should be... |
| `messageTypes` | `string` | query | No | Message types to return. If not populated - INFO, WARNING and ERROR messages are returned. |
| `pageSize` | `integer` | query | No | Page size. The default page size is the maximum value of 1000 results. |
| `pageToken` | `string` | query | No | Pagination token, which can be used to request a specific page of `ListTransferLogsRequest` list results. For multipl... |

**Response**: `ListTransferLogsResponse`

```typescript
const res = await bigquerydatatransfer.transferLogs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigquerydatatransfer.projects.locations.dataSources.get`

**GET** `v1/{+name}`

Retrieves a supported data source and returns its settings.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource requested. If you are using the regionless method, the location must be `US` and t... |

**Response**: `DataSource`

```typescript
const res = await bigquerydatatransfer.dataSources.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigquerydatatransfer.projects.locations.dataSources.checkValidCreds`

**POST** `v1/{+name}:checkValidCreds`

Returns true if valid credentials exist for the given data source and requesting user.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the data source. If you are using the regionless method, the location must be `US` and the name... |

**Request body**: `CheckValidCredsRequest`

**Response**: `CheckValidCredsResponse`

```typescript
const res = await bigquerydatatransfer.dataSources.checkValidCreds({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigquerydatatransfer.projects.locations.dataSources.list`

**GET** `v1/{+parent}/dataSources`

Lists supported data sources and returns their settings.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The BigQuery project id for which data sources should be returned. Must be in the form: `projects/{project_... |
| `pageSize` | `integer` | query | No | Page size. The default page size is the maximum value of 1000 results. |
| `pageToken` | `string` | query | No | Pagination token, which can be used to request a specific page of `ListDataSourcesRequest` list results. For multiple... |

**Response**: `ListDataSourcesResponse`

```typescript
const res = await bigquerydatatransfer.dataSources.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigquerydatatransfer.projects.transferConfigs.patch`

**PATCH** `v1/{+name}`

Updates a data transfer configuration. All fields must be set, even if they are not updated.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the transfer config. Transfer config names have the form either `projects/{project_i... |
| `authorizationCode` | `string` | query | No | Deprecated: Authorization code was required when `transferConfig.dataSourceId` is 'youtube_channel' but it is no long... |
| `serviceAccountName` | `string` | query | No | Optional service account email. If this field is set, the transfer config will be created with this service account's... |
| `updateMask` | `string` | query | No | Required. Required list of fields to be updated in this request. |
| `versionInfo` | `string` | query | No | Optional version info. This parameter replaces `authorization_code` which is no longer used in any data sources. This... |

**Request body**: `TransferConfig`

**Response**: `TransferConfig`

```typescript
const res = await bigquerydatatransfer.transferConfigs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquerydatatransfer.projects.transferConfigs.scheduleRuns`

**POST** `v1/{+parent}:scheduleRuns`

Creates transfer runs for a time range [start_time, end_time]. For each date - or whatever granularity the data source supports - in the range, one transfer run is created. Note that runs are created per UTC time in the time range. DEPRECATED: use StartManualTransferRuns instead.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Transfer configuration name. If you are using the regionless method, the location must be `US` and the name... |

**Request body**: `ScheduleTransferRunsRequest`

**Response**: `ScheduleTransferRunsResponse`

```typescript
const res = await bigquerydatatransfer.transferConfigs.scheduleRuns({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquerydatatransfer.projects.transferConfigs.create`

**POST** `v1/{+parent}/transferConfigs`

Creates a new data transfer configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The BigQuery project id where the transfer configuration should be created. Must be in the format projects/... |
| `authorizationCode` | `string` | query | No | Deprecated: Authorization code was required when `transferConfig.dataSourceId` is 'youtube_channel' but it is no long... |
| `serviceAccountName` | `string` | query | No | Optional service account email. If this field is set, the transfer config will be created with this service account's... |
| `versionInfo` | `string` | query | No | Optional version info. This parameter replaces `authorization_code` which is no longer used in any data sources. This... |

**Request body**: `TransferConfig`

**Response**: `TransferConfig`

```typescript
const res = await bigquerydatatransfer.transferConfigs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquerydatatransfer.projects.transferConfigs.startManualRuns`

**POST** `v1/{+parent}:startManualRuns`

Manually initiates transfer runs. You can schedule these runs in two ways: 1. For a specific point in time using the 'requested_run_time' parameter. 2. For a period between 'start_time' (inclusive) and 'end_time' (exclusive). If scheduling a single run, it is set to execute immediately (schedule_time equals the current time). When scheduling multiple runs within a time range, the first run starts now, and subsequent runs are delayed by 15 seconds each.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Transfer configuration name. If you are using the regionless method, the location must be `US` and the name... |

**Request body**: `StartManualTransferRunsRequest`

**Response**: `StartManualTransferRunsResponse`

```typescript
const res = await bigquerydatatransfer.transferConfigs.startManualRuns({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquerydatatransfer.projects.transferConfigs.list`

**GET** `v1/{+parent}/transferConfigs`

Returns information about all transfer configs owned by a project in the specified location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The BigQuery project id for which transfer configs should be returned. If you are using the regionless meth... |
| `dataSourceIds` | `string` | query | No | When specified, only configurations of requested data sources are returned. |
| `pageSize` | `integer` | query | No | Page size. The default page size is the maximum value of 1000 results. |
| `pageToken` | `string` | query | No | Pagination token, which can be used to request a specific page of `ListTransfersRequest` list results. For multiple-p... |

**Response**: `ListTransferConfigsResponse`

```typescript
const res = await bigquerydatatransfer.transferConfigs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigquerydatatransfer.projects.transferConfigs.delete`

**DELETE** `v1/{+name}`

Deletes a data transfer configuration, including any associated transfer runs and logs.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource to delete. If you are using the regionless method, the location must be `US` and t... |

**Response**: `Empty`

```typescript
const res = await bigquerydatatransfer.transferConfigs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquerydatatransfer.projects.transferConfigs.get`

**GET** `v1/{+name}`

Returns information about a data transfer config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource requested. If you are using the regionless method, the location must be `US` and t... |

**Response**: `TransferConfig`

```typescript
const res = await bigquerydatatransfer.transferConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigquerydatatransfer.projects.transferConfigs.runs.get`

**GET** `v1/{+name}`

Returns information about the particular transfer run.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource requested. If you are using the regionless method, the location must be `US` and t... |

**Response**: `TransferRun`

```typescript
const res = await bigquerydatatransfer.runs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigquerydatatransfer.projects.transferConfigs.runs.delete`

**DELETE** `v1/{+name}`

Deletes the specified transfer run.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource requested. If you are using the regionless method, the location must be `US` and t... |

**Response**: `Empty`

```typescript
const res = await bigquerydatatransfer.runs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`

---

### `bigquerydatatransfer.projects.transferConfigs.runs.list`

**GET** `v1/{+parent}/runs`

Returns information about running and completed transfer runs.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of transfer configuration for which transfer runs should be retrieved. If you are using the regionless... |
| `pageSize` | `integer` | query | No | Page size. The default page size is the maximum value of 1000 results. |
| `pageToken` | `string` | query | No | Pagination token, which can be used to request a specific page of `ListTransferRunsRequest` list results. For multipl... |
| `runAttempt` | `string` | query | No | Indicates how run attempts are to be pulled. |
| `states` | `string` | query | No | When specified, only transfer runs with requested states are returned. |

**Response**: `ListTransferRunsResponse`

```typescript
const res = await bigquerydatatransfer.runs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

### `bigquerydatatransfer.projects.transferConfigs.runs.transferLogs.list`

**GET** `v1/{+parent}/transferLogs`

Returns log messages for the transfer run.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Transfer run name. If you are using the regionless method, the location must be `US` and the name should be... |
| `messageTypes` | `string` | query | No | Message types to return. If not populated - INFO, WARNING and ERROR messages are returned. |
| `pageSize` | `integer` | query | No | Page size. The default page size is the maximum value of 1000 results. |
| `pageToken` | `string` | query | No | Pagination token, which can be used to request a specific page of `ListTransferLogsRequest` list results. For multipl... |

**Response**: `ListTransferLogsResponse`

```typescript
const res = await bigquerydatatransfer.transferLogs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/bigquery`
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/cloud-platform.read-only`

---

## Schemas

### `CheckValidCredsRequest`

A request to determine whether the user has valid credentials. This method is used to limit the number of OAuth popups in the user interface. The user id is inferred from the API call context. If the data source has the Google+ authorization type, this method returns false, as it cannot be determined whether the credentials are already valid merely based on the user id.

### `CheckValidCredsResponse`

A response indicating whether the credentials exist and are valid.

| Property | Type | Description |
|----------|------|-------------|
| `hasValidCreds` | `boolean` | If set to `true`, the credentials exist and are valid. |

### `DataSource`

Defines the properties and custom parameters for a data source.

| Property | Type | Description |
|----------|------|-------------|
| `authorizationType` | `string` | Indicates the type of authorization. |
| `clientId` | `string` | Data source client id which should be used to receive refresh token. |
| `dataRefreshType` | `string` | Specifies whether the data source supports automatic data refresh for the past few days, and how ... |
| `dataSourceId` | `string` | Data source id. |
| `defaultDataRefreshWindowDays` | `integer` | Default data refresh window on days. Only meaningful when `data_refresh_type` = `SLIDING_WINDOW`. |
| `defaultSchedule` | `string` | Default data transfer schedule. Examples of valid schedules include: `1st,3rd monday of month 15:... |
| `description` | `string` | User friendly data source description string. |
| `displayName` | `string` | User friendly data source name. |
| `helpUrl` | `string` | Url for the help document for this data source. |
| `manualRunsDisabled` | `boolean` | Disables backfilling and manual run scheduling for the data source. |
| `minimumScheduleInterval` | `string` | The minimum interval for scheduler to schedule runs. |
| `name` | `string` | Output only. Data source resource name. |
| `parameters` | `array<DataSourceParameter>` | Data source parameters. |
| `scopes` | `array<string>` | Api auth scopes for which refresh token needs to be obtained. These are scopes needed by a data s... |
| `supportsCustomSchedule` | `boolean` | Specifies whether the data source supports a user defined schedule, or operates on the default sc... |
| `supportsMultipleTransfers` | `boolean` | Deprecated. This field has no effect. |
| `transferType` | `string` | Deprecated. This field has no effect. |
| `updateDeadlineSeconds` | `integer` | The number of seconds to wait for an update from the data source before the Data Transfer Service... |

### `DataSourceParameter`

A parameter used to define custom fields in a data source definition.

| Property | Type | Description |
|----------|------|-------------|
| `allowedValues` | `array<string>` | All possible values for the parameter. |
| `deprecated` | `boolean` | If true, it should not be used in new transfers, and it should not be visible to users. |
| `description` | `string` | Parameter description. |
| `displayName` | `string` | Parameter display name in the user interface. |
| `fields` | `array<DataSourceParameter>` | Deprecated. This field has no effect. |
| `immutable` | `boolean` | Cannot be changed after initial creation. |
| `maxListSize` | `string` | For list parameters, the max size of the list. |
| `maxValue` | `number` | For integer and double values specifies maximum allowed value. |
| `minValue` | `number` | For integer and double values specifies minimum allowed value. |
| `paramId` | `string` | Parameter identifier. |
| `recurse` | `boolean` | Deprecated. This field has no effect. |
| `repeated` | `boolean` | Deprecated. This field has no effect. |
| `required` | `boolean` | Is parameter required. |
| `type` | `string` | Parameter type. |
| `validationDescription` | `string` | Description of the requirements for this field, in case the user input does not fulfill the regex... |
| `validationHelpUrl` | `string` | URL to a help document to further explain the naming requirements. |
| `validationRegex` | `string` | Regular expression which can be used for parameter validation. |

### `EmailPreferences`

Represents preferences for sending email notifications for transfer run events.

| Property | Type | Description |
|----------|------|-------------|
| `enableFailureEmail` | `boolean` | If true, email notifications will be sent on transfer run failures. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `EncryptionConfiguration`

Represents the encryption configuration for a transfer.

| Property | Type | Description |
|----------|------|-------------|
| `kmsKeyName` | `string` | The name of the KMS key used for encrypting BigQuery data. |

### `EnrollDataSourcesRequest`

A request to enroll a set of data sources so they are visible in the BigQuery UI's `Transfer` tab.

| Property | Type | Description |
|----------|------|-------------|
| `dataSourceIds` | `array<string>` | Data sources that are enrolled. It is required to provide at least one data source id. |

### `EventDrivenSchedule`

Options customizing EventDriven transfers schedule.

| Property | Type | Description |
|----------|------|-------------|
| `pubsubSubscription` | `string` | Pub/Sub subscription name used to receive events. Only Google Cloud Storage data source support t... |

### `ListDataSourcesResponse`

Returns list of supported data sources and their metadata.

| Property | Type | Description |
|----------|------|-------------|
| `dataSources` | `array<DataSource>` | List of supported data sources and their transfer settings. |
| `nextPageToken` | `string` | Output only. The next-pagination token. For multiple-page list results, this token can be used as... |

### `ListLocationsResponse`

The response message for Locations.ListLocations.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<Location>` | A list of locations that matches the specified filter in the request. |
| `nextPageToken` | `string` | The standard List next-page token. |

### `ListTransferConfigsResponse`

The returned list of pipelines in the project.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Output only. The next-pagination token. For multiple-page list results, this token can be used as... |
| `transferConfigs` | `array<TransferConfig>` | Output only. The stored pipeline transfer configurations. |

### `ListTransferLogsResponse`

The returned list transfer run messages.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Output only. The next-pagination token. For multiple-page list results, this token can be used as... |
| `transferMessages` | `array<TransferMessage>` | Output only. The stored pipeline transfer messages. |

### `ListTransferRunsResponse`

The returned list of pipelines in the project.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Output only. The next-pagination token. For multiple-page list results, this token can be used as... |
| `transferRuns` | `array<TransferRun>` | Output only. The stored pipeline transfer runs. |

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `ManualSchedule`

Options customizing manual transfers schedule.

### `ScheduleOptions`

Options customizing the data transfer schedule.

| Property | Type | Description |
|----------|------|-------------|
| `disableAutoScheduling` | `boolean` | If true, automatic scheduling of data transfer runs for this configuration will be disabled. The ... |
| `endTime` | `string` | Defines time to stop scheduling transfer runs. A transfer run cannot be scheduled at or after the... |
| `startTime` | `string` | Specifies time to start scheduling transfer runs. The first run will be scheduled at or after the... |

### `ScheduleOptionsV2`

V2 options customizing different types of data transfer schedule. This field supports existing time-based and manual transfer schedule. Also supports Event-Driven transfer schedule. ScheduleOptionsV2 cannot be used together with ScheduleOptions/Schedule.

| Property | Type | Description |
|----------|------|-------------|
| `eventDrivenSchedule` | `EventDrivenSchedule` | Event driven transfer schedule options. If set, the transfer will be scheduled upon events arrial. |
| `manualSchedule` | `ManualSchedule` | Manual transfer schedule. If set, the transfer run will not be auto-scheduled by the system, unle... |
| `timeBasedSchedule` | `TimeBasedSchedule` | Time based transfer schedule options. This is the default schedule option. |

### `ScheduleTransferRunsRequest`

A request to schedule transfer runs for a time range.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | Required. End time of the range of transfer runs. For example, `"2017-05-30T00:00:00+00:00"`. |
| `startTime` | `string` | Required. Start time of the range of transfer runs. For example, `"2017-05-25T00:00:00+00:00"`. |

### `ScheduleTransferRunsResponse`

A response to schedule transfer runs for a time range.

| Property | Type | Description |
|----------|------|-------------|
| `runs` | `array<TransferRun>` | The transfer runs that were scheduled. |

### `StartManualTransferRunsRequest`

A request to start manual transfer runs.

| Property | Type | Description |
|----------|------|-------------|
| `requestedRunTime` | `string` | A run_time timestamp for historical data files or reports that are scheduled to be transferred by... |
| `requestedTimeRange` | `TimeRange` | A time_range start and end timestamp for historical data files or reports that are scheduled to b... |

### `StartManualTransferRunsResponse`

A response to start manual transfer runs.

| Property | Type | Description |
|----------|------|-------------|
| `runs` | `array<TransferRun>` | The transfer runs that were created. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `TimeBasedSchedule`

Options customizing the time based transfer schedule. Options are migrated from the original ScheduleOptions message.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | Defines time to stop scheduling transfer runs. A transfer run cannot be scheduled at or after the... |
| `schedule` | `string` | Data transfer schedule. If the data source does not support a custom schedule, this should be emp... |
| `startTime` | `string` | Specifies time to start scheduling transfer runs. The first run will be scheduled at or after the... |

### `TimeRange`

A specification for a time range, this will request transfer runs with run_time between start_time (inclusive) and end_time (exclusive).

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | End time of the range of transfer runs. For example, `"2017-05-30T00:00:00+00:00"`. The end_time ... |
| `startTime` | `string` | Start time of the range of transfer runs. For example, `"2017-05-25T00:00:00+00:00"`. The start_t... |

### `TransferConfig`

Represents a data transfer configuration. A transfer configuration contains all metadata needed to perform a data transfer. For example, `destination_dataset_id` specifies where data should be stored. When a new transfer configuration is created, the specified `destination_dataset_id` is created when needed and shared with the appropriate data source service account.

| Property | Type | Description |
|----------|------|-------------|
| `dataRefreshWindowDays` | `integer` | The number of days to look back to automatically refresh the data. For example, if `data_refresh_... |
| `dataSourceId` | `string` | Data source ID. This cannot be changed once data transfer is created. The full list of available ... |
| `datasetRegion` | `string` | Output only. Region in which BigQuery dataset is located. |
| `destinationDatasetId` | `string` | The BigQuery target dataset id. |
| `disabled` | `boolean` | Is this config disabled. When set to true, no runs will be scheduled for this transfer config. |
| `displayName` | `string` | User specified display name for the data transfer. |
| `emailPreferences` | `EmailPreferences` | Email notifications will be sent according to these preferences to the email address of the user ... |
| `encryptionConfiguration` | `EncryptionConfiguration` | The encryption configuration part. Currently, it is only used for the optional KMS key name. The ... |
| `error` | `Status` | Output only. Error code with detailed information about reason of the latest config failure. |
| `managedTableType` | `string` | The classification of the destination table. |
| `name` | `string` | Identifier. The resource name of the transfer config. Transfer config names have the form either ... |
| `nextRunTime` | `string` | Output only. Next time when data transfer will run. |
| `notificationPubsubTopic` | `string` | Pub/Sub topic where notifications will be sent after transfer runs associated with this transfer ... |
| `ownerInfo` | `UserInfo` | Output only. Information about the user whose credentials are used to transfer data. Populated on... |
| `params` | `object` | Parameters specific to each data source. For more information see the bq tab in the 'Setting up a... |
| `schedule` | `string` | Data transfer schedule. If the data source does not support a custom schedule, this should be emp... |
| `scheduleOptions` | `ScheduleOptions` | Options customizing the data transfer schedule. |
| `scheduleOptionsV2` | `ScheduleOptionsV2` | Options customizing different types of data transfer schedule. This field replaces "schedule" and... |
| `state` | `string` | Output only. State of the most recently updated transfer run. |
| `updateTime` | `string` | Output only. Data transfer modification time. Ignored by server on input. |
| `userId` | `string` | Deprecated. Unique ID of the user on whose behalf transfer is done. |

### `TransferMessage`

Represents a user facing message for a particular data transfer run.

| Property | Type | Description |
|----------|------|-------------|
| `messageText` | `string` | Message text. |
| `messageTime` | `string` | Time when message was logged. |
| `severity` | `string` | Message severity. |

### `TransferRun`

Represents a data transfer run.

| Property | Type | Description |
|----------|------|-------------|
| `dataSourceId` | `string` | Output only. Data source id. |
| `destinationDatasetId` | `string` | Output only. The BigQuery target dataset id. |
| `emailPreferences` | `EmailPreferences` | Output only. Email notifications will be sent according to these preferences to the email address... |
| `endTime` | `string` | Output only. Time when transfer run ended. Parameter ignored by server for input requests. |
| `errorStatus` | `Status` | Status of the transfer run. |
| `name` | `string` | Identifier. The resource name of the transfer run. Transfer run names have the form `projects/{pr... |
| `notificationPubsubTopic` | `string` | Output only. Pub/Sub topic where a notification will be sent after this transfer run finishes. Th... |
| `params` | `object` | Output only. Parameters specific to each data source. For more information see the bq tab in the ... |
| `runTime` | `string` | For batch transfer runs, specifies the date and time of the data should be ingested. |
| `schedule` | `string` | Output only. Describes the schedule of this transfer run if it was created as part of a regular s... |
| `scheduleTime` | `string` | Minimum time after which a transfer run can be started. |
| `startTime` | `string` | Output only. Time when transfer run was started. Parameter ignored by server for input requests. |
| `state` | `string` | Data transfer run state. Ignored for input requests. |
| `updateTime` | `string` | Output only. Last time the data transfer run state was updated. |
| `userId` | `string` | Deprecated. Unique ID of the user on whose behalf transfer is done. |

### `UnenrollDataSourcesRequest`

A request to unenroll a set of data sources so they are no longer visible in the BigQuery UI's `Transfer` tab.

| Property | Type | Description |
|----------|------|-------------|
| `dataSourceIds` | `array<string>` | Data sources that are unenrolled. It is required to provide at least one data source id. |

### `UserInfo`

Information about a user.

| Property | Type | Description |
|----------|------|-------------|
| `email` | `string` | E-mail address of the user. |

