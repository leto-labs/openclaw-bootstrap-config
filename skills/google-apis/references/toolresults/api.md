# Cloud Tool Results API - API Reference

**Version**: `v1beta3` | **Methods**: 29 | **Schemas**: 112

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `toolresults.projects.getSettings` | GET | `toolresults/v1beta3/projects/{projectId}/settings` | Gets the Tool Results settings for a project. May return any of the following canonical error cod... |
| `toolresults.projects.initializeSettings` | POST | `toolresults/v1beta3/projects/{projectId}:initializeSettings` | Creates resources for settings which have not yet been set. Currently, this creates a single reso... |
| `toolresults.projects.histories.create` | POST | `toolresults/v1beta3/projects/{projectId}/histories` | Creates a History. The returned History will have the id set. May return any of the following can... |
| `toolresults.projects.histories.get` | GET | `toolresults/v1beta3/projects/{projectId}/histories/{historyId}` | Gets a History. May return any of the following canonical error codes: - PERMISSION_DENIED - if t... |
| `toolresults.projects.histories.list` | GET | `toolresults/v1beta3/projects/{projectId}/histories` | Lists Histories for a given Project. The histories are sorted by modification time in descending ... |
| `toolresults.projects.histories.executions.create` | POST | `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions` | Creates an Execution. The returned Execution will have the id set. May return any of the followin... |
| `toolresults.projects.histories.executions.list` | GET | `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions` | Lists Executions for a given History. The executions are sorted by creation_time in descending or... |
| `toolresults.projects.histories.executions.get` | GET | `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}` | Gets an Execution. May return any of the following canonical error codes: - PERMISSION_DENIED - i... |
| `toolresults.projects.histories.executions.patch` | PATCH | `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}` | Updates an existing Execution with the supplied partial entity. May return any of the following c... |
| `toolresults.projects.histories.executions.steps.accessibilityClusters` | GET | `toolresults/v1beta3/{+name}:accessibilityClusters` | Lists accessibility clusters for a given Step May return any of the following canonical error cod... |
| `toolresults.projects.histories.executions.steps.create` | POST | `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}/steps` | Creates a Step. The returned Step will have the id set. May return any of the following canonical... |
| `toolresults.projects.histories.executions.steps.get` | GET | `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}/steps/{stepId}` | Gets a Step. May return any of the following canonical error codes: - PERMISSION_DENIED - if the ... |
| `toolresults.projects.histories.executions.steps.list` | GET | `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}/steps` | Lists Steps for a given Execution. The steps are sorted by creation_time in descending order. The... |
| `toolresults.projects.histories.executions.steps.patch` | PATCH | `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}/steps/{stepId}` | Updates an existing Step with the supplied partial entity. May return any of the following canoni... |
| `toolresults.projects.histories.executions.steps.publishXunitXmlFiles` | POST | `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}/steps/{stepId}:publishXunitXmlFiles` | Publish xml files to an existing Step. May return any of the following canonical error codes: - P... |
| `toolresults.projects.histories.executions.steps.getPerfMetricsSummary` | GET | `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}/steps/{stepId}/perfMetricsSummary` | Retrieves a PerfMetricsSummary. May return any of the following error code(s): - NOT_FOUND - The ... |
| `toolresults.projects.histories.executions.steps.testCases.get` | GET | `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}/steps/{stepId}/testCases/{testCaseId}` | Gets details of a Test Case for a Step. Experimental test cases API. Still in active development.... |
| `toolresults.projects.histories.executions.steps.testCases.list` | GET | `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}/steps/{stepId}/testCases` | Lists Test Cases attached to a Step. Experimental test cases API. Still in active development. Ma... |
| `toolresults.projects.histories.executions.steps.thumbnails.list` | GET | `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}/steps/{stepId}/thumbnails` | Lists thumbnails of images attached to a step. May return any of the following canonical error co... |
| `toolresults.projects.histories.executions.steps.perfMetricsSummary.create` | POST | `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}/steps/{stepId}/perfMetricsSummary` | Creates a PerfMetricsSummary resource. Returns the existing one if it has already been created. M... |
| `toolresults.projects.histories.executions.steps.perfSampleSeries.create` | POST | `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}/steps/{stepId}/perfSampleSeries` | Creates a PerfSampleSeries. May return any of the following error code(s): - ALREADY_EXISTS - Per... |
| `toolresults.projects.histories.executions.steps.perfSampleSeries.get` | GET | `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}/steps/{stepId}/perfSampleSeries/{sampleSeriesId}` | Gets a PerfSampleSeries. May return any of the following error code(s): - NOT_FOUND - The specifi... |
| `toolresults.projects.histories.executions.steps.perfSampleSeries.list` | GET | `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}/steps/{stepId}/perfSampleSeries` | Lists PerfSampleSeries for a given Step. The request provides an optional filter which specifies ... |
| `toolresults.projects.histories.executions.steps.perfSampleSeries.samples.batchCreate` | POST | `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}/steps/{stepId}/perfSampleSeries/{sampleSeriesId}/samples:batchCreate` | Creates a batch of PerfSamples - a client can submit multiple batches of Perf Samples through rep... |
| `toolresults.projects.histories.executions.steps.perfSampleSeries.samples.list` | GET | `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}/steps/{stepId}/perfSampleSeries/{sampleSeriesId}/samples` | Lists the Performance Samples of a given Sample Series - The list results are sorted by timestamp... |
| `toolresults.projects.histories.executions.clusters.get` | GET | `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}/clusters/{clusterId}` | Retrieves a single screenshot cluster by its ID |
| `toolresults.projects.histories.executions.clusters.list` | GET | `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}/clusters` | Lists Screenshot Clusters Returns the list of screenshot clusters corresponding to an execution. ... |
| `toolresults.projects.histories.executions.environments.get` | GET | `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}/environments/{environmentId}` | Gets an Environment. May return any of the following canonical error codes: - PERMISSION_DENIED -... |
| `toolresults.projects.histories.executions.environments.list` | GET | `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}/environments` | Lists Environments for a given Execution. The Environments are sorted by display name. May return... |

### `toolresults.projects.getSettings`

**GET** `toolresults/v1beta3/projects/{projectId}/settings`

Gets the Tool Results settings for a project. May return any of the following canonical error codes: - PERMISSION_DENIED - if the user is not authorized to read from project

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | A Project id. Required. |

**Response**: `ProjectSettings`

```typescript
const res = await toolresults.projects.getSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `toolresults.projects.initializeSettings`

**POST** `toolresults/v1beta3/projects/{projectId}:initializeSettings`

Creates resources for settings which have not yet been set. Currently, this creates a single resource: a Google Cloud Storage bucket, to be used as the default bucket for this project. The bucket is created in an FTL-own storage project. Except for in rare cases, calling this method in parallel from multiple clients will only create a single bucket. In order to avoid unnecessary storage charges, the bucket is configured to automatically delete objects older than 90 days. The bucket is created with the following permissions: - Owner access for owners of central storage project (FTL-owned) - Writer access for owners/editors of customer project - Reader access for viewers of customer project The default ACL on objects created in the bucket is: - Owner access for owners of central storage project - Reader access for owners/editors/viewers of customer project See Google Cloud Storage documentation for more details. If there is already a default bucket set and the project can access the bucket, this call does nothing. However, if the project doesn't have the permission to access the bucket or the bucket is deleted, a new bucket will be created. May return any canonical error codes, including the following: - PERMISSION_DENIED - if the user is not authorized to write to project - Any error code raised by Google Cloud Storage

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | A Project id. Required. |

**Response**: `ProjectSettings`

```typescript
const res = await toolresults.projects.initializeSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `toolresults.projects.histories.create`

**POST** `toolresults/v1beta3/projects/{projectId}/histories`

Creates a History. The returned History will have the id set. May return any of the following canonical error codes: - PERMISSION_DENIED - if the user is not authorized to write to project - INVALID_ARGUMENT - if the request is malformed - NOT_FOUND - if the containing project does not exist

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | A Project id. Required. |
| `requestId` | `string` | query | No | A unique request ID for server to detect duplicated requests. For example, a UUID. Optional, but strongly recommended. |

**Request body**: `History`

**Response**: `History`

```typescript
const res = await toolresults.histories.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `toolresults.projects.histories.get`

**GET** `toolresults/v1beta3/projects/{projectId}/histories/{historyId}`

Gets a History. May return any of the following canonical error codes: - PERMISSION_DENIED - if the user is not authorized to read project - INVALID_ARGUMENT - if the request is malformed - NOT_FOUND - if the History does not exist

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | A Project id. Required. |
| `historyId` | `string` | path | Yes | A History id. Required. |

**Response**: `History`

```typescript
const res = await toolresults.histories.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `toolresults.projects.histories.list`

**GET** `toolresults/v1beta3/projects/{projectId}/histories`

Lists Histories for a given Project. The histories are sorted by modification time in descending order. The history_id key will be used to order the history with the same modification time. May return any of the following canonical error codes: - PERMISSION_DENIED - if the user is not authorized to read project - INVALID_ARGUMENT - if the request is malformed - NOT_FOUND - if the History does not exist

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | A Project id. Required. |
| `filterByName` | `string` | query | No | If set, only return histories with the given name. Optional. |
| `pageSize` | `integer` | query | No | The maximum number of Histories to fetch. Default value: 20. The server will use this default if the field is not set... |
| `pageToken` | `string` | query | No | A continuation token to resume the query at the next item. Optional. |

**Response**: `ListHistoriesResponse`

```typescript
const res = await toolresults.histories.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `toolresults.projects.histories.executions.create`

**POST** `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions`

Creates an Execution. The returned Execution will have the id set. May return any of the following canonical error codes: - PERMISSION_DENIED - if the user is not authorized to write to project - INVALID_ARGUMENT - if the request is malformed - NOT_FOUND - if the containing History does not exist

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | A Project id. Required. |
| `historyId` | `string` | path | Yes | A History id. Required. |
| `requestId` | `string` | query | No | A unique request ID for server to detect duplicated requests. For example, a UUID. Optional, but strongly recommended. |

**Request body**: `Execution`

**Response**: `Execution`

```typescript
const res = await toolresults.executions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `toolresults.projects.histories.executions.list`

**GET** `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions`

Lists Executions for a given History. The executions are sorted by creation_time in descending order. The execution_id key will be used to order the executions with the same creation_time. May return any of the following canonical error codes: - PERMISSION_DENIED - if the user is not authorized to read project - INVALID_ARGUMENT - if the request is malformed - NOT_FOUND - if the containing History does not exist

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | A Project id. Required. |
| `historyId` | `string` | path | Yes | A History id. Required. |
| `pageSize` | `integer` | query | No | The maximum number of Executions to fetch. Default value: 25. The server will use this default if the field is not se... |
| `pageToken` | `string` | query | No | A continuation token to resume the query at the next item. Optional. |

**Response**: `ListExecutionsResponse`

```typescript
const res = await toolresults.executions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `toolresults.projects.histories.executions.get`

**GET** `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}`

Gets an Execution. May return any of the following canonical error codes: - PERMISSION_DENIED - if the user is not authorized to write to project - INVALID_ARGUMENT - if the request is malformed - NOT_FOUND - if the Execution does not exist

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | A Project id. Required. |
| `historyId` | `string` | path | Yes | A History id. Required. |
| `executionId` | `string` | path | Yes | An Execution id. Required. |

**Response**: `Execution`

```typescript
const res = await toolresults.executions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `toolresults.projects.histories.executions.patch`

**PATCH** `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}`

Updates an existing Execution with the supplied partial entity. May return any of the following canonical error codes: - PERMISSION_DENIED - if the user is not authorized to write to project - INVALID_ARGUMENT - if the request is malformed - FAILED_PRECONDITION - if the requested state transition is illegal - NOT_FOUND - if the containing History does not exist

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | A Project id. Required. |
| `historyId` | `string` | path | Yes | Required. |
| `executionId` | `string` | path | Yes | Required. |
| `requestId` | `string` | query | No | A unique request ID for server to detect duplicated requests. For example, a UUID. Optional, but strongly recommended. |

**Request body**: `Execution`

**Response**: `Execution`

```typescript
const res = await toolresults.executions.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `toolresults.projects.histories.executions.steps.accessibilityClusters`

**GET** `toolresults/v1beta3/{+name}:accessibilityClusters`

Lists accessibility clusters for a given Step May return any of the following canonical error codes: - PERMISSION_DENIED - if the user is not authorized to read project - INVALID_ARGUMENT - if the request is malformed - FAILED_PRECONDITION - if an argument in the request happens to be invalid; e.g. if the locale format is incorrect - NOT_FOUND - if the containing Step does not exist

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | A full resource name of the step. For example, projects/my-project/histories/bh.1234567890abcdef/executions/ 12345678... |
| `locale` | `string` | query | No | The accepted format is the canonical Unicode format with hyphen as a delimiter. Language must be lowercase, Language ... |

**Response**: `ListStepAccessibilityClustersResponse`

```typescript
const res = await toolresults.steps.accessibilityClusters({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `toolresults.projects.histories.executions.steps.create`

**POST** `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}/steps`

Creates a Step. The returned Step will have the id set. May return any of the following canonical error codes: - PERMISSION_DENIED - if the user is not authorized to write to project - INVALID_ARGUMENT - if the request is malformed - FAILED_PRECONDITION - if the step is too large (more than 10Mib) - NOT_FOUND - if the containing Execution does not exist

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. A Project id. |
| `historyId` | `string` | path | Yes | Required. A History id. |
| `executionId` | `string` | path | Yes | Required. An Execution id. |
| `requestId` | `string` | query | No | A unique request ID for server to detect duplicated requests. For example, a UUID. Optional, but strongly recommended. |

**Request body**: `Step`

**Response**: `Step`

```typescript
const res = await toolresults.steps.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `toolresults.projects.histories.executions.steps.get`

**GET** `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}/steps/{stepId}`

Gets a Step. May return any of the following canonical error codes: - PERMISSION_DENIED - if the user is not authorized to read project - INVALID_ARGUMENT - if the request is malformed - NOT_FOUND - if the Step does not exist

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | A Project id. Required. |
| `historyId` | `string` | path | Yes | A History id. Required. |
| `executionId` | `string` | path | Yes | A Execution id. Required. |
| `stepId` | `string` | path | Yes | A Step id. Required. |

**Response**: `Step`

```typescript
const res = await toolresults.steps.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `toolresults.projects.histories.executions.steps.list`

**GET** `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}/steps`

Lists Steps for a given Execution. The steps are sorted by creation_time in descending order. The step_id key will be used to order the steps with the same creation_time. May return any of the following canonical error codes: - PERMISSION_DENIED - if the user is not authorized to read project - INVALID_ARGUMENT - if the request is malformed - FAILED_PRECONDITION - if an argument in the request happens to be invalid; e.g. if an attempt is made to list the children of a nonexistent Step - NOT_FOUND - if the containing Execution does not exist

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | A Project id. Required. |
| `historyId` | `string` | path | Yes | A History id. Required. |
| `executionId` | `string` | path | Yes | A Execution id. Required. |
| `pageSize` | `integer` | query | No | The maximum number of Steps to fetch. Default value: 25. The server will use this default if the field is not set or ... |
| `pageToken` | `string` | query | No | A continuation token to resume the query at the next item. Optional. |

**Response**: `ListStepsResponse`

```typescript
const res = await toolresults.steps.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `toolresults.projects.histories.executions.steps.patch`

**PATCH** `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}/steps/{stepId}`

Updates an existing Step with the supplied partial entity. May return any of the following canonical error codes: - PERMISSION_DENIED - if the user is not authorized to write project - INVALID_ARGUMENT - if the request is malformed - FAILED_PRECONDITION - if the requested state transition is illegal (e.g try to upload a duplicate xml file), if the updated step is too large (more than 10Mib) - NOT_FOUND - if the containing Execution does not exist

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | A Project id. Required. |
| `historyId` | `string` | path | Yes | A History id. Required. |
| `executionId` | `string` | path | Yes | A Execution id. Required. |
| `stepId` | `string` | path | Yes | A Step id. Required. |
| `requestId` | `string` | query | No | A unique request ID for server to detect duplicated requests. For example, a UUID. Optional, but strongly recommended. |

**Request body**: `Step`

**Response**: `Step`

```typescript
const res = await toolresults.steps.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `toolresults.projects.histories.executions.steps.publishXunitXmlFiles`

**POST** `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}/steps/{stepId}:publishXunitXmlFiles`

Publish xml files to an existing Step. May return any of the following canonical error codes: - PERMISSION_DENIED - if the user is not authorized to write project - INVALID_ARGUMENT - if the request is malformed - FAILED_PRECONDITION - if the requested state transition is illegal, e.g. try to upload a duplicate xml file or a file too large. - NOT_FOUND - if the containing Execution does not exist

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | A Project id. Required. |
| `historyId` | `string` | path | Yes | A History id. Required. |
| `executionId` | `string` | path | Yes | A Execution id. Required. |
| `stepId` | `string` | path | Yes | A Step id. Note: This step must include a TestExecutionStep. Required. |

**Request body**: `PublishXunitXmlFilesRequest`

**Response**: `Step`

```typescript
const res = await toolresults.steps.publishXunitXmlFiles({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `toolresults.projects.histories.executions.steps.getPerfMetricsSummary`

**GET** `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}/steps/{stepId}/perfMetricsSummary`

Retrieves a PerfMetricsSummary. May return any of the following error code(s): - NOT_FOUND - The specified PerfMetricsSummary does not exist

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | The cloud project |
| `historyId` | `string` | path | Yes | A tool results history ID. |
| `executionId` | `string` | path | Yes | A tool results execution ID. |
| `stepId` | `string` | path | Yes | A tool results step ID. |

**Response**: `PerfMetricsSummary`

```typescript
const res = await toolresults.steps.getPerfMetricsSummary({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `toolresults.projects.histories.executions.steps.testCases.get`

**GET** `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}/steps/{stepId}/testCases/{testCaseId}`

Gets details of a Test Case for a Step. Experimental test cases API. Still in active development. May return any of the following canonical error codes: - PERMISSION_DENIED - if the user is not authorized to write to project - INVALID_ARGUMENT - if the request is malformed - NOT_FOUND - if the containing Test Case does not exist

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | A Project id. Required. |
| `historyId` | `string` | path | Yes | A History id. Required. |
| `executionId` | `string` | path | Yes | A Execution id Required. |
| `stepId` | `string` | path | Yes | A Step id. Note: This step must include a TestExecutionStep. Required. |
| `testCaseId` | `string` | path | Yes | A Test Case id. Required. |

**Response**: `TestCase`

```typescript
const res = await toolresults.testCases.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `toolresults.projects.histories.executions.steps.testCases.list`

**GET** `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}/steps/{stepId}/testCases`

Lists Test Cases attached to a Step. Experimental test cases API. Still in active development. May return any of the following canonical error codes: - PERMISSION_DENIED - if the user is not authorized to write to project - INVALID_ARGUMENT - if the request is malformed - NOT_FOUND - if the containing Step does not exist

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | A Project id. Required. |
| `historyId` | `string` | path | Yes | A History id. Required. |
| `executionId` | `string` | path | Yes | A Execution id Required. |
| `stepId` | `string` | path | Yes | A Step id. Note: This step must include a TestExecutionStep. Required. |
| `pageSize` | `integer` | query | No | The maximum number of TestCases to fetch. Default value: 100. The server will use this default if the field is not se... |
| `pageToken` | `string` | query | No | A continuation token to resume the query at the next item. Optional. |

**Response**: `ListTestCasesResponse`

```typescript
const res = await toolresults.testCases.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `toolresults.projects.histories.executions.steps.thumbnails.list`

**GET** `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}/steps/{stepId}/thumbnails`

Lists thumbnails of images attached to a step. May return any of the following canonical error codes: - PERMISSION_DENIED - if the user is not authorized to read from the project, or from any of the images - INVALID_ARGUMENT - if the request is malformed - NOT_FOUND - if the step does not exist, or if any of the images do not exist

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | A Project id. Required. |
| `historyId` | `string` | path | Yes | A History id. Required. |
| `executionId` | `string` | path | Yes | An Execution id. Required. |
| `stepId` | `string` | path | Yes | A Step id. Required. |
| `pageSize` | `integer` | query | No | The maximum number of thumbnails to fetch. Default value: 50. The server will use this default if the field is not se... |
| `pageToken` | `string` | query | No | A continuation token to resume the query at the next item. Optional. |

**Response**: `ListStepThumbnailsResponse`

```typescript
const res = await toolresults.thumbnails.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `toolresults.projects.histories.executions.steps.perfMetricsSummary.create`

**POST** `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}/steps/{stepId}/perfMetricsSummary`

Creates a PerfMetricsSummary resource. Returns the existing one if it has already been created. May return any of the following error code(s): - NOT_FOUND - The containing Step does not exist

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | The cloud project |
| `historyId` | `string` | path | Yes | A tool results history ID. |
| `executionId` | `string` | path | Yes | A tool results execution ID. |
| `stepId` | `string` | path | Yes | A tool results step ID. |

**Request body**: `PerfMetricsSummary`

**Response**: `PerfMetricsSummary`

```typescript
const res = await toolresults.perfMetricsSummary.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `toolresults.projects.histories.executions.steps.perfSampleSeries.create`

**POST** `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}/steps/{stepId}/perfSampleSeries`

Creates a PerfSampleSeries. May return any of the following error code(s): - ALREADY_EXISTS - PerfMetricSummary already exists for the given Step - NOT_FOUND - The containing Step does not exist

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | The cloud project |
| `historyId` | `string` | path | Yes | A tool results history ID. |
| `executionId` | `string` | path | Yes | A tool results execution ID. |
| `stepId` | `string` | path | Yes | A tool results step ID. |

**Request body**: `PerfSampleSeries`

**Response**: `PerfSampleSeries`

```typescript
const res = await toolresults.perfSampleSeries.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `toolresults.projects.histories.executions.steps.perfSampleSeries.get`

**GET** `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}/steps/{stepId}/perfSampleSeries/{sampleSeriesId}`

Gets a PerfSampleSeries. May return any of the following error code(s): - NOT_FOUND - The specified PerfSampleSeries does not exist

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | The cloud project |
| `historyId` | `string` | path | Yes | A tool results history ID. |
| `executionId` | `string` | path | Yes | A tool results execution ID. |
| `stepId` | `string` | path | Yes | A tool results step ID. |
| `sampleSeriesId` | `string` | path | Yes | A sample series id |

**Response**: `PerfSampleSeries`

```typescript
const res = await toolresults.perfSampleSeries.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `toolresults.projects.histories.executions.steps.perfSampleSeries.list`

**GET** `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}/steps/{stepId}/perfSampleSeries`

Lists PerfSampleSeries for a given Step. The request provides an optional filter which specifies one or more PerfMetricsType to include in the result; if none returns all. The resulting PerfSampleSeries are sorted by ids. May return any of the following canonical error codes: - NOT_FOUND - The containing Step does not exist

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | The cloud project |
| `historyId` | `string` | path | Yes | A tool results history ID. |
| `executionId` | `string` | path | Yes | A tool results execution ID. |
| `stepId` | `string` | path | Yes | A tool results step ID. |
| `filter` | `string` | query | No | Specify one or more PerfMetricType values such as CPU to filter the result |

**Response**: `ListPerfSampleSeriesResponse`

```typescript
const res = await toolresults.perfSampleSeries.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `toolresults.projects.histories.executions.steps.perfSampleSeries.samples.batchCreate`

**POST** `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}/steps/{stepId}/perfSampleSeries/{sampleSeriesId}/samples:batchCreate`

Creates a batch of PerfSamples - a client can submit multiple batches of Perf Samples through repeated calls to this method in order to split up a large request payload - duplicates and existing timestamp entries will be ignored. - the batch operation may partially succeed - the set of elements successfully inserted is returned in the response (omits items which already existed in the database). May return any of the following canonical error codes: - NOT_FOUND - The containing PerfSampleSeries does not exist

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | The cloud project |
| `historyId` | `string` | path | Yes | A tool results history ID. |
| `executionId` | `string` | path | Yes | A tool results execution ID. |
| `stepId` | `string` | path | Yes | A tool results step ID. |
| `sampleSeriesId` | `string` | path | Yes | A sample series id |

**Request body**: `BatchCreatePerfSamplesRequest`

**Response**: `BatchCreatePerfSamplesResponse`

```typescript
const res = await toolresults.samples.batchCreate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `toolresults.projects.histories.executions.steps.perfSampleSeries.samples.list`

**GET** `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}/steps/{stepId}/perfSampleSeries/{sampleSeriesId}/samples`

Lists the Performance Samples of a given Sample Series - The list results are sorted by timestamps ascending - The default page size is 500 samples; and maximum size allowed 5000 - The response token indicates the last returned PerfSample timestamp - When the results size exceeds the page size, submit a subsequent request including the page token to return the rest of the samples up to the page limit May return any of the following canonical error codes: - OUT_OF_RANGE - The specified request page_token is out of valid range - NOT_FOUND - The containing PerfSampleSeries does not exist

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | The cloud project |
| `historyId` | `string` | path | Yes | A tool results history ID. |
| `executionId` | `string` | path | Yes | A tool results execution ID. |
| `stepId` | `string` | path | Yes | A tool results step ID. |
| `sampleSeriesId` | `string` | path | Yes | A sample series id |
| `pageSize` | `integer` | query | No | The default page size is 500 samples, and the maximum size is 5000. If the page_size is greater than 5000, the effect... |
| `pageToken` | `string` | query | No | Optional, the next_page_token returned in the previous response |

**Response**: `ListPerfSamplesResponse`

```typescript
const res = await toolresults.samples.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `toolresults.projects.histories.executions.clusters.get`

**GET** `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}/clusters/{clusterId}`

Retrieves a single screenshot cluster by its ID

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | A Project id. Required. |
| `historyId` | `string` | path | Yes | A History id. Required. |
| `executionId` | `string` | path | Yes | An Execution id. Required. |
| `clusterId` | `string` | path | Yes | A Cluster id Required. |

**Response**: `ScreenshotCluster`

```typescript
const res = await toolresults.clusters.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `toolresults.projects.histories.executions.clusters.list`

**GET** `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}/clusters`

Lists Screenshot Clusters Returns the list of screenshot clusters corresponding to an execution. Screenshot clusters are created after the execution is finished. Clusters are created from a set of screenshots. Between any two screenshots, a matching score is calculated based off their metadata that determines how similar they are. Screenshots are placed in the cluster that has screens which have the highest matching scores.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | A Project id. Required. |
| `historyId` | `string` | path | Yes | A History id. Required. |
| `executionId` | `string` | path | Yes | An Execution id. Required. |

**Response**: `ListScreenshotClustersResponse`

```typescript
const res = await toolresults.clusters.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `toolresults.projects.histories.executions.environments.get`

**GET** `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}/environments/{environmentId}`

Gets an Environment. May return any of the following canonical error codes: - PERMISSION_DENIED - if the user is not authorized to read project - INVALID_ARGUMENT - if the request is malformed - NOT_FOUND - if the Environment does not exist

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. A Project id. |
| `historyId` | `string` | path | Yes | Required. A History id. |
| `executionId` | `string` | path | Yes | Required. An Execution id. |
| `environmentId` | `string` | path | Yes | Required. An Environment id. |

**Response**: `Environment`

```typescript
const res = await toolresults.environments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `toolresults.projects.histories.executions.environments.list`

**GET** `toolresults/v1beta3/projects/{projectId}/histories/{historyId}/executions/{executionId}/environments`

Lists Environments for a given Execution. The Environments are sorted by display name. May return any of the following canonical error codes: - PERMISSION_DENIED - if the user is not authorized to read project - INVALID_ARGUMENT - if the request is malformed - NOT_FOUND - if the containing Execution does not exist

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. A Project id. |
| `historyId` | `string` | path | Yes | Required. A History id. |
| `executionId` | `string` | path | Yes | Required. An Execution id. |
| `pageSize` | `integer` | query | No | The maximum number of Environments to fetch. Default value: 25. The server will use this default if the field is not ... |
| `pageToken` | `string` | query | No | A continuation token to resume the query at the next item. |

**Response**: `ListEnvironmentsResponse`

```typescript
const res = await toolresults.environments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `ANR`

Additional details for an ANR crash.

| Property | Type | Description |
|----------|------|-------------|
| `stackTrace` | `StackTrace` | The stack trace of the ANR crash. Optional. |

### `AndroidAppInfo`

Android app information.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name of the app. Optional |
| `packageName` | `string` | The package name of the app. Required. |
| `versionCode` | `string` | The internal version code of the app. Optional. |
| `versionName` | `string` | The version name of the app. Optional. |

### `AndroidInstrumentationTest`

A test of an Android application that can control an Android component independently of its normal lifecycle. See for more information on types of Android tests.

| Property | Type | Description |
|----------|------|-------------|
| `testPackageId` | `string` | The java package for the test to be executed. Required |
| `testRunnerClass` | `string` | The InstrumentationTestRunner class. Required |
| `testTargets` | `array<string>` | Each target must be fully qualified with the package name or class name, in one of these formats:... |
| `useOrchestrator` | `boolean` | The flag indicates whether Android Test Orchestrator will be used to run test or not. |

### `AndroidRoboTest`

A test of an android application that explores the application on a virtual or physical Android device, finding culprits and crashes as it goes.

| Property | Type | Description |
|----------|------|-------------|
| `appInitialActivity` | `string` | The initial activity that should be used to start the app. Optional |
| `bootstrapPackageId` | `string` | The java package for the bootstrap. Optional |
| `bootstrapRunnerClass` | `string` | The runner class for the bootstrap. Optional |
| `maxDepth` | `integer` | The max depth of the traversal stack Robo can explore. Optional |
| `maxSteps` | `integer` | The max number of steps/actions Robo can execute. Default is no limit (0). Optional |

### `AndroidTest`

An Android mobile test specification.

| Property | Type | Description |
|----------|------|-------------|
| `androidAppInfo` | `AndroidAppInfo` | Information about the application under test. |
| `androidInstrumentationTest` | `AndroidInstrumentationTest` | An Android instrumentation test. |
| `androidRoboTest` | `AndroidRoboTest` | An Android robo test. |
| `androidTestLoop` | `AndroidTestLoop` | An Android test loop. |
| `testTimeout` | `Duration` | Max time a test is allowed to run before it is automatically cancelled. |

### `AndroidTestLoop`

Test Loops are tests that can be launched by the app itself, determining when to run by listening for an intent.

### `Any`

`Any` contains an arbitrary serialized protocol buffer message along with a URL that describes the type of the serialized message. Protobuf library provides support to pack/unpack Any values in the form of utility functions or additional generated methods of the Any type. Example 1: Pack and unpack a message in C++. Foo foo = ...; Any any; any.PackFrom(foo); ... if (any.UnpackTo(&foo)) { ... } Example 2: Pack and unpack a message in Java. Foo foo = ...; Any any = Any.pack(foo); ... if (any.is(Foo.class)) { foo = any.unpack(Foo.class); } Example 3: Pack and unpack a message in Python. foo = Foo(...) any = Any() any.Pack(foo) ... if any.Is(Foo.DESCRIPTOR): any.Unpack(foo) ... Example 4: Pack and unpack a message in Go foo := &pb.Foo{...} any, err := ptypes.MarshalAny(foo) ... foo := &pb.Foo{} if err := ptypes.UnmarshalAny(any, foo); err != nil { ... } The pack methods provided by protobuf library will by default use 'type.googleapis.com/full.type.name' as the type URL and the unpack methods only use the fully qualified type name after the last '/' in the type URL, for example "foo.bar.com/x/y.z" will yield type name "y.z". # JSON The JSON representation of an `Any` value uses the regular representation of the deserialized, embedded message, with an additional field `@type` which contains the type URL. Example: package google.profile; message Person { string first_name = 1; string last_name = 2; } { "@type": "type.googleapis.com/google.profile.Person", "firstName": , "lastName": } If the embedded message type is well-known and has a custom JSON representation, that representation will be embedded adding a field `value` which holds the custom JSON in addition to the `@type` field. Example (for message google.protobuf.Duration): { "@type": "type.googleapis.com/google.protobuf.Duration", "value": "1.212s" }

| Property | Type | Description |
|----------|------|-------------|
| `typeUrl` | `string` | A URL/resource name that uniquely identifies the type of the serialized protocol buffer message. ... |
| `value` | `string` | Must be a valid serialized protocol buffer of the above specified type. |

### `AppStartTime`

| Property | Type | Description |
|----------|------|-------------|
| `fullyDrawnTime` | `Duration` | Optional. The time from app start to reaching the developer-reported "fully drawn" time. This is ... |
| `initialDisplayTime` | `Duration` | The time from app start to the first displayed activity being drawn, as reported in Logcat. See h... |

### `AssetIssue`

There was an issue with the assets in this test.

### `AvailableDeepLinks`

A suggestion to use deep links for a Robo run.

### `BasicPerfSampleSeries`

Encapsulates the metadata for basic sample series represented by a line chart

| Property | Type | Description |
|----------|------|-------------|
| `perfMetricType` | `string` |  |
| `perfUnit` | `string` |  |
| `sampleSeriesLabel` | `string` |  |

### `BatchCreatePerfSamplesRequest`

The request must provide up to a maximum of 5000 samples to be created; a larger sample size will cause an INVALID_ARGUMENT error

| Property | Type | Description |
|----------|------|-------------|
| `perfSamples` | `array<PerfSample>` | The set of PerfSamples to create should not include existing timestamps |

### `BatchCreatePerfSamplesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `perfSamples` | `array<PerfSample>` |  |

### `BlankScreen`

A warning that Robo encountered a screen that was mostly blank; this may indicate a problem with the app.

| Property | Type | Description |
|----------|------|-------------|
| `screenId` | `string` | The screen id of the element |

### `CPUInfo`

| Property | Type | Description |
|----------|------|-------------|
| `cpuProcessor` | `string` | description of the device processor ie '1.8 GHz hexa core 64-bit ARMv8-A' |
| `cpuSpeedInGhz` | `number` | the CPU clock speed in GHz |
| `numberOfCores` | `integer` | the number of CPU cores |

### `CrashDialogError`

Crash dialog was detected during the test execution

| Property | Type | Description |
|----------|------|-------------|
| `crashPackage` | `string` | The name of the package that caused the dialog. |

### `DetectedAppSplashScreen`

A notification that Robo detected a splash screen provided by app (vs. Android OS splash screen).

### `DeviceOutOfMemory`

A warning that device ran out of memory

### `Duration`

A Duration represents a signed, fixed-length span of time represented as a count of seconds and fractions of seconds at nanosecond resolution. It is independent of any calendar and concepts like "day" or "month". It is related to Timestamp in that the difference between two Timestamp values is a Duration and it can be added or subtracted from a Timestamp. Range is approximately +-10,000 years.

| Property | Type | Description |
|----------|------|-------------|
| `nanos` | `integer` | Signed fractions of a second at nanosecond resolution of the span of time. Durations less than on... |
| `seconds` | `string` | Signed seconds of the span of time. Must be from -315,576,000,000 to +315,576,000,000 inclusive. ... |

### `EncounteredLoginScreen`

Additional details about encountered login screens.

| Property | Type | Description |
|----------|------|-------------|
| `distinctScreens` | `integer` | Number of encountered distinct login screens. |
| `screenIds` | `array<string>` | Subset of login screens. |

### `EncounteredNonAndroidUiWidgetScreen`

Additional details about encountered screens with elements that are not Android UI widgets.

| Property | Type | Description |
|----------|------|-------------|
| `distinctScreens` | `integer` | Number of encountered distinct screens with non Android UI widgets. |
| `screenIds` | `array<string>` | Subset of screens which contain non Android UI widgets. |

### `Environment`

An Environment represents the set of test runs (Steps) from the parent Execution that are configured with the same set of dimensions (Model, Version, Locale, and Orientation). Multiple such runs occur particularly because of features like sharding (splitting up a test suite to run in parallel across devices) and reruns (running a test multiple times to check for different outcomes).

| Property | Type | Description |
|----------|------|-------------|
| `completionTime` | `Timestamp` | Output only. The time when the Environment status was set to complete. This value will be set aut... |
| `creationTime` | `Timestamp` | Output only. The time when the Environment was created. |
| `dimensionValue` | `array<EnvironmentDimensionValueEntry>` | Dimension values describing the environment. Dimension values always consist of "Model", "Version... |
| `displayName` | `string` | A short human-readable name to display in the UI. Maximum of 100 characters. For example: Nexus 5... |
| `environmentId` | `string` | Output only. An Environment id. |
| `environmentResult` | `MergedResult` | Merged result of the environment. |
| `executionId` | `string` | Output only. An Execution id. |
| `historyId` | `string` | Output only. A History id. |
| `projectId` | `string` | Output only. A Project id. |
| `resultsStorage` | `ResultsStorage` | The location where output files are stored in the user bucket. |
| `shardSummaries` | `array<ShardSummary>` | Output only. Summaries of shards. Only one shard will present unless sharding feature is enabled ... |

### `EnvironmentDimensionValueEntry`

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` |  |
| `value` | `string` |  |

### `Execution`

An Execution represents a collection of Steps. For instance, it could represent: - a mobile test executed across a range of device configurations - a jenkins job with a build step followed by a test step The maximum size of an execution message is 1 MiB. An Execution can be updated until its state is set to COMPLETE at which point it becomes immutable.

| Property | Type | Description |
|----------|------|-------------|
| `completionTime` | `Timestamp` | The time when the Execution status transitioned to COMPLETE. This value will be set automatically... |
| `creationTime` | `Timestamp` | The time when the Execution was created. This value will be set automatically when CreateExecutio... |
| `dimensionDefinitions` | `array<MatrixDimensionDefinition>` | The dimensions along which different steps in this execution may vary. This must remain fixed ove... |
| `executionId` | `string` | A unique identifier within a History for this Execution. Returns INVALID_ARGUMENT if this field i... |
| `outcome` | `Outcome` | Classify the result, for example into SUCCESS or FAILURE - In response: present if set by create/... |
| `specification` | `Specification` | Lightweight information about execution request. - In response: present if set by create - In cre... |
| `state` | `string` | The initial state is IN_PROGRESS. The only legal state transitions is from IN_PROGRESS to COMPLET... |
| `testExecutionMatrixId` | `string` | TestExecution Matrix ID that the TestExecutionService uses. - In response: present if set by crea... |

### `FailedToInstall`

Failed to install the App.

### `FailureDetail`

Details for an outcome with a FAILURE outcome summary.

| Property | Type | Description |
|----------|------|-------------|
| `crashed` | `boolean` | If the failure was severe because the system (app) under test crashed. |
| `deviceOutOfMemory` | `boolean` | If the device ran out of memory during a test, causing the test to crash. |
| `failedRoboscript` | `boolean` | If the Roboscript failed to complete successfully, e.g., because a Roboscript action or assertion... |
| `notInstalled` | `boolean` | If an app is not installed and thus no test can be run with the app. This might be caused by tryi... |
| `otherNativeCrash` | `boolean` | If a native process (including any other than the app) crashed. |
| `timedOut` | `boolean` | If the test overran some time limit, and that is why it failed. |
| `unableToCrawl` | `boolean` | If the robo was unable to crawl the app; perhaps because the app did not start. |

### `FatalException`

Additional details for a fatal exception.

| Property | Type | Description |
|----------|------|-------------|
| `stackTrace` | `StackTrace` | The stack trace of the fatal exception. Optional. |

### `FileReference`

A reference to a file.

| Property | Type | Description |
|----------|------|-------------|
| `fileUri` | `string` | The URI of a file stored in Google Cloud Storage. For example: http://storage.googleapis.com/mybu... |

### `GraphicsStats`

Graphics statistics for the App. The information is collected from 'adb shell dumpsys graphicsstats'. For more info see: https://developer.android.com/training/testing/performance.html Statistics will only be present for API 23+.

| Property | Type | Description |
|----------|------|-------------|
| `buckets` | `array<GraphicsStatsBucket>` | Histogram of frame render times. There should be 154 buckets ranging from [5ms, 6ms) to [4950ms, ... |
| `highInputLatencyCount` | `string` | Total "high input latency" events. |
| `jankyFrames` | `string` | Total frames with slow render time. Should be <= total_frames. |
| `missedVsyncCount` | `string` | Total "missed vsync" events. |
| `p50Millis` | `string` | 50th percentile frame render time in milliseconds. |
| `p90Millis` | `string` | 90th percentile frame render time in milliseconds. |
| `p95Millis` | `string` | 95th percentile frame render time in milliseconds. |
| `p99Millis` | `string` | 99th percentile frame render time in milliseconds. |
| `slowBitmapUploadCount` | `string` | Total "slow bitmap upload" events. |
| `slowDrawCount` | `string` | Total "slow draw" events. |
| `slowUiThreadCount` | `string` | Total "slow UI thread" events. |
| `totalFrames` | `string` | Total frames rendered by package. |

### `GraphicsStatsBucket`

| Property | Type | Description |
|----------|------|-------------|
| `frameCount` | `string` | Number of frames in the bucket. |
| `renderMillis` | `string` | Lower bound of render time in milliseconds. |

### `History`

A History represents a sorted list of Executions ordered by the start_timestamp_millis field (descending). It can be used to group all the Executions of a continuous build. Note that the ordering only operates on one-dimension. If a repository has multiple branches, it means that multiple histories will need to be used in order to order Executions per branch.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | A short human-readable (plain text) name to display in the UI. Maximum of 100 characters. - In re... |
| `historyId` | `string` | A unique identifier within a project for this History. Returns INVALID_ARGUMENT if this field is ... |
| `name` | `string` | A name to uniquely identify a history within a project. Maximum of 200 characters. - In response ... |
| `testPlatform` | `string` | The platform of the test history. - In response: always set. Returns the platform of the last exe... |

### `Image`

An image, with a link to the main image and a thumbnail.

| Property | Type | Description |
|----------|------|-------------|
| `error` | `Status` | An error explaining why the thumbnail could not be rendered. |
| `sourceImage` | `ToolOutputReference` | A reference to the full-size, original image. This is the same as the tool_outputs entry for the ... |
| `stepId` | `string` | The step to which the image is attached. Always set. |
| `thumbnail` | `Thumbnail` | The thumbnail. |

### `InAppPurchasesFound`

Additional details of in-app purchases encountered during the crawl.

| Property | Type | Description |
|----------|------|-------------|
| `inAppPurchasesFlowsExplored` | `integer` | The total number of in-app purchases flows explored: how many times the robo tries to buy a SKU. |
| `inAppPurchasesFlowsStarted` | `integer` | The total number of in-app purchases flows started. |

### `InconclusiveDetail`

Details for an outcome with an INCONCLUSIVE outcome summary.

| Property | Type | Description |
|----------|------|-------------|
| `abortedByUser` | `boolean` | If the end user aborted the test execution before a pass or fail could be determined. For example... |
| `hasErrorLogs` | `boolean` | If results are being provided to the user in certain cases of infrastructure failures |
| `infrastructureFailure` | `boolean` | If the test runner could not determine success or failure because the test depends on a component... |

### `IndividualOutcome`

Step Id and outcome of each individual step that was run as a group with other steps with the same configuration.

| Property | Type | Description |
|----------|------|-------------|
| `multistepNumber` | `integer` | Unique int given to each step. Ranges from 0(inclusive) to total number of steps(exclusive). The ... |
| `outcomeSummary` | `string` |  |
| `runDuration` | `Duration` | How long it took for this step to run. |
| `stepId` | `string` |  |

### `InsufficientCoverage`

A warning that Robo did not crawl potentially important parts of the app.

### `IosAppCrashed`

Additional details for an iOS app crash.

| Property | Type | Description |
|----------|------|-------------|
| `stackTrace` | `StackTrace` | The stack trace, if one is available. Optional. |

### `IosAppInfo`

iOS app information

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name of the app. Required |

### `IosRoboTest`

A Robo test for an iOS application.

### `IosTest`

A iOS mobile test specification

| Property | Type | Description |
|----------|------|-------------|
| `iosAppInfo` | `IosAppInfo` | Information about the application under test. |
| `iosRoboTest` | `IosRoboTest` | An iOS Robo test. |
| `iosTestLoop` | `IosTestLoop` | An iOS test loop. |
| `iosXcTest` | `IosXcTest` | An iOS XCTest. |
| `testTimeout` | `Duration` | Max time a test is allowed to run before it is automatically cancelled. |

### `IosTestLoop`

A game loop test of an iOS application.

| Property | Type | Description |
|----------|------|-------------|
| `bundleId` | `string` | Bundle ID of the app. |

### `IosXcTest`

A test of an iOS application that uses the XCTest framework.

| Property | Type | Description |
|----------|------|-------------|
| `bundleId` | `string` | Bundle ID of the app. |
| `xcodeVersion` | `string` | Xcode version that the test was run with. |

### `LauncherActivityNotFound`

Failed to find the launcher activity of an app.

### `ListEnvironmentsResponse`

Response message for EnvironmentService.ListEnvironments.

| Property | Type | Description |
|----------|------|-------------|
| `environments` | `array<Environment>` | Environments. Always set. |
| `executionId` | `string` | A Execution id Always set. |
| `historyId` | `string` | A History id. Always set. |
| `nextPageToken` | `string` | A continuation token to resume the query at the next item. Will only be set if there are more Env... |
| `projectId` | `string` | A Project id. Always set. |

### `ListExecutionsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `executions` | `array<Execution>` | Executions. Always set. |
| `nextPageToken` | `string` | A continuation token to resume the query at the next item. Will only be set if there are more Exe... |

### `ListHistoriesResponse`

Response message for HistoryService.List

| Property | Type | Description |
|----------|------|-------------|
| `histories` | `array<History>` | Histories. |
| `nextPageToken` | `string` | A continuation token to resume the query at the next item. Will only be set if there are more his... |

### `ListPerfSampleSeriesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `perfSampleSeries` | `array<PerfSampleSeries>` | The resulting PerfSampleSeries sorted by id |

### `ListPerfSamplesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Optional, returned if result size exceeds the page size specified in the request (or the default ... |
| `perfSamples` | `array<PerfSample>` |  |

### `ListScreenshotClustersResponse`

| Property | Type | Description |
|----------|------|-------------|
| `clusters` | `array<ScreenshotCluster>` | The set of clusters associated with an execution Always set |

### `ListStepAccessibilityClustersResponse`

Response message for AccessibilityService.ListStepAccessibilityClusters.

| Property | Type | Description |
|----------|------|-------------|
| `clusters` | `array<SuggestionClusterProto>` | A sequence of accessibility suggestions, grouped into clusters. Within the sequence, clusters tha... |
| `name` | `string` | A full resource name of the step. For example, projects/my-project/histories/bh.1234567890abcdef/... |

### `ListStepThumbnailsResponse`

A response containing the thumbnails in a step.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A continuation token to resume the query at the next item. If set, indicates that there are more ... |
| `thumbnails` | `array<Image>` | A list of image data. Images are returned in a deterministic order; they are ordered by these fac... |

### `ListStepsResponse`

Response message for StepService.List.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A continuation token to resume the query at the next item. If set, indicates that there are more ... |
| `steps` | `array<Step>` | Steps. |

### `ListTestCasesResponse`

Response message for StepService.ListTestCases.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` |  |
| `testCases` | `array<TestCase>` | List of test cases. |

### `LogcatCollectionError`

A warning that there were issues in logcat collection.

### `MatrixDimensionDefinition`

One dimension of the matrix of different runs of a step.

### `MemoryInfo`

| Property | Type | Description |
|----------|------|-------------|
| `memoryCapInKibibyte` | `string` | Maximum memory that can be allocated to the process in KiB |
| `memoryTotalInKibibyte` | `string` | Total memory available on the device in KiB |

### `MergedResult`

Merged test result for environment. If the environment has only one step (no reruns or shards), then the merged result is the same as the step result. If the environment has multiple shards and/or reruns, then the results of shards and reruns that belong to the same environment are merged into one environment result.

| Property | Type | Description |
|----------|------|-------------|
| `outcome` | `Outcome` | Outcome of the resource |
| `state` | `string` | State of the resource |
| `testSuiteOverviews` | `array<TestSuiteOverview>` | The combined and rolled-up result of each test suite that was run as part of this environment. Co... |

### `MultiStep`

Details when multiple steps are run with the same configuration as a group.

| Property | Type | Description |
|----------|------|-------------|
| `multistepNumber` | `integer` | Unique int given to each step. Ranges from 0(inclusive) to total number of steps(exclusive). The ... |
| `primaryStep` | `PrimaryStep` | Present if it is a primary (original) step. |
| `primaryStepId` | `string` | Step Id of the primary (original) step, which might be this step. |

### `NativeCrash`

Additional details for a native crash.

| Property | Type | Description |
|----------|------|-------------|
| `stackTrace` | `StackTrace` | The stack trace of the native crash. Optional. |

### `NonSdkApi`

A non-sdk API and examples of it being called along with other metadata See https://developer.android.com/distribute/best-practices/develop/restrictions-non-sdk-interfaces

| Property | Type | Description |
|----------|------|-------------|
| `apiSignature` | `string` | The signature of the Non-SDK API |
| `exampleStackTraces` | `array<string>` | Example stack traces of this API being called. |
| `insights` | `array<NonSdkApiInsight>` | Optional debugging insights for non-SDK API violations. |
| `invocationCount` | `integer` | The total number of times this API was observed to have been called. |
| `list` | `string` | Which list this API appears on |

### `NonSdkApiInsight`

Non-SDK API insights (to address debugging solutions).

| Property | Type | Description |
|----------|------|-------------|
| `exampleTraceMessages` | `array<string>` | Optional sample stack traces, for which this insight applies (there should be at least one). |
| `matcherId` | `string` | A unique ID, to be used for determining the effectiveness of this particular insight in the conte... |
| `pendingGoogleUpdateInsight` | `PendingGoogleUpdateInsight` | An insight indicating that the hidden API usage originates from a Google-provided library. |
| `upgradeInsight` | `UpgradeInsight` | An insight indicating that the hidden API usage originates from the use of a library that needs t... |

### `NonSdkApiUsageViolation`

Additional details for a non-sdk API usage violation.

| Property | Type | Description |
|----------|------|-------------|
| `apiSignatures` | `array<string>` | Signatures of a subset of those hidden API's. |
| `uniqueApis` | `integer` | Total number of unique hidden API's accessed. |

### `NonSdkApiUsageViolationReport`

Contains a summary and examples of non-sdk API usage violations.

| Property | Type | Description |
|----------|------|-------------|
| `exampleApis` | `array<NonSdkApi>` | Examples of the detected API usages. |
| `minSdkVersion` | `integer` | Minimum API level required for the application to run. |
| `targetSdkVersion` | `integer` | Specifies the API Level on which the application is designed to run. |
| `uniqueApis` | `integer` | Total number of unique Non-SDK API's accessed. |

### `Outcome`

Interprets a result so that humans and machines can act on it.

| Property | Type | Description |
|----------|------|-------------|
| `failureDetail` | `FailureDetail` | More information about a FAILURE outcome. Returns INVALID_ARGUMENT if this field is set but the s... |
| `inconclusiveDetail` | `InconclusiveDetail` | More information about an INCONCLUSIVE outcome. Returns INVALID_ARGUMENT if this field is set but... |
| `skippedDetail` | `SkippedDetail` | More information about a SKIPPED outcome. Returns INVALID_ARGUMENT if this field is set but the s... |
| `successDetail` | `SuccessDetail` | More information about a SUCCESS outcome. Returns INVALID_ARGUMENT if this field is set but the s... |
| `summary` | `string` | The simplest way to interpret a result. Required |

### `OverlappingUIElements`

A warning that Robo encountered a screen that has overlapping clickable elements; this may indicate a potential UI issue.

| Property | Type | Description |
|----------|------|-------------|
| `resourceName` | `array<string>` | Resource names of the overlapping screen elements |
| `screenId` | `string` | The screen id of the elements |

### `PendingGoogleUpdateInsight`

This insight indicates that the hidden API usage originates from a Google-provided library. Users need not take any action.

| Property | Type | Description |
|----------|------|-------------|
| `nameOfGoogleLibrary` | `string` | The name of the Google-provided library with the non-SDK API dependency. |

### `PerfEnvironment`

Encapsulates performance environment info

| Property | Type | Description |
|----------|------|-------------|
| `cpuInfo` | `CPUInfo` | CPU related environment info |
| `memoryInfo` | `MemoryInfo` | Memory related environment info |

### `PerfMetricsSummary`

A summary of perf metrics collected and performance environment info

| Property | Type | Description |
|----------|------|-------------|
| `appStartTime` | `AppStartTime` |  |
| `executionId` | `string` | A tool results execution ID. @OutputOnly |
| `graphicsStats` | `GraphicsStats` | Graphics statistics for the entire run. Statistics are reset at the beginning of the run and coll... |
| `historyId` | `string` | A tool results history ID. @OutputOnly |
| `perfEnvironment` | `PerfEnvironment` | Describes the environment in which the performance metrics were collected |
| `perfMetrics` | `array<string>` | Set of resource collected |
| `projectId` | `string` | The cloud project @OutputOnly |
| `stepId` | `string` | A tool results step ID. @OutputOnly |

### `PerfSample`

Resource representing a single performance measure or data point

| Property | Type | Description |
|----------|------|-------------|
| `sampleTime` | `Timestamp` | Timestamp of collection. |
| `value` | `number` | Value observed |

### `PerfSampleSeries`

Resource representing a collection of performance samples (or data points)

| Property | Type | Description |
|----------|------|-------------|
| `basicPerfSampleSeries` | `BasicPerfSampleSeries` | Basic series represented by a line chart |
| `executionId` | `string` | A tool results execution ID. @OutputOnly |
| `historyId` | `string` | A tool results history ID. @OutputOnly |
| `projectId` | `string` | The cloud project @OutputOnly |
| `sampleSeriesId` | `string` | A sample series id @OutputOnly |
| `stepId` | `string` | A tool results step ID. @OutputOnly |

### `PerformedGoogleLogin`

A notification that Robo signed in with Google.

### `PerformedMonkeyActions`

A notification that Robo performed some monkey actions.

| Property | Type | Description |
|----------|------|-------------|
| `totalActions` | `integer` | The total number of monkey actions performed during the crawl. |

### `PrimaryStep`

Stores rollup test status of multiple steps that were run as a group and outcome of each individual step.

| Property | Type | Description |
|----------|------|-------------|
| `individualOutcome` | `array<IndividualOutcome>` | Step Id and outcome of each individual step. |
| `rollUp` | `string` | Rollup test status of multiple steps that were run with the same configuration as a group. |

### `ProjectSettings`

Per-project settings for the Tool Results service.

| Property | Type | Description |
|----------|------|-------------|
| `defaultBucket` | `string` | The name of the Google Cloud Storage bucket to which results are written. By default, this is uns... |
| `name` | `string` | The name of the project's settings. Always of the form: projects/{project-id}/settings In update ... |

### `PublishXunitXmlFilesRequest`

Request message for StepService.PublishXunitXmlFiles.

| Property | Type | Description |
|----------|------|-------------|
| `xunitXmlFiles` | `array<FileReference>` | URI of the Xunit XML files to publish. The maximum size of the file this reference is pointing to... |

### `RegionProto`

A rectangular region.

| Property | Type | Description |
|----------|------|-------------|
| `heightPx` | `integer` | The height, in pixels. Always set. |
| `leftPx` | `integer` | The left side of the rectangle, in pixels. Always set. |
| `topPx` | `integer` | The top of the rectangle, in pixels. Always set. |
| `widthPx` | `integer` | The width, in pixels. Always set. |

### `ResultsStorage`

The storage for test results.

| Property | Type | Description |
|----------|------|-------------|
| `resultsStoragePath` | `FileReference` | The root directory for test results. |
| `xunitXmlFile` | `FileReference` | The path to the Xunit XML file. |

### `RoboScriptExecution`

Execution stats for a user-provided Robo script.

| Property | Type | Description |
|----------|------|-------------|
| `successfulActions` | `integer` | The number of Robo script actions executed successfully. |
| `totalActions` | `integer` | The total number of actions in the Robo script. |

### `SafeHtmlProto`

IMPORTANT: It is unsafe to accept this message from an untrusted source, since it's trivial for an attacker to forge serialized messages that don't fulfill the type's safety contract -- for example, it could contain attacker controlled script. A system which receives a SafeHtmlProto implicitly trusts the producer of the SafeHtmlProto. So, it's generally safe to return this message in RPC responses, but generally unsafe to accept it in RPC requests.

| Property | Type | Description |
|----------|------|-------------|
| `privateDoNotAccessOrElseSafeHtmlWrappedValue` | `string` | IMPORTANT: Never set or read this field, even from tests, it is private. See documentation at the... |

### `Screen`

| Property | Type | Description |
|----------|------|-------------|
| `fileReference` | `string` | File reference of the png file. Required. |
| `locale` | `string` | Locale of the device that the screenshot was taken on. Required. |
| `model` | `string` | Model of the device that the screenshot was taken on. Required. |
| `version` | `string` | OS version of the device that the screenshot was taken on. Required. |

### `ScreenshotCluster`

| Property | Type | Description |
|----------|------|-------------|
| `activity` | `string` | A string that describes the activity of every screen in the cluster. |
| `clusterId` | `string` | A unique identifier for the cluster. @OutputOnly |
| `keyScreen` | `Screen` | A singular screen that represents the cluster as a whole. This screen will act as the "cover" of ... |
| `screens` | `array<Screen>` | Full list of screens. |

### `ShardSummary`

Result summary for a shard in an environment.

| Property | Type | Description |
|----------|------|-------------|
| `runs` | `array<StepSummary>` | Summaries of the steps belonging to the shard. With flaky_test_attempts enabled from TestExecutio... |
| `shardResult` | `MergedResult` | Merged result of the shard. |

### `SkippedDetail`

Details for an outcome with a SKIPPED outcome summary.

| Property | Type | Description |
|----------|------|-------------|
| `incompatibleAppVersion` | `boolean` | If the App doesn't support the specific API level. |
| `incompatibleArchitecture` | `boolean` | If the App doesn't run on the specific architecture, for example, x86. |
| `incompatibleDevice` | `boolean` | If the requested OS version doesn't run on the specific device model. |

### `Specification`

The details about how to run the execution.

| Property | Type | Description |
|----------|------|-------------|
| `androidTest` | `AndroidTest` | An Android mobile test execution specification. |
| `iosTest` | `IosTest` | An iOS mobile test execution specification. |

### `StackTrace`

A stacktrace.

| Property | Type | Description |
|----------|------|-------------|
| `exception` | `string` | The stack trace message. Required |

### `StartActivityNotFound`

User provided intent failed to resolve to an activity.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` |  |
| `uri` | `string` |  |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `Step`

A Step represents a single operation performed as part of Execution. A step can be used to represent the execution of a tool ( for example a test runner execution or an execution of a compiler). Steps can overlap (for instance two steps might have the same start time if some operations are done in parallel). Here is an example, let's consider that we have a continuous build is executing a test runner for each iteration. The workflow would look like: - user creates a Execution with id 1 - user creates a TestExecutionStep with id 100 for Execution 1 - user update TestExecutionStep with id 100 to add a raw xml log + the service parses the xml logs and returns a TestExecutionStep with updated TestResult(s). - user update the status of TestExecutionStep with id 100 to COMPLETE A Step can be updated until its state is set to COMPLETE at which points it becomes immutable.

| Property | Type | Description |
|----------|------|-------------|
| `completionTime` | `Timestamp` | The time when the step status was set to complete. This value will be set automatically when stat... |
| `creationTime` | `Timestamp` | The time when the step was created. - In response: always set - In create/update request: never set |
| `description` | `string` | A description of this tool For example: mvn clean package -D skipTests=true - In response: presen... |
| `deviceUsageDuration` | `Duration` | How much the device resource is used to perform the test. This is the device usage used for billi... |
| `dimensionValue` | `array<StepDimensionValueEntry>` | If the execution containing this step has any dimension_definition set, then this field allows th... |
| `hasImages` | `boolean` | Whether any of the outputs of this step are images whose thumbnails can be fetched with ListThumb... |
| `labels` | `array<StepLabelsEntry>` | Arbitrary user-supplied key/value pairs that are associated with the step. Users are responsible ... |
| `multiStep` | `MultiStep` | Details when multiple steps are run with the same configuration as a group. These details can be ... |
| `name` | `string` | A short human-readable name to display in the UI. Maximum of 100 characters. For example: Clean b... |
| `outcome` | `Outcome` | Classification of the result, for example into SUCCESS or FAILURE - In response: present if set b... |
| `runDuration` | `Duration` | How long it took for this step to run. If unset, this is set to the difference between creation_t... |
| `state` | `string` | The initial state is IN_PROGRESS. The only legal state transitions are * IN_PROGRESS -> COMPLETE ... |
| `stepId` | `string` | A unique identifier within a Execution for this Step. Returns INVALID_ARGUMENT if this field is s... |
| `testExecutionStep` | `TestExecutionStep` | An execution of a test runner. |
| `toolExecutionStep` | `ToolExecutionStep` | An execution of a tool (used for steps we don't explicitly support). |

### `StepDimensionValueEntry`

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` |  |
| `value` | `string` |  |

### `StepLabelsEntry`

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` |  |
| `value` | `string` |  |

### `StepSummary`

Lightweight summary of a step within this execution.

### `SuccessDetail`

Details for an outcome with a SUCCESS outcome summary. LINT.IfChange

| Property | Type | Description |
|----------|------|-------------|
| `otherNativeCrash` | `boolean` | If a native process other than the app crashed. |

### `SuggestionClusterProto`

A set of similar suggestions that we suspect are closely related. This proto and most of the nested protos are branched from foxandcrown.prelaunchreport.service.SuggestionClusterProto, replacing PLR's dependencies with FTL's.

| Property | Type | Description |
|----------|------|-------------|
| `category` | `string` | Category in which these types of suggestions should appear. Always set. |
| `suggestions` | `array<SuggestionProto>` | A sequence of suggestions. All of the suggestions within a cluster must have the same SuggestionP... |

### `SuggestionProto`

| Property | Type | Description |
|----------|------|-------------|
| `helpUrl` | `string` | Reference to a help center article concerning this type of suggestion. Always set. |
| `longMessage` | `SafeHtmlProto` | Message, in the user's language, explaining the suggestion, which may contain markup. Always set. |
| `priority` | `string` | Relative importance of a suggestion. Always set. |
| `pseudoResourceId` | `string` | A somewhat human readable identifier of the source view, if it does not have a resource_name. Thi... |
| `region` | `RegionProto` | Region within the screenshot that is relevant to this suggestion. Optional. |
| `resourceName` | `string` | Reference to a view element, identified by its resource name, if it has one. |
| `screenId` | `string` | ID of the screen for the suggestion. It is used for getting the corresponding screenshot path. Fo... |
| `secondaryPriority` | `number` | Relative importance of a suggestion as compared with other suggestions that have the same priorit... |
| `shortMessage` | `SafeHtmlProto` | Concise message, in the user's language, representing the suggestion, which may contain markup. A... |
| `title` | `string` | General title for the suggestion, in the user's language, without markup. Always set. |

### `TestCase`

| Property | Type | Description |
|----------|------|-------------|
| `elapsedTime` | `Duration` | The elapsed run time of the test case. Required. |
| `endTime` | `Timestamp` | The end time of the test case. |
| `skippedMessage` | `string` | Why the test case was skipped. Present only for skipped test case |
| `stackTraces` | `array<StackTrace>` | The stack trace details if the test case failed or encountered an error. The maximum size of the ... |
| `startTime` | `Timestamp` | The start time of the test case. |
| `status` | `string` | The status of the test case. Required. |
| `testCaseId` | `string` | A unique identifier within a Step for this Test Case. |
| `testCaseReference` | `TestCaseReference` | Test case reference, e.g. name, class name and test suite name. Required. |
| `toolOutputs` | `array<ToolOutputReference>` | References to opaque files of any format output by the tool execution. @OutputOnly |

### `TestCaseReference`

A reference to a test case. Test case references are canonically ordered lexicographically by these three factors: * First, by test_suite_name. * Second, by class_name. * Third, by name.

| Property | Type | Description |
|----------|------|-------------|
| `className` | `string` | The name of the class. |
| `name` | `string` | The name of the test case. Required. |
| `testSuiteName` | `string` | The name of the test suite to which this test case belongs. |

### `TestExecutionStep`

A step that represents running tests. It accepts ant-junit xml files which will be parsed into structured test results by the service. Xml file paths are updated in order to append more files, however they can't be deleted. Users can also add test results manually by using the test_result field.

| Property | Type | Description |
|----------|------|-------------|
| `testIssues` | `array<TestIssue>` | Issues observed during the test execution. For example, if the mobile app under test crashed duri... |
| `testSuiteOverviews` | `array<TestSuiteOverview>` | List of test suite overview contents. This could be parsed from xUnit XML log by server, or uploa... |
| `testTiming` | `TestTiming` | The timing break down of the test execution. - In response: present if set by create or update - ... |
| `toolExecution` | `ToolExecution` | Represents the execution of the test runner. The exit code of this tool will be used to determine... |

### `TestIssue`

An issue detected occurring during a test execution.

| Property | Type | Description |
|----------|------|-------------|
| `category` | `string` | Category of issue. Required. |
| `errorMessage` | `string` | A brief human-readable message describing the issue. Required. |
| `severity` | `string` | Severity of issue. Required. |
| `stackTrace` | `StackTrace` | Deprecated in favor of stack trace fields inside specific warnings. |
| `type` | `string` | Type of issue. Required. |
| `warning_migration` | `Any` | Warning message with additional details of the issue. Should always be a message from com.google.... |

### `TestSuiteOverview`

A summary of a test suite result either parsed from XML or uploaded directly by a user. Note: the API related comments are for StepService only. This message is also being used in ExecutionService in a read only mode for the corresponding step.

| Property | Type | Description |
|----------|------|-------------|
| `elapsedTime` | `Duration` | Elapsed time of test suite. |
| `errorCount` | `integer` | Number of test cases in error, typically set by the service by parsing the xml_source. - In creat... |
| `failureCount` | `integer` | Number of failed test cases, typically set by the service by parsing the xml_source. May also be ... |
| `flakyCount` | `integer` | Number of flaky test cases, set by the service by rolling up flaky test attempts. Present only fo... |
| `name` | `string` | The name of the test suite. - In create/response: always set - In update request: never |
| `skippedCount` | `integer` | Number of test cases not run, typically set by the service by parsing the xml_source. - In create... |
| `totalCount` | `integer` | Number of test cases, typically set by the service by parsing the xml_source. - In create/respons... |
| `xmlSource` | `FileReference` | If this test suite was parsed from XML, this is the URI where the original XML file is stored. No... |

### `TestTiming`

Testing timing break down to know phases.

| Property | Type | Description |
|----------|------|-------------|
| `testProcessDuration` | `Duration` | How long it took to run the test process. - In response: present if previously set. - In create/u... |

### `Thumbnail`

A single thumbnail, with its size and format.

| Property | Type | Description |
|----------|------|-------------|
| `contentType` | `string` | The thumbnail's content type, i.e. "image/png". Always set. |
| `data` | `string` | The thumbnail file itself. That is, the bytes here are precisely the bytes that make up the thumb... |
| `heightPx` | `integer` | The height of the thumbnail, in pixels. Always set. |
| `widthPx` | `integer` | The width of the thumbnail, in pixels. Always set. |

### `Timestamp`

A Timestamp represents a point in time independent of any time zone or local calendar, encoded as a count of seconds and fractions of seconds at nanosecond resolution. The count is relative to an epoch at UTC midnight on January 1, 1970, in the proleptic Gregorian calendar which extends the Gregorian calendar backwards to year one. All minutes are 60 seconds long. Leap seconds are "smeared" so that no leap second table is needed for interpretation, using a [24-hour linear smear](https://developers.google.com/time/smear). The range is from 0001-01-01T00:00:00Z to 9999-12-31T23:59:59.999999999Z. By restricting to that range, we ensure that we can convert to and from [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) date strings.

| Property | Type | Description |
|----------|------|-------------|
| `nanos` | `integer` | Non-negative fractions of a second at nanosecond resolution. Negative second values with fraction... |
| `seconds` | `string` | Represents seconds of UTC time since Unix epoch 1970-01-01T00:00:00Z. Must be from 0001-01-01T00:... |

### `ToolExecution`

An execution of an arbitrary tool. It could be a test runner or a tool copying artifacts or deploying code.

| Property | Type | Description |
|----------|------|-------------|
| `commandLineArguments` | `array<string>` | The full tokenized command line including the program name (equivalent to argv in a C program). -... |
| `exitCode` | `ToolExitCode` | Tool execution exit code. This field will be set once the tool has exited. - In response: present... |
| `toolLogs` | `array<FileReference>` | References to any plain text logs output the tool execution. This field can be set before the too... |
| `toolOutputs` | `array<ToolOutputReference>` | References to opaque files of any format output by the tool execution. The maximum allowed number... |

### `ToolExecutionStep`

Generic tool step to be used for binaries we do not explicitly support. For example: running cp to copy artifacts from one location to another.

| Property | Type | Description |
|----------|------|-------------|
| `toolExecution` | `ToolExecution` | A Tool execution. - In response: present if set by create/update request - In create/update reque... |

### `ToolExitCode`

Exit code from a tool execution.

| Property | Type | Description |
|----------|------|-------------|
| `number` | `integer` | Tool execution exit code. A value of 0 means that the execution was successful. - In response: al... |

### `ToolOutputReference`

A reference to a ToolExecution output file.

| Property | Type | Description |
|----------|------|-------------|
| `creationTime` | `Timestamp` | The creation time of the file. - In response: present if set by create/update request - In create... |
| `output` | `FileReference` | A FileReference to an output file. - In response: always set - In create/update request: always set |
| `testCase` | `TestCaseReference` | The test case to which this output file belongs. - In response: present if set by create/update r... |

### `UIElementTooDeep`

A warning that the screen hierarchy is deeper than the recommended threshold.

| Property | Type | Description |
|----------|------|-------------|
| `depth` | `integer` | The depth of the screen element |
| `screenId` | `string` | The screen id of the element |
| `screenStateId` | `string` | The screen state id of the element |

### `UnspecifiedWarning`

Default unspecified warning.

### `UnusedRoboDirective`

Additional details of an unused robodirective.

| Property | Type | Description |
|----------|------|-------------|
| `resourceName` | `string` | The name of the resource that was unused. |

### `UpgradeInsight`

This insight is a recommendation to upgrade a given library to the specified version, in order to avoid dependencies on non-SDK APIs.

| Property | Type | Description |
|----------|------|-------------|
| `packageName` | `string` | The name of the package to be upgraded. |
| `upgradeToVersion` | `string` | The suggested version to upgrade to. Optional: In case we are not sure which version solves this ... |

### `UsedRoboDirective`

Additional details of a used Robo directive.

| Property | Type | Description |
|----------|------|-------------|
| `resourceName` | `string` | The name of the resource that was used. |

### `UsedRoboIgnoreDirective`

Additional details of a used Robo directive with an ignore action. Note: This is a different scenario than unused directive.

| Property | Type | Description |
|----------|------|-------------|
| `resourceName` | `string` | The name of the resource that was ignored. |

