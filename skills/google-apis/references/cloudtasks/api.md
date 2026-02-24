# Cloud Tasks API - API Reference

**Version**: `v2` | **Methods**: 21 | **Schemas**: 40

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `cloudtasks.projects.locations.list` | GET | `v2/{+name}/locations` | Lists information about the supported locations for this service. |
| `cloudtasks.projects.locations.get` | GET | `v2/{+name}` | Gets information about a location. |
| `cloudtasks.projects.locations.updateCmekConfig` | PATCH | `v2/{+name}` | Creates or Updates a CMEK config. Updates the Customer Managed Encryption Key assotiated with the... |
| `cloudtasks.projects.locations.getCmekConfig` | GET | `v2/{+name}` | Gets the CMEK config. Gets the Customer Managed Encryption Key configured with the Cloud Tasks lc... |
| `cloudtasks.projects.locations.queues.list` | GET | `v2/{+parent}/queues` | Lists queues. Queues are returned in lexicographical order. |
| `cloudtasks.projects.locations.queues.get` | GET | `v2/{+name}` | Gets a queue. |
| `cloudtasks.projects.locations.queues.create` | POST | `v2/{+parent}/queues` | Creates a queue. Queues created with this method allow tasks to live for a maximum of 31 days. Af... |
| `cloudtasks.projects.locations.queues.patch` | PATCH | `v2/{+name}` | Updates a queue. This method creates the queue if it does not exist and updates the queue if it d... |
| `cloudtasks.projects.locations.queues.delete` | DELETE | `v2/{+name}` | Deletes a queue. This command will delete the queue even if it has tasks in it. Note: If you dele... |
| `cloudtasks.projects.locations.queues.purge` | POST | `v2/{+name}:purge` | Purges a queue by deleting all of its tasks. All tasks created before this method is called are p... |
| `cloudtasks.projects.locations.queues.pause` | POST | `v2/{+name}:pause` | Pauses the queue. If a queue is paused then the system will stop dispatching tasks until the queu... |
| `cloudtasks.projects.locations.queues.resume` | POST | `v2/{+name}:resume` | Resume a queue. This method resumes a queue after it has been PAUSED or DISABLED. The state of a ... |
| `cloudtasks.projects.locations.queues.getIamPolicy` | POST | `v2/{+resource}:getIamPolicy` | Gets the access control policy for a Queue. Returns an empty policy if the resource exists and do... |
| `cloudtasks.projects.locations.queues.setIamPolicy` | POST | `v2/{+resource}:setIamPolicy` | Sets the access control policy for a Queue. Replaces any existing policy. Note: The Cloud Console... |
| `cloudtasks.projects.locations.queues.testIamPermissions` | POST | `v2/{+resource}:testIamPermissions` | Returns permissions that a caller has on a Queue. If the resource does not exist, this will retur... |
| `cloudtasks.projects.locations.queues.tasks.list` | GET | `v2/{+parent}/tasks` | Lists the tasks in a queue. By default, only the BASIC view is retrieved due to performance consi... |
| `cloudtasks.projects.locations.queues.tasks.get` | GET | `v2/{+name}` | Gets a task. After a task is successfully executed or has exhausted its retry attempts, the task ... |
| `cloudtasks.projects.locations.queues.tasks.create` | POST | `v2/{+parent}/tasks` | Creates a task and adds it to a queue. Tasks cannot be updated after creation; there is no Update... |
| `cloudtasks.projects.locations.queues.tasks.delete` | DELETE | `v2/{+name}` | Deletes a task. A task can be deleted if it is scheduled or dispatched. A task cannot be deleted ... |
| `cloudtasks.projects.locations.queues.tasks.run` | POST | `v2/{+name}:run` | Forces a task to run now. When this method is called, Cloud Tasks will dispatch the task, even if... |
| `cloudtasks.projects.locations.queues.tasks.buffer` | POST | `v2/{+queue}/tasks/{taskId}:buffer` | Creates and buffers a new task without the need to explicitly define a Task message. The queue mu... |

### `cloudtasks.projects.locations.list`

**GET** `v2/{+name}/locations`

Lists information about the supported locations for this service.

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
const res = await cloudtasks.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudtasks.projects.locations.get`

**GET** `v2/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await cloudtasks.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudtasks.projects.locations.updateCmekConfig`

**PATCH** `v2/{+name}`

Creates or Updates a CMEK config. Updates the Customer Managed Encryption Key assotiated with the Cloud Tasks location (Creates if the key does not already exist). All new tasks created in the location will be encrypted at-rest with the KMS-key provided in the config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The config resource name which includes the project and location and must end in 'cmekConfig', in the fo... |
| `updateMask` | `string` | query | No | List of fields to be updated in this request. |

**Request body**: `CmekConfig`

**Response**: `CmekConfig`

```typescript
const res = await cloudtasks.locations.updateCmekConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudtasks.projects.locations.getCmekConfig`

**GET** `v2/{+name}`

Gets the CMEK config. Gets the Customer Managed Encryption Key configured with the Cloud Tasks lcoation. By default there is no kms_key configured.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The config. For example: projects/PROJECT_ID/locations/LOCATION_ID/CmekConfig` |

**Response**: `CmekConfig`

```typescript
const res = await cloudtasks.locations.getCmekConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudtasks.projects.locations.queues.list`

**GET** `v2/{+parent}/queues`

Lists queues. Queues are returned in lexicographical order.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The location name. For example: `projects/PROJECT_ID/locations/LOCATION_ID` |
| `filter` | `string` | query | No | `filter` can be used to specify a subset of queues. Any Queue field can be used as a filter and several operators as ... |
| `pageSize` | `integer` | query | No | Requested page size. The maximum page size is 9800. If unspecified, the page size will be the maximum. Fewer queues t... |
| `pageToken` | `string` | query | No | A token identifying the page of results to return. To request the first page results, page_token must be empty. To re... |

**Response**: `ListQueuesResponse`

```typescript
const res = await cloudtasks.queues.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudtasks.projects.locations.queues.get`

**GET** `v2/{+name}`

Gets a queue.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the queue. For example: `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID` |

**Response**: `Queue`

```typescript
const res = await cloudtasks.queues.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudtasks.projects.locations.queues.create`

**POST** `v2/{+parent}/queues`

Creates a queue. Queues created with this method allow tasks to live for a maximum of 31 days. After a task is 31 days old, the task will be deleted regardless of whether it was dispatched or not. WARNING: Using this method may have unintended side effects if you are using an App Engine `queue.yaml` or `queue.xml` file to manage your queues. Read [Overview of Queue Management and queue.yaml](https://cloud.google.com/tasks/docs/queue-yaml) before using this method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The location name in which the queue will be created. For example: `projects/PROJECT_ID/locations/LOCATION_... |

**Request body**: `Queue`

**Response**: `Queue`

```typescript
const res = await cloudtasks.queues.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudtasks.projects.locations.queues.patch`

**PATCH** `v2/{+name}`

Updates a queue. This method creates the queue if it does not exist and updates the queue if it does exist. Queues created with this method allow tasks to live for a maximum of 31 days. After a task is 31 days old, the task will be deleted regardless of whether it was dispatched or not. WARNING: Using this method may have unintended side effects if you are using an App Engine `queue.yaml` or `queue.xml` file to manage your queues. Read [Overview of Queue Management and queue.yaml](https://cloud.google.com/tasks/docs/queue-yaml) before using this method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Caller-specified and required in CreateQueue, after which it becomes output only. The queue name. The queue name must... |
| `updateMask` | `string` | query | No | A mask used to specify which fields of the queue are being updated. If empty, then all fields will be updated. |

**Request body**: `Queue`

**Response**: `Queue`

```typescript
const res = await cloudtasks.queues.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudtasks.projects.locations.queues.delete`

**DELETE** `v2/{+name}`

Deletes a queue. This command will delete the queue even if it has tasks in it. Note: If you delete a queue, you may be prevented from creating a new queue with the same name as the deleted queue for a tombstone window of up to 3 days. During this window, the CreateQueue operation may appear to recreate the queue, but this can be misleading. If you attempt to create a queue with the same name as one that is in the tombstone window, run GetQueue to confirm that the queue creation was successful. If GetQueue returns 200 response code, your queue was successfully created with the name of the previously deleted queue. Otherwise, your queue did not successfully recreate. WARNING: Using this method may have unintended side effects if you are using an App Engine `queue.yaml` or `queue.xml` file to manage your queues. Read [Overview of Queue Management and queue.yaml](https://cloud.google.com/tasks/docs/queue-yaml) before using this method.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The queue name. For example: `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID` |

**Response**: `Empty`

```typescript
const res = await cloudtasks.queues.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudtasks.projects.locations.queues.purge`

**POST** `v2/{+name}:purge`

Purges a queue by deleting all of its tasks. All tasks created before this method is called are permanently deleted. Purge operations can take up to one minute to take effect. Tasks might be dispatched before the purge takes effect. A purge is irreversible.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The queue name. For example: `projects/PROJECT_ID/location/LOCATION_ID/queues/QUEUE_ID` |

**Request body**: `PurgeQueueRequest`

**Response**: `Queue`

```typescript
const res = await cloudtasks.queues.purge({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudtasks.projects.locations.queues.pause`

**POST** `v2/{+name}:pause`

Pauses the queue. If a queue is paused then the system will stop dispatching tasks until the queue is resumed via ResumeQueue. Tasks can still be added when the queue is paused. A queue is paused if its state is PAUSED.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The queue name. For example: `projects/PROJECT_ID/location/LOCATION_ID/queues/QUEUE_ID` |

**Request body**: `PauseQueueRequest`

**Response**: `Queue`

```typescript
const res = await cloudtasks.queues.pause({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudtasks.projects.locations.queues.resume`

**POST** `v2/{+name}:resume`

Resume a queue. This method resumes a queue after it has been PAUSED or DISABLED. The state of a queue is stored in the queue's state; after calling this method it will be set to RUNNING. WARNING: Resuming many high-QPS queues at the same time can lead to target overloading. If you are resuming high-QPS queues, follow the 500/50/5 pattern described in [Managing Cloud Tasks Scaling Risks](https://cloud.google.com/tasks/docs/manage-cloud-task-scaling).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The queue name. For example: `projects/PROJECT_ID/location/LOCATION_ID/queues/QUEUE_ID` |

**Request body**: `ResumeQueueRequest`

**Response**: `Queue`

```typescript
const res = await cloudtasks.queues.resume({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudtasks.projects.locations.queues.getIamPolicy`

**POST** `v2/{+resource}:getIamPolicy`

Gets the access control policy for a Queue. Returns an empty policy if the resource exists and does not have a policy set. Authorization requires the following [Google IAM](https://cloud.google.com/iam) permission on the specified resource parent: * `cloudtasks.queues.getIamPolicy`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await cloudtasks.queues.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudtasks.projects.locations.queues.setIamPolicy`

**POST** `v2/{+resource}:setIamPolicy`

Sets the access control policy for a Queue. Replaces any existing policy. Note: The Cloud Console does not check queue-level IAM permissions yet. Project-level permissions are required to use the Cloud Console. Authorization requires the following [Google IAM](https://cloud.google.com/iam) permission on the specified resource parent: * `cloudtasks.queues.setIamPolicy`

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await cloudtasks.queues.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudtasks.projects.locations.queues.testIamPermissions`

**POST** `v2/{+resource}:testIamPermissions`

Returns permissions that a caller has on a Queue. If the resource does not exist, this will return an empty set of permissions, not a NOT_FOUND error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await cloudtasks.queues.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudtasks.projects.locations.queues.tasks.list`

**GET** `v2/{+parent}/tasks`

Lists the tasks in a queue. By default, only the BASIC view is retrieved due to performance considerations; response_view controls the subset of information which is returned. The tasks may be returned in any order. The ordering may change at any time.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The queue name. For example: `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID` |
| `pageSize` | `integer` | query | No | Maximum page size. Fewer tasks than requested might be returned, even if more tasks exist; use next_page_token in the... |
| `pageToken` | `string` | query | No | A token identifying the page of results to return. To request the first page results, page_token must be empty. To re... |
| `responseView` | `string` | query | No | The response_view specifies which subset of the Task will be returned. By default response_view is BASIC; not all inf... |

**Response**: `ListTasksResponse`

```typescript
const res = await cloudtasks.tasks.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudtasks.projects.locations.queues.tasks.get`

**GET** `v2/{+name}`

Gets a task. After a task is successfully executed or has exhausted its retry attempts, the task is deleted. A `GetTask` request for a deleted task returns a `NOT_FOUND` error.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The task name. For example: `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID/tasks/TASK_ID` |
| `responseView` | `string` | query | No | The response_view specifies which subset of the Task will be returned. By default response_view is BASIC; not all inf... |

**Response**: `Task`

```typescript
const res = await cloudtasks.tasks.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudtasks.projects.locations.queues.tasks.create`

**POST** `v2/{+parent}/tasks`

Creates a task and adds it to a queue. Tasks cannot be updated after creation; there is no UpdateTask command. * The maximum task size is 100KB.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The queue name. For example: `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID` The queue must alr... |

**Request body**: `CreateTaskRequest`

**Response**: `Task`

```typescript
const res = await cloudtasks.tasks.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudtasks.projects.locations.queues.tasks.delete`

**DELETE** `v2/{+name}`

Deletes a task. A task can be deleted if it is scheduled or dispatched. A task cannot be deleted if it has executed successfully or permanently failed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The task name. For example: `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID/tasks/TASK_ID` |

**Response**: `Empty`

```typescript
const res = await cloudtasks.tasks.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudtasks.projects.locations.queues.tasks.run`

**POST** `v2/{+name}:run`

Forces a task to run now. When this method is called, Cloud Tasks will dispatch the task, even if the task is already running, the queue has reached its RateLimits or is PAUSED. This command is meant to be used for manual debugging. For example, RunTask can be used to retry a failed task after a fix has been made or to manually force a task to be dispatched now. If Cloud Tasks receives a successful response from the task's target, then the task will be deleted; otherwise the task's schedule_time will be reset to the time that RunTask was called plus the retry delay specified in the queue's RetryConfig. RunTask returns NOT_FOUND when it is called on a task that has already succeeded or permanently failed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The task name. For example: `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID/tasks/TASK_ID` |

**Request body**: `RunTaskRequest`

**Response**: `Task`

```typescript
const res = await cloudtasks.tasks.run({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `cloudtasks.projects.locations.queues.tasks.buffer`

**POST** `v2/{+queue}/tasks/{taskId}:buffer`

Creates and buffers a new task without the need to explicitly define a Task message. The queue must have HTTP target. To create the task with a custom ID, use the following format and set TASK_ID to your desired ID: projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID/tasks/TASK_ID:buffer To create the task with an automatically generated ID, use the following format: projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID/tasks:buffer.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `queue` | `string` | path | Yes | Required. The parent queue name. For example: projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID` The queue mu... |
| `taskId` | `string` | path | Yes | Optional. Task ID for the task being created. If not provided, Cloud Tasks generates an ID for the task. |

**Request body**: `BufferTaskRequest`

**Response**: `BufferTaskResponse`

```typescript
const res = await cloudtasks.tasks.buffer({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AppEngineHttpRequest`

App Engine HTTP request. The message defines the HTTP request that is sent to an App Engine app when the task is dispatched. Using AppEngineHttpRequest requires [`appengine.applications.get`](https://cloud.google.com/appengine/docs/admin-api/access-control) Google IAM permission for the project and the following scope: `https://www.googleapis.com/auth/cloud-platform` The task will be delivered to the App Engine app which belongs to the same project as the queue. For more information, see [How Requests are Routed](https://cloud.google.com/appengine/docs/standard/python/how-requests-are-routed) and how routing is affected by [dispatch files](https://cloud.google.com/appengine/docs/python/config/dispatchref). Traffic is encrypted during transport and never leaves Google datacenters. Because this traffic is carried over a communication mechanism internal to Google, you cannot explicitly set the protocol (for example, HTTP or HTTPS). The request to the handler, however, will appear to have used the HTTP protocol. The AppEngineRouting used to construct the URL that the task is delivered to can be set at the queue-level or task-level: * If app_engine_routing_override is set on the queue, this value is used for all tasks in the queue, no matter what the setting is for the task-level app_engine_routing. The `url` that the task will be sent to is: * `url =` host `+` relative_uri Tasks can be dispatched to secure app handlers, unsecure app handlers, and URIs restricted with [`login: admin`](https://cloud.google.com/appengine/docs/standard/python/config/appref). Because tasks are not run as any user, they cannot be dispatched to URIs restricted with [`login: required`](https://cloud.google.com/appengine/docs/standard/python/config/appref) Task dispatches also do not follow redirects. The task attempt has succeeded if the app's request handler returns an HTTP response code in the range [`200` - `299`]. The task attempt has failed if the app's handler returns a non-2xx response code or Cloud Tasks does not receive response before the deadline. Failed tasks will be retried according to the retry configuration. `503` (Service Unavailable) is considered an App Engine system error instead of an application error and will cause Cloud Tasks' traffic congestion control to temporarily throttle the queue's dispatches. Unlike other types of task targets, a `429` (Too Many Requests) response from an app handler does not cause traffic congestion control to throttle the queue.

| Property | Type | Description |
|----------|------|-------------|
| `appEngineRouting` | `AppEngineRouting` | Task-level setting for App Engine routing. * If app_engine_routing_override is set on the queue, ... |
| `body` | `string` | HTTP request body. A request body is allowed only if the HTTP method is POST or PUT. It is an err... |
| `headers` | `object` | HTTP request headers. This map contains the header field names and values. Headers can be set whe... |
| `httpMethod` | `string` | The HTTP method to use for the request. The default is POST. The app's request handler for the ta... |
| `relativeUri` | `string` | The relative URI. The relative URI must begin with "/" and must be a valid HTTP relative URI. It ... |

### `AppEngineRouting`

App Engine Routing. Defines routing characteristics specific to App Engine - service, version, and instance. For more information about services, versions, and instances see [An Overview of App Engine](https://cloud.google.com/appengine/docs/python/an-overview-of-app-engine), [Microservices Architecture on Google App Engine](https://cloud.google.com/appengine/docs/python/microservices-on-app-engine), [App Engine Standard request routing](https://cloud.google.com/appengine/docs/standard/python/how-requests-are-routed), and [App Engine Flex request routing](https://cloud.google.com/appengine/docs/flexible/python/how-requests-are-routed). Using AppEngineRouting requires [`appengine.applications.get`](https://cloud.google.com/appengine/docs/admin-api/access-control) Google IAM permission for the project and the following scope: `https://www.googleapis.com/auth/cloud-platform`

| Property | Type | Description |
|----------|------|-------------|
| `host` | `string` | Output only. The host that the task is sent to. The host is constructed from the domain name of t... |
| `instance` | `string` | App instance. By default, the task is sent to an instance which is available when the task is att... |
| `service` | `string` | App service. By default, the task is sent to the service which is the default service when the ta... |
| `version` | `string` | App version. By default, the task is sent to the version which is the default version when the ta... |

### `Attempt`

The status of a task attempt.

| Property | Type | Description |
|----------|------|-------------|
| `dispatchTime` | `string` | Output only. The time that this attempt was dispatched. `dispatch_time` will be truncated to the ... |
| `responseStatus` | `Status` | Output only. The response from the worker for this attempt. If `response_time` is unset, then the... |
| `responseTime` | `string` | Output only. The time that this attempt response was received. `response_time` will be truncated ... |
| `scheduleTime` | `string` | Output only. The time that this attempt was scheduled. `schedule_time` will be truncated to the n... |

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `BufferTaskRequest`

Request message for BufferTask.

| Property | Type | Description |
|----------|------|-------------|
| `body` | `HttpBody` | Optional. Body of the HTTP request. The body can take any generic value. The value is written to ... |

### `BufferTaskResponse`

Response message for BufferTask.

| Property | Type | Description |
|----------|------|-------------|
| `task` | `Task` | The created task. |

### `CmekConfig`

Describes the customer-managed encryption key (CMEK) configuration associated with a project and location.

| Property | Type | Description |
|----------|------|-------------|
| `kmsKey` | `string` | Resource name of the Cloud KMS key, of the form `projects/PROJECT_ID/locations/LOCATION_ID/keyRin... |
| `name` | `string` | Output only. The config resource name which includes the project and location and must end in 'cm... |

### `CreateTaskRequest`

Request message for CreateTask.

| Property | Type | Description |
|----------|------|-------------|
| `responseView` | `string` | The response_view specifies which subset of the Task will be returned. By default response_view i... |
| `task` | `Task` | Required. The task to add. Task names have the following format: `projects/PROJECT_ID/locations/L... |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `GetIamPolicyRequest`

Request message for `GetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `options` | `GetPolicyOptions` | OPTIONAL: A `GetPolicyOptions` object for specifying options to `GetIamPolicy`. |

### `GetPolicyOptions`

Encapsulates settings provided to GetIamPolicy.

| Property | Type | Description |
|----------|------|-------------|
| `requestedPolicyVersion` | `integer` | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, ... |

### `Header`

Defines a header message. A header can have a key and a value.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | The Key of the header. |
| `value` | `string` | The Value of the header. |

### `HeaderOverride`

Wraps the Header object.

| Property | Type | Description |
|----------|------|-------------|
| `header` | `Header` | Header embodying a key and a value. Do not put business sensitive or personally identifying data ... |

### `HttpBody`

Message that represents an arbitrary HTTP body. It should only be used for payload formats that can't be represented as JSON, such as raw binary or an HTML page. This message can be used both in streaming and non-streaming API methods in the request as well as the response. It can be used as a top-level request field, which is convenient if one wants to extract parameters from either the URL or HTTP template into the request fields and also want access to the raw HTTP body. Example: message GetResourceRequest { // A unique request id. string request_id = 1; // The raw HTTP body is bound to this field. google.api.HttpBody http_body = 2; } service ResourceService { rpc GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); } Example with streaming methods: service CaldavService { rpc GetCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); } Use of this type only changes how the request and response bodies are handled, all other features will continue to work unchanged.

| Property | Type | Description |
|----------|------|-------------|
| `contentType` | `string` | The HTTP Content-Type header value specifying the content type of the body. |
| `data` | `string` | The HTTP request/response body as raw binary. |
| `extensions` | `array<object>` | Application specific response metadata. Must be set in the first response for streaming APIs. |

### `HttpRequest`

HTTP request. The task will be pushed to the worker as an HTTP request. If the worker or the redirected worker acknowledges the task by returning a successful HTTP response code ([`200` - `299`]), the task will be removed from the queue. If any other HTTP response code is returned or no response is received, the task will be retried according to the following: * User-specified throttling: retry configuration, rate limits, and the queue's state. * System throttling: To prevent the worker from overloading, Cloud Tasks may temporarily reduce the queue's effective rate. User-specified settings will not be changed. System throttling happens because: * Cloud Tasks backs off on all errors. Normally the backoff specified in rate limits will be used. But if the worker returns `429` (Too Many Requests), `503` (Service Unavailable), or the rate of errors is high, Cloud Tasks will use a higher backoff rate. The retry specified in the `Retry-After` HTTP response header is considered. * To prevent traffic spikes and to smooth sudden increases in traffic, dispatches ramp up slowly when the queue is newly created or idle and if large numbers of tasks suddenly become available to dispatch (due to spikes in create task rates, the queue being unpaused, or many tasks that are scheduled at the same time).

| Property | Type | Description |
|----------|------|-------------|
| `body` | `string` | HTTP request body. A request body is allowed only if the HTTP method is POST, PUT, or PATCH. It i... |
| `headers` | `object` | HTTP request headers. This map contains the header field names and values. Headers can be set whe... |
| `httpMethod` | `string` | The HTTP method to use for the request. The default is POST. |
| `oauthToken` | `OAuthToken` | If specified, an [OAuth token](https://developers.google.com/identity/protocols/OAuth2) will be g... |
| `oidcToken` | `OidcToken` | If specified, an [OIDC](https://developers.google.com/identity/protocols/OpenIDConnect) token wil... |
| `url` | `string` | Required. The full url path that the request will be sent to. This string must begin with either ... |

### `HttpTarget`

HTTP target. When specified as a Queue, all the tasks with [HttpRequest] will be overridden according to the target.

| Property | Type | Description |
|----------|------|-------------|
| `headerOverrides` | `array<HeaderOverride>` | HTTP target headers. This map contains the header field names and values. Headers will be set whe... |
| `httpMethod` | `string` | The HTTP method to use for the request. When specified, it overrides HttpRequest for the task. No... |
| `oauthToken` | `OAuthToken` | If specified, an [OAuth token](https://developers.google.com/identity/protocols/OAuth2) is genera... |
| `oidcToken` | `OidcToken` | If specified, an [OIDC](https://developers.google.com/identity/protocols/OpenIDConnect) token is ... |
| `uriOverride` | `UriOverride` | URI override. When specified, overrides the execution URI for all the tasks in the queue. |

### `ListLocationsResponse`

The response message for Locations.ListLocations.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<Location>` | A list of locations that matches the specified filter in the request. |
| `nextPageToken` | `string` | The standard List next-page token. |

### `ListQueuesResponse`

Response message for ListQueues.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token to retrieve next page of results. To return the next page of results, call ListQueues wit... |
| `queues` | `array<Queue>` | The list of queues. |

### `ListTasksResponse`

Response message for listing tasks using ListTasks.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token to retrieve next page of results. To return the next page of results, call ListTasks with... |
| `tasks` | `array<Task>` | The list of tasks. |

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

### `PathOverride`

PathOverride. Path message defines path override for HTTP targets.

| Property | Type | Description |
|----------|------|-------------|
| `path` | `string` | The URI path (e.g., /users/1234). Default is an empty string. |

### `PauseQueueRequest`

Request message for PauseQueue.

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `PurgeQueueRequest`

Request message for PurgeQueue.

### `QueryOverride`

QueryOverride. Query message defines query override for HTTP targets.

| Property | Type | Description |
|----------|------|-------------|
| `queryParams` | `string` | The query parameters (e.g., qparam1=123&qparam2=456). Default is an empty string. |

### `Queue`

A queue is a container of related tasks. Queues are configured to manage how those tasks are dispatched. Configurable properties include rate limits, retry options, queue types, and others.

| Property | Type | Description |
|----------|------|-------------|
| `appEngineRoutingOverride` | `AppEngineRouting` | Overrides for task-level app_engine_routing. These settings apply only to App Engine tasks in thi... |
| `httpTarget` | `HttpTarget` | Modifies HTTP target for HTTP tasks. |
| `name` | `string` | Caller-specified and required in CreateQueue, after which it becomes output only. The queue name.... |
| `purgeTime` | `string` | Output only. The last time this queue was purged. All tasks that were created before this time we... |
| `rateLimits` | `RateLimits` | Rate limits for task dispatches. rate_limits and retry_config are related because they both contr... |
| `retryConfig` | `RetryConfig` | Settings that determine the retry behavior. * For tasks created using Cloud Tasks: the queue-leve... |
| `stackdriverLoggingConfig` | `StackdriverLoggingConfig` | Configuration options for writing logs to [Stackdriver Logging](https://cloud.google.com/logging/... |
| `state` | `string` | Output only. The state of the queue. `state` can only be changed by calling PauseQueue, ResumeQue... |

### `RateLimits`

Rate limits. This message determines the maximum rate that tasks can be dispatched by a queue, regardless of whether the dispatch is a first task attempt or a retry. Note: The debugging command, RunTask, will run a task even if the queue has reached its RateLimits.

| Property | Type | Description |
|----------|------|-------------|
| `maxBurstSize` | `integer` | Output only. The max burst size. Max burst size limits how fast tasks in queue are processed when... |
| `maxConcurrentDispatches` | `integer` | The maximum number of concurrent tasks that Cloud Tasks allows to be dispatched for this queue. A... |
| `maxDispatchesPerSecond` | `number` | The maximum rate at which tasks are dispatched from this queue. If unspecified when the queue is ... |

### `ResumeQueueRequest`

Request message for ResumeQueue.

### `RetryConfig`

Retry config. These settings determine when a failed task attempt is retried.

| Property | Type | Description |
|----------|------|-------------|
| `maxAttempts` | `integer` | Number of attempts per task. Cloud Tasks will attempt the task `max_attempts` times (that is, if ... |
| `maxBackoff` | `string` | A task will be scheduled for retry between min_backoff and max_backoff duration after it fails, i... |
| `maxDoublings` | `integer` | The time between retries will double `max_doublings` times. A task's retry interval starts at min... |
| `maxRetryDuration` | `string` | If positive, `max_retry_duration` specifies the time limit for retrying a failed task, measured f... |
| `minBackoff` | `string` | A task will be scheduled for retry between min_backoff and max_backoff duration after it fails, i... |

### `RunTaskRequest`

Request message for forcing a task to run now using RunTask.

| Property | Type | Description |
|----------|------|-------------|
| `responseView` | `string` | The response_view specifies which subset of the Task will be returned. By default response_view i... |

### `SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |

### `StackdriverLoggingConfig`

Configuration options for writing logs to [Stackdriver Logging](https://cloud.google.com/logging/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `samplingRatio` | `number` | Specifies the fraction of operations to write to [Stackdriver Logging](https://cloud.google.com/l... |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `Task`

A unit of scheduled work.

| Property | Type | Description |
|----------|------|-------------|
| `appEngineHttpRequest` | `AppEngineHttpRequest` | HTTP request that is sent to the App Engine app handler. An App Engine task is a task that has Ap... |
| `createTime` | `string` | Output only. The time that the task was created. `create_time` will be truncated to the nearest s... |
| `dispatchCount` | `integer` | Output only. The number of attempts dispatched. This count includes attempts which have been disp... |
| `dispatchDeadline` | `string` | The deadline for requests sent to the worker. If the worker does not respond by this deadline the... |
| `firstAttempt` | `Attempt` | Output only. The status of the task's first attempt. Only dispatch_time will be set. The other At... |
| `httpRequest` | `HttpRequest` | HTTP request that is sent to the worker. An HTTP task is a task that has HttpRequest set. |
| `lastAttempt` | `Attempt` | Output only. The status of the task's last attempt. |
| `name` | `string` | Optionally caller-specified in CreateTask. The task name. The task name must have the following f... |
| `responseCount` | `integer` | Output only. The number of attempts which have received a response. |
| `scheduleTime` | `string` | The time when the task is scheduled to be attempted or retried. `schedule_time` will be truncated... |
| `view` | `string` | Output only. The view specifies which subset of the Task has been returned. |

### `TestIamPermissionsRequest`

Request message for `TestIamPermissions` method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | The set of permissions to check for the `resource`. Permissions with wildcards (such as `*` or `s... |

### `TestIamPermissionsResponse`

Response message for `TestIamPermissions` method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | A subset of `TestPermissionsRequest.permissions` that the caller is allowed. |

### `UriOverride`

URI Override. When specified, all the HTTP tasks inside the queue will be partially or fully overridden depending on the configured values.

| Property | Type | Description |
|----------|------|-------------|
| `host` | `string` | Host override. When specified, replaces the host part of the task URL. For example, if the task U... |
| `pathOverride` | `PathOverride` | URI path. When specified, replaces the existing path of the task URL. Setting the path value to a... |
| `port` | `string` | Port override. When specified, replaces the port part of the task URI. For instance, for a URI "h... |
| `queryOverride` | `QueryOverride` | URI query. When specified, replaces the query part of the task URI. Setting the query value to an... |
| `scheme` | `string` | Scheme override. When specified, the task URI scheme is replaced by the provided value (HTTP or H... |
| `uriOverrideEnforceMode` | `string` | URI Override Enforce Mode When specified, determines the Target UriOverride mode. If not specifie... |

