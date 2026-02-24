# Cloud Scheduler API - API Reference

**Version**: `v1` | **Methods**: 16 | **Schemas**: 22

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `cloudscheduler.projects.locations.getCmekConfig` | GET | `v1/{+name}` | Gets the Scheduler config in the project/region. |
| `cloudscheduler.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `cloudscheduler.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `cloudscheduler.projects.locations.updateCmekConfig` | PATCH | `v1/{+name}` | Initializes or Updates the a scheduler config. |
| `cloudscheduler.projects.locations.jobs.get` | GET | `v1/{+name}` | Gets a job. |
| `cloudscheduler.projects.locations.jobs.resume` | POST | `v1/{+name}:resume` | Resume a job. This method reenables a job after it has been Job.State.PAUSED. The state of a job ... |
| `cloudscheduler.projects.locations.jobs.pause` | POST | `v1/{+name}:pause` | Pauses a job. If a job is paused then the system will stop executing the job until it is re-enabl... |
| `cloudscheduler.projects.locations.jobs.patch` | PATCH | `v1/{+name}` | Updates a job. If successful, the updated Job is returned. If the job does not exist, `NOT_FOUND`... |
| `cloudscheduler.projects.locations.jobs.delete` | DELETE | `v1/{+name}` | Deletes a job. |
| `cloudscheduler.projects.locations.jobs.run` | POST | `v1/{+name}:run` | Forces a job to run now. When this method is called, Cloud Scheduler will dispatch the job, even ... |
| `cloudscheduler.projects.locations.jobs.list` | GET | `v1/{+parent}/jobs` | Lists jobs. |
| `cloudscheduler.projects.locations.jobs.create` | POST | `v1/{+parent}/jobs` | Creates a job. |
| `cloudscheduler.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `cloudscheduler.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `cloudscheduler.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `cloudscheduler.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |

### `cloudscheduler.projects.locations.getCmekConfig`

**GET** `v1/{+name}`

Gets the Scheduler config in the project/region.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The config name. For example: projects/PROJECT_ID/locations/LOCATION_ID/cmekConfig |

**Response**: `CmekConfig`

```typescript
const res = await cloudscheduler.locations.getCmekConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudscheduler.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await cloudscheduler.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudscheduler.projects.locations.list`

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
const res = await cloudscheduler.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudscheduler.projects.locations.updateCmekConfig`

**PATCH** `v1/{+name}`

Initializes or Updates the a scheduler config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The config resource name which includes the project and location and must end in 'cmekConfig', in the for... |
| `updateMask` | `string` | query | No | Optional. List of fields to be updated in this request. |

**Request body**: `CmekConfig`

**Response**: `Operation`

```typescript
const res = await cloudscheduler.locations.updateCmekConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudscheduler.projects.locations.jobs.get`

**GET** `v1/{+name}`

Gets a job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The job name. For example: `projects/PROJECT_ID/locations/LOCATION_ID/jobs/JOB_ID`. |

**Response**: `Job`

```typescript
const res = await cloudscheduler.jobs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudscheduler.projects.locations.jobs.resume`

**POST** `v1/{+name}:resume`

Resume a job. This method reenables a job after it has been Job.State.PAUSED. The state of a job is stored in Job.state; after calling this method it will be set to Job.State.ENABLED. A job must be in Job.State.PAUSED to be resumed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The job name. For example: `projects/PROJECT_ID/locations/LOCATION_ID/jobs/JOB_ID`. |

**Request body**: `ResumeJobRequest`

**Response**: `Job`

```typescript
const res = await cloudscheduler.jobs.resume({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudscheduler.projects.locations.jobs.pause`

**POST** `v1/{+name}:pause`

Pauses a job. If a job is paused then the system will stop executing the job until it is re-enabled via ResumeJob. The state of the job is stored in state; if paused it will be set to Job.State.PAUSED. A job must be in Job.State.ENABLED to be paused.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The job name. For example: `projects/PROJECT_ID/locations/LOCATION_ID/jobs/JOB_ID`. |

**Request body**: `PauseJobRequest`

**Response**: `Job`

```typescript
const res = await cloudscheduler.jobs.pause({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudscheduler.projects.locations.jobs.patch`

**PATCH** `v1/{+name}`

Updates a job. If successful, the updated Job is returned. If the job does not exist, `NOT_FOUND` is returned. If UpdateJob does not successfully return, it is possible for the job to be in an Job.State.UPDATE_FAILED state. A job in this state may not be executed. If this happens, retry the UpdateJob request until a successful response is received.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Optionally caller-specified in CreateJob, after which it becomes output only. The job name. For example: `projects/PR... |
| `updateMask` | `string` | query | No | A mask used to specify which fields of the job are being updated. |

**Request body**: `Job`

**Response**: `Job`

```typescript
const res = await cloudscheduler.jobs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudscheduler.projects.locations.jobs.delete`

**DELETE** `v1/{+name}`

Deletes a job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The job name. For example: `projects/PROJECT_ID/locations/LOCATION_ID/jobs/JOB_ID`. |

**Response**: `Empty`

```typescript
const res = await cloudscheduler.jobs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudscheduler.projects.locations.jobs.run`

**POST** `v1/{+name}:run`

Forces a job to run now. When this method is called, Cloud Scheduler will dispatch the job, even if the job is already running.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The job name. For example: `projects/PROJECT_ID/locations/LOCATION_ID/jobs/JOB_ID`. |

**Request body**: `RunJobRequest`

**Response**: `Job`

```typescript
const res = await cloudscheduler.jobs.run({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudscheduler.projects.locations.jobs.list`

**GET** `v1/{+parent}/jobs`

Lists jobs.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The location name. For example: `projects/PROJECT_ID/locations/LOCATION_ID`. |
| `pageSize` | `integer` | query | No | Requested page size. The maximum page size is 500. If unspecified, the page size will be the maximum. Fewer jobs than... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server will return. To request the first page results, page_token must be e... |

**Response**: `ListJobsResponse`

```typescript
const res = await cloudscheduler.jobs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudscheduler.projects.locations.jobs.create`

**POST** `v1/{+parent}/jobs`

Creates a job.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The location name. For example: `projects/PROJECT_ID/locations/LOCATION_ID`. |

**Request body**: `Job`

**Response**: `Job`

```typescript
const res = await cloudscheduler.jobs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudscheduler.projects.locations.operations.list`

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
const res = await cloudscheduler.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudscheduler.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await cloudscheduler.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudscheduler.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await cloudscheduler.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudscheduler.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await cloudscheduler.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AppEngineHttpTarget`

App Engine target. The job will be pushed to a job handler by means of an HTTP request via an http_method such as HTTP POST, HTTP GET, etc. The job is acknowledged by means of an HTTP response code in the range [200 - 299]. Error 503 is considered an App Engine system error instead of an application error. Requests returning error 503 will be retried regardless of retry configuration and not counted against retry counts. Any other response code, or a failure to receive a response before the deadline, constitutes a failed attempt.

| Property | Type | Description |
|----------|------|-------------|
| `appEngineRouting` | `AppEngineRouting` | App Engine Routing setting for the job. |
| `body` | `string` | Body. HTTP request body. A request body is allowed only if the HTTP method is POST or PUT. It wil... |
| `headers` | `object` | HTTP request headers. This map contains the header field names and values. Headers can be set whe... |
| `httpMethod` | `string` | The HTTP method to use for the request. PATCH and OPTIONS are not permitted. |
| `relativeUri` | `string` | The relative URI. The relative URL must begin with "/" and must be a valid HTTP relative URL. It ... |

### `AppEngineRouting`

App Engine Routing. For more information about services, versions, and instances see [An Overview of App Engine](https://cloud.google.com/appengine/docs/python/an-overview-of-app-engine), [Microservices Architecture on Google App Engine](https://cloud.google.com/appengine/docs/python/microservices-on-app-engine), [App Engine Standard request routing](https://cloud.google.com/appengine/docs/standard/python/how-requests-are-routed), and [App Engine Flex request routing](https://cloud.google.com/appengine/docs/flexible/python/how-requests-are-routed).

| Property | Type | Description |
|----------|------|-------------|
| `host` | `string` | Output only. The host that the job is sent to. For more information about how App Engine requests... |
| `instance` | `string` | App instance. By default, the job is sent to an instance which is available when the job is attem... |
| `service` | `string` | App service. By default, the job is sent to the service which is the default service when the job... |
| `version` | `string` | App version. By default, the job is sent to the version which is the default version when the job... |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `CmekConfig`

Describes the project/location configuration of Cloud Scheduler Resources.

| Property | Type | Description |
|----------|------|-------------|
| `kmsKeyName` | `string` | Optional. Resource name of the Cloud KMS key, of the form `projects/PROJECT_ID/locations/LOCATION... |
| `name` | `string` | Identifier. The config resource name which includes the project and location and must end in 'cme... |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `HttpTarget`

Http target. The job will be pushed to the job handler by means of an HTTP request via an http_method such as HTTP POST, HTTP GET, etc. The job is acknowledged by means of an HTTP response code in the range [200 - 299]. A failure to receive a response constitutes a failed execution. For a redirected request, the response returned by the redirected request is considered.

| Property | Type | Description |
|----------|------|-------------|
| `body` | `string` | HTTP request body. A request body is allowed only if the HTTP method is POST, PUT, or PATCH. It i... |
| `headers` | `object` | HTTP request headers. This map contains the header field names and values. The user can specify H... |
| `httpMethod` | `string` | Which HTTP method to use for the request. |
| `oauthToken` | `OAuthToken` | If specified, an [OAuth token](https://developers.google.com/identity/protocols/OAuth2) will be g... |
| `oidcToken` | `OidcToken` | If specified, an [OIDC](https://developers.google.com/identity/protocols/OpenIDConnect) token wil... |
| `uri` | `string` | Required. The full URI path that the request will be sent to. This string must begin with either ... |

### `Job`

Configuration for a job. The maximum allowed size for a job is 1MB.

| Property | Type | Description |
|----------|------|-------------|
| `appEngineHttpTarget` | `AppEngineHttpTarget` | App Engine HTTP target. |
| `attemptDeadline` | `string` | The deadline for job attempts. If the request handler does not respond by this deadline then the ... |
| `description` | `string` | Optionally caller-specified in CreateJob or UpdateJob. A human-readable description for the job. ... |
| `httpTarget` | `HttpTarget` | HTTP target. |
| `lastAttemptTime` | `string` | Output only. The time the last job attempt started. |
| `name` | `string` | Optionally caller-specified in CreateJob, after which it becomes output only. The job name. For e... |
| `pubsubTarget` | `PubsubTarget` | Pub/Sub target. |
| `retryConfig` | `RetryConfig` | Settings that determine the retry behavior. |
| `satisfiesPzs` | `boolean` | Output only. Whether or not this Job satisfies the requirements of physical zone separation |
| `schedule` | `string` | Required, except when used with UpdateJob. Describes the schedule on which the job will be execut... |
| `scheduleTime` | `string` | Output only. The next time the job is scheduled. Note that this may be a retry of a previously fa... |
| `state` | `string` | Output only. State of the job. |
| `status` | `Status` | Output only. The response from the target for the last attempted execution. |
| `timeZone` | `string` | Specifies the time zone to be used in interpreting schedule. The value of this field must be a ti... |
| `userUpdateTime` | `string` | Output only. The creation time of the job. |

### `ListJobsResponse`

Response message for listing jobs using ListJobs.

| Property | Type | Description |
|----------|------|-------------|
| `jobs` | `array<Job>` | The list of jobs. |
| `nextPageToken` | `string` | A token to retrieve next page of results. Pass this value in the page_token field in the subseque... |

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

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `OAuthToken`

Contains information needed for generating an [OAuth token](https://developers.google.com/identity/protocols/OAuth2). This type of authorization should generally only be used when calling Google APIs hosted on *.googleapis.com.

| Property | Type | Description |
|----------|------|-------------|
| `scope` | `string` | OAuth scope to be used for generating OAuth access token. If not specified, "https://www.googleap... |
| `serviceAccountEmail` | `string` | [Service account email](https://cloud.google.com/iam/docs/service-accounts) to be used for genera... |

### `OidcToken`

Contains information needed for generating an [OpenID Connect token](https://developers.google.com/identity/protocols/OpenIDConnect). This type of authorization can be used for many scenarios, including calling Cloud Run, or endpoints where you intend to validate the token yourself.

| Property | Type | Description |
|----------|------|-------------|
| `audience` | `string` | Audience to be used when generating OIDC token. If not specified, the URI specified in target wil... |
| `serviceAccountEmail` | `string` | [Service account email](https://cloud.google.com/iam/docs/service-accounts) to be used for genera... |

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

### `PauseJobRequest`

Request message for PauseJob.

### `PubsubMessage`

A message that is published by publishers and consumed by subscribers. The message must contain either a non-empty data field or at least one attribute. Note that client libraries represent this object differently depending on the language. See the corresponding [client library documentation](https://cloud.google.com/pubsub/docs/reference/libraries) for more information. See [quotas and limits] (https://cloud.google.com/pubsub/quotas) for more information about message limits.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `object` | Optional. Attributes for this message. If this field is empty, the message must contain non-empty... |
| `data` | `string` | Optional. The message data field. If this field is empty, the message must contain at least one a... |
| `messageId` | `string` | ID of this message, assigned by the server when the message is published. Guaranteed to be unique... |
| `orderingKey` | `string` | Optional. If non-empty, identifies related messages for which publish order should be respected. ... |
| `publishTime` | `string` | The time at which the message was published, populated by the server when it receives the `Publis... |

### `PubsubTarget`

Pub/Sub target. The job will be delivered by publishing a message to the given Pub/Sub topic.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `object` | Attributes for PubsubMessage. Pubsub message must contain either non-empty data, or at least one ... |
| `data` | `string` | The message payload for PubsubMessage. Pubsub message must contain either non-empty data, or at l... |
| `topicName` | `string` | Required. The name of the Cloud Pub/Sub topic to which messages will be published when a job is d... |

### `ResumeJobRequest`

Request message for ResumeJob.

### `RetryConfig`

Settings that determine the retry behavior. For more information, see [Retry jobs](/scheduler/docs/configuring/retry-jobs). By default, if a job does not complete successfully (meaning that an acknowledgement is not received from the handler, then it will be retried with exponential backoff according to the settings in RetryConfig.

| Property | Type | Description |
|----------|------|-------------|
| `maxBackoffDuration` | `string` | The maximum amount of time to wait before retrying a job after it fails. The default value of thi... |
| `maxDoublings` | `integer` | The time between retries will double `max_doublings` times. A job's retry interval starts at min_... |
| `maxRetryDuration` | `string` | The time limit for retrying a failed job, measured from the time when an execution was first atte... |
| `minBackoffDuration` | `string` | The minimum amount of time to wait before retrying a job after it fails. The default value of thi... |
| `retryCount` | `integer` | The number of attempts that the system will make to run a job using the exponential backoff proce... |

### `RunJobRequest`

Request message for forcing a job to run now using RunJob.

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

