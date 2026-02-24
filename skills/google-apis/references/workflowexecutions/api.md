# Workflow Executions API - API Reference

**Version**: `v1` | **Methods**: 10 | **Schemas**: 23

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `workflowexecutions.projects.locations.workflows.triggerPubsubExecution` | POST | `v1/{+workflow}:triggerPubsubExecution` | Triggers a new execution using the latest revision of the given workflow by a Pub/Sub push notifi... |
| `workflowexecutions.projects.locations.workflows.executions.cancel` | POST | `v1/{+name}:cancel` | Cancels an execution of the given name. |
| `workflowexecutions.projects.locations.workflows.executions.deleteExecutionHistory` | POST | `v1/{+name}:deleteExecutionHistory` | Deletes all step entries for an execution. |
| `workflowexecutions.projects.locations.workflows.executions.list` | GET | `v1/{+parent}/executions` | Returns a list of executions which belong to the workflow with the given name. The method returns... |
| `workflowexecutions.projects.locations.workflows.executions.exportData` | GET | `v1/{+name}:exportData` | Returns all metadata stored about an execution, excluding most data that is already accessible us... |
| `workflowexecutions.projects.locations.workflows.executions.create` | POST | `v1/{+parent}/executions` | Creates a new execution using the latest revision of the given workflow. For more information, se... |
| `workflowexecutions.projects.locations.workflows.executions.get` | GET | `v1/{+name}` | Returns an execution of the given name. |
| `workflowexecutions.projects.locations.workflows.executions.callbacks.list` | GET | `v1/{+parent}/callbacks` | Returns a list of active callbacks that belong to the execution with the given name. The returned... |
| `workflowexecutions.projects.locations.workflows.executions.stepEntries.list` | GET | `v1/{+parent}/stepEntries` | Lists step entries for the corresponding workflow execution. Returned entries are ordered by thei... |
| `workflowexecutions.projects.locations.workflows.executions.stepEntries.get` | GET | `v1/{+name}` | Gets a step entry. |

### `workflowexecutions.projects.locations.workflows.triggerPubsubExecution`

**POST** `v1/{+workflow}:triggerPubsubExecution`

Triggers a new execution using the latest revision of the given workflow by a Pub/Sub push notification.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `workflow` | `string` | path | Yes | Required. Name of the workflow for which an execution should be created. Format: projects/{project}/locations/{locati... |

**Request body**: `TriggerPubsubExecutionRequest`

**Response**: `Execution`

```typescript
const res = await workflowexecutions.workflows.triggerPubsubExecution({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workflowexecutions.projects.locations.workflows.executions.cancel`

**POST** `v1/{+name}:cancel`

Cancels an execution of the given name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the execution to be cancelled. Format: projects/{project}/locations/{location}/workflows/{workflow}... |

**Request body**: `CancelExecutionRequest`

**Response**: `Execution`

```typescript
const res = await workflowexecutions.executions.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workflowexecutions.projects.locations.workflows.executions.deleteExecutionHistory`

**POST** `v1/{+name}:deleteExecutionHistory`

Deletes all step entries for an execution.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the execution for which step entries should be deleted. Format: projects/{project}/locations/{locat... |

**Request body**: `DeleteExecutionHistoryRequest`

**Response**: `Empty`

```typescript
const res = await workflowexecutions.executions.deleteExecutionHistory({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workflowexecutions.projects.locations.workflows.executions.list`

**GET** `v1/{+parent}/executions`

Returns a list of executions which belong to the workflow with the given name. The method returns executions of all workflow revisions. Returned executions are ordered by their start time (newest first).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the workflow for which the executions should be listed. Format: projects/{project}/locations/{locat... |
| `filter` | `string` | query | No | Optional. Filters applied to the `[Executions.ListExecutions]` results. The following fields are supported for filter... |
| `orderBy` | `string` | query | No | Optional. Comma-separated list of fields that specify the ordering applied to the `[Executions.ListExecutions]` resul... |
| `pageSize` | `integer` | query | No | Maximum number of executions to return per call. Max supported value depends on the selected Execution view: it's 100... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListExecutions` call. Provide this to retrieve the subsequent page. When pagi... |
| `view` | `string` | query | No | Optional. A view defining which fields should be filled in the returned executions. The API will default to the BASIC... |

**Response**: `ListExecutionsResponse`

```typescript
const res = await workflowexecutions.executions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workflowexecutions.projects.locations.workflows.executions.exportData`

**GET** `v1/{+name}:exportData`

Returns all metadata stored about an execution, excluding most data that is already accessible using other API methods.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the execution for which data is to be exported. Format: projects/{project}/locations/{location}/wor... |

**Response**: `ExportDataResponse`

```typescript
const res = await workflowexecutions.executions.exportData({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workflowexecutions.projects.locations.workflows.executions.create`

**POST** `v1/{+parent}/executions`

Creates a new execution using the latest revision of the given workflow. For more information, see Execute a workflow.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the workflow for which an execution should be created. Format: projects/{project}/locations/{locati... |

**Request body**: `Execution`

**Response**: `Execution`

```typescript
const res = await workflowexecutions.executions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workflowexecutions.projects.locations.workflows.executions.get`

**GET** `v1/{+name}`

Returns an execution of the given name.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the execution to be retrieved. Format: projects/{project}/locations/{location}/workflows/{workflow}... |
| `view` | `string` | query | No | Optional. A view defining which fields should be filled in the returned execution. The API will default to the FULL v... |

**Response**: `Execution`

```typescript
const res = await workflowexecutions.executions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workflowexecutions.projects.locations.workflows.executions.callbacks.list`

**GET** `v1/{+parent}/callbacks`

Returns a list of active callbacks that belong to the execution with the given name. The returned callbacks are ordered by callback ID.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the execution for which the callbacks should be listed. Format: projects/{project}/locations/{locat... |
| `pageSize` | `integer` | query | No | Maximum number of callbacks to return per call. The default value is 100 and is also the maximum value. |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListCallbacks` call. Provide this to retrieve the subsequent page. Note that ... |

**Response**: `ListCallbacksResponse`

```typescript
const res = await workflowexecutions.callbacks.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workflowexecutions.projects.locations.workflows.executions.stepEntries.list`

**GET** `v1/{+parent}/stepEntries`

Lists step entries for the corresponding workflow execution. Returned entries are ordered by their create_time.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Name of the workflow execution to list entries for. Format: projects/{project}/locations/{location}/workflo... |
| `filter` | `string` | query | No | Optional. Filters applied to the `[StepEntries.ListStepEntries]` results. The following fields are supported for filt... |
| `orderBy` | `string` | query | No | Optional. Comma-separated list of fields that specify the ordering applied to the `[StepEntries.ListStepEntries]` res... |
| `pageSize` | `integer` | query | No | Optional. Number of step entries to return per call. The default max is 1000. |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListStepEntries` call. Provide this to retrieve the subsequent page... |
| `skip` | `integer` | query | No | Optional. The number of step entries to skip. It can be used with or without a pageToken. If used with a pageToken, t... |
| `view` | `string` | query | No | Deprecated field. |

**Response**: `ListStepEntriesResponse`

```typescript
const res = await workflowexecutions.stepEntries.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `workflowexecutions.projects.locations.workflows.executions.stepEntries.get`

**GET** `v1/{+name}`

Gets a step entry.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the step entry to retrieve. Format: projects/{project}/locations/{location}/workflows/{workflow... |
| `view` | `string` | query | No | Deprecated field. |

**Response**: `StepEntry`

```typescript
const res = await workflowexecutions.stepEntries.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `Callback`

An instance of a Callback created by an execution.

| Property | Type | Description |
|----------|------|-------------|
| `availablePayloads` | `array<string>` | Output only. The payloads received by the callback that have not been processed by a waiting exec... |
| `method` | `string` | Output only. The method accepted by the callback. For example: GET, POST, PUT. |
| `name` | `string` | Output only. The resource name of the callback. Format: projects/{project}/locations/{location}/w... |
| `waiters` | `string` | Output only. Number of execution steps waiting on this callback. |

### `CancelExecutionRequest`

Request for the CancelExecution method.

### `DeleteExecutionHistoryRequest`

Request for the DeleteExecutionHistory method.

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Error`

Error describes why the execution was abnormally terminated.

| Property | Type | Description |
|----------|------|-------------|
| `context` | `string` | Human-readable stack trace string. |
| `payload` | `string` | Error message and data returned represented as a JSON string. |
| `stackTrace` | `StackTrace` | Stack trace with detailed information of where error was generated. |

### `Exception`

Exception describes why the step entry failed.

| Property | Type | Description |
|----------|------|-------------|
| `payload` | `string` | Error message represented as a JSON string. |

### `Execution`

A running instance of a [Workflow](/workflows/docs/reference/rest/v1/projects.locations.workflows).

| Property | Type | Description |
|----------|------|-------------|
| `argument` | `string` | Input parameters of the execution represented as a JSON string. The size limit is 32KB. *Note*: I... |
| `callLogLevel` | `string` | The call logging level associated to this execution. |
| `createTime` | `string` | Output only. Marks the creation of the execution. |
| `disableConcurrencyQuotaOverflowBuffering` | `boolean` | Optional. If set to true, the execution will not be backlogged when the concurrency quota is exha... |
| `duration` | `string` | Output only. Measures the duration of the execution. |
| `endTime` | `string` | Output only. Marks the end of execution, successful or not. |
| `error` | `Error` | Output only. The error which caused the execution to finish prematurely. The value is only presen... |
| `executionHistoryLevel` | `string` | Optional. Describes the execution history level to apply to this execution. If not specified, the... |
| `labels` | `object` | Labels associated with this execution. Labels can contain at most 64 entries. Keys and values can... |
| `name` | `string` | Output only. The resource name of the execution. Format: projects/{project}/locations/{location}/... |
| `result` | `string` | Output only. Output of the execution represented as a JSON string. The value can only be present ... |
| `startTime` | `string` | Output only. Marks the beginning of execution. Note that this will be the same as `createTime` fo... |
| `state` | `string` | Output only. Current state of the execution. |
| `stateError` | `StateError` | Output only. Error regarding the state of the Execution resource. For example, this field will ha... |
| `status` | `Status` | Output only. Status tracks the current steps and progress data of this execution. |
| `workflowRevisionId` | `string` | Output only. Revision of the workflow this execution is using. |

### `ExportDataResponse`

Response for the ExportData method.

| Property | Type | Description |
|----------|------|-------------|
| `data` | `string` | The JSON string with customer data and metadata for an execution with the given name |

### `ListCallbacksResponse`

RPC response object for the ListCallbacks method.

| Property | Type | Description |
|----------|------|-------------|
| `callbacks` | `array<Callback>` | The callbacks which match the request. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `ListExecutionsResponse`

Response for the ListExecutions method.

| Property | Type | Description |
|----------|------|-------------|
| `executions` | `array<Execution>` | The executions which match the request. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `ListStepEntriesResponse`

Response message for ExecutionHistory.ListStepEntries.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token to retrieve next page of results. Pass this value in the ListStepEntriesRequest.page_toke... |
| `stepEntries` | `array<StepEntry>` | The list of entries. |
| `totalSize` | `integer` | Indicates the total number of StepEntries that matched the request filter. For running executions... |

### `NavigationInfo`

NavigationInfo describes what steps if any come before or after this step, or what steps are parents or children of this step.

| Property | Type | Description |
|----------|------|-------------|
| `children` | `array<string>` | Step entries that can be reached by "stepping into" e.g. a subworkflow call. |
| `next` | `string` | The index of the next step in the current workflow, if any. |
| `parent` | `string` | The step entry, if any, that can be reached by "stepping out" of the current workflow being execu... |
| `previous` | `string` | The index of the previous step in the current workflow, if any. |

### `Position`

Position contains source position information about the stack trace element such as line number, column number and length of the code block in bytes.

| Property | Type | Description |
|----------|------|-------------|
| `column` | `string` | The source code column position (of the line) the current instruction was generated from. |
| `length` | `string` | The number of bytes of source code making up this stack trace element. |
| `line` | `string` | The source code line number the current instruction was generated from. |

### `PubsubMessage`

A message that is published by publishers and consumed by subscribers. The message must contain either a non-empty data field or at least one attribute. Note that client libraries represent this object differently depending on the language. See the corresponding [client library documentation](https://cloud.google.com/pubsub/docs/reference/libraries) for more information. See [quotas and limits] (https://cloud.google.com/pubsub/quotas) for more information about message limits.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `object` | Optional. Attributes for this message. If this field is empty, the message must contain non-empty... |
| `data` | `string` | Optional. The message data field. If this field is empty, the message must contain at least one a... |
| `messageId` | `string` | ID of this message, assigned by the server when the message is published. Guaranteed to be unique... |
| `orderingKey` | `string` | Optional. If non-empty, identifies related messages for which publish order should be respected. ... |
| `publishTime` | `string` | The time at which the message was published, populated by the server when it receives the `Publis... |

### `StackTrace`

A collection of stack elements (frames) where an error occurred.

| Property | Type | Description |
|----------|------|-------------|
| `elements` | `array<StackTraceElement>` | An array of stack elements. |

### `StackTraceElement`

A single stack element (frame) where an error occurred.

| Property | Type | Description |
|----------|------|-------------|
| `position` | `Position` | The source position information of the stack trace element. |
| `routine` | `string` | The routine where the error occurred. |
| `step` | `string` | The step the error occurred at. |

### `StateError`

Describes an error related to the current state of the Execution resource.

| Property | Type | Description |
|----------|------|-------------|
| `details` | `string` | Provides specifics about the error. |
| `type` | `string` | The type of this state error. |

### `Status`

Represents the current status of this execution.

| Property | Type | Description |
|----------|------|-------------|
| `currentSteps` | `array<Step>` | A list of currently executing or last executed step names for the workflow execution currently ru... |

### `Step`

Represents a step of the workflow this execution is running.

| Property | Type | Description |
|----------|------|-------------|
| `routine` | `string` | Name of a routine within the workflow. |
| `step` | `string` | Name of a step within the routine. |

### `StepEntry`

An StepEntry contains debugging information for a step transition in a workflow execution.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The creation time of the step entry. |
| `entryId` | `string` | Output only. The numeric ID of this step entry, used for navigation. |
| `exception` | `Exception` | Output only. The exception thrown by the step entry. |
| `name` | `string` | Output only. The full resource name of the step entry. Each step entry has a unique entry ID, whi... |
| `navigationInfo` | `NavigationInfo` | Output only. The NavigationInfo associated with this step. |
| `routine` | `string` | Output only. The name of the routine this step entry belongs to. A routine name is the subworkflo... |
| `state` | `string` | Output only. The state of the step entry. |
| `step` | `string` | Output only. The name of the step this step entry belongs to. |
| `stepEntryMetadata` | `StepEntryMetadata` | Output only. The StepEntryMetadata associated with this step. |
| `stepType` | `string` | Output only. The type of the step this step entry belongs to. |
| `updateTime` | `string` | Output only. The most recently updated time of the step entry. |
| `variableData` | `VariableData` | Output only. The VariableData associated with this step. |

### `StepEntryMetadata`

StepEntryMetadata contains metadata information about this step.

| Property | Type | Description |
|----------|------|-------------|
| `expectedIteration` | `string` | Expected iteration represents the expected number of iterations in the step's progress. |
| `progressNumber` | `string` | Progress number represents the current state of the current progress. eg: A step entry represents... |
| `progressType` | `string` | Progress type of this step entry. |
| `threadId` | `string` | Child thread id that this step entry belongs to. |

### `TriggerPubsubExecutionRequest`

Request for the TriggerPubsubExecution method.

| Property | Type | Description |
|----------|------|-------------|
| `GCPCloudEventsMode` | `string` | Required. LINT: LEGACY_NAMES The query parameter value for __GCP_CloudEventsMode, set by the Even... |
| `deliveryAttempt` | `integer` | The number of attempts that have been made to deliver this message. This is set by Pub/Sub for su... |
| `message` | `PubsubMessage` | Required. The message of the Pub/Sub push notification. |
| `subscription` | `string` | Required. The subscription of the Pub/Sub push notification. Format: projects/{project}/subscript... |

### `VariableData`

VariableData contains the variable data for this step.

| Property | Type | Description |
|----------|------|-------------|
| `variables` | `object` | Variables that are associated with this step. |

