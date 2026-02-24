# Data pipelines API - API Reference

**Version**: `v1` | **Methods**: 8 | **Schemas**: 19

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `datapipelines.projects.locations.pipelines.run` | POST | `v1/{+name}:run` | Creates a job for the specified pipeline directly. You can use this method when the internal sche... |
| `datapipelines.projects.locations.pipelines.get` | GET | `v1/{+name}` | Looks up a single pipeline. Returns a "NOT_FOUND" error if no such pipeline exists. Returns a "FO... |
| `datapipelines.projects.locations.pipelines.stop` | POST | `v1/{+name}:stop` | Freezes pipeline execution permanently. If there's a corresponding scheduler entry, it's deleted,... |
| `datapipelines.projects.locations.pipelines.patch` | PATCH | `v1/{+name}` | Updates a pipeline. If successful, the updated Pipeline is returned. Returns `NOT_FOUND` if the p... |
| `datapipelines.projects.locations.pipelines.delete` | DELETE | `v1/{+name}` | Deletes a pipeline. If a scheduler job is attached to the pipeline, it will be deleted. |
| `datapipelines.projects.locations.pipelines.create` | POST | `v1/{+parent}/pipelines` | Creates a pipeline. For a batch pipeline, you can pass scheduler information. Data Pipelines uses... |
| `datapipelines.projects.locations.pipelines.list` | GET | `v1/{+parent}/pipelines` | Lists pipelines. Returns a "FORBIDDEN" error if the caller doesn't have permission to access it. |
| `datapipelines.projects.locations.pipelines.jobs.list` | GET | `v1/{+parent}/jobs` | Lists jobs for a given pipeline. Throws a "FORBIDDEN" error if the caller doesn't have permission... |

### `datapipelines.projects.locations.pipelines.run`

**POST** `v1/{+name}:run`

Creates a job for the specified pipeline directly. You can use this method when the internal scheduler is not configured and you want to trigger the job directly or through an external system. Returns a "NOT_FOUND" error if the pipeline doesn't exist. Returns a "FORBIDDEN" error if the user doesn't have permission to access the pipeline or run jobs for the pipeline.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The pipeline name. For example: `projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID`. |

**Request body**: `GoogleCloudDatapipelinesV1RunPipelineRequest`

**Response**: `GoogleCloudDatapipelinesV1RunPipelineResponse`

```typescript
const res = await datapipelines.pipelines.run({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datapipelines.projects.locations.pipelines.get`

**GET** `v1/{+name}`

Looks up a single pipeline. Returns a "NOT_FOUND" error if no such pipeline exists. Returns a "FORBIDDEN" error if the caller doesn't have permission to access it.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The pipeline name. For example: `projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID`. |

**Response**: `GoogleCloudDatapipelinesV1Pipeline`

```typescript
const res = await datapipelines.pipelines.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datapipelines.projects.locations.pipelines.stop`

**POST** `v1/{+name}:stop`

Freezes pipeline execution permanently. If there's a corresponding scheduler entry, it's deleted, and the pipeline state is changed to "ARCHIVED". However, pipeline metadata is retained.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The pipeline name. For example: `projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID`. |

**Request body**: `GoogleCloudDatapipelinesV1StopPipelineRequest`

**Response**: `GoogleCloudDatapipelinesV1Pipeline`

```typescript
const res = await datapipelines.pipelines.stop({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datapipelines.projects.locations.pipelines.patch`

**PATCH** `v1/{+name}`

Updates a pipeline. If successful, the updated Pipeline is returned. Returns `NOT_FOUND` if the pipeline doesn't exist. If UpdatePipeline does not return successfully, you can retry the UpdatePipeline request until you receive a successful response.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The pipeline name. For example: `projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID`. * `PROJECT_ID` can... |
| `updateMask` | `string` | query | No | The list of fields to be updated. |

**Request body**: `GoogleCloudDatapipelinesV1Pipeline`

**Response**: `GoogleCloudDatapipelinesV1Pipeline`

```typescript
const res = await datapipelines.pipelines.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datapipelines.projects.locations.pipelines.delete`

**DELETE** `v1/{+name}`

Deletes a pipeline. If a scheduler job is attached to the pipeline, it will be deleted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The pipeline name. For example: `projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID`. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await datapipelines.pipelines.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datapipelines.projects.locations.pipelines.create`

**POST** `v1/{+parent}/pipelines`

Creates a pipeline. For a batch pipeline, you can pass scheduler information. Data Pipelines uses the scheduler information to create an internal scheduler that runs jobs periodically. If the internal scheduler is not configured, you can use RunPipeline to run jobs.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The location name. For example: `projects/PROJECT_ID/locations/LOCATION_ID`. |

**Request body**: `GoogleCloudDatapipelinesV1Pipeline`

**Response**: `GoogleCloudDatapipelinesV1Pipeline`

```typescript
const res = await datapipelines.pipelines.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datapipelines.projects.locations.pipelines.list`

**GET** `v1/{+parent}/pipelines`

Lists pipelines. Returns a "FORBIDDEN" error if the caller doesn't have permission to access it.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The location name. For example: `projects/PROJECT_ID/locations/LOCATION_ID`. |
| `filter` | `string` | query | No | An expression for filtering the results of the request. If unspecified, all pipelines will be returned. Multiple filt... |
| `pageSize` | `integer` | query | No | The maximum number of entities to return. The service may return fewer than this value, even if there are additional ... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListPipelines` call. Provide this to retrieve the subsequent page. When pagin... |

**Response**: `GoogleCloudDatapipelinesV1ListPipelinesResponse`

```typescript
const res = await datapipelines.pipelines.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `datapipelines.projects.locations.pipelines.jobs.list`

**GET** `v1/{+parent}/jobs`

Lists jobs for a given pipeline. Throws a "FORBIDDEN" error if the caller doesn't have permission to access it.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The pipeline name. For example: `projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID`. |
| `pageSize` | `integer` | query | No | The maximum number of entities to return. The service may return fewer than this value, even if there are additional ... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListJobs` call. Provide this to retrieve the subsequent page. When paginating... |

**Response**: `GoogleCloudDatapipelinesV1ListJobsResponse`

```typescript
const res = await datapipelines.jobs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `GoogleCloudDatapipelinesV1DataflowJobDetails`

Pipeline job details specific to the Dataflow API. This is encapsulated here to allow for more executors to store their specific details separately.

| Property | Type | Description |
|----------|------|-------------|
| `currentWorkers` | `integer` | Output only. The current number of workers used to run the jobs. Only set to a value if the job i... |
| `resourceInfo` | `object` | Cached version of all the metrics of interest for the job. This value gets stored here when the j... |
| `sdkVersion` | `GoogleCloudDatapipelinesV1SdkVersion` | Output only. The SDK version used to run the job. |

### `GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment`

The environment values to be set at runtime for a Flex Template.

| Property | Type | Description |
|----------|------|-------------|
| `additionalExperiments` | `array<string>` | Additional experiment flags for the job. |
| `additionalUserLabels` | `object` | Additional user labels to be specified for the job. Keys and values must follow the restrictions ... |
| `enableStreamingEngine` | `boolean` | Whether to enable Streaming Engine for the job. |
| `flexrsGoal` | `string` | Set FlexRS goal for the job. https://cloud.google.com/dataflow/docs/guides/flexrs |
| `ipConfiguration` | `string` | Configuration for VM IPs. |
| `kmsKeyName` | `string` | Name for the Cloud KMS key for the job. Key format is: projects//locations//keyRings//cryptoKeys/ |
| `machineType` | `string` | The machine type to use for the job. Defaults to the value from the template if not specified. |
| `maxWorkers` | `integer` | The maximum number of Compute Engine instances to be made available to your pipeline during execu... |
| `network` | `string` | Network to which VMs will be assigned. If empty or unspecified, the service will use the network ... |
| `numWorkers` | `integer` | The initial number of Compute Engine instances for the job. |
| `serviceAccountEmail` | `string` | The email address of the service account to run the job as. |
| `subnetwork` | `string` | Subnetwork to which VMs will be assigned, if desired. You can specify a subnetwork using either a... |
| `tempLocation` | `string` | The Cloud Storage path to use for temporary files. Must be a valid Cloud Storage URL, beginning w... |
| `workerRegion` | `string` | The Compute Engine region (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in ... |
| `workerZone` | `string` | The Compute Engine zone (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in wh... |
| `zone` | `string` | The Compute Engine [availability zone](https://cloud.google.com/compute/docs/regions-zones/region... |

### `GoogleCloudDatapipelinesV1Job`

Definition of the job information maintained by the pipeline. Fields in this entity are retrieved from the executor API (e.g. Dataflow API).

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time of job creation. |
| `dataflowJobDetails` | `GoogleCloudDatapipelinesV1DataflowJobDetails` | All the details that are specific to a Dataflow job. |
| `endTime` | `string` | Output only. The time of job termination. This is absent if the job is still running. |
| `id` | `string` | Output only. The internal ID for the job. |
| `name` | `string` | Required. The fully qualified resource name for the job. |
| `state` | `string` | The current state of the job. |
| `status` | `GoogleRpcStatus` | Status capturing any error code or message related to job creation or execution. |

### `GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter`

Launch Flex Template parameter.

| Property | Type | Description |
|----------|------|-------------|
| `containerSpecGcsPath` | `string` | Cloud Storage path to a file with a JSON-serialized ContainerSpec as content. |
| `environment` | `GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment` | The runtime environment for the Flex Template job. |
| `jobName` | `string` | Required. The job name to use for the created job. For an update job request, the job name should... |
| `launchOptions` | `object` | Launch options for this Flex Template job. This is a common set of options across languages and t... |
| `parameters` | `object` | The parameters for the Flex Template. Example: `{"num_workers":"5"}` |
| `transformNameMappings` | `object` | Use this to pass transform name mappings for streaming update jobs. Example: `{"oldTransformName"... |
| `update` | `boolean` | Set this to true if you are sending a request to update a running streaming job. When set, the jo... |

### `GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest`

A request to launch a Dataflow job from a Flex Template.

| Property | Type | Description |
|----------|------|-------------|
| `launchParameter` | `GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter` | Required. Parameter to launch a job from a Flex Template. |
| `location` | `string` | Required. The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpo... |
| `projectId` | `string` | Required. The ID of the Cloud Platform project that the job belongs to. |
| `validateOnly` | `boolean` | If true, the request is validated but not actually executed. Defaults to false. |

### `GoogleCloudDatapipelinesV1LaunchTemplateParameters`

Parameters to provide to the template being launched.

| Property | Type | Description |
|----------|------|-------------|
| `environment` | `GoogleCloudDatapipelinesV1RuntimeEnvironment` | The runtime environment for the job. |
| `jobName` | `string` | Required. The job name to use for the created job. |
| `parameters` | `object` | The runtime parameters to pass to the job. |
| `transformNameMapping` | `object` | Map of transform name prefixes of the job to be replaced to the corresponding name prefixes of th... |
| `update` | `boolean` | If set, replace the existing pipeline with the name specified by jobName with this pipeline, pres... |

### `GoogleCloudDatapipelinesV1LaunchTemplateRequest`

A request to launch a template.

| Property | Type | Description |
|----------|------|-------------|
| `gcsPath` | `string` | A Cloud Storage path to the template from which to create the job. Must be a valid Cloud Storage ... |
| `launchParameters` | `GoogleCloudDatapipelinesV1LaunchTemplateParameters` | The parameters of the template to launch. This should be part of the body of the POST request. |
| `location` | `string` | The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) to w... |
| `projectId` | `string` | Required. The ID of the Cloud Platform project that the job belongs to. |
| `validateOnly` | `boolean` | If true, the request is validated but not actually executed. Defaults to false. |

### `GoogleCloudDatapipelinesV1ListJobsResponse`

Response message for ListJobs

| Property | Type | Description |
|----------|------|-------------|
| `jobs` | `array<GoogleCloudDatapipelinesV1Job>` | Results that were accessible to the caller. Results are always in descending order of job creatio... |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `GoogleCloudDatapipelinesV1ListPipelinesResponse`

Response message for ListPipelines.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `pipelines` | `array<GoogleCloudDatapipelinesV1Pipeline>` | Results that matched the filter criteria and were accessible to the caller. Results are always in... |

### `GoogleCloudDatapipelinesV1Pipeline`

The main pipeline entity and all the necessary metadata for launching and managing linked jobs.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Immutable. The timestamp when the pipeline was initially created. Set by the Data Pi... |
| `displayName` | `string` | Required. The display name of the pipeline. It can contain only letters ([A-Za-z]), numbers ([0-9... |
| `jobCount` | `integer` | Output only. Number of jobs. |
| `lastUpdateTime` | `string` | Output only. Immutable. The timestamp when the pipeline was last modified. Set by the Data Pipeli... |
| `name` | `string` | The pipeline name. For example: `projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID`... |
| `pipelineSources` | `object` | Immutable. The sources of the pipeline (for example, Dataplex). The keys and values are set by th... |
| `scheduleInfo` | `GoogleCloudDatapipelinesV1ScheduleSpec` | Internal scheduling information for a pipeline. If this information is provided, periodic jobs wi... |
| `schedulerServiceAccountEmail` | `string` | Optional. A service account email to be used with the Cloud Scheduler job. If not specified, the ... |
| `state` | `string` | Required. The state of the pipeline. When the pipeline is created, the state is set to 'PIPELINE_... |
| `type` | `string` | Required. The type of the pipeline. This field affects the scheduling of the pipeline and the typ... |
| `workload` | `GoogleCloudDatapipelinesV1Workload` | Workload information for creating new jobs. |

### `GoogleCloudDatapipelinesV1RunPipelineRequest`

Request message for RunPipeline

### `GoogleCloudDatapipelinesV1RunPipelineResponse`

Response message for RunPipeline

| Property | Type | Description |
|----------|------|-------------|
| `job` | `GoogleCloudDatapipelinesV1Job` | Job that was created as part of RunPipeline operation. |

### `GoogleCloudDatapipelinesV1RuntimeEnvironment`

The environment values to set at runtime.

| Property | Type | Description |
|----------|------|-------------|
| `additionalExperiments` | `array<string>` | Additional experiment flags for the job. |
| `additionalUserLabels` | `object` | Additional user labels to be specified for the job. Keys and values should follow the restriction... |
| `bypassTempDirValidation` | `boolean` | Whether to bypass the safety checks for the job's temporary directory. Use with caution. |
| `enableStreamingEngine` | `boolean` | Whether to enable Streaming Engine for the job. |
| `ipConfiguration` | `string` | Configuration for VM IPs. |
| `kmsKeyName` | `string` | Name for the Cloud KMS key for the job. The key format is: projects//locations//keyRings//cryptoK... |
| `machineType` | `string` | The machine type to use for the job. Defaults to the value from the template if not specified. |
| `maxWorkers` | `integer` | The maximum number of Compute Engine instances to be made available to your pipeline during execu... |
| `network` | `string` | Network to which VMs will be assigned. If empty or unspecified, the service will use the network ... |
| `numWorkers` | `integer` | The initial number of Compute Engine instances for the job. |
| `serviceAccountEmail` | `string` | The email address of the service account to run the job as. |
| `subnetwork` | `string` | Subnetwork to which VMs will be assigned, if desired. You can specify a subnetwork using either a... |
| `tempLocation` | `string` | The Cloud Storage path to use for temporary files. Must be a valid Cloud Storage URL, beginning w... |
| `workerRegion` | `string` | The Compute Engine region (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in ... |
| `workerZone` | `string` | The Compute Engine zone (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in wh... |
| `zone` | `string` | The Compute Engine [availability zone](https://cloud.google.com/compute/docs/regions-zones/region... |

### `GoogleCloudDatapipelinesV1ScheduleSpec`

Details of the schedule the pipeline runs on.

| Property | Type | Description |
|----------|------|-------------|
| `nextJobTime` | `string` | Output only. When the next Scheduler job is going to run. |
| `schedule` | `string` | Unix-cron format of the schedule. This information is retrieved from the linked Cloud Scheduler. |
| `timeZone` | `string` | Timezone ID. This matches the timezone IDs used by the Cloud Scheduler API. If empty, UTC time is... |

### `GoogleCloudDatapipelinesV1SdkVersion`

The version of the SDK used to run the job.

| Property | Type | Description |
|----------|------|-------------|
| `sdkSupportStatus` | `string` | The support status for this SDK version. |
| `version` | `string` | The version of the SDK used to run the job. |
| `versionDisplayName` | `string` | A readable string describing the version of the SDK. |

### `GoogleCloudDatapipelinesV1StopPipelineRequest`

Request message for StopPipeline.

### `GoogleCloudDatapipelinesV1Workload`

Workload details for creating the pipeline jobs.

| Property | Type | Description |
|----------|------|-------------|
| `dataflowFlexTemplateRequest` | `GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest` | Template information and additional parameters needed to launch a Dataflow job using the flex lau... |
| `dataflowLaunchTemplateRequest` | `GoogleCloudDatapipelinesV1LaunchTemplateRequest` | Template information and additional parameters needed to launch a Dataflow job using the standard... |

### `GoogleProtobufEmpty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `GoogleRpcStatus`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

