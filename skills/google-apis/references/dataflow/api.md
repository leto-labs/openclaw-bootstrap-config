# Dataflow API - API Reference

**Version**: `v1b3` | **Methods**: 42 | **Schemas**: 194

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `dataflow.projects.deleteSnapshots` | DELETE | `v1b3/projects/{projectId}/snapshots` | Deletes a snapshot. |
| `dataflow.projects.workerMessages` | POST | `v1b3/projects/{projectId}/WorkerMessages` | Send a worker_message to the service. |
| `dataflow.projects.snapshots.get` | GET | `v1b3/projects/{projectId}/snapshots/{snapshotId}` | Gets information about a snapshot. |
| `dataflow.projects.snapshots.list` | GET | `v1b3/projects/{projectId}/snapshots` | Lists snapshots. |
| `dataflow.projects.locations.workerMessages` | POST | `v1b3/projects/{projectId}/locations/{location}/WorkerMessages` | Send a worker_message to the service. |
| `dataflow.projects.locations.snapshots.list` | GET | `v1b3/projects/{projectId}/locations/{location}/snapshots` | Lists snapshots. |
| `dataflow.projects.locations.snapshots.delete` | DELETE | `v1b3/projects/{projectId}/locations/{location}/snapshots/{snapshotId}` | Deletes a snapshot. |
| `dataflow.projects.locations.snapshots.get` | GET | `v1b3/projects/{projectId}/locations/{location}/snapshots/{snapshotId}` | Gets information about a snapshot. |
| `dataflow.projects.locations.templates.create` | POST | `v1b3/projects/{projectId}/locations/{location}/templates` | Creates a Cloud Dataflow job from a template. Do not enter confidential information when you supp... |
| `dataflow.projects.locations.templates.launch` | POST | `v1b3/projects/{projectId}/locations/{location}/templates:launch` | Launches a template. To launch a template, we recommend using `projects.locations.templates.launc... |
| `dataflow.projects.locations.templates.get` | GET | `v1b3/projects/{projectId}/locations/{location}/templates:get` | Get the template associated with a template. To get the template, we recommend using `projects.lo... |
| `dataflow.projects.locations.jobs.getExecutionDetails` | GET | `v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}/executionDetails` | Request detailed information about the execution status of the job. EXPERIMENTAL. This API is sub... |
| `dataflow.projects.locations.jobs.create` | POST | `v1b3/projects/{projectId}/locations/{location}/jobs` | Creates a Dataflow job. To create a job, we recommend using `projects.locations.jobs.create` with... |
| `dataflow.projects.locations.jobs.update` | PUT | `v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}` | Updates the state of an existing Cloud Dataflow job. To update the state of an existing job, we r... |
| `dataflow.projects.locations.jobs.getMetrics` | GET | `v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}/metrics` | Request the job status. To request the status of a job, we recommend using `projects.locations.jo... |
| `dataflow.projects.locations.jobs.snapshot` | POST | `v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}:snapshot` | Snapshot the state of a streaming job. |
| `dataflow.projects.locations.jobs.list` | GET | `v1b3/projects/{projectId}/locations/{location}/jobs` | List the jobs of a project. To list the jobs of a project in a region, we recommend using `projec... |
| `dataflow.projects.locations.jobs.get` | GET | `v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}` | Gets the state of the specified Cloud Dataflow job. To get the state of a job, we recommend using... |
| `dataflow.projects.locations.jobs.debug.getConfig` | POST | `v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}/debug/getConfig` | Get encoded debug configuration for component. Not cacheable. |
| `dataflow.projects.locations.jobs.debug.sendCapture` | POST | `v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}/debug/sendCapture` | Send encoded debug capture data for component. |
| `dataflow.projects.locations.jobs.debug.getWorkerStacktraces` | POST | `v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}/debug/getWorkerStacktraces` | Get worker stacktraces from debug capture. |
| `dataflow.projects.locations.jobs.snapshots.list` | GET | `v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}/snapshots` | Lists snapshots. |
| `dataflow.projects.locations.jobs.stages.getExecutionDetails` | GET | `v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}/stages/{stageId}/executionDetails` | Request detailed information about the execution status of a stage of the job. EXPERIMENTAL. This... |
| `dataflow.projects.locations.jobs.messages.list` | GET | `v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}/messages` | Request the job status. To request the status of a job, we recommend using `projects.locations.jo... |
| `dataflow.projects.locations.jobs.workItems.lease` | POST | `v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}/workItems:lease` | Leases a dataflow WorkItem to run. |
| `dataflow.projects.locations.jobs.workItems.reportStatus` | POST | `v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}/workItems:reportStatus` | Reports the status of dataflow WorkItems leased by a worker. |
| `dataflow.projects.locations.flexTemplates.launch` | POST | `v1b3/projects/{projectId}/locations/{location}/flexTemplates:launch` | Launch a job with a FlexTemplate. |
| `dataflow.projects.templates.get` | GET | `v1b3/projects/{projectId}/templates:get` | Get the template associated with a template. To get the template, we recommend using `projects.lo... |
| `dataflow.projects.templates.launch` | POST | `v1b3/projects/{projectId}/templates:launch` | Launches a template. To launch a template, we recommend using `projects.locations.templates.launc... |
| `dataflow.projects.templates.create` | POST | `v1b3/projects/{projectId}/templates` | Creates a Cloud Dataflow job from a template. Do not enter confidential information when you supp... |
| `dataflow.projects.jobs.update` | PUT | `v1b3/projects/{projectId}/jobs/{jobId}` | Updates the state of an existing Cloud Dataflow job. To update the state of an existing job, we r... |
| `dataflow.projects.jobs.list` | GET | `v1b3/projects/{projectId}/jobs` | List the jobs of a project. To list the jobs of a project in a region, we recommend using `projec... |
| `dataflow.projects.jobs.aggregated` | GET | `v1b3/projects/{projectId}/jobs:aggregated` | List the jobs of a project across all regions. **Note:** This method doesn't support filtering th... |
| `dataflow.projects.jobs.snapshot` | POST | `v1b3/projects/{projectId}/jobs/{jobId}:snapshot` | Snapshot the state of a streaming job. |
| `dataflow.projects.jobs.getMetrics` | GET | `v1b3/projects/{projectId}/jobs/{jobId}/metrics` | Request the job status. To request the status of a job, we recommend using `projects.locations.jo... |
| `dataflow.projects.jobs.get` | GET | `v1b3/projects/{projectId}/jobs/{jobId}` | Gets the state of the specified Cloud Dataflow job. To get the state of a job, we recommend using... |
| `dataflow.projects.jobs.create` | POST | `v1b3/projects/{projectId}/jobs` | Creates a Dataflow job. To create a job, we recommend using `projects.locations.jobs.create` with... |
| `dataflow.projects.jobs.messages.list` | GET | `v1b3/projects/{projectId}/jobs/{jobId}/messages` | Request the job status. To request the status of a job, we recommend using `projects.locations.jo... |
| `dataflow.projects.jobs.workItems.reportStatus` | POST | `v1b3/projects/{projectId}/jobs/{jobId}/workItems:reportStatus` | Reports the status of dataflow WorkItems leased by a worker. |
| `dataflow.projects.jobs.workItems.lease` | POST | `v1b3/projects/{projectId}/jobs/{jobId}/workItems:lease` | Leases a dataflow WorkItem to run. |
| `dataflow.projects.jobs.debug.sendCapture` | POST | `v1b3/projects/{projectId}/jobs/{jobId}/debug/sendCapture` | Send encoded debug capture data for component. |
| `dataflow.projects.jobs.debug.getConfig` | POST | `v1b3/projects/{projectId}/jobs/{jobId}/debug/getConfig` | Get encoded debug configuration for component. Not cacheable. |

### `dataflow.projects.deleteSnapshots`

**DELETE** `v1b3/projects/{projectId}/snapshots`

Deletes a snapshot.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | The ID of the Cloud Platform project that the snapshot belongs to. |
| `location` | `string` | query | No | The location that contains this snapshot. |
| `snapshotId` | `string` | query | No | The ID of the snapshot. |

**Response**: `DeleteSnapshotResponse`

```typescript
const res = await dataflow.projects.deleteSnapshots({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `dataflow.projects.workerMessages`

**POST** `v1b3/projects/{projectId}/WorkerMessages`

Send a worker_message to the service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | The project to send the WorkerMessages to. |

**Request body**: `SendWorkerMessagesRequest`

**Response**: `SendWorkerMessagesResponse`

```typescript
const res = await dataflow.projects.workerMessages({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `dataflow.projects.snapshots.get`

**GET** `v1b3/projects/{projectId}/snapshots/{snapshotId}`

Gets information about a snapshot.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | The ID of the Cloud Platform project that the snapshot belongs to. |
| `snapshotId` | `string` | path | Yes | The ID of the snapshot. |
| `location` | `string` | query | No | The location that contains this snapshot. |

**Response**: `Snapshot`

```typescript
const res = await dataflow.snapshots.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `dataflow.projects.snapshots.list`

**GET** `v1b3/projects/{projectId}/snapshots`

Lists snapshots.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | The project ID to list snapshots for. |
| `jobId` | `string` | query | No | If specified, list snapshots created from this job. |
| `location` | `string` | query | No | The location to list snapshots in. |

**Response**: `ListSnapshotsResponse`

```typescript
const res = await dataflow.snapshots.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `dataflow.projects.locations.workerMessages`

**POST** `v1b3/projects/{projectId}/locations/{location}/WorkerMessages`

Send a worker_message to the service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | The project to send the WorkerMessages to. |
| `location` | `string` | path | Yes | The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains the job. |

**Request body**: `SendWorkerMessagesRequest`

**Response**: `SendWorkerMessagesResponse`

```typescript
const res = await dataflow.locations.workerMessages({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `dataflow.projects.locations.snapshots.list`

**GET** `v1b3/projects/{projectId}/locations/{location}/snapshots`

Lists snapshots.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | The project ID to list snapshots for. |
| `location` | `string` | path | Yes | The location to list snapshots in. |
| `jobId` | `string` | query | No | If specified, list snapshots created from this job. |

**Response**: `ListSnapshotsResponse`

```typescript
const res = await dataflow.snapshots.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `dataflow.projects.locations.snapshots.delete`

**DELETE** `v1b3/projects/{projectId}/locations/{location}/snapshots/{snapshotId}`

Deletes a snapshot.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | The ID of the Cloud Platform project that the snapshot belongs to. |
| `location` | `string` | path | Yes | The location that contains this snapshot. |
| `snapshotId` | `string` | path | Yes | The ID of the snapshot. |

**Response**: `DeleteSnapshotResponse`

```typescript
const res = await dataflow.snapshots.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `dataflow.projects.locations.snapshots.get`

**GET** `v1b3/projects/{projectId}/locations/{location}/snapshots/{snapshotId}`

Gets information about a snapshot.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | The ID of the Cloud Platform project that the snapshot belongs to. |
| `location` | `string` | path | Yes | The location that contains this snapshot. |
| `snapshotId` | `string` | path | Yes | The ID of the snapshot. |

**Response**: `Snapshot`

```typescript
const res = await dataflow.snapshots.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `dataflow.projects.locations.templates.create`

**POST** `v1b3/projects/{projectId}/locations/{location}/templates`

Creates a Cloud Dataflow job from a template. Do not enter confidential information when you supply string values using the API. To create a job, we recommend using `projects.locations.templates.create` with a [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints). Using `projects.templates.create` is not recommended, because your job will always start in `us-central1`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. The ID of the Cloud Platform project that the job belongs to. |
| `location` | `string` | path | Yes | The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) to which to direct the r... |

**Request body**: `CreateJobFromTemplateRequest`

**Response**: `Job`

```typescript
const res = await dataflow.templates.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `dataflow.projects.locations.templates.launch`

**POST** `v1b3/projects/{projectId}/locations/{location}/templates:launch`

Launches a template. To launch a template, we recommend using `projects.locations.templates.launch` with a [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints). Using `projects.templates.launch` is not recommended, because jobs launched from the template will always start in `us-central1`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. The ID of the Cloud Platform project that the job belongs to. |
| `location` | `string` | path | Yes | The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) to which to direct the r... |
| `dynamicTemplate.gcsPath` | `string` | query | No | Path to the dynamic template specification file on Cloud Storage. The file must be a JSON serialized `DynamicTemplate... |
| `dynamicTemplate.stagingLocation` | `string` | query | No | Cloud Storage path for staging dependencies. Must be a valid Cloud Storage URL, beginning with `gs://`. |
| `gcsPath` | `string` | query | No | A Cloud Storage path to the template to use to create the job. Must be valid Cloud Storage URL, beginning with `gs://`. |
| `validateOnly` | `boolean` | query | No | If true, the request is validated but not actually executed. Defaults to false. |

**Request body**: `LaunchTemplateParameters`

**Response**: `LaunchTemplateResponse`

```typescript
const res = await dataflow.templates.launch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `dataflow.projects.locations.templates.get`

**GET** `v1b3/projects/{projectId}/locations/{location}/templates:get`

Get the template associated with a template. To get the template, we recommend using `projects.locations.templates.get` with a [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints). Using `projects.templates.get` is not recommended, because only templates that are running in `us-central1` are retrieved.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. The ID of the Cloud Platform project that the job belongs to. |
| `location` | `string` | path | Yes | The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) to which to direct the r... |
| `gcsPath` | `string` | query | No | Required. A Cloud Storage path to the template from which to create the job. Must be valid Cloud Storage URL, beginni... |
| `view` | `string` | query | No | The view to retrieve. Defaults to METADATA_ONLY. |

**Response**: `GetTemplateResponse`

```typescript
const res = await dataflow.templates.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `dataflow.projects.locations.jobs.getExecutionDetails`

**GET** `v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}/executionDetails`

Request detailed information about the execution status of the job. EXPERIMENTAL. This API is subject to change or removal without notice.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | A project id. |
| `location` | `string` | path | Yes | The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains the job sp... |
| `jobId` | `string` | path | Yes | The job to get execution details for. |
| `pageSize` | `integer` | query | No | If specified, determines the maximum number of stages to return. If unspecified, the service may choose an appropriat... |
| `pageToken` | `string` | query | No | If supplied, this should be the value of next_page_token returned by an earlier call. This will cause the next page o... |

**Response**: `JobExecutionDetails`

```typescript
const res = await dataflow.jobs.getExecutionDetails({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `dataflow.projects.locations.jobs.create`

**POST** `v1b3/projects/{projectId}/locations/{location}/jobs`

Creates a Dataflow job. To create a job, we recommend using `projects.locations.jobs.create` with a [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints). Using `projects.jobs.create` is not recommended, as your job will always start in `us-central1`. Do not enter confidential information when you supply string values using the API.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | The ID of the Cloud Platform project that the job belongs to. |
| `location` | `string` | path | Yes | The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains this job. |
| `replaceJobId` | `string` | query | No | Deprecated. This field is now in the Job message. |
| `view` | `string` | query | No | The level of information requested in response. |

**Request body**: `Job`

**Response**: `Job`

```typescript
const res = await dataflow.jobs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `dataflow.projects.locations.jobs.update`

**PUT** `v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}`

Updates the state of an existing Cloud Dataflow job. To update the state of an existing job, we recommend using `projects.locations.jobs.update` with a [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints). Using `projects.jobs.update` is not recommended, as you can only update the state of jobs that are running in `us-central1`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | The ID of the Cloud Platform project that the job belongs to. |
| `location` | `string` | path | Yes | The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains this job. |
| `jobId` | `string` | path | Yes | The job ID. |
| `updateMask` | `string` | query | No | The list of fields to update relative to Job. If empty, only RequestedJobState will be considered for update. If the ... |

**Request body**: `Job`

**Response**: `Job`

```typescript
const res = await dataflow.jobs.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `dataflow.projects.locations.jobs.getMetrics`

**GET** `v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}/metrics`

Request the job status. To request the status of a job, we recommend using `projects.locations.jobs.getMetrics` with a [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints). Using `projects.jobs.getMetrics` is not recommended, as you can only request the status of jobs that are running in `us-central1`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | A project id. |
| `location` | `string` | path | Yes | The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains the job sp... |
| `jobId` | `string` | path | Yes | The job to get metrics for. |
| `startTime` | `string` | query | No | Return only metric data that has changed since this time. Default is to return all information about all metrics for ... |

**Response**: `JobMetrics`

```typescript
const res = await dataflow.jobs.getMetrics({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `dataflow.projects.locations.jobs.snapshot`

**POST** `v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}:snapshot`

Snapshot the state of a streaming job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | The project which owns the job to be snapshotted. |
| `location` | `string` | path | Yes | The location that contains this job. |
| `jobId` | `string` | path | Yes | The job to be snapshotted. |

**Request body**: `SnapshotJobRequest`

**Response**: `Snapshot`

```typescript
const res = await dataflow.jobs.snapshot({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `dataflow.projects.locations.jobs.list`

**GET** `v1b3/projects/{projectId}/locations/{location}/jobs`

List the jobs of a project. To list the jobs of a project in a region, we recommend using `projects.locations.jobs.list` with a [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints). To list the all jobs across all regions, use `projects.jobs.aggregated`. Using `projects.jobs.list` is not recommended, because you can only get the list of jobs that are running in `us-central1`. `projects.locations.jobs.list` and `projects.jobs.list` support filtering the list of jobs by name. Filtering by name isn't supported by `projects.jobs.aggregated`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | The project which owns the jobs. |
| `location` | `string` | path | Yes | The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains this job. |
| `filter` | `string` | query | No | The kind of filter to use. |
| `name` | `string` | query | No | Optional. The job name. |
| `pageSize` | `integer` | query | No | If there are many jobs, limit response to at most this many. The actual number of jobs returned will be the lesser of... |
| `pageToken` | `string` | query | No | Set this to the 'next_page_token' field of a previous response to request additional results in a long list. |
| `view` | `string` | query | No | Deprecated. ListJobs always returns summaries now. Use GetJob for other JobViews. |

**Response**: `ListJobsResponse`

```typescript
const res = await dataflow.jobs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `dataflow.projects.locations.jobs.get`

**GET** `v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}`

Gets the state of the specified Cloud Dataflow job. To get the state of a job, we recommend using `projects.locations.jobs.get` with a [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints). Using `projects.jobs.get` is not recommended, as you can only get the state of jobs that are running in `us-central1`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | The ID of the Cloud Platform project that the job belongs to. |
| `location` | `string` | path | Yes | The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains this job. |
| `jobId` | `string` | path | Yes | The job ID. |
| `view` | `string` | query | No | The level of information requested in response. |

**Response**: `Job`

```typescript
const res = await dataflow.jobs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `dataflow.projects.locations.jobs.debug.getConfig`

**POST** `v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}/debug/getConfig`

Get encoded debug configuration for component. Not cacheable.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | The project id. |
| `location` | `string` | path | Yes | The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains the job sp... |
| `jobId` | `string` | path | Yes | The job id. |

**Request body**: `GetDebugConfigRequest`

**Response**: `GetDebugConfigResponse`

```typescript
const res = await dataflow.debug.getConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `dataflow.projects.locations.jobs.debug.sendCapture`

**POST** `v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}/debug/sendCapture`

Send encoded debug capture data for component.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | The project id. |
| `location` | `string` | path | Yes | The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains the job sp... |
| `jobId` | `string` | path | Yes | The job id. |

**Request body**: `SendDebugCaptureRequest`

**Response**: `SendDebugCaptureResponse`

```typescript
const res = await dataflow.debug.sendCapture({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `dataflow.projects.locations.jobs.debug.getWorkerStacktraces`

**POST** `v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}/debug/getWorkerStacktraces`

Get worker stacktraces from debug capture.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | The project id. |
| `location` | `string` | path | Yes | The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains the job sp... |
| `jobId` | `string` | path | Yes | The job for which to get stacktraces. |

**Request body**: `GetWorkerStacktracesRequest`

**Response**: `GetWorkerStacktracesResponse`

```typescript
const res = await dataflow.debug.getWorkerStacktraces({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `dataflow.projects.locations.jobs.snapshots.list`

**GET** `v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}/snapshots`

Lists snapshots.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | The project ID to list snapshots for. |
| `location` | `string` | path | Yes | The location to list snapshots in. |
| `jobId` | `string` | path | Yes | If specified, list snapshots created from this job. |

**Response**: `ListSnapshotsResponse`

```typescript
const res = await dataflow.snapshots.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `dataflow.projects.locations.jobs.stages.getExecutionDetails`

**GET** `v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}/stages/{stageId}/executionDetails`

Request detailed information about the execution status of a stage of the job. EXPERIMENTAL. This API is subject to change or removal without notice.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | A project id. |
| `location` | `string` | path | Yes | The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains the job sp... |
| `jobId` | `string` | path | Yes | The job to get execution details for. |
| `stageId` | `string` | path | Yes | The stage for which to fetch information. |
| `endTime` | `string` | query | No | Upper time bound of work items to include, by start time. |
| `pageSize` | `integer` | query | No | If specified, determines the maximum number of work items to return. If unspecified, the service may choose an approp... |
| `pageToken` | `string` | query | No | If supplied, this should be the value of next_page_token returned by an earlier call. This will cause the next page o... |
| `startTime` | `string` | query | No | Lower time bound of work items to include, by start time. |

**Response**: `StageExecutionDetails`

```typescript
const res = await dataflow.stages.getExecutionDetails({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `dataflow.projects.locations.jobs.messages.list`

**GET** `v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}/messages`

Request the job status. To request the status of a job, we recommend using `projects.locations.jobs.messages.list` with a [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints). Using `projects.jobs.messages.list` is not recommended, as you can only request the status of jobs that are running in `us-central1`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | A project id. |
| `location` | `string` | path | Yes | The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains the job sp... |
| `jobId` | `string` | path | Yes | The job to get messages about. |
| `endTime` | `string` | query | No | Return only messages with timestamps < end_time. The default is now (i.e. return up to the latest messages available). |
| `minimumImportance` | `string` | query | No | Filter to only get messages with importance >= level |
| `pageSize` | `integer` | query | No | If specified, determines the maximum number of messages to return. If unspecified, the service may choose an appropri... |
| `pageToken` | `string` | query | No | If supplied, this should be the value of next_page_token returned by an earlier call. This will cause the next page o... |
| `startTime` | `string` | query | No | If specified, return only messages with timestamps >= start_time. The default is the job creation time (i.e. beginnin... |

**Response**: `ListJobMessagesResponse`

```typescript
const res = await dataflow.messages.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `dataflow.projects.locations.jobs.workItems.lease`

**POST** `v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}/workItems:lease`

Leases a dataflow WorkItem to run.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Identifies the project this worker belongs to. |
| `location` | `string` | path | Yes | The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains the WorkIt... |
| `jobId` | `string` | path | Yes | Identifies the workflow job this worker belongs to. |

**Request body**: `LeaseWorkItemRequest`

**Response**: `LeaseWorkItemResponse`

```typescript
const res = await dataflow.workItems.lease({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `dataflow.projects.locations.jobs.workItems.reportStatus`

**POST** `v1b3/projects/{projectId}/locations/{location}/jobs/{jobId}/workItems:reportStatus`

Reports the status of dataflow WorkItems leased by a worker.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | The project which owns the WorkItem's job. |
| `location` | `string` | path | Yes | The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains the WorkIt... |
| `jobId` | `string` | path | Yes | The job which the WorkItem is part of. |

**Request body**: `ReportWorkItemStatusRequest`

**Response**: `ReportWorkItemStatusResponse`

```typescript
const res = await dataflow.workItems.reportStatus({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `dataflow.projects.locations.flexTemplates.launch`

**POST** `v1b3/projects/{projectId}/locations/{location}/flexTemplates:launch`

Launch a job with a FlexTemplate.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. The ID of the Cloud Platform project that the job belongs to. |
| `location` | `string` | path | Yes | Required. The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) to which to di... |

**Request body**: `LaunchFlexTemplateRequest`

**Response**: `LaunchFlexTemplateResponse`

```typescript
const res = await dataflow.flexTemplates.launch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `dataflow.projects.templates.get`

**GET** `v1b3/projects/{projectId}/templates:get`

Get the template associated with a template. To get the template, we recommend using `projects.locations.templates.get` with a [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints). Using `projects.templates.get` is not recommended, because only templates that are running in `us-central1` are retrieved.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. The ID of the Cloud Platform project that the job belongs to. |
| `gcsPath` | `string` | query | No | Required. A Cloud Storage path to the template from which to create the job. Must be valid Cloud Storage URL, beginni... |
| `location` | `string` | query | No | The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) to which to direct the r... |
| `view` | `string` | query | No | The view to retrieve. Defaults to METADATA_ONLY. |

**Response**: `GetTemplateResponse`

```typescript
const res = await dataflow.templates.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `dataflow.projects.templates.launch`

**POST** `v1b3/projects/{projectId}/templates:launch`

Launches a template. To launch a template, we recommend using `projects.locations.templates.launch` with a [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints). Using `projects.templates.launch` is not recommended, because jobs launched from the template will always start in `us-central1`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. The ID of the Cloud Platform project that the job belongs to. |
| `dynamicTemplate.gcsPath` | `string` | query | No | Path to the dynamic template specification file on Cloud Storage. The file must be a JSON serialized `DynamicTemplate... |
| `dynamicTemplate.stagingLocation` | `string` | query | No | Cloud Storage path for staging dependencies. Must be a valid Cloud Storage URL, beginning with `gs://`. |
| `gcsPath` | `string` | query | No | A Cloud Storage path to the template to use to create the job. Must be valid Cloud Storage URL, beginning with `gs://`. |
| `location` | `string` | query | No | The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) to which to direct the r... |
| `validateOnly` | `boolean` | query | No | If true, the request is validated but not actually executed. Defaults to false. |

**Request body**: `LaunchTemplateParameters`

**Response**: `LaunchTemplateResponse`

```typescript
const res = await dataflow.templates.launch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `dataflow.projects.templates.create`

**POST** `v1b3/projects/{projectId}/templates`

Creates a Cloud Dataflow job from a template. Do not enter confidential information when you supply string values using the API. To create a job, we recommend using `projects.locations.templates.create` with a [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints). Using `projects.templates.create` is not recommended, because your job will always start in `us-central1`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. The ID of the Cloud Platform project that the job belongs to. |

**Request body**: `CreateJobFromTemplateRequest`

**Response**: `Job`

```typescript
const res = await dataflow.templates.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `dataflow.projects.jobs.update`

**PUT** `v1b3/projects/{projectId}/jobs/{jobId}`

Updates the state of an existing Cloud Dataflow job. To update the state of an existing job, we recommend using `projects.locations.jobs.update` with a [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints). Using `projects.jobs.update` is not recommended, as you can only update the state of jobs that are running in `us-central1`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | The ID of the Cloud Platform project that the job belongs to. |
| `jobId` | `string` | path | Yes | The job ID. |
| `location` | `string` | query | No | The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains this job. |
| `updateMask` | `string` | query | No | The list of fields to update relative to Job. If empty, only RequestedJobState will be considered for update. If the ... |

**Request body**: `Job`

**Response**: `Job`

```typescript
const res = await dataflow.jobs.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `dataflow.projects.jobs.list`

**GET** `v1b3/projects/{projectId}/jobs`

List the jobs of a project. To list the jobs of a project in a region, we recommend using `projects.locations.jobs.list` with a [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints). To list the all jobs across all regions, use `projects.jobs.aggregated`. Using `projects.jobs.list` is not recommended, because you can only get the list of jobs that are running in `us-central1`. `projects.locations.jobs.list` and `projects.jobs.list` support filtering the list of jobs by name. Filtering by name isn't supported by `projects.jobs.aggregated`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | The project which owns the jobs. |
| `filter` | `string` | query | No | The kind of filter to use. |
| `location` | `string` | query | No | The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains this job. |
| `name` | `string` | query | No | Optional. The job name. |
| `pageSize` | `integer` | query | No | If there are many jobs, limit response to at most this many. The actual number of jobs returned will be the lesser of... |
| `pageToken` | `string` | query | No | Set this to the 'next_page_token' field of a previous response to request additional results in a long list. |
| `view` | `string` | query | No | Deprecated. ListJobs always returns summaries now. Use GetJob for other JobViews. |

**Response**: `ListJobsResponse`

```typescript
const res = await dataflow.jobs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `dataflow.projects.jobs.aggregated`

**GET** `v1b3/projects/{projectId}/jobs:aggregated`

List the jobs of a project across all regions. **Note:** This method doesn't support filtering the list of jobs by name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | The project which owns the jobs. |
| `filter` | `string` | query | No | The kind of filter to use. |
| `location` | `string` | query | No | The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains this job. |
| `name` | `string` | query | No | Optional. The job name. |
| `pageSize` | `integer` | query | No | If there are many jobs, limit response to at most this many. The actual number of jobs returned will be the lesser of... |
| `pageToken` | `string` | query | No | Set this to the 'next_page_token' field of a previous response to request additional results in a long list. |
| `view` | `string` | query | No | Deprecated. ListJobs always returns summaries now. Use GetJob for other JobViews. |

**Response**: `ListJobsResponse`

```typescript
const res = await dataflow.jobs.aggregated({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `dataflow.projects.jobs.snapshot`

**POST** `v1b3/projects/{projectId}/jobs/{jobId}:snapshot`

Snapshot the state of a streaming job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | The project which owns the job to be snapshotted. |
| `jobId` | `string` | path | Yes | The job to be snapshotted. |

**Request body**: `SnapshotJobRequest`

**Response**: `Snapshot`

```typescript
const res = await dataflow.jobs.snapshot({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `dataflow.projects.jobs.getMetrics`

**GET** `v1b3/projects/{projectId}/jobs/{jobId}/metrics`

Request the job status. To request the status of a job, we recommend using `projects.locations.jobs.getMetrics` with a [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints). Using `projects.jobs.getMetrics` is not recommended, as you can only request the status of jobs that are running in `us-central1`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | A project id. |
| `jobId` | `string` | path | Yes | The job to get metrics for. |
| `location` | `string` | query | No | The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains the job sp... |
| `startTime` | `string` | query | No | Return only metric data that has changed since this time. Default is to return all information about all metrics for ... |

**Response**: `JobMetrics`

```typescript
const res = await dataflow.jobs.getMetrics({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `dataflow.projects.jobs.get`

**GET** `v1b3/projects/{projectId}/jobs/{jobId}`

Gets the state of the specified Cloud Dataflow job. To get the state of a job, we recommend using `projects.locations.jobs.get` with a [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints). Using `projects.jobs.get` is not recommended, as you can only get the state of jobs that are running in `us-central1`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | The ID of the Cloud Platform project that the job belongs to. |
| `jobId` | `string` | path | Yes | The job ID. |
| `location` | `string` | query | No | The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains this job. |
| `view` | `string` | query | No | The level of information requested in response. |

**Response**: `Job`

```typescript
const res = await dataflow.jobs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `dataflow.projects.jobs.create`

**POST** `v1b3/projects/{projectId}/jobs`

Creates a Dataflow job. To create a job, we recommend using `projects.locations.jobs.create` with a [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints). Using `projects.jobs.create` is not recommended, as your job will always start in `us-central1`. Do not enter confidential information when you supply string values using the API.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | The ID of the Cloud Platform project that the job belongs to. |
| `location` | `string` | query | No | The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains this job. |
| `replaceJobId` | `string` | query | No | Deprecated. This field is now in the Job message. |
| `view` | `string` | query | No | The level of information requested in response. |

**Request body**: `Job`

**Response**: `Job`

```typescript
const res = await dataflow.jobs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `dataflow.projects.jobs.messages.list`

**GET** `v1b3/projects/{projectId}/jobs/{jobId}/messages`

Request the job status. To request the status of a job, we recommend using `projects.locations.jobs.messages.list` with a [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints). Using `projects.jobs.messages.list` is not recommended, as you can only request the status of jobs that are running in `us-central1`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | A project id. |
| `jobId` | `string` | path | Yes | The job to get messages about. |
| `endTime` | `string` | query | No | Return only messages with timestamps < end_time. The default is now (i.e. return up to the latest messages available). |
| `location` | `string` | query | No | The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains the job sp... |
| `minimumImportance` | `string` | query | No | Filter to only get messages with importance >= level |
| `pageSize` | `integer` | query | No | If specified, determines the maximum number of messages to return. If unspecified, the service may choose an appropri... |
| `pageToken` | `string` | query | No | If supplied, this should be the value of next_page_token returned by an earlier call. This will cause the next page o... |
| `startTime` | `string` | query | No | If specified, return only messages with timestamps >= start_time. The default is the job creation time (i.e. beginnin... |

**Response**: `ListJobMessagesResponse`

```typescript
const res = await dataflow.messages.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `dataflow.projects.jobs.workItems.reportStatus`

**POST** `v1b3/projects/{projectId}/jobs/{jobId}/workItems:reportStatus`

Reports the status of dataflow WorkItems leased by a worker.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | The project which owns the WorkItem's job. |
| `jobId` | `string` | path | Yes | The job which the WorkItem is part of. |

**Request body**: `ReportWorkItemStatusRequest`

**Response**: `ReportWorkItemStatusResponse`

```typescript
const res = await dataflow.workItems.reportStatus({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `dataflow.projects.jobs.workItems.lease`

**POST** `v1b3/projects/{projectId}/jobs/{jobId}/workItems:lease`

Leases a dataflow WorkItem to run.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Identifies the project this worker belongs to. |
| `jobId` | `string` | path | Yes | Identifies the workflow job this worker belongs to. |

**Request body**: `LeaseWorkItemRequest`

**Response**: `LeaseWorkItemResponse`

```typescript
const res = await dataflow.workItems.lease({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `dataflow.projects.jobs.debug.sendCapture`

**POST** `v1b3/projects/{projectId}/jobs/{jobId}/debug/sendCapture`

Send encoded debug capture data for component.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | The project id. |
| `jobId` | `string` | path | Yes | The job id. |

**Request body**: `SendDebugCaptureRequest`

**Response**: `SendDebugCaptureResponse`

```typescript
const res = await dataflow.debug.sendCapture({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

### `dataflow.projects.jobs.debug.getConfig`

**POST** `v1b3/projects/{projectId}/jobs/{jobId}/debug/getConfig`

Get encoded debug configuration for component. Not cacheable.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | The project id. |
| `jobId` | `string` | path | Yes | The job id. |

**Request body**: `GetDebugConfigRequest`

**Response**: `GetDebugConfigResponse`

```typescript
const res = await dataflow.debug.getConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/compute`

---

## Schemas

### `ApproximateProgress`

Obsolete in favor of ApproximateReportedProgress and ApproximateSplitRequest.

| Property | Type | Description |
|----------|------|-------------|
| `percentComplete` | `number` | Obsolete. |
| `position` | `Position` | Obsolete. |
| `remainingTime` | `string` | Obsolete. |

### `ApproximateReportedProgress`

A progress measurement of a WorkItem by a worker.

| Property | Type | Description |
|----------|------|-------------|
| `consumedParallelism` | `ReportedParallelism` | Total amount of parallelism in the portion of input of this task that has already been consumed a... |
| `fractionConsumed` | `number` | Completion as fraction of the input consumed, from 0.0 (beginning, nothing consumed), to 1.0 (end... |
| `position` | `Position` | A Position within the work to represent a progress. |
| `remainingParallelism` | `ReportedParallelism` | Total amount of parallelism in the input of this task that remains, (i.e. can be delegated to thi... |

### `ApproximateSplitRequest`

A suggestion by the service to the worker to dynamically split the WorkItem.

| Property | Type | Description |
|----------|------|-------------|
| `fractionConsumed` | `number` | A fraction at which to split the work item, from 0.0 (beginning of the input) to 1.0 (end of the ... |
| `fractionOfRemainder` | `number` | The fraction of the remainder of work to split the work item at, from 0.0 (split at the current p... |
| `position` | `Position` | A Position at which to split the work item. |

### `AutoscalingEvent`

A structured message reporting an autoscaling decision made by the Dataflow service.

| Property | Type | Description |
|----------|------|-------------|
| `currentNumWorkers` | `string` | The current number of workers the job has. |
| `description` | `StructuredMessage` | A message describing why the system decided to adjust the current number of workers, why it faile... |
| `eventType` | `string` | The type of autoscaling event to report. |
| `targetNumWorkers` | `string` | The target number of workers the worker pool wants to resize to use. |
| `time` | `string` | The time this event was emitted to indicate a new target or current num_workers value. |
| `workerPool` | `string` | A short and friendly name for the worker pool this event refers to. |

### `AutoscalingSettings`

Settings for WorkerPool autoscaling.

| Property | Type | Description |
|----------|------|-------------|
| `algorithm` | `string` | The algorithm to use for autoscaling. |
| `maxNumWorkers` | `integer` | The maximum number of workers to cap scaling at. |

### `Base2Exponent`

Exponential buckets where the growth factor between buckets is `2**(2**-scale)`. e.g. for `scale=1` growth factor is `2**(2**(-1))=sqrt(2)`. `n` buckets will have the following boundaries. - 0th: [0, gf) - i in [1, n-1]: [gf^(i), gf^(i+1))

| Property | Type | Description |
|----------|------|-------------|
| `numberOfBuckets` | `integer` | Must be greater than 0. |
| `scale` | `integer` | Must be between -3 and 3. This forces the growth factor of the bucket boundaries to be between `2... |

### `BigQueryIODetails`

Metadata for a BigQuery connector used by the job.

| Property | Type | Description |
|----------|------|-------------|
| `dataset` | `string` | Dataset accessed in the connection. |
| `projectId` | `string` | Project accessed in the connection. |
| `query` | `string` | Query used to access data in the connection. |
| `table` | `string` | Table accessed in the connection. |

### `BigTableIODetails`

Metadata for a Cloud Bigtable connector used by the job.

| Property | Type | Description |
|----------|------|-------------|
| `instanceId` | `string` | InstanceId accessed in the connection. |
| `projectId` | `string` | ProjectId accessed in the connection. |
| `tableId` | `string` | TableId accessed in the connection. |

### `BoundedTrie`

The message type used for encoding metrics of type bounded trie.

| Property | Type | Description |
|----------|------|-------------|
| `bound` | `integer` | The maximum number of elements to store before truncation. |
| `root` | `BoundedTrieNode` | A compact representation of all the elements in this trie. |
| `singleton` | `array<string>` | A more efficient representation for metrics consisting of a single value. |

### `BoundedTrieNode`

A single node in a BoundedTrie.

| Property | Type | Description |
|----------|------|-------------|
| `children` | `object` | Children of this node. Must be empty if truncated is true. |
| `truncated` | `boolean` | Whether this node has been truncated. A truncated leaf represents possibly many children with the... |

### `BucketOptions`

`BucketOptions` describes the bucket boundaries used in the histogram.

| Property | Type | Description |
|----------|------|-------------|
| `exponential` | `Base2Exponent` | Bucket boundaries grow exponentially. |
| `linear` | `Linear` | Bucket boundaries grow linearly. |

### `CPUTime`

Modeled after information exposed by /proc/stat.

| Property | Type | Description |
|----------|------|-------------|
| `rate` | `number` | Average CPU utilization rate (% non-idle cpu / second) since previous sample. |
| `timestamp` | `string` | Timestamp of the measurement. |
| `totalMs` | `string` | Total active CPU time across all cores (ie., non-idle) in milliseconds since start-up. |

### `ComponentSource`

Description of an interstitial value between transforms in an execution stage.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Dataflow service generated name for this source. |
| `originalTransformOrCollection` | `string` | User name for the original user transform or collection with which this source is most closely as... |
| `userName` | `string` | Human-readable name for this transform; may be user or system generated. |

### `ComponentTransform`

Description of a transform executed as part of an execution stage.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Dataflow service generated name for this source. |
| `originalTransform` | `string` | User name for the original user transform with which this transform is most closely associated. |
| `userName` | `string` | Human-readable name for this transform; may be user or system generated. |

### `ComputationTopology`

All configuration data for a particular Computation.

| Property | Type | Description |
|----------|------|-------------|
| `computationId` | `string` | The ID of the computation. |
| `inputs` | `array<StreamLocation>` | The inputs to the computation. |
| `keyRanges` | `array<KeyRangeLocation>` | The key ranges processed by the computation. |
| `outputs` | `array<StreamLocation>` | The outputs from the computation. |
| `stateFamilies` | `array<StateFamilyConfig>` | The state family values. |
| `systemStageName` | `string` | The system stage name. |

### `ConcatPosition`

A position that encapsulates an inner position and an index for the inner position. A ConcatPosition can be used by a reader of a source that encapsulates a set of other sources.

| Property | Type | Description |
|----------|------|-------------|
| `index` | `integer` | Index of the inner source. |
| `position` | `Position` | Position within the inner source. |

### `ContainerSpec`

Container Spec.

| Property | Type | Description |
|----------|------|-------------|
| `defaultEnvironment` | `FlexTemplateRuntimeEnvironment` | Default runtime environment for the job. |
| `image` | `string` | Name of the docker container image. E.g., gcr.io/project/some-image |
| `imageRepositoryCertPath` | `string` | Cloud Storage path to self-signed certificate of private registry. |
| `imageRepositoryPasswordSecretId` | `string` | Secret Manager secret id for password to authenticate to private registry. |
| `imageRepositoryUsernameSecretId` | `string` | Secret Manager secret id for username to authenticate to private registry. |
| `metadata` | `TemplateMetadata` | Metadata describing a template including description and validation rules. |
| `sdkInfo` | `SDKInfo` | Required. SDK info of the Flex Template. |

### `CounterMetadata`

CounterMetadata includes all static non-name non-value counter attributes.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Human-readable description of the counter semantics. |
| `kind` | `string` | Counter aggregation kind. |
| `otherUnits` | `string` | A string referring to the unit type. |
| `standardUnits` | `string` | System defined Units, see above enum. |

### `CounterStructuredName`

Identifies a counter within a per-job namespace. Counters whose structured names are the same get merged into a single value for the job.

| Property | Type | Description |
|----------|------|-------------|
| `componentStepName` | `string` | Name of the optimized step being executed by the workers. |
| `executionStepName` | `string` | Name of the stage. An execution step contains multiple component steps. |
| `inputIndex` | `integer` | Index of an input collection that's being read from/written to as a side input. The index identif... |
| `name` | `string` | Counter name. Not necessarily globally-unique, but unique within the context of the other fields.... |
| `origin` | `string` | One of the standard Origins defined above. |
| `originNamespace` | `string` | A string containing a more specific namespace of the counter's origin. |
| `originalRequestingStepName` | `string` | The step name requesting an operation, such as GBK. I.e. the ParDo causing a read/write from shuf... |
| `originalStepName` | `string` | System generated name of the original step in the user's graph, before optimization. |
| `portion` | `string` | Portion of this counter, either key or value. |
| `workerId` | `string` | ID of a particular worker. |

### `CounterStructuredNameAndMetadata`

A single message which encapsulates structured name and metadata for a given counter.

| Property | Type | Description |
|----------|------|-------------|
| `metadata` | `CounterMetadata` | Metadata associated with a counter |
| `name` | `CounterStructuredName` | Structured name of the counter. |

### `CounterUpdate`

An update to a Counter sent from a worker. Next ID: 17

| Property | Type | Description |
|----------|------|-------------|
| `boolean` | `boolean` | Boolean value for And, Or. |
| `boundedTrie` | `BoundedTrie` | Bounded trie data |
| `cumulative` | `boolean` | True if this counter is reported as the total cumulative aggregate value accumulated since the wo... |
| `distribution` | `DistributionUpdate` | Distribution data |
| `floatingPoint` | `number` | Floating point value for Sum, Max, Min. |
| `floatingPointList` | `FloatingPointList` | List of floating point numbers, for Set. |
| `floatingPointMean` | `FloatingPointMean` | Floating point mean aggregation value for Mean. |
| `integer` | `SplitInt64` | Integer value for Sum, Max, Min. |
| `integerGauge` | `IntegerGauge` | Gauge data |
| `integerList` | `IntegerList` | List of integers, for Set. |
| `integerMean` | `IntegerMean` | Integer mean aggregation value for Mean. |
| `internal` | `any` | Value for internally-defined counters used by the Dataflow service. |
| `nameAndKind` | `NameAndKind` | Counter name and aggregation type. |
| `shortId` | `string` | The service-generated short identifier for this counter. The short_id -> (name, metadata) mapping... |
| `stringList` | `StringList` | List of strings, for Set. |
| `structuredNameAndMetadata` | `CounterStructuredNameAndMetadata` | Counter structured name and metadata. |

### `CreateJobFromTemplateRequest`

A request to create a Cloud Dataflow job from a template.

| Property | Type | Description |
|----------|------|-------------|
| `environment` | `RuntimeEnvironment` | The runtime environment for the job. |
| `gcsPath` | `string` | Required. A Cloud Storage path to the template from which to create the job. Must be a valid Clou... |
| `jobName` | `string` | Required. The job name to use for the created job. |
| `location` | `string` | The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) to w... |
| `parameters` | `object` | The runtime parameters to pass to the job. |

### `CustomSourceLocation`

Identifies the location of a custom souce.

| Property | Type | Description |
|----------|------|-------------|
| `stateful` | `boolean` | Whether this source is stateful. |

### `DataDiskAssignment`

Data disk assignment for a given VM instance.

| Property | Type | Description |
|----------|------|-------------|
| `dataDisks` | `array<string>` | Mounted data disks. The order is important a data disk's 0-based index in this list defines which... |
| `vmInstance` | `string` | VM instance name the data disks mounted to, for example "myproject-1014-104817-4c2-harness-0". |

### `DataSamplingConfig`

Configuration options for sampling elements.

| Property | Type | Description |
|----------|------|-------------|
| `behaviors` | `array<string>` | List of given sampling behaviors to enable. For example, specifying behaviors = [ALWAYS_ON] sampl... |

### `DataSamplingReport`

Contains per-worker telemetry about the data sampling feature.

| Property | Type | Description |
|----------|------|-------------|
| `bytesWrittenDelta` | `string` | Optional. Delta of bytes written to file from previous report. |
| `elementsSampledBytes` | `string` | Optional. Delta of bytes sampled from previous report. |
| `elementsSampledCount` | `string` | Optional. Delta of number of elements sampled from previous report. |
| `exceptionsSampledCount` | `string` | Optional. Delta of number of samples taken from user code exceptions from previous report. |
| `pcollectionsSampledCount` | `string` | Optional. Delta of number of PCollections sampled from previous report. |
| `persistenceErrorsCount` | `string` | Optional. Delta of errors counts from persisting the samples from previous report. |
| `translationErrorsCount` | `string` | Optional. Delta of errors counts from retrieving, or translating the samples from previous report. |

### `DataflowGaugeValue`

The gauge value of a metric.

| Property | Type | Description |
|----------|------|-------------|
| `measuredTime` | `string` | The timestamp when the gauge was recorded. |
| `value` | `string` | The value of the gauge. |

### `DataflowHistogramValue`

Summary statistics for a population of values. HistogramValue contains a sequence of buckets and gives a count of values that fall into each bucket. Bucket boundares are defined by a formula and bucket widths are either fixed or exponentially increasing.

| Property | Type | Description |
|----------|------|-------------|
| `bucketCounts` | `array<string>` | Optional. The number of values in each bucket of the histogram, as described in `bucket_options`.... |
| `bucketOptions` | `BucketOptions` | Describes the bucket boundaries used in the histogram. |
| `count` | `string` | Number of values recorded in this histogram. |
| `outlierStats` | `OutlierStats` | Statistics on the values recorded in the histogram that fall out of the bucket boundaries. |

### `DatastoreIODetails`

Metadata for a Datastore connector used by the job.

| Property | Type | Description |
|----------|------|-------------|
| `namespace` | `string` | Namespace used in the connection. |
| `projectId` | `string` | ProjectId accessed in the connection. |

### `DebugOptions`

Describes any options that have an effect on the debugging of pipelines.

| Property | Type | Description |
|----------|------|-------------|
| `dataSampling` | `DataSamplingConfig` | Configuration options for sampling elements from a running pipeline. |
| `enableHotKeyLogging` | `boolean` | Optional. When true, enables the logging of the literal hot key to the user's Cloud Logging. |

### `DeleteSnapshotResponse`

Response from deleting a snapshot.

### `DerivedSource`

Specification of one of the bundles produced as a result of splitting a Source (e.g. when executing a SourceSplitRequest, or when splitting an active task using WorkItemStatus.dynamic_source_split), relative to the source being split.

| Property | Type | Description |
|----------|------|-------------|
| `derivationMode` | `string` | What source to base the produced source on (if any). |
| `source` | `Source` | Specification of the source. |

### `Disk`

Describes the data disk used by a workflow job.

| Property | Type | Description |
|----------|------|-------------|
| `diskType` | `string` | Disk storage type, as defined by Google Compute Engine. This must be a disk type appropriate to t... |
| `mountPoint` | `string` | Directory in a VM where disk is mounted. |
| `sizeGb` | `integer` | Size of disk in GB. If zero or unspecified, the service will attempt to choose a reasonable default. |

### `DisplayData`

Data provided with a pipeline or transform to provide descriptive info.

| Property | Type | Description |
|----------|------|-------------|
| `boolValue` | `boolean` | Contains value if the data is of a boolean type. |
| `durationValue` | `string` | Contains value if the data is of duration type. |
| `floatValue` | `number` | Contains value if the data is of float type. |
| `int64Value` | `string` | Contains value if the data is of int64 type. |
| `javaClassValue` | `string` | Contains value if the data is of java class type. |
| `key` | `string` | The key identifying the display data. This is intended to be used as a label for the display data... |
| `label` | `string` | An optional label to display in a dax UI for the element. |
| `namespace` | `string` | The namespace for the key. This is usually a class name or programming language namespace (i.e. p... |
| `shortStrValue` | `string` | A possible additional shorter value to display. For example a java_class_name_value of com.mypack... |
| `strValue` | `string` | Contains value if the data is of string type. |
| `timestampValue` | `string` | Contains value if the data is of timestamp type. |
| `url` | `string` | An optional full URL. |

### `DistributionUpdate`

A metric value representing a distribution.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `SplitInt64` | The count of the number of elements present in the distribution. |
| `histogram` | `Histogram` | (Optional) Histogram of value counts for the distribution. |
| `max` | `SplitInt64` | The maximum value present in the distribution. |
| `min` | `SplitInt64` | The minimum value present in the distribution. |
| `sum` | `SplitInt64` | Use an int64 since we'd prefer the added precision. If overflow is a common problem we can detect... |
| `sumOfSquares` | `number` | Use a double since the sum of squares is likely to overflow int64. |

### `DynamicSourceSplit`

When a task splits using WorkItemStatus.dynamic_source_split, this message describes the two parts of the split relative to the description of the current task's input.

| Property | Type | Description |
|----------|------|-------------|
| `primary` | `DerivedSource` | Primary part (continued to be processed by worker). Specified relative to the previously-current ... |
| `residual` | `DerivedSource` | Residual part (returned to the pool of work). Specified relative to the previously-current source. |

### `Environment`

Describes the environment in which a Dataflow Job runs.

| Property | Type | Description |
|----------|------|-------------|
| `clusterManagerApiService` | `string` | The type of cluster manager API to use. If unknown or unspecified, the service will attempt to ch... |
| `dataset` | `string` | Optional. The dataset for the current project where various workflow related tables are stored. T... |
| `debugOptions` | `DebugOptions` | Optional. Any debugging options to be supplied to the job. |
| `experiments` | `array<string>` | The list of experiments to enable. This field should be used for SDK related experiments and not ... |
| `flexResourceSchedulingGoal` | `string` | Optional. Which Flexible Resource Scheduling mode to run in. |
| `internalExperiments` | `object` | Experimental settings. |
| `sdkPipelineOptions` | `object` | The Cloud Dataflow SDK pipeline options specified by the user. These options are passed through t... |
| `serviceAccountEmail` | `string` | Optional. Identity to run virtual machines as. Defaults to the default account. |
| `serviceKmsKeyName` | `string` | Optional. If set, contains the Cloud KMS key identifier used to encrypt data at rest, AKA a Custo... |
| `serviceOptions` | `array<string>` | Optional. The list of service options to enable. This field should be used for service related ex... |
| `shuffleMode` | `string` | Output only. The shuffle mode used for the job. |
| `streamingMode` | `string` | Optional. Specifies the Streaming Engine message processing guarantees. Reduces cost and latency ... |
| `tempStoragePrefix` | `string` | The prefix of the resources the system should use for temporary storage. The system will append t... |
| `usePublicIps` | `boolean` | Optional. True when any worker pool that uses public IPs is present. |
| `useStreamingEngineResourceBasedBilling` | `boolean` | Output only. Whether the job uses the Streaming Engine resource-based billing model. |
| `userAgent` | `object` | Optional. A description of the process that generated the request. |
| `version` | `object` | A structure describing which components and their versions of the service are required in order t... |
| `workerPools` | `array<WorkerPool>` | The worker pools. At least one "harness" worker pool must be specified in order for the job to ha... |
| `workerRegion` | `string` | Optional. The Compute Engine region (https://cloud.google.com/compute/docs/regions-zones/regions-... |
| `workerZone` | `string` | Optional. The Compute Engine zone (https://cloud.google.com/compute/docs/regions-zones/regions-zo... |

### `ExecutionStageState`

A message describing the state of a particular execution stage.

| Property | Type | Description |
|----------|------|-------------|
| `currentStateTime` | `string` | The time at which the stage transitioned to this state. |
| `executionStageName` | `string` | The name of the execution stage. |
| `executionStageState` | `string` | Executions stage states allow the same set of values as JobState. |

### `ExecutionStageSummary`

Description of the composing transforms, names/ids, and input/outputs of a stage of execution. Some composing transforms and sources may have been generated by the Dataflow service during execution planning.

| Property | Type | Description |
|----------|------|-------------|
| `componentSource` | `array<ComponentSource>` | Collections produced and consumed by component transforms of this stage. |
| `componentTransform` | `array<ComponentTransform>` | Transforms that comprise this execution stage. |
| `id` | `string` | Dataflow service generated id for this stage. |
| `inputSource` | `array<StageSource>` | Input sources for this stage. |
| `kind` | `string` | Type of transform this stage is executing. |
| `name` | `string` | Dataflow service generated name for this stage. |
| `outputSource` | `array<StageSource>` | Output sources for this stage. |
| `prerequisiteStage` | `array<string>` | Other stages that must complete before this stage can run. |

### `FailedLocation`

Indicates which [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) failed to respond to a request for data.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name of the [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-end... |

### `FileIODetails`

Metadata for a File connector used by the job.

| Property | Type | Description |
|----------|------|-------------|
| `filePattern` | `string` | File Pattern used to access files by the connector. |

### `FlattenInstruction`

An instruction that copies its inputs (zero or more) to its (single) output.

| Property | Type | Description |
|----------|------|-------------|
| `inputs` | `array<InstructionInput>` | Describes the inputs to the flatten instruction. |

### `FlexTemplateRuntimeEnvironment`

The environment values to be set at runtime for flex template.

| Property | Type | Description |
|----------|------|-------------|
| `additionalExperiments` | `array<string>` | Additional experiment flags for the job. |
| `additionalPipelineOptions` | `array<string>` | Optional. Additional pipeline option flags for the job. |
| `additionalUserLabels` | `object` | Additional user labels to be specified for the job. Keys and values must follow the restrictions ... |
| `autoscalingAlgorithm` | `string` | The algorithm to use for autoscaling |
| `diskSizeGb` | `integer` | Worker disk size, in gigabytes. |
| `dumpHeapOnOom` | `boolean` | If true, when processing time is spent almost entirely on garbage collection (GC), saves a heap d... |
| `enableLauncherVmSerialPortLogging` | `boolean` | If true serial port logging will be enabled for the launcher VM. |
| `enableStreamingEngine` | `boolean` | Whether to enable Streaming Engine for the job. |
| `flexrsGoal` | `string` | Set FlexRS goal for the job. https://cloud.google.com/dataflow/docs/guides/flexrs |
| `ipConfiguration` | `string` | Configuration for VM IPs. |
| `kmsKeyName` | `string` | Name for the Cloud KMS key for the job. Key format is: projects//locations//keyRings//cryptoKeys/ |
| `launcherMachineType` | `string` | The machine type to use for launching the job. The default is n1-standard-1. |
| `machineType` | `string` | The machine type to use for the job. Defaults to the value from the template if not specified. |
| `maxWorkers` | `integer` | The maximum number of Google Compute Engine instances to be made available to your pipeline durin... |
| `network` | `string` | Network to which VMs will be assigned. If empty or unspecified, the service will use the network ... |
| `numWorkers` | `integer` | The initial number of Google Compute Engine instances for the job. |
| `saveHeapDumpsToGcsPath` | `string` | Cloud Storage bucket (directory) to upload heap dumps to. Enabling this field implies that `dump_... |
| `sdkContainerImage` | `string` | Docker registry location of container image to use for the 'worker harness. Default is the contai... |
| `serviceAccountEmail` | `string` | The email address of the service account to run the job as. |
| `stagingLocation` | `string` | The Cloud Storage path for staging local files. Must be a valid Cloud Storage URL, beginning with... |
| `streamingMode` | `string` | Optional. Specifies the Streaming Engine message processing guarantees. Reduces cost and latency ... |
| `subnetwork` | `string` | Subnetwork to which VMs will be assigned, if desired. You can specify a subnetwork using either a... |
| `tempLocation` | `string` | The Cloud Storage path to use for temporary files. Must be a valid Cloud Storage URL, beginning w... |
| `workerRegion` | `string` | The Compute Engine region (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in ... |
| `workerZone` | `string` | The Compute Engine zone (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in wh... |
| `zone` | `string` | The Compute Engine [availability zone](https://cloud.google.com/compute/docs/regions-zones/region... |

### `FloatingPointList`

A metric value representing a list of floating point numbers.

| Property | Type | Description |
|----------|------|-------------|
| `elements` | `array<number>` | Elements of the list. |

### `FloatingPointMean`

A representation of a floating point mean metric contribution.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `SplitInt64` | The number of values being aggregated. |
| `sum` | `number` | The sum of all values being aggregated. |

### `GPUUsage`

Information about the GPU usage on the worker.

| Property | Type | Description |
|----------|------|-------------|
| `timestamp` | `string` | Required. Timestamp of the measurement. |
| `utilization` | `GPUUtilization` | Required. Utilization info about the GPU. |

### `GPUUtilization`

Utilization details about the GPU.

| Property | Type | Description |
|----------|------|-------------|
| `rate` | `number` | Required. GPU utilization rate of any kernel over the last sample period in the range of [0, 1]. |

### `GetDebugConfigRequest`

Request to get updated debug configuration for component.

| Property | Type | Description |
|----------|------|-------------|
| `componentId` | `string` | The internal component id for which debug configuration is requested. |
| `location` | `string` | The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that... |
| `workerId` | `string` | The worker id, i.e., VM hostname. |

### `GetDebugConfigResponse`

Response to a get debug configuration request.

| Property | Type | Description |
|----------|------|-------------|
| `config` | `string` | The encoded debug configuration for the requested component. |

### `GetTemplateResponse`

The response to a GetTemplate request.

| Property | Type | Description |
|----------|------|-------------|
| `metadata` | `TemplateMetadata` | The template metadata describing the template name, available parameters, etc. |
| `runtimeMetadata` | `RuntimeMetadata` | Describes the runtime metadata with SDKInfo and available parameters. |
| `status` | `Status` | The status of the get template request. Any problems with the request will be indicated in the er... |
| `templateType` | `string` | Template Type. |

### `GetWorkerStacktracesRequest`

Request to get worker stacktraces from debug capture.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | The end time for the stacktrace query. The returned stacktraces will be a recent stack trace at o... |
| `workerId` | `string` | The worker for which to get stacktraces. The returned stacktraces will be for the SDK harness run... |

### `GetWorkerStacktracesResponse`

Response to get worker stacktraces from debug capture.

| Property | Type | Description |
|----------|------|-------------|
| `sdks` | `array<Sdk>` | Repeated as unified worker may have multiple SDK processes. |

### `Histogram`

Histogram of value counts for a distribution. Buckets have an inclusive lower bound and exclusive upper bound and use "1,2,5 bucketing": The first bucket range is from [0,1) and all subsequent bucket boundaries are powers of ten multiplied by 1, 2, or 5. Thus, bucket boundaries are 0, 1, 2, 5, 10, 20, 50, 100, 200, 500, 1000, ... Negative values are not supported.

| Property | Type | Description |
|----------|------|-------------|
| `bucketCounts` | `array<string>` | Counts of values in each bucket. For efficiency, prefix and trailing buckets with count = 0 are e... |
| `firstBucketOffset` | `integer` | Starting index of first stored bucket. The non-inclusive upper-bound of the ith bucket is given b... |

### `HotKeyDebuggingInfo`

Information useful for debugging a hot key detection.

| Property | Type | Description |
|----------|------|-------------|
| `detectedHotKeys` | `object` | Debugging information for each detected hot key. Keyed by a hash of the key. |

### `HotKeyDetection`

Proto describing a hot key detected on a given WorkItem.

| Property | Type | Description |
|----------|------|-------------|
| `hotKeyAge` | `string` | The age of the hot key measured from when it was first detected. |
| `systemName` | `string` | System-defined name of the step containing this hot key. Unique across the workflow. |
| `userStepName` | `string` | User-provided name of the step that contains this hot key. |

### `HotKeyInfo`

Information about a hot key.

| Property | Type | Description |
|----------|------|-------------|
| `hotKeyAge` | `string` | The age of the hot key measured from when it was first detected. |
| `key` | `string` | A detected hot key that is causing limited parallelism. This field will be populated only if the ... |
| `keyTruncated` | `boolean` | If true, then the above key is truncated and cannot be deserialized. This occurs if the key above... |

### `InstructionInput`

An input of an instruction, as a reference to an output of a producer instruction.

| Property | Type | Description |
|----------|------|-------------|
| `outputNum` | `integer` | The output index (origin zero) within the producer. |
| `producerInstructionIndex` | `integer` | The index (origin zero) of the parallel instruction that produces the output to be consumed by th... |

### `InstructionOutput`

An output of an instruction.

| Property | Type | Description |
|----------|------|-------------|
| `codec` | `object` | The codec to use to encode data being written via this output. |
| `name` | `string` | The user-provided name of this output. |
| `onlyCountKeyBytes` | `boolean` | For system-generated byte and mean byte metrics, certain instructions should only report the key ... |
| `onlyCountValueBytes` | `boolean` | For system-generated byte and mean byte metrics, certain instructions should only report the valu... |
| `originalName` | `string` | System-defined name for this output in the original workflow graph. Outputs that do not contribut... |
| `systemName` | `string` | System-defined name of this output. Unique across the workflow. |

### `IntegerGauge`

A metric value representing temporal values of a variable.

| Property | Type | Description |
|----------|------|-------------|
| `timestamp` | `string` | The time at which this value was measured. Measured as msecs from epoch. |
| `value` | `SplitInt64` | The value of the variable represented by this gauge. |

### `IntegerList`

A metric value representing a list of integers.

| Property | Type | Description |
|----------|------|-------------|
| `elements` | `array<SplitInt64>` | Elements of the list. |

### `IntegerMean`

A representation of an integer mean metric contribution.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `SplitInt64` | The number of values being aggregated. |
| `sum` | `SplitInt64` | The sum of all values being aggregated. |

### `Job`

Defines a job to be run by the Cloud Dataflow service. Do not enter confidential information when you supply string values using the API.

| Property | Type | Description |
|----------|------|-------------|
| `clientRequestId` | `string` | The client's unique identifier of the job, re-used across retried attempts. If this field is set,... |
| `createTime` | `string` | The timestamp when the job was initially created. Immutable and set by the Cloud Dataflow service. |
| `createdFromSnapshotId` | `string` | If this is specified, the job's initial state is populated from the given snapshot. |
| `currentState` | `string` | The current state of the job. Jobs are created in the `JOB_STATE_STOPPED` state unless otherwise ... |
| `currentStateTime` | `string` | The timestamp associated with the current state. |
| `environment` | `Environment` | Optional. The environment for the job. |
| `executionInfo` | `JobExecutionInfo` | Deprecated. |
| `id` | `string` | The unique ID of this job. This field is set by the Dataflow service when the job is created, and... |
| `jobMetadata` | `JobMetadata` | This field is populated by the Dataflow service to support filtering jobs by the metadata values ... |
| `labels` | `object` | User-defined labels for this job. The labels map can contain no more than 64 entries. Entries of ... |
| `location` | `string` | Optional. The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpo... |
| `name` | `string` | Optional. The user-specified Dataflow job name. Only one active job with a given name can exist i... |
| `pausable` | `boolean` | Output only. Indicates whether the job can be paused. |
| `pipelineDescription` | `PipelineDescription` | Preliminary field: The format of this data may change at any time. A description of the user pipe... |
| `projectId` | `string` | The ID of the Google Cloud project that the job belongs to. |
| `replaceJobId` | `string` | If this job is an update of an existing job, this field is the job ID of the job it replaced. Whe... |
| `replacedByJobId` | `string` | If another job is an update of this job (and thus, this job is in `JOB_STATE_UPDATED`), this fiel... |
| `requestedState` | `string` | The job's requested state. Applies to `UpdateJob` requests. Set `requested_state` with `UpdateJob... |
| `runtimeUpdatableParams` | `RuntimeUpdatableParams` | This field may ONLY be modified at runtime using the projects.jobs.update method to adjust job be... |
| `satisfiesPzi` | `boolean` | Output only. Reserved for future use. This field is set only in responses from the server; it is ... |
| `satisfiesPzs` | `boolean` | Reserved for future use. This field is set only in responses from the server; it is ignored if it... |
| `serviceResources` | `ServiceResources` | Output only. Resources used by the Dataflow Service to run the job. |
| `stageStates` | `array<ExecutionStageState>` | This field may be mutated by the Cloud Dataflow service; callers cannot mutate it. |
| `startTime` | `string` | The timestamp when the job was started (transitioned to JOB_STATE_PENDING). Flexible resource sch... |
| `steps` | `array<Step>` | Exactly one of step or steps_location should be specified. The top-level steps that constitute th... |
| `stepsLocation` | `string` | The Cloud Storage location where the steps are stored. |
| `tempFiles` | `array<string>` | A set of files the system should be aware of that are used for temporary storage. These temporary... |
| `transformNameMapping` | `object` | Optional. The map of transform name prefixes of the job to be replaced to the corresponding name ... |
| `type` | `string` | Optional. The type of Dataflow job. |

### `JobExecutionDetails`

Information about the execution of a job.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If present, this response does not contain all requested tasks. To obtain the next page of result... |
| `stages` | `array<StageSummary>` | The stages of the job execution. |

### `JobExecutionInfo`

Additional information about how a Cloud Dataflow job will be executed that isn't contained in the submitted job.

| Property | Type | Description |
|----------|------|-------------|
| `stages` | `object` | A mapping from each stage to the information about that stage. |

### `JobExecutionStageInfo`

Contains information about how a particular google.dataflow.v1beta3.Step will be executed.

| Property | Type | Description |
|----------|------|-------------|
| `stepName` | `array<string>` | The steps associated with the execution stage. Note that stages may have several steps, and that ... |

### `JobMessage`

A particular message pertaining to a Dataflow job.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | Deprecated. |
| `messageImportance` | `string` | Importance level of the message. |
| `messageText` | `string` | The text of the message. |
| `time` | `string` | The timestamp of the message. |

### `JobMetadata`

Metadata available primarily for filtering jobs. Will be included in the ListJob response and Job SUMMARY view.

| Property | Type | Description |
|----------|------|-------------|
| `bigTableDetails` | `array<BigTableIODetails>` | Identification of a Cloud Bigtable source used in the Dataflow job. |
| `bigqueryDetails` | `array<BigQueryIODetails>` | Identification of a BigQuery source used in the Dataflow job. |
| `datastoreDetails` | `array<DatastoreIODetails>` | Identification of a Datastore source used in the Dataflow job. |
| `fileDetails` | `array<FileIODetails>` | Identification of a File source used in the Dataflow job. |
| `pubsubDetails` | `array<PubSubIODetails>` | Identification of a Pub/Sub source used in the Dataflow job. |
| `sdkVersion` | `SdkVersion` | The SDK version used to run the job. |
| `spannerDetails` | `array<SpannerIODetails>` | Identification of a Spanner source used in the Dataflow job. |
| `userDisplayProperties` | `object` | List of display properties to help UI filter jobs. |

### `JobMetrics`

JobMetrics contains a collection of metrics describing the detailed progress of a Dataflow job. Metrics correspond to user-defined and system-defined metrics in the job. For more information, see [Dataflow job metrics] (https://cloud.google.com/dataflow/docs/guides/using-monitoring-intf). This resource captures only the most recent values of each metric; time-series data can be queried for them (under the same metric names) from Cloud Monitoring.

| Property | Type | Description |
|----------|------|-------------|
| `metricTime` | `string` | Timestamp as of which metric values are current. |
| `metrics` | `array<MetricUpdate>` | All metrics for this job. |

### `KeyRangeDataDiskAssignment`

Data disk assignment information for a specific key-range of a sharded computation. Currently we only support UTF-8 character splits to simplify encoding into JSON.

| Property | Type | Description |
|----------|------|-------------|
| `dataDisk` | `string` | The name of the data disk where data for this range is stored. This name is local to the Google C... |
| `end` | `string` | The end (exclusive) of the key range. |
| `start` | `string` | The start (inclusive) of the key range. |

### `KeyRangeLocation`

Location information for a specific key-range of a sharded computation. Currently we only support UTF-8 character splits to simplify encoding into JSON.

| Property | Type | Description |
|----------|------|-------------|
| `dataDisk` | `string` | The name of the data disk where data for this range is stored. This name is local to the Google C... |
| `deliveryEndpoint` | `string` | The physical location of this range assignment to be used for streaming computation cross-worker ... |
| `deprecatedPersistentDirectory` | `string` | DEPRECATED. The location of the persistent state for this range, as a persistent directory in the... |
| `end` | `string` | The end (exclusive) of the key range. |
| `start` | `string` | The start (inclusive) of the key range. |

### `LaunchFlexTemplateParameter`

Launch FlexTemplate Parameter.

| Property | Type | Description |
|----------|------|-------------|
| `containerSpec` | `ContainerSpec` | Spec about the container image to launch. |
| `containerSpecGcsPath` | `string` | Cloud Storage path to a file with json serialized ContainerSpec as content. |
| `environment` | `FlexTemplateRuntimeEnvironment` | The runtime environment for the FlexTemplate job |
| `jobName` | `string` | Required. The job name to use for the created job. For update job request, job name should be sam... |
| `launchOptions` | `object` | Launch options for this flex template job. This is a common set of options across languages and t... |
| `parameters` | `object` | The parameters for FlexTemplate. Ex. {"num_workers":"5"} |
| `transformNameMappings` | `object` | Use this to pass transform_name_mappings for streaming update jobs. Ex:{"oldTransformName":"newTr... |
| `update` | `boolean` | Set this to true if you are sending a request to update a running streaming job. When set, the jo... |

### `LaunchFlexTemplateRequest`

A request to launch a Cloud Dataflow job from a FlexTemplate.

| Property | Type | Description |
|----------|------|-------------|
| `launchParameter` | `LaunchFlexTemplateParameter` | Required. Parameter to launch a job form Flex Template. |
| `validateOnly` | `boolean` | If true, the request is validated but not actually executed. Defaults to false. |

### `LaunchFlexTemplateResponse`

Response to the request to launch a job from Flex Template.

| Property | Type | Description |
|----------|------|-------------|
| `job` | `Job` | The job that was launched, if the request was not a dry run and the job was successfully launched. |

### `LaunchTemplateParameters`

Parameters to provide to the template being launched. Note that the [metadata in the pipeline code] (https://cloud.google.com/dataflow/docs/guides/templates/creating-templates#metadata) determines which runtime parameters are valid.

| Property | Type | Description |
|----------|------|-------------|
| `environment` | `RuntimeEnvironment` | The runtime environment for the job. |
| `jobName` | `string` | Required. The job name to use for the created job. The name must match the regular expression `[a... |
| `parameters` | `object` | The runtime parameters to pass to the job. |
| `transformNameMapping` | `object` | Only applicable when updating a pipeline. Map of transform name prefixes of the job to be replace... |
| `update` | `boolean` | If set, replace the existing pipeline with the name specified by jobName with this pipeline, pres... |

### `LaunchTemplateResponse`

Response to the request to launch a template.

| Property | Type | Description |
|----------|------|-------------|
| `job` | `Job` | The job that was launched, if the request was not a dry run and the job was successfully launched. |

### `LeaseWorkItemRequest`

Request to lease WorkItems.

| Property | Type | Description |
|----------|------|-------------|
| `currentWorkerTime` | `string` | The current timestamp at the worker. |
| `location` | `string` | The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that... |
| `projectNumber` | `string` | Optional. The project number of the project this worker belongs to. |
| `requestedLeaseDuration` | `string` | The initial lease period. |
| `unifiedWorkerRequest` | `object` | Untranslated bag-of-bytes WorkRequest from UnifiedWorker. |
| `workItemTypes` | `array<string>` | Filter for WorkItem type. |
| `workerCapabilities` | `array<string>` | Worker capabilities. WorkItems might be limited to workers with specific capabilities. |
| `workerId` | `string` | Identifies the worker leasing work -- typically the ID of the virtual machine running the worker. |

### `LeaseWorkItemResponse`

Response to a request to lease WorkItems.

| Property | Type | Description |
|----------|------|-------------|
| `unifiedWorkerResponse` | `object` | Untranslated bag-of-bytes WorkResponse for UnifiedWorker. |
| `workItems` | `array<WorkItem>` | A list of the leased WorkItems. |

### `Linear`

Linear buckets with the following boundaries for indices in 0 to n-1. - i in [0, n-1]: [start + (i)*width, start + (i+1)*width)

| Property | Type | Description |
|----------|------|-------------|
| `numberOfBuckets` | `integer` | Must be greater than 0. |
| `start` | `number` | Lower bound of the first bucket. |
| `width` | `number` | Distance between bucket boundaries. Must be greater than 0. |

### `ListJobMessagesResponse`

Response to a request to list job messages.

| Property | Type | Description |
|----------|------|-------------|
| `autoscalingEvents` | `array<AutoscalingEvent>` | Autoscaling events in ascending timestamp order. |
| `jobMessages` | `array<JobMessage>` | Messages in ascending timestamp order. |
| `nextPageToken` | `string` | The token to obtain the next page of results if there are more. |

### `ListJobsResponse`

Response to a request to list Cloud Dataflow jobs in a project. This might be a partial response, depending on the page size in the ListJobsRequest. However, if the project does not have any jobs, an instance of ListJobsResponse is not returned and the requests's response body is empty {}.

| Property | Type | Description |
|----------|------|-------------|
| `failedLocation` | `array<FailedLocation>` | Zero or more messages describing the [regional endpoints] (https://cloud.google.com/dataflow/docs... |
| `jobs` | `array<Job>` | A subset of the requested job information. |
| `nextPageToken` | `string` | Set if there may be more results than fit in this response. |

### `ListSnapshotsResponse`

List of snapshots.

| Property | Type | Description |
|----------|------|-------------|
| `snapshots` | `array<Snapshot>` | Returned snapshots. |

### `MapTask`

MapTask consists of an ordered set of instructions, each of which describes one particular low-level operation for the worker to perform in order to accomplish the MapTask's WorkItem. Each instruction must appear in the list before any instructions which depends on its output.

| Property | Type | Description |
|----------|------|-------------|
| `counterPrefix` | `string` | Counter prefix that can be used to prefix counters. Not currently used in Dataflow. |
| `instructions` | `array<ParallelInstruction>` | The instructions in the MapTask. |
| `stageName` | `string` | System-defined name of the stage containing this MapTask. Unique across the workflow. |
| `systemName` | `string` | System-defined name of this MapTask. Unique across the workflow. |

### `MemInfo`

Information about the memory usage of a worker or a container within a worker.

| Property | Type | Description |
|----------|------|-------------|
| `currentLimitBytes` | `string` | Instantenous memory limit in bytes. |
| `currentOoms` | `string` | Number of Out of Memory (OOM) events recorded since the previous measurement. |
| `currentRssBytes` | `string` | Instantenous memory (RSS) size in bytes. |
| `timestamp` | `string` | Timestamp of the measurement. |
| `totalGbMs` | `string` | Total memory (RSS) usage since start up in GB * ms. |

### `MetricShortId`

The metric short id is returned to the user alongside an offset into ReportWorkItemStatusRequest

| Property | Type | Description |
|----------|------|-------------|
| `metricIndex` | `integer` | The index of the corresponding metric in the ReportWorkItemStatusRequest. Required. |
| `shortId` | `string` | The service-generated short identifier for the metric. |

### `MetricStructuredName`

Identifies a metric, by describing the source which generated the metric.

| Property | Type | Description |
|----------|------|-------------|
| `context` | `object` | Zero or more labeled fields which identify the part of the job this metric is associated with, su... |
| `name` | `string` | Worker-defined metric name. |
| `origin` | `string` | Origin (namespace) of metric name. May be blank for user-define metrics; will be "dataflow" for m... |

### `MetricUpdate`

Describes the state of a metric.

| Property | Type | Description |
|----------|------|-------------|
| `boundedTrie` | `any` | Worker-computed aggregate value for the "Trie" aggregation kind. The only possible value type is ... |
| `cumulative` | `boolean` | True if this metric is reported as the total cumulative aggregate value accumulated since the wor... |
| `distribution` | `any` | A struct value describing properties of a distribution of numeric values. |
| `gauge` | `any` | A struct value describing properties of a Gauge. Metrics of gauge type show the value of a metric... |
| `internal` | `any` | Worker-computed aggregate value for internal use by the Dataflow service. |
| `kind` | `string` | Metric aggregation kind. The possible metric aggregation kinds are "Sum", "Max", "Min", "Mean", "... |
| `meanCount` | `any` | Worker-computed aggregate value for the "Mean" aggregation kind. This holds the count of the aggr... |
| `meanSum` | `any` | Worker-computed aggregate value for the "Mean" aggregation kind. This holds the sum of the aggreg... |
| `name` | `MetricStructuredName` | Name of the metric. |
| `scalar` | `any` | Worker-computed aggregate value for aggregation kinds "Sum", "Max", "Min", "And", and "Or". The p... |
| `set` | `any` | Worker-computed aggregate value for the "Set" aggregation kind. The only possible value type is a... |
| `trie` | `any` | Worker-computed aggregate value for the "Trie" aggregation kind. The only possible value type is ... |
| `updateTime` | `string` | Timestamp associated with the metric value. Optional when workers are reporting work progress; it... |

### `MetricValue`

The value of a metric along with its name and labels.

| Property | Type | Description |
|----------|------|-------------|
| `metric` | `string` | Base name for this metric. |
| `metricLabels` | `object` | Optional. Set of metric labels for this metric. |
| `valueGauge64` | `DataflowGaugeValue` | Non-cumulative int64 value of this metric. |
| `valueHistogram` | `DataflowHistogramValue` | Histogram value of this metric. |
| `valueInt64` | `string` | Integer value of this metric. |

### `MountedDataDisk`

Describes mounted data disk.

| Property | Type | Description |
|----------|------|-------------|
| `dataDisk` | `string` | The name of the data disk. This name is local to the Google Cloud Platform project and uniquely i... |

### `MultiOutputInfo`

Information about an output of a multi-output DoFn.

| Property | Type | Description |
|----------|------|-------------|
| `tag` | `string` | The id of the tag the user code will emit to this output by; this should correspond to the tag of... |

### `NameAndKind`

Basic metadata about a counter.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | Counter aggregation kind. |
| `name` | `string` | Name of the counter. |

### `OutlierStats`

Statistics for the underflow and overflow bucket.

| Property | Type | Description |
|----------|------|-------------|
| `overflowCount` | `string` | Number of values that are larger than the upper bound of the largest bucket. |
| `overflowMean` | `number` | Mean of values in the overflow bucket. |
| `underflowCount` | `string` | Number of values that are smaller than the lower bound of the smallest bucket. |
| `underflowMean` | `number` | Mean of values in the undeflow bucket. |

### `Package`

The packages that must be installed in order for a worker to run the steps of the Cloud Dataflow job that will be assigned to its worker pool. This is the mechanism by which the Cloud Dataflow SDK causes code to be loaded onto the workers. For example, the Cloud Dataflow Java SDK might use this to install jars containing the user's code and all of the various dependencies (libraries, data files, etc.) required in order for that code to run.

| Property | Type | Description |
|----------|------|-------------|
| `location` | `string` | The resource to read the package from. The supported resource type is: Google Cloud Storage: stor... |
| `name` | `string` | The name of the package. |

### `ParDoInstruction`

An instruction that does a ParDo operation. Takes one main input and zero or more side inputs, and produces zero or more outputs. Runs user code.

| Property | Type | Description |
|----------|------|-------------|
| `input` | `InstructionInput` | The input. |
| `multiOutputInfos` | `array<MultiOutputInfo>` | Information about each of the outputs, if user_fn is a MultiDoFn. |
| `numOutputs` | `integer` | The number of outputs. |
| `sideInputs` | `array<SideInputInfo>` | Zero or more side inputs. |
| `userFn` | `object` | The user function to invoke. |

### `ParallelInstruction`

Describes a particular operation comprising a MapTask.

| Property | Type | Description |
|----------|------|-------------|
| `flatten` | `FlattenInstruction` | Additional information for Flatten instructions. |
| `name` | `string` | User-provided name of this operation. |
| `originalName` | `string` | System-defined name for the operation in the original workflow graph. |
| `outputs` | `array<InstructionOutput>` | Describes the outputs of the instruction. |
| `parDo` | `ParDoInstruction` | Additional information for ParDo instructions. |
| `partialGroupByKey` | `PartialGroupByKeyInstruction` | Additional information for PartialGroupByKey instructions. |
| `read` | `ReadInstruction` | Additional information for Read instructions. |
| `systemName` | `string` | System-defined name of this operation. Unique across the workflow. |
| `write` | `WriteInstruction` | Additional information for Write instructions. |

### `Parameter`

Structured data associated with this message.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | Key or name for this parameter. |
| `value` | `any` | Value for this parameter. |

### `ParameterMetadata`

Metadata for a specific parameter.

| Property | Type | Description |
|----------|------|-------------|
| `customMetadata` | `object` | Optional. Additional metadata for describing this parameter. |
| `defaultValue` | `string` | Optional. The default values will pre-populate the parameter with the given value from the proto.... |
| `enumOptions` | `array<ParameterMetadataEnumOption>` | Optional. The options shown when ENUM ParameterType is specified. |
| `groupName` | `string` | Optional. Specifies a group name for this parameter to be rendered under. Group header text will ... |
| `helpText` | `string` | Required. The help text to display for the parameter. |
| `hiddenUi` | `boolean` | Optional. Whether the parameter should be hidden in the UI. |
| `isOptional` | `boolean` | Optional. Whether the parameter is optional. Defaults to false. |
| `label` | `string` | Required. The label to display for the parameter. |
| `name` | `string` | Required. The name of the parameter. |
| `paramType` | `string` | Optional. The type of the parameter. Used for selecting input picker. |
| `parentName` | `string` | Optional. Specifies the name of the parent parameter. Used in conjunction with 'parent_trigger_va... |
| `parentTriggerValues` | `array<string>` | Optional. The value(s) of the 'parent_name' parameter which will trigger this parameter to be sho... |
| `regexes` | `array<string>` | Optional. Regexes that the parameter must match. |

### `ParameterMetadataEnumOption`

ParameterMetadataEnumOption specifies the option shown in the enum form.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. The description to display for the enum option. |
| `label` | `string` | Optional. The label to display for the enum option. |
| `value` | `string` | Required. The value of the enum option. |

### `PartialGroupByKeyInstruction`

An instruction that does a partial group-by-key. One input and one output.

| Property | Type | Description |
|----------|------|-------------|
| `input` | `InstructionInput` | Describes the input to the partial group-by-key instruction. |
| `inputElementCodec` | `object` | The codec to use for interpreting an element in the input PTable. |
| `originalCombineValuesInputStoreName` | `string` | If this instruction includes a combining function this is the name of the intermediate store betw... |
| `originalCombineValuesStepName` | `string` | If this instruction includes a combining function, this is the name of the CombineValues instruct... |
| `sideInputs` | `array<SideInputInfo>` | Zero or more side inputs. |
| `valueCombiningFn` | `object` | The value combining function to invoke. |

### `PerStepNamespaceMetrics`

Metrics for a particular unfused step and namespace. A metric is uniquely identified by the `metrics_namespace`, `original_step`, `metric name` and `metric_labels`.

| Property | Type | Description |
|----------|------|-------------|
| `metricValues` | `array<MetricValue>` | Optional. Metrics that are recorded for this namespace and unfused step. |
| `metricsNamespace` | `string` | The namespace of these metrics on the worker. |
| `originalStep` | `string` | The original system name of the unfused step that these metrics are reported from. |

### `PerWorkerMetrics`

Per worker metrics.

| Property | Type | Description |
|----------|------|-------------|
| `perStepNamespaceMetrics` | `array<PerStepNamespaceMetrics>` | Optional. Metrics for a particular unfused step and namespace. |

### `PipelineDescription`

A descriptive representation of submitted pipeline as well as the executed form. This data is provided by the Dataflow service for ease of visualizing the pipeline and interpreting Dataflow provided metrics.

| Property | Type | Description |
|----------|------|-------------|
| `displayData` | `array<DisplayData>` | Pipeline level display data. |
| `executionPipelineStage` | `array<ExecutionStageSummary>` | Description of each stage of execution of the pipeline. |
| `originalPipelineTransform` | `array<TransformSummary>` | Description of each transform in the pipeline and collections between them. |
| `stepNamesHash` | `string` | A hash value of the submitted pipeline portable graph step names if exists. |

### `Point`

A point in the timeseries.

| Property | Type | Description |
|----------|------|-------------|
| `time` | `string` | The timestamp of the point. |
| `value` | `number` | The value of the point. |

### `Position`

Position defines a position within a collection of data. The value can be either the end position, a key (used with ordered collections), a byte offset, or a record index.

| Property | Type | Description |
|----------|------|-------------|
| `byteOffset` | `string` | Position is a byte offset. |
| `concatPosition` | `ConcatPosition` | CloudPosition is a concat position. |
| `end` | `boolean` | Position is past all other positions. Also useful for the end position of an unbounded range. |
| `key` | `string` | Position is a string key, ordered lexicographically. |
| `recordIndex` | `string` | Position is a record index. |
| `shufflePosition` | `string` | CloudPosition is a base64 encoded BatchShufflePosition (with FIXED sharding). |

### `ProgressTimeseries`

Information about the progress of some component of job execution.

| Property | Type | Description |
|----------|------|-------------|
| `currentProgress` | `number` | The current progress of the component, in the range [0,1]. |
| `dataPoints` | `array<Point>` | History of progress for the component. Points are sorted by time. |

### `PubSubIODetails`

Metadata for a Pub/Sub connector used by the job.

| Property | Type | Description |
|----------|------|-------------|
| `subscription` | `string` | Subscription used in the connection. |
| `topic` | `string` | Topic accessed in the connection. |

### `PubsubLocation`

Identifies a pubsub location to use for transferring data into or out of a streaming Dataflow job.

| Property | Type | Description |
|----------|------|-------------|
| `dropLateData` | `boolean` | Indicates whether the pipeline allows late-arriving data. |
| `dynamicDestinations` | `boolean` | If true, then this location represents dynamic topics. |
| `idLabel` | `string` | If set, contains a pubsub label from which to extract record ids. If left empty, record deduplica... |
| `subscription` | `string` | A pubsub subscription, in the form of "pubsub.googleapis.com/subscriptions//" |
| `timestampLabel` | `string` | If set, contains a pubsub label from which to extract record timestamps. If left empty, record ti... |
| `topic` | `string` | A pubsub topic, in the form of "pubsub.googleapis.com/topics//" |
| `trackingSubscription` | `string` | If set, specifies the pubsub subscription that will be used for tracking custom time timestamps f... |
| `withAttributes` | `boolean` | If true, then the client has requested to get pubsub attributes. |

### `PubsubSnapshotMetadata`

Represents a Pubsub snapshot.

| Property | Type | Description |
|----------|------|-------------|
| `expireTime` | `string` | The expire time of the Pubsub snapshot. |
| `snapshotName` | `string` | The name of the Pubsub snapshot. |
| `topicName` | `string` | The name of the Pubsub topic. |

### `ReadInstruction`

An instruction that reads records. Takes no inputs, produces one output.

| Property | Type | Description |
|----------|------|-------------|
| `source` | `Source` | The source to read from. |

### `ReportWorkItemStatusRequest`

Request to report the status of WorkItems.

| Property | Type | Description |
|----------|------|-------------|
| `currentWorkerTime` | `string` | The current timestamp at the worker. |
| `location` | `string` | The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that... |
| `projectNumber` | `string` | Optional. The project number of the project which owns the WorkItem's job. |
| `unifiedWorkerRequest` | `object` | Untranslated bag-of-bytes WorkProgressUpdateRequest from UnifiedWorker. |
| `workItemStatuses` | `array<WorkItemStatus>` | The order is unimportant, except that the order of the WorkItemServiceState messages in the Repor... |
| `workerId` | `string` | The ID of the worker reporting the WorkItem status. If this does not match the ID of the worker w... |

### `ReportWorkItemStatusResponse`

Response from a request to report the status of WorkItems.

| Property | Type | Description |
|----------|------|-------------|
| `unifiedWorkerResponse` | `object` | Untranslated bag-of-bytes WorkProgressUpdateResponse for UnifiedWorker. |
| `workItemServiceStates` | `array<WorkItemServiceState>` | A set of messages indicating the service-side state for each WorkItem whose status was reported, ... |

### `ReportedParallelism`

Represents the level of parallelism in a WorkItem's input, reported by the worker.

| Property | Type | Description |
|----------|------|-------------|
| `isInfinite` | `boolean` | Specifies whether the parallelism is infinite. If true, "value" is ignored. Infinite parallelism ... |
| `value` | `number` | Specifies the level of parallelism in case it is finite. |

### `ResourceUtilizationReport`

Worker metrics exported from workers. This contains resource utilization metrics accumulated from a variety of sources. For more information, see go/df-resource-signals.

| Property | Type | Description |
|----------|------|-------------|
| `containers` | `object` | Per container information. Key: container name. |
| `cpuTime` | `array<CPUTime>` | CPU utilization samples. |
| `gpuUsage` | `array<GPUUsage>` | Optional. GPU usage samples. |
| `memoryInfo` | `array<MemInfo>` | Memory utilization samples. |

### `ResourceUtilizationReportResponse`

Service-side response to WorkerMessage reporting resource utilization.

### `RuntimeEnvironment`

The environment values to set at runtime.

| Property | Type | Description |
|----------|------|-------------|
| `additionalExperiments` | `array<string>` | Optional. Additional experiment flags for the job, specified with the `--experiments` option. |
| `additionalPipelineOptions` | `array<string>` | Optional. Additional pipeline option flags for the job. |
| `additionalUserLabels` | `object` | Optional. Additional user labels to be specified for the job. Keys and values should follow the r... |
| `bypassTempDirValidation` | `boolean` | Optional. Whether to bypass the safety checks for the job's temporary directory. Use with caution. |
| `diskSizeGb` | `integer` | Optional. The disk size, in gigabytes, to use on each remote Compute Engine worker instance. |
| `enableStreamingEngine` | `boolean` | Optional. Whether to enable Streaming Engine for the job. |
| `ipConfiguration` | `string` | Optional. Configuration for VM IPs. |
| `kmsKeyName` | `string` | Optional. Name for the Cloud KMS key for the job. Key format is: projects//locations//keyRings//c... |
| `machineType` | `string` | Optional. The machine type to use for the job. Defaults to the value from the template if not spe... |
| `maxWorkers` | `integer` | Optional. The maximum number of Google Compute Engine instances to be made available to your pipe... |
| `network` | `string` | Optional. Network to which VMs will be assigned. If empty or unspecified, the service will use th... |
| `numWorkers` | `integer` | Optional. The initial number of Google Compute Engine instances for the job. The default value is... |
| `serviceAccountEmail` | `string` | Optional. The email address of the service account to run the job as. |
| `streamingMode` | `string` | Optional. Specifies the Streaming Engine message processing guarantees. Reduces cost and latency ... |
| `subnetwork` | `string` | Optional. Subnetwork to which VMs will be assigned, if desired. You can specify a subnetwork usin... |
| `tempLocation` | `string` | Required. The Cloud Storage path to use for temporary files. Must be a valid Cloud Storage URL, b... |
| `workerRegion` | `string` | Required. The Compute Engine region (https://cloud.google.com/compute/docs/regions-zones/regions-... |
| `workerZone` | `string` | Optional. The Compute Engine zone (https://cloud.google.com/compute/docs/regions-zones/regions-zo... |
| `zone` | `string` | Optional. The Compute Engine [availability zone](https://cloud.google.com/compute/docs/regions-zo... |

### `RuntimeMetadata`

RuntimeMetadata describing a runtime environment.

| Property | Type | Description |
|----------|------|-------------|
| `parameters` | `array<ParameterMetadata>` | The parameters for the template. |
| `sdkInfo` | `SDKInfo` | SDK Info for the template. |

### `RuntimeUpdatableParams`

Additional job parameters that can only be updated during runtime using the projects.jobs.update method. These fields have no effect when specified during job creation.

| Property | Type | Description |
|----------|------|-------------|
| `acceptableBacklogDuration` | `string` | Optional. Deprecated: Use `autoscaling_tier` instead. The backlog threshold duration in seconds f... |
| `autoscalingTier` | `string` | Optional. The backlog threshold tier for autoscaling. Value must be one of "low-latency", "medium... |
| `maxNumWorkers` | `integer` | The maximum number of workers to cap autoscaling at. This field is currently only supported for S... |
| `minNumWorkers` | `integer` | The minimum number of workers to scale down to. This field is currently only supported for Stream... |
| `workerUtilizationHint` | `number` | Target worker utilization, compared against the aggregate utilization of the worker pool by autos... |

### `SDKInfo`

SDK Information.

| Property | Type | Description |
|----------|------|-------------|
| `language` | `string` | Required. The SDK Language. |
| `version` | `string` | Optional. The SDK version. |

### `Sdk`

A structured representation of an SDK.

| Property | Type | Description |
|----------|------|-------------|
| `sdkId` | `string` | The SDK harness id. |
| `stacks` | `array<Stack>` | The stacktraces for the processes running on the SDK harness. |

### `SdkBug`

A bug found in the Dataflow SDK.

| Property | Type | Description |
|----------|------|-------------|
| `severity` | `string` | Output only. How severe the SDK bug is. |
| `type` | `string` | Output only. Describes the impact of this SDK bug. |
| `uri` | `string` | Output only. Link to more information on the bug. |

### `SdkHarnessContainerImage`

Defines an SDK harness container for executing Dataflow pipelines.

| Property | Type | Description |
|----------|------|-------------|
| `capabilities` | `array<string>` | The set of capabilities enumerated in the above Environment proto. See also [beam_runner_api.prot... |
| `containerImage` | `string` | A docker container image that resides in Google Container Registry. |
| `environmentId` | `string` | Environment ID for the Beam runner API proto Environment that corresponds to the current SDK Harn... |
| `useSingleCorePerContainer` | `boolean` | If true, recommends the Dataflow service to use only one core per SDK container instance with thi... |

### `SdkVersion`

The version of the SDK used to run the job.

| Property | Type | Description |
|----------|------|-------------|
| `bugs` | `array<SdkBug>` | Output only. Known bugs found in this SDK version. |
| `sdkSupportStatus` | `string` | The support status for this SDK version. |
| `version` | `string` | The version of the SDK used to run the job. |
| `versionDisplayName` | `string` | A readable string describing the version of the SDK. |

### `SendDebugCaptureRequest`

Request to send encoded debug information. Next ID: 8

| Property | Type | Description |
|----------|------|-------------|
| `componentId` | `string` | The internal component id for which debug information is sent. |
| `data` | `string` | The encoded debug information. |
| `dataFormat` | `string` | Format for the data field above (id=5). |
| `location` | `string` | The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that... |
| `workerId` | `string` | The worker id, i.e., VM hostname. |

### `SendDebugCaptureResponse`

Response to a send capture request. nothing

### `SendWorkerMessagesRequest`

A request for sending worker messages to the service.

| Property | Type | Description |
|----------|------|-------------|
| `location` | `string` | The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that... |
| `workerMessages` | `array<WorkerMessage>` | The WorkerMessages to send. |

### `SendWorkerMessagesResponse`

The response to the worker messages.

| Property | Type | Description |
|----------|------|-------------|
| `workerMessageResponses` | `array<WorkerMessageResponse>` | The servers response to the worker messages. |

### `SeqMapTask`

Describes a particular function to invoke.

| Property | Type | Description |
|----------|------|-------------|
| `inputs` | `array<SideInputInfo>` | Information about each of the inputs. |
| `name` | `string` | The user-provided name of the SeqDo operation. |
| `outputInfos` | `array<SeqMapTaskOutputInfo>` | Information about each of the outputs. |
| `stageName` | `string` | System-defined name of the stage containing the SeqDo operation. Unique across the workflow. |
| `systemName` | `string` | System-defined name of the SeqDo operation. Unique across the workflow. |
| `userFn` | `object` | The user function to invoke. |

### `SeqMapTaskOutputInfo`

Information about an output of a SeqMapTask.

| Property | Type | Description |
|----------|------|-------------|
| `sink` | `Sink` | The sink to write the output value to. |
| `tag` | `string` | The id of the TupleTag the user code will tag the output value by. |

### `ServiceResources`

Resources used by the Dataflow Service to run the job.

| Property | Type | Description |
|----------|------|-------------|
| `zones` | `array<string>` | Output only. List of Cloud Zones being used by the Dataflow Service for this job. Example: us-cen... |

### `ShellTask`

A task which consists of a shell command for the worker to execute.

| Property | Type | Description |
|----------|------|-------------|
| `command` | `string` | The shell command to run. |
| `exitCode` | `integer` | Exit code for the task. |

### `SideInputInfo`

Information about a side input of a DoFn or an input of a SeqDoFn.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `object` | How to interpret the source element(s) as a side input value. |
| `sources` | `array<Source>` | The source(s) to read element(s) from to get the value of this side input. If more than one sourc... |
| `tag` | `string` | The id of the tag the user code will access this side input by; this should correspond to the tag... |

### `Sink`

A sink that records can be encoded and written to.

| Property | Type | Description |
|----------|------|-------------|
| `codec` | `object` | The codec to use to encode data written to the sink. |
| `spec` | `object` | The sink to write to, plus its parameters. |

### `Snapshot`

Represents a snapshot of a job.

| Property | Type | Description |
|----------|------|-------------|
| `creationTime` | `string` | The time this snapshot was created. |
| `description` | `string` | User specified description of the snapshot. Maybe empty. |
| `diskSizeBytes` | `string` | The disk byte size of the snapshot. Only available for snapshots in READY state. |
| `id` | `string` | The unique ID of this snapshot. |
| `projectId` | `string` | The project this snapshot belongs to. |
| `pubsubMetadata` | `array<PubsubSnapshotMetadata>` | Pub/Sub snapshot metadata. |
| `region` | `string` | Cloud region where this snapshot lives in, e.g., "us-central1". |
| `sourceJobId` | `string` | The job this snapshot was created from. |
| `state` | `string` | State of the snapshot. |
| `ttl` | `string` | The time after which this snapshot will be automatically deleted. |

### `SnapshotJobRequest`

Request to create a snapshot of a job.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | User specified description of the snapshot. Maybe empty. |
| `location` | `string` | The location that contains this job. |
| `snapshotSources` | `boolean` | If true, perform snapshots for sources which support this. |
| `ttl` | `string` | TTL for the snapshot. |

### `Source`

A source that records can be read and decoded from.

| Property | Type | Description |
|----------|------|-------------|
| `baseSpecs` | `array<object>` | While splitting, sources may specify the produced bundles as differences against another source, ... |
| `codec` | `object` | The codec to use to decode data read from the source. |
| `doesNotNeedSplitting` | `boolean` | Setting this value to true hints to the framework that the source doesn't need splitting, and usi... |
| `metadata` | `SourceMetadata` | Optionally, metadata for this source can be supplied right away, avoiding a SourceGetMetadataOper... |
| `spec` | `object` | The source to read from, plus its parameters. |

### `SourceFork`

DEPRECATED in favor of DynamicSourceSplit.

| Property | Type | Description |
|----------|------|-------------|
| `primary` | `SourceSplitShard` | DEPRECATED |
| `primarySource` | `DerivedSource` | DEPRECATED |
| `residual` | `SourceSplitShard` | DEPRECATED |
| `residualSource` | `DerivedSource` | DEPRECATED |

### `SourceGetMetadataRequest`

A request to compute the SourceMetadata of a Source.

| Property | Type | Description |
|----------|------|-------------|
| `source` | `Source` | Specification of the source whose metadata should be computed. |

### `SourceGetMetadataResponse`

The result of a SourceGetMetadataOperation.

| Property | Type | Description |
|----------|------|-------------|
| `metadata` | `SourceMetadata` | The computed metadata. |

### `SourceMetadata`

Metadata about a Source useful for automatically optimizing and tuning the pipeline, etc.

| Property | Type | Description |
|----------|------|-------------|
| `estimatedSizeBytes` | `string` | An estimate of the total size (in bytes) of the data that would be read from this source. This es... |
| `infinite` | `boolean` | Specifies that the size of this source is known to be infinite (this is a streaming source). |
| `producesSortedKeys` | `boolean` | Whether this source is known to produce key/value pairs with the (encoded) keys in lexicographica... |

### `SourceOperationRequest`

A work item that represents the different operations that can be performed on a user-defined Source specification.

| Property | Type | Description |
|----------|------|-------------|
| `getMetadata` | `SourceGetMetadataRequest` | Information about a request to get metadata about a source. |
| `name` | `string` | User-provided name of the Read instruction for this source. |
| `originalName` | `string` | System-defined name for the Read instruction for this source in the original workflow graph. |
| `split` | `SourceSplitRequest` | Information about a request to split a source. |
| `stageName` | `string` | System-defined name of the stage containing the source operation. Unique across the workflow. |
| `systemName` | `string` | System-defined name of the Read instruction for this source. Unique across the workflow. |

### `SourceOperationResponse`

The result of a SourceOperationRequest, specified in ReportWorkItemStatusRequest.source_operation when the work item is completed.

| Property | Type | Description |
|----------|------|-------------|
| `getMetadata` | `SourceGetMetadataResponse` | A response to a request to get metadata about a source. |
| `split` | `SourceSplitResponse` | A response to a request to split a source. |

### `SourceSplitOptions`

Hints for splitting a Source into bundles (parts for parallel processing) using SourceSplitRequest.

| Property | Type | Description |
|----------|------|-------------|
| `desiredBundleSizeBytes` | `string` | The source should be split into a set of bundles where the estimated size of each is approximatel... |
| `desiredShardSizeBytes` | `string` | DEPRECATED in favor of desired_bundle_size_bytes. |

### `SourceSplitRequest`

Represents the operation to split a high-level Source specification into bundles (parts for parallel processing). At a high level, splitting of a source into bundles happens as follows: SourceSplitRequest is applied to the source. If it returns SOURCE_SPLIT_OUTCOME_USE_CURRENT, no further splitting happens and the source is used "as is". Otherwise, splitting is applied recursively to each produced DerivedSource. As an optimization, for any Source, if its does_not_need_splitting is true, the framework assumes that splitting this source would return SOURCE_SPLIT_OUTCOME_USE_CURRENT, and doesn't initiate a SourceSplitRequest. This applies both to the initial source being split and to bundles produced from it.

| Property | Type | Description |
|----------|------|-------------|
| `options` | `SourceSplitOptions` | Hints for tuning the splitting process. |
| `source` | `Source` | Specification of the source to be split. |

### `SourceSplitResponse`

The response to a SourceSplitRequest.

| Property | Type | Description |
|----------|------|-------------|
| `bundles` | `array<DerivedSource>` | If outcome is SPLITTING_HAPPENED, then this is a list of bundles into which the source was split.... |
| `outcome` | `string` | Indicates whether splitting happened and produced a list of bundles. If this is USE_CURRENT_SOURC... |
| `shards` | `array<SourceSplitShard>` | DEPRECATED in favor of bundles. |

### `SourceSplitShard`

DEPRECATED in favor of DerivedSource.

| Property | Type | Description |
|----------|------|-------------|
| `derivationMode` | `string` | DEPRECATED |
| `source` | `Source` | DEPRECATED |

### `SpannerIODetails`

Metadata for a Spanner connector used by the job.

| Property | Type | Description |
|----------|------|-------------|
| `databaseId` | `string` | DatabaseId accessed in the connection. |
| `instanceId` | `string` | InstanceId accessed in the connection. |
| `projectId` | `string` | ProjectId accessed in the connection. |

### `SplitInt64`

A representation of an int64, n, that is immune to precision loss when encoded in JSON.

| Property | Type | Description |
|----------|------|-------------|
| `highBits` | `integer` | The high order bits, including the sign: n >> 32. |
| `lowBits` | `integer` | The low order bits: n & 0xffffffff. |

### `Stack`

A structuredstacktrace for a process running on the worker.

| Property | Type | Description |
|----------|------|-------------|
| `stackContent` | `string` | The raw stack trace. |
| `threadCount` | `integer` | With java thread dumps we may get collapsed stacks e.g., N threads in stack "". Instead of having... |
| `threadName` | `string` | Thread name. For example, "CommitThread-0,10,main" |
| `threadState` | `string` | The state of the thread. For example, "WAITING". |
| `timestamp` | `string` | Timestamp at which the stack was captured. |

### `StageExecutionDetails`

Information about the workers and work items within a stage.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If present, this response does not contain all requested tasks. To obtain the next page of result... |
| `workers` | `array<WorkerDetails>` | Workers that have done work on the stage. |

### `StageSource`

Description of an input or output of an execution stage.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Dataflow service generated name for this source. |
| `originalTransformOrCollection` | `string` | User name for the original user transform or collection with which this source is most closely as... |
| `sizeBytes` | `string` | Size of the source, if measurable. |
| `userName` | `string` | Human-readable name for this source; may be user or system generated. |

### `StageSummary`

Information about a particular execution stage of a job.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | End time of this stage. If the work item is completed, this is the actual end time of the stage. ... |
| `metrics` | `array<MetricUpdate>` | Metrics for this stage. |
| `progress` | `ProgressTimeseries` | Progress for this stage. Only applicable to Batch jobs. |
| `stageId` | `string` | ID of this stage |
| `startTime` | `string` | Start time of this stage. |
| `state` | `string` | State of this stage. |
| `stragglerSummary` | `StragglerSummary` | Straggler summary for this stage. |

### `StateFamilyConfig`

State family configuration.

| Property | Type | Description |
|----------|------|-------------|
| `isRead` | `boolean` | If true, this family corresponds to a read operation. |
| `stateFamily` | `string` | The state family value. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `Step`

Defines a particular step within a Cloud Dataflow job. A job consists of multiple steps, each of which performs some specific operation as part of the overall job. Data is typically passed from one step to another as part of the job. **Note:** The properties of this object are not stable and might change. Here's an example of a sequence of steps which together implement a Map-Reduce job: * Read a collection of data from some source, parsing the collection's elements. * Validate the elements. * Apply a user-defined function to map each element to some value and extract an element-specific key value. * Group elements with the same key into a single element with that key, transforming a multiply-keyed collection into a uniquely-keyed collection. * Write the elements out to some data sink. Note that the Cloud Dataflow service may be used to run many different types of jobs, not just Map-Reduce.

| Property | Type | Description |
|----------|------|-------------|
| `kind` | `string` | The kind of step in the Cloud Dataflow job. |
| `name` | `string` | The name that identifies the step. This must be unique for each step with respect to all other st... |
| `properties` | `object` | Named properties associated with the step. Each kind of predefined step has its own required set ... |

### `Straggler`

Information for a straggler.

| Property | Type | Description |
|----------|------|-------------|
| `batchStraggler` | `StragglerInfo` | Batch straggler identification and debugging information. |
| `streamingStraggler` | `StreamingStragglerInfo` | Streaming straggler identification and debugging information. |

### `StragglerDebuggingInfo`

Information useful for debugging a straggler. Each type will provide specialized debugging information relevant for a particular cause. The StragglerDebuggingInfo will be 1:1 mapping to the StragglerCause enum.

| Property | Type | Description |
|----------|------|-------------|
| `hotKey` | `HotKeyDebuggingInfo` | Hot key debugging details. |

### `StragglerInfo`

Information useful for straggler identification and debugging.

| Property | Type | Description |
|----------|------|-------------|
| `causes` | `object` | The straggler causes, keyed by the string representation of the StragglerCause enum and contains ... |
| `startTime` | `string` | The time when the work item attempt became a straggler. |

### `StragglerSummary`

Summarized straggler identification details.

| Property | Type | Description |
|----------|------|-------------|
| `recentStragglers` | `array<Straggler>` | The most recent stragglers. |
| `stragglerCauseCount` | `object` | Aggregated counts of straggler causes, keyed by the string representation of the StragglerCause e... |
| `totalStragglerCount` | `string` | The total count of stragglers. |

### `StreamLocation`

Describes a stream of data, either as input to be processed or as output of a streaming Dataflow job.

| Property | Type | Description |
|----------|------|-------------|
| `customSourceLocation` | `CustomSourceLocation` | The stream is a custom source. |
| `pubsubLocation` | `PubsubLocation` | The stream is a pubsub stream. |
| `sideInputLocation` | `StreamingSideInputLocation` | The stream is a streaming side input. |
| `streamingStageLocation` | `StreamingStageLocation` | The stream is part of another computation within the current streaming Dataflow job. |

### `StreamingApplianceSnapshotConfig`

Streaming appliance snapshot configuration.

| Property | Type | Description |
|----------|------|-------------|
| `importStateEndpoint` | `string` | Indicates which endpoint is used to import appliance state. |
| `snapshotId` | `string` | If set, indicates the snapshot id for the snapshot being performed. |

### `StreamingComputationConfig`

Configuration information for a single streaming computation.

| Property | Type | Description |
|----------|------|-------------|
| `computationId` | `string` | Unique identifier for this computation. |
| `instructions` | `array<ParallelInstruction>` | Instructions that comprise the computation. |
| `stageName` | `string` | Stage name of this computation. |
| `systemName` | `string` | System defined name for this computation. |
| `transformUserNameToStateFamily` | `object` | Map from user name of stateful transforms in this stage to their state family. |

### `StreamingComputationRanges`

Describes full or partial data disk assignment information of the computation ranges.

| Property | Type | Description |
|----------|------|-------------|
| `computationId` | `string` | The ID of the computation. |
| `rangeAssignments` | `array<KeyRangeDataDiskAssignment>` | Data disk assignments for ranges from this computation. |

### `StreamingComputationTask`

A task which describes what action should be performed for the specified streaming computation ranges.

| Property | Type | Description |
|----------|------|-------------|
| `computationRanges` | `array<StreamingComputationRanges>` | Contains ranges of a streaming computation this task should apply to. |
| `dataDisks` | `array<MountedDataDisk>` | Describes the set of data disks this task should apply to. |
| `taskType` | `string` | A type of streaming computation task. |

### `StreamingConfigTask`

A task that carries configuration information for streaming computations.

| Property | Type | Description |
|----------|------|-------------|
| `commitStreamChunkSizeBytes` | `string` | Chunk size for commit streams from the harness to windmill. |
| `getDataStreamChunkSizeBytes` | `string` | Chunk size for get data streams from the harness to windmill. |
| `maxWorkItemCommitBytes` | `string` | Maximum size for work item commit supported windmill storage layer. |
| `operationalLimits` | `StreamingOperationalLimits` | Operational limits for the streaming job. Can be used by the worker to validate outputs sent to t... |
| `streamingComputationConfigs` | `array<StreamingComputationConfig>` | Set of computation configuration information. |
| `streamingEngineStateTagEncodingVersion` | `integer` | Optional. The state tag encoding format version for streaming engine jobs. |
| `userStepToStateFamilyNameMap` | `object` | Map from user step names to state families. |
| `userWorkerRunnerV1Settings` | `string` | Binary encoded proto to control runtime behavior of the java runner v1 user worker. |
| `userWorkerRunnerV2Settings` | `string` | Binary encoded proto to control runtime behavior of the runner v2 user worker. |
| `windmillServiceEndpoint` | `string` | If present, the worker must use this endpoint to communicate with Windmill Service dispatchers, o... |
| `windmillServicePort` | `string` | If present, the worker must use this port to communicate with Windmill Service dispatchers. Only ... |

### `StreamingOperationalLimits`

Operational limits imposed on streaming jobs by the backend.

| Property | Type | Description |
|----------|------|-------------|
| `maxBagElementBytes` | `string` | The maximum size for an element in bag state. |
| `maxGlobalDataBytes` | `string` | The maximum size for an element in global data. |
| `maxKeyBytes` | `string` | The maximum size allowed for a key. |
| `maxProductionOutputBytes` | `string` | The maximum size for a single output element. |
| `maxSortedListElementBytes` | `string` | The maximum size for an element in sorted list state. |
| `maxSourceStateBytes` | `string` | The maximum size for a source state update. |
| `maxTagBytes` | `string` | The maximum size for a state tag. |
| `maxValueBytes` | `string` | The maximum size for a value state field. |

### `StreamingScalingReport`

Contains per-user worker telemetry used in streaming autoscaling.

| Property | Type | Description |
|----------|------|-------------|
| `activeBundleCount` | `integer` |  |
| `activeThreadCount` | `integer` | Current acive thread count. |
| `maximumBundleCount` | `integer` | Maximum bundle count. |
| `maximumBytes` | `string` | Maximum bytes. |
| `maximumBytesCount` | `integer` |  |
| `maximumThreadCount` | `integer` | Maximum thread count limit. |
| `outstandingBundleCount` | `integer` | Current outstanding bundle count. |
| `outstandingBytes` | `string` | Current outstanding bytes. |
| `outstandingBytesCount` | `integer` |  |

### `StreamingScalingReportResponse`

Contains per-user-worker streaming scaling recommendation from the backend.

| Property | Type | Description |
|----------|------|-------------|
| `maximumThreadCount` | `integer` | Maximum thread count limit; |

### `StreamingSetupTask`

A task which initializes part of a streaming Dataflow job.

| Property | Type | Description |
|----------|------|-------------|
| `drain` | `boolean` | The user has requested drain. |
| `receiveWorkPort` | `integer` | The TCP port on which the worker should listen for messages from other streaming computation work... |
| `snapshotConfig` | `StreamingApplianceSnapshotConfig` | Configures streaming appliance snapshot. |
| `streamingComputationTopology` | `TopologyConfig` | The global topology of the streaming Dataflow job. |
| `workerHarnessPort` | `integer` | The TCP port used by the worker to communicate with the Dataflow worker harness. |

### `StreamingSideInputLocation`

Identifies the location of a streaming side input.

| Property | Type | Description |
|----------|------|-------------|
| `stateFamily` | `string` | Identifies the state family where this side input is stored. |
| `tag` | `string` | Identifies the particular side input within the streaming Dataflow job. |

### `StreamingStageLocation`

Identifies the location of a streaming computation stage, for stage-to-stage communication.

| Property | Type | Description |
|----------|------|-------------|
| `streamId` | `string` | Identifies the particular stream within the streaming Dataflow job. |

### `StreamingStragglerInfo`

Information useful for streaming straggler identification and debugging.

| Property | Type | Description |
|----------|------|-------------|
| `dataWatermarkLag` | `string` | The event-time watermark lag at the time of the straggler detection. |
| `endTime` | `string` | End time of this straggler. |
| `startTime` | `string` | Start time of this straggler. |
| `systemWatermarkLag` | `string` | The system watermark lag at the time of the straggler detection. |
| `workerName` | `string` | Name of the worker where the straggler was detected. |

### `StringList`

A metric value representing a list of strings.

| Property | Type | Description |
|----------|------|-------------|
| `elements` | `array<string>` | Elements of the list. |

### `StructuredMessage`

A rich message format, including a human readable string, a key for identifying the message, and structured data associated with the message for programmatic consumption.

| Property | Type | Description |
|----------|------|-------------|
| `messageKey` | `string` | Identifier for this message type. Used by external systems to internationalize or personalize mes... |
| `messageText` | `string` | Human-readable version of message. |
| `parameters` | `array<Parameter>` | The structured data associated with this message. |

### `TaskRunnerSettings`

Taskrunner configuration settings.

| Property | Type | Description |
|----------|------|-------------|
| `alsologtostderr` | `boolean` | Whether to also send taskrunner log info to stderr. |
| `baseTaskDir` | `string` | The location on the worker for task-specific subdirectories. |
| `baseUrl` | `string` | The base URL for the taskrunner to use when accessing Google Cloud APIs. When workers access Goog... |
| `commandlinesFileName` | `string` | The file to store preprocessing commands in. |
| `continueOnException` | `boolean` | Whether to continue taskrunner if an exception is hit. |
| `dataflowApiVersion` | `string` | The API version of endpoint, e.g. "v1b3" |
| `harnessCommand` | `string` | The command to launch the worker harness. |
| `languageHint` | `string` | The suggested backend language. |
| `logDir` | `string` | The directory on the VM to store logs. |
| `logToSerialconsole` | `boolean` | Whether to send taskrunner log info to Google Compute Engine VM serial console. |
| `logUploadLocation` | `string` | Indicates where to put logs. If this is not specified, the logs will not be uploaded. The support... |
| `oauthScopes` | `array<string>` | The OAuth2 scopes to be requested by the taskrunner in order to access the Cloud Dataflow API. |
| `parallelWorkerSettings` | `WorkerSettings` | The settings to pass to the parallel worker harness. |
| `streamingWorkerMainClass` | `string` | The streaming worker main class name. |
| `taskGroup` | `string` | The UNIX group ID on the worker VM to use for tasks launched by taskrunner; e.g. "wheel". |
| `taskUser` | `string` | The UNIX user ID on the worker VM to use for tasks launched by taskrunner; e.g. "root". |
| `tempStoragePrefix` | `string` | The prefix of the resources the taskrunner should use for temporary storage. The supported resour... |
| `vmId` | `string` | The ID string of the VM. |
| `workflowFileName` | `string` | The file to store the workflow in. |

### `TemplateMetadata`

Metadata describing a template.

| Property | Type | Description |
|----------|------|-------------|
| `defaultStreamingMode` | `string` | Optional. Indicates the default streaming mode for a streaming template. Only valid if both suppo... |
| `description` | `string` | Optional. A description of the template. |
| `name` | `string` | Required. The name of the template. |
| `parameters` | `array<ParameterMetadata>` | The parameters for the template. |
| `streaming` | `boolean` | Optional. Indicates if the template is streaming or not. |
| `supportsAtLeastOnce` | `boolean` | Optional. Indicates if the streaming template supports at least once mode. |
| `supportsExactlyOnce` | `boolean` | Optional. Indicates if the streaming template supports exactly once mode. |
| `yamlDefinition` | `string` | Optional. For future use. |

### `TopologyConfig`

Global topology of the streaming Dataflow job, including all computations and their sharded locations.

| Property | Type | Description |
|----------|------|-------------|
| `computations` | `array<ComputationTopology>` | The computations associated with a streaming Dataflow job. |
| `dataDiskAssignments` | `array<DataDiskAssignment>` | The disks assigned to a streaming Dataflow job. |
| `forwardingKeyBits` | `integer` | The size (in bits) of keys that will be assigned to source messages. |
| `persistentStateVersion` | `integer` | Version number for persistent state. |
| `userStageToComputationNameMap` | `object` | Maps user stage names to stable computation names. |

### `TransformSummary`

Description of the type, names/ids, and input/outputs for a transform.

| Property | Type | Description |
|----------|------|-------------|
| `displayData` | `array<DisplayData>` | Transform-specific display data. |
| `id` | `string` | SDK generated id of this transform instance. |
| `inputCollectionName` | `array<string>` | User names for all collection inputs to this transform. |
| `kind` | `string` | Type of transform. |
| `name` | `string` | User provided name for this transform instance. |
| `outputCollectionName` | `array<string>` | User names for all collection outputs to this transform. |

### `WorkItem`

WorkItem represents basic information about a WorkItem to be executed in the cloud.

| Property | Type | Description |
|----------|------|-------------|
| `configuration` | `string` | Work item-specific configuration as an opaque blob. |
| `id` | `string` | Identifies this WorkItem. |
| `initialReportIndex` | `string` | The initial index to use when reporting the status of the WorkItem. |
| `jobId` | `string` | Identifies the workflow job this WorkItem belongs to. |
| `leaseExpireTime` | `string` | Time when the lease on this Work will expire. |
| `mapTask` | `MapTask` | Additional information for MapTask WorkItems. |
| `packages` | `array<Package>` | Any required packages that need to be fetched in order to execute this WorkItem. |
| `projectId` | `string` | Identifies the cloud project this WorkItem belongs to. |
| `reportStatusInterval` | `string` | Recommended reporting interval. |
| `seqMapTask` | `SeqMapTask` | Additional information for SeqMapTask WorkItems. |
| `shellTask` | `ShellTask` | Additional information for ShellTask WorkItems. |
| `sourceOperationTask` | `SourceOperationRequest` | Additional information for source operation WorkItems. |
| `streamingComputationTask` | `StreamingComputationTask` | Additional information for StreamingComputationTask WorkItems. |
| `streamingConfigTask` | `StreamingConfigTask` | Additional information for StreamingConfigTask WorkItems. |
| `streamingSetupTask` | `StreamingSetupTask` | Additional information for StreamingSetupTask WorkItems. |

### `WorkItemDetails`

Information about an individual work item execution.

| Property | Type | Description |
|----------|------|-------------|
| `attemptId` | `string` | Attempt ID of this work item |
| `endTime` | `string` | End time of this work item attempt. If the work item is completed, this is the actual end time of... |
| `metrics` | `array<MetricUpdate>` | Metrics for this work item. |
| `progress` | `ProgressTimeseries` | Progress of this work item. |
| `startTime` | `string` | Start time of this work item attempt. |
| `state` | `string` | State of this work item. |
| `stragglerInfo` | `StragglerInfo` | Information about straggler detections for this work item. |
| `taskId` | `string` | Name of this work item. |

### `WorkItemServiceState`

The Dataflow service's idea of the current state of a WorkItem being processed by a worker.

| Property | Type | Description |
|----------|------|-------------|
| `completeWorkStatus` | `Status` | If set, a request to complete the work item with the given status. This will not be set to OK, un... |
| `harnessData` | `object` | Other data returned by the service, specific to the particular worker harness. |
| `hotKeyDetection` | `HotKeyDetection` | A hot key is a symptom of poor data distribution in which there are enough elements mapped to a s... |
| `leaseExpireTime` | `string` | Time at which the current lease will expire. |
| `metricShortId` | `array<MetricShortId>` | The short ids that workers should use in subsequent metric updates. Workers should strive to use ... |
| `nextReportIndex` | `string` | The index value to use for the next report sent by the worker. Note: If the report call fails for... |
| `reportStatusInterval` | `string` | New recommended reporting interval. |
| `splitRequest` | `ApproximateSplitRequest` | The progress point in the WorkItem where the Dataflow service suggests that the worker truncate t... |
| `suggestedStopPoint` | `ApproximateProgress` | DEPRECATED in favor of split_request. |
| `suggestedStopPosition` | `Position` | Obsolete, always empty. |

### `WorkItemStatus`

Conveys a worker's progress through the work described by a WorkItem.

| Property | Type | Description |
|----------|------|-------------|
| `completed` | `boolean` | True if the WorkItem was completed (successfully or unsuccessfully). |
| `counterUpdates` | `array<CounterUpdate>` | Worker output counters for this WorkItem. |
| `dynamicSourceSplit` | `DynamicSourceSplit` | See documentation of stop_position. |
| `errors` | `array<Status>` | Specifies errors which occurred during processing. If errors are provided, and completed = true, ... |
| `metricUpdates` | `array<MetricUpdate>` | DEPRECATED in favor of counter_updates. |
| `progress` | `ApproximateProgress` | DEPRECATED in favor of reported_progress. |
| `reportIndex` | `string` | The report index. When a WorkItem is leased, the lease will contain an initial report index. When... |
| `reportedProgress` | `ApproximateReportedProgress` | The worker's progress through this WorkItem. |
| `requestedLeaseDuration` | `string` | Amount of time the worker requests for its lease. |
| `sourceFork` | `SourceFork` | DEPRECATED in favor of dynamic_source_split. |
| `sourceOperationResponse` | `SourceOperationResponse` | If the work item represented a SourceOperationRequest, and the work is completed, contains the re... |
| `stopPosition` | `Position` | A worker may split an active map task in two parts, "primary" and "residual", continuing to proce... |
| `totalThrottlerWaitTimeSeconds` | `number` | Total time the worker spent being throttled by external systems. |
| `workItemId` | `string` | Identifies the WorkItem. |

### `WorkerDetails`

Information about a worker

| Property | Type | Description |
|----------|------|-------------|
| `workItems` | `array<WorkItemDetails>` | Work items processed by this worker, sorted by time. |
| `workerName` | `string` | Name of this worker |

### `WorkerHealthReport`

WorkerHealthReport contains information about the health of a worker. The VM should be identified by the labels attached to the WorkerMessage that this health ping belongs to.

| Property | Type | Description |
|----------|------|-------------|
| `msg` | `string` | Message describing any unusual health reports. |
| `pods` | `array<object>` | The pods running on the worker. See: http://kubernetes.io/v1.1/docs/api-reference/v1/definitions.... |
| `reportInterval` | `string` | The interval at which the worker is sending health reports. The default value of 0 should be inte... |
| `vmBrokenCode` | `string` | Code to describe a specific reason, if known, that a VM has reported broken state. |
| `vmIsBroken` | `boolean` | Whether the VM is in a permanently broken state. Broken VMs should be abandoned or deleted ASAP t... |
| `vmIsHealthy` | `boolean` | Whether the VM is currently healthy. |
| `vmStartupTime` | `string` | The time the VM was booted. |

### `WorkerHealthReportResponse`

WorkerHealthReportResponse contains information returned to the worker in response to a health ping.

| Property | Type | Description |
|----------|------|-------------|
| `reportInterval` | `string` | A positive value indicates the worker should change its reporting interval to the specified value... |

### `WorkerLifecycleEvent`

A report of an event in a worker's lifecycle. The proto contains one event, because the worker is expected to asynchronously send each message immediately after the event. Due to this asynchrony, messages may arrive out of order (or missing), and it is up to the consumer to interpret. The timestamp of the event is in the enclosing WorkerMessage proto.

| Property | Type | Description |
|----------|------|-------------|
| `containerStartTime` | `string` | The start time of this container. All events will report this so that events can be grouped toget... |
| `event` | `string` | The event being reported. |
| `metadata` | `object` | Other stats that can accompany an event. E.g. { "downloaded_bytes" : "123456" } |

### `WorkerMessage`

WorkerMessage provides information to the backend about a worker.

| Property | Type | Description |
|----------|------|-------------|
| `dataSamplingReport` | `DataSamplingReport` | Optional. Contains metrics related to go/dataflow-data-sampling-telemetry. |
| `labels` | `object` | Labels are used to group WorkerMessages. For example, a worker_message about a particular contain... |
| `perWorkerMetrics` | `PerWorkerMetrics` | System defined metrics for this worker. |
| `streamingScalingReport` | `StreamingScalingReport` | Contains per-user worker telemetry used in streaming autoscaling. |
| `time` | `string` | The timestamp of the worker_message. |
| `workerHealthReport` | `WorkerHealthReport` | The health of a worker. |
| `workerLifecycleEvent` | `WorkerLifecycleEvent` | Record of worker lifecycle events. |
| `workerMessageCode` | `WorkerMessageCode` | A worker message code. |
| `workerMetrics` | `ResourceUtilizationReport` | Resource metrics reported by workers. |
| `workerShutdownNotice` | `WorkerShutdownNotice` | Shutdown notice by workers. |
| `workerThreadScalingReport` | `WorkerThreadScalingReport` | Thread scaling information reported by workers. |

### `WorkerMessageCode`

A message code is used to report status and error messages to the service. The message codes are intended to be machine readable. The service will take care of translating these into user understandable messages if necessary. Example use cases: 1. Worker processes reporting successful startup. 2. Worker processes reporting specific errors (e.g. package staging failure).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | The code is a string intended for consumption by a machine that identifies the type of message be... |
| `parameters` | `object` | Parameters contains specific information about the code. This is a struct to allow parameters of ... |

### `WorkerMessageResponse`

A worker_message response allows the server to pass information to the sender.

| Property | Type | Description |
|----------|------|-------------|
| `streamingScalingReportResponse` | `StreamingScalingReportResponse` | Service's streaming scaling response for workers. |
| `workerHealthReportResponse` | `WorkerHealthReportResponse` | The service's response to a worker's health report. |
| `workerMetricsResponse` | `ResourceUtilizationReportResponse` | Service's response to reporting worker metrics (currently empty). |
| `workerShutdownNoticeResponse` | `WorkerShutdownNoticeResponse` | Service's response to shutdown notice (currently empty). |
| `workerThreadScalingReportResponse` | `WorkerThreadScalingReportResponse` | Service's thread scaling recommendation for workers. |

### `WorkerPool`

Describes one particular pool of Cloud Dataflow workers to be instantiated by the Cloud Dataflow service in order to perform the computations required by a job. Note that a workflow job may use multiple pools, in order to match the various computational requirements of the various stages of the job.

| Property | Type | Description |
|----------|------|-------------|
| `autoscalingSettings` | `AutoscalingSettings` | Settings for autoscaling of this WorkerPool. |
| `dataDisks` | `array<Disk>` | Data disks that are used by a VM in this workflow. |
| `defaultPackageSet` | `string` | The default package set to install. This allows the service to select a default set of packages w... |
| `diskProvisionedIops` | `string` | Optional. IOPS provisioned for the root disk for VMs. |
| `diskProvisionedThroughputMibps` | `string` | Optional. Throughput provisioned for the root disk for VMs. |
| `diskSizeGb` | `integer` | Size of root disk for VMs, in GB. If zero or unspecified, the service will attempt to choose a re... |
| `diskSourceImage` | `string` | Fully qualified source image for disks. |
| `diskType` | `string` | Type of root disk for VMs. If empty or unspecified, the service will attempt to choose a reasonab... |
| `ipConfiguration` | `string` | Configuration for VM IPs. |
| `kind` | `string` | The kind of the worker pool; currently only `harness` and `shuffle` are supported. |
| `machineType` | `string` | Machine type (e.g. "n1-standard-1"). If empty or unspecified, the service will attempt to choose ... |
| `metadata` | `object` | Metadata to set on the Google Compute Engine VMs. |
| `network` | `string` | Network to which VMs will be assigned. If empty or unspecified, the service will use the network ... |
| `numThreadsPerWorker` | `integer` | The number of threads per worker harness. If empty or unspecified, the service will choose a numb... |
| `numWorkers` | `integer` | Number of Google Compute Engine workers in this pool needed to execute the job. If zero or unspec... |
| `onHostMaintenance` | `string` | The action to take on host maintenance, as defined by the Google Compute Engine API. |
| `packages` | `array<Package>` | Packages to be installed on workers. |
| `poolArgs` | `object` | Extra arguments for this worker pool. |
| `sdkHarnessContainerImages` | `array<SdkHarnessContainerImage>` | Set of SDK harness containers needed to execute this pipeline. This will only be set in the Fn AP... |
| `subnetwork` | `string` | Subnetwork to which VMs will be assigned, if desired. Expected to be of the form "regions/REGION/... |
| `taskrunnerSettings` | `TaskRunnerSettings` | Settings passed through to Google Compute Engine workers when using the standard Dataflow task ru... |
| `teardownPolicy` | `string` | Sets the policy for determining when to turndown worker pool. Allowed values are: `TEARDOWN_ALWAY... |
| `workerHarnessContainerImage` | `string` | Required. Docker container image that executes the Cloud Dataflow worker harness, residing in Goo... |
| `zone` | `string` | Zone to run the worker pools in. If empty or unspecified, the service will attempt to choose a re... |

### `WorkerSettings`

Provides data to pass through to the worker harness.

| Property | Type | Description |
|----------|------|-------------|
| `baseUrl` | `string` | The base URL for accessing Google Cloud APIs. When workers access Google Cloud APIs, they logical... |
| `reportingEnabled` | `boolean` | Whether to send work progress updates to the service. |
| `servicePath` | `string` | The Cloud Dataflow service path relative to the root URL, for example, "dataflow/v1b3/projects". |
| `shuffleServicePath` | `string` | The Shuffle service path relative to the root URL, for example, "shuffle/v1beta1". |
| `tempStoragePrefix` | `string` | The prefix of the resources the system should use for temporary storage. The supported resource t... |
| `workerId` | `string` | The ID of the worker running this pipeline. |

### `WorkerShutdownNotice`

Shutdown notification from workers. This is to be sent by the shutdown script of the worker VM so that the backend knows that the VM is being shut down.

| Property | Type | Description |
|----------|------|-------------|
| `reason` | `string` | The reason for the worker shutdown. Current possible values are: "UNKNOWN": shutdown reason is un... |

### `WorkerShutdownNoticeResponse`

Service-side response to WorkerMessage issuing shutdown notice.

### `WorkerThreadScalingReport`

Contains information about the thread scaling information of a worker.

| Property | Type | Description |
|----------|------|-------------|
| `currentThreadCount` | `integer` | Current number of active threads in a worker. |

### `WorkerThreadScalingReportResponse`

Contains the thread scaling recommendation for a worker from the backend.

| Property | Type | Description |
|----------|------|-------------|
| `recommendedThreadCount` | `integer` | Recommended number of threads for a worker. |

### `WriteInstruction`

An instruction that writes records. Takes one input, produces no outputs.

| Property | Type | Description |
|----------|------|-------------|
| `input` | `InstructionInput` | The input. |
| `sink` | `Sink` | The sink to write to. |

