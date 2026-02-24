# Google Workspace Events API - API Reference

**Version**: `v1` | **Methods**: 15 | **Schemas**: 25

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `workspaceevents.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `workspaceevents.subscriptions.create` | POST | `v1/subscriptions` | Creates a Google Workspace subscription. To learn how to use this method, see [Create a Google Wo... |
| `workspaceevents.subscriptions.delete` | DELETE | `v1/{+name}` | Deletes a Google Workspace subscription. To learn how to use this method, see [Delete a Google Wo... |
| `workspaceevents.subscriptions.get` | GET | `v1/{+name}` | Gets details about a Google Workspace subscription. To learn how to use this method, see [Get det... |
| `workspaceevents.subscriptions.list` | GET | `v1/subscriptions` | Lists Google Workspace subscriptions. To learn how to use this method, see [List Google Workspace... |
| `workspaceevents.subscriptions.patch` | PATCH | `v1/{+name}` | Updates or renews a Google Workspace subscription. To learn how to use this method, see [Update o... |
| `workspaceevents.subscriptions.reactivate` | POST | `v1/{+name}:reactivate` | Reactivates a suspended Google Workspace subscription. This method resets your subscription's `St... |
| `workspaceevents.message.stream` | POST | `v1/message:stream` | SendStreamingMessage is a streaming call that will return a stream of task update events until th... |
| `workspaceevents.tasks.get` | GET | `v1/{+name}` | Get the current state of a task from the agent. |
| `workspaceevents.tasks.cancel` | POST | `v1/{+name}:cancel` | Cancel a task from the agent. If supported one should expect no more task updates for the task. |
| `workspaceevents.tasks.subscribe` | GET | `v1/{+name}:subscribe` | TaskSubscription is a streaming call that will return a stream of task update events. This attach... |
| `workspaceevents.tasks.pushNotificationConfigs.create` | POST | `v1/{+parent}` | Set a push notification config for a task. |
| `workspaceevents.tasks.pushNotificationConfigs.get` | GET | `v1/{+name}` | Get a push notification config for a task. |
| `workspaceevents.tasks.pushNotificationConfigs.list` | GET | `v1/{+parent}/pushNotificationConfigs` | Get a list of push notifications configured for a task. |
| `workspaceevents.tasks.pushNotificationConfigs.delete` | DELETE | `v1/{+name}` | Delete a push notification config for a task. |

### `workspaceevents.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await workspaceevents.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.bot`
- `https://www.googleapis.com/auth/chat.memberships`
- `https://www.googleapis.com/auth/chat.memberships.readonly`
- `https://www.googleapis.com/auth/chat.messages`
- `https://www.googleapis.com/auth/chat.messages.reactions`
- `https://www.googleapis.com/auth/chat.messages.reactions.readonly`
- `https://www.googleapis.com/auth/chat.messages.readonly`
- `https://www.googleapis.com/auth/chat.spaces`
- `https://www.googleapis.com/auth/chat.spaces.readonly`
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.metadata`
- `https://www.googleapis.com/auth/drive.metadata.readonly`
- `https://www.googleapis.com/auth/drive.readonly`
- `https://www.googleapis.com/auth/meetings.space.created`
- `https://www.googleapis.com/auth/meetings.space.readonly`

---

### `workspaceevents.subscriptions.create`

**POST** `v1/subscriptions`

Creates a Google Workspace subscription. To learn how to use this method, see [Create a Google Workspace subscription](https://developers.google.com/workspace/events/guides/create-subscription). For a subscription on a [Chat target resource](https://developers.google.com/workspace/events/guides/events-chat), you can create a subscription as: - A Chat app by specifying an authorization scope that begins with `chat.app` and getting one-time administrator approval ([Developer Preview](https://developers.google.com/workspace/preview)). To learn more, see [Authorize as a Chat app with administrator approval](https://developers.google.com/workspace/chat/authenticate-authorize-chat-app). - A user by specifying an authorization scope that doesn't include `app` in its name. To learn more, see [Authorize as a Chat user](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `validateOnly` | `boolean` | query | No | Optional. If set to `true`, validates and previews the request, but doesn't create the subscription. |

**Request body**: `Subscription`

**Response**: `Operation`

```typescript
const res = await workspaceevents.subscriptions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.app.memberships`
- `https://www.googleapis.com/auth/chat.app.messages.readonly`
- `https://www.googleapis.com/auth/chat.app.spaces`
- `https://www.googleapis.com/auth/chat.memberships`
- `https://www.googleapis.com/auth/chat.memberships.readonly`
- `https://www.googleapis.com/auth/chat.messages`
- `https://www.googleapis.com/auth/chat.messages.reactions`
- `https://www.googleapis.com/auth/chat.messages.reactions.readonly`
- `https://www.googleapis.com/auth/chat.messages.readonly`
- `https://www.googleapis.com/auth/chat.spaces`
- `https://www.googleapis.com/auth/chat.spaces.readonly`
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.metadata`
- `https://www.googleapis.com/auth/drive.metadata.readonly`
- `https://www.googleapis.com/auth/drive.readonly`
- `https://www.googleapis.com/auth/meetings.space.created`
- `https://www.googleapis.com/auth/meetings.space.readonly`

---

### `workspaceevents.subscriptions.delete`

**DELETE** `v1/{+name}`

Deletes a Google Workspace subscription. To learn how to use this method, see [Delete a Google Workspace subscription](https://developers.google.com/workspace/events/guides/delete-subscription).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the subscription to delete. Format: `subscriptions/{subscription}` |
| `allowMissing` | `boolean` | query | No | Optional. If set to `true` and the subscription isn't found, the request succeeds but doesn't delete the subscription. |
| `etag` | `string` | query | No | Optional. Etag of the subscription. If present, it must match with the server's etag. Otherwise, request fails with t... |
| `validateOnly` | `boolean` | query | No | Optional. If set to `true`, validates and previews the request, but doesn't delete the subscription. |

**Response**: `Operation`

```typescript
const res = await workspaceevents.subscriptions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.bot`
- `https://www.googleapis.com/auth/chat.memberships`
- `https://www.googleapis.com/auth/chat.memberships.readonly`
- `https://www.googleapis.com/auth/chat.messages`
- `https://www.googleapis.com/auth/chat.messages.reactions`
- `https://www.googleapis.com/auth/chat.messages.reactions.readonly`
- `https://www.googleapis.com/auth/chat.messages.readonly`
- `https://www.googleapis.com/auth/chat.spaces`
- `https://www.googleapis.com/auth/chat.spaces.readonly`
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.metadata`
- `https://www.googleapis.com/auth/drive.metadata.readonly`
- `https://www.googleapis.com/auth/drive.readonly`
- `https://www.googleapis.com/auth/meetings.space.created`
- `https://www.googleapis.com/auth/meetings.space.readonly`

---

### `workspaceevents.subscriptions.get`

**GET** `v1/{+name}`

Gets details about a Google Workspace subscription. To learn how to use this method, see [Get details about a Google Workspace subscription](https://developers.google.com/workspace/events/guides/get-subscription).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the subscription. Format: `subscriptions/{subscription}` |

**Response**: `Subscription`

```typescript
const res = await workspaceevents.subscriptions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.bot`
- `https://www.googleapis.com/auth/chat.memberships`
- `https://www.googleapis.com/auth/chat.memberships.readonly`
- `https://www.googleapis.com/auth/chat.messages`
- `https://www.googleapis.com/auth/chat.messages.reactions`
- `https://www.googleapis.com/auth/chat.messages.reactions.readonly`
- `https://www.googleapis.com/auth/chat.messages.readonly`
- `https://www.googleapis.com/auth/chat.spaces`
- `https://www.googleapis.com/auth/chat.spaces.readonly`
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.metadata`
- `https://www.googleapis.com/auth/drive.metadata.readonly`
- `https://www.googleapis.com/auth/drive.readonly`
- `https://www.googleapis.com/auth/meetings.space.created`
- `https://www.googleapis.com/auth/meetings.space.readonly`

---

### `workspaceevents.subscriptions.list`

**GET** `v1/subscriptions`

Lists Google Workspace subscriptions. To learn how to use this method, see [List Google Workspace subscriptions](https://developers.google.com/workspace/events/guides/list-subscriptions).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `filter` | `string` | query | No | Required. A query filter. You can filter subscriptions by event type (`event_types`) and target resource (`target_res... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of subscriptions to return. The service might return fewer than this value. If unspecifi... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous list subscriptions call. Provide this parameter to retrieve the subs... |

**Response**: `ListSubscriptionsResponse`

```typescript
const res = await workspaceevents.subscriptions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.bot`
- `https://www.googleapis.com/auth/chat.memberships`
- `https://www.googleapis.com/auth/chat.memberships.readonly`
- `https://www.googleapis.com/auth/chat.messages`
- `https://www.googleapis.com/auth/chat.messages.reactions`
- `https://www.googleapis.com/auth/chat.messages.reactions.readonly`
- `https://www.googleapis.com/auth/chat.messages.readonly`
- `https://www.googleapis.com/auth/chat.spaces`
- `https://www.googleapis.com/auth/chat.spaces.readonly`
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.metadata`
- `https://www.googleapis.com/auth/drive.metadata.readonly`
- `https://www.googleapis.com/auth/drive.readonly`
- `https://www.googleapis.com/auth/meetings.space.created`
- `https://www.googleapis.com/auth/meetings.space.readonly`

---

### `workspaceevents.subscriptions.patch`

**PATCH** `v1/{+name}`

Updates or renews a Google Workspace subscription. To learn how to use this method, see [Update or renew a Google Workspace subscription](https://developers.google.com/workspace/events/guides/update-subscription). For a subscription on a [Chat target resource](https://developers.google.com/workspace/events/guides/events-chat), you can update a subscription as: - A Chat app by specifying an authorization scope that begins with `chat.app` andgetting one-time administrator approval ([Developer Preview](https://developers.google.com/workspace/preview)). To learn more, see [Authorize as a Chat app with administrator approval](https://developers.google.com/workspace/chat/authenticate-authorize-chat-app). - A user by specifying an authorization scope that doesn't include `app` in its name. To learn more, see [Authorize as a Chat user](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Resource name of the subscription. Format: `subscriptions/{subscription}` |
| `updateMask` | `string` | query | No | Optional. The field to update. If omitted, updates any fields included in the request. You can update one of the foll... |
| `validateOnly` | `boolean` | query | No | Optional. If set to `true`, validates and previews the request, but doesn't update the subscription. |

**Request body**: `Subscription`

**Response**: `Operation`

```typescript
const res = await workspaceevents.subscriptions.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.app.memberships`
- `https://www.googleapis.com/auth/chat.app.messages.readonly`
- `https://www.googleapis.com/auth/chat.app.spaces`
- `https://www.googleapis.com/auth/chat.memberships`
- `https://www.googleapis.com/auth/chat.memberships.readonly`
- `https://www.googleapis.com/auth/chat.messages`
- `https://www.googleapis.com/auth/chat.messages.reactions`
- `https://www.googleapis.com/auth/chat.messages.reactions.readonly`
- `https://www.googleapis.com/auth/chat.messages.readonly`
- `https://www.googleapis.com/auth/chat.spaces`
- `https://www.googleapis.com/auth/chat.spaces.readonly`
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.metadata`
- `https://www.googleapis.com/auth/drive.metadata.readonly`
- `https://www.googleapis.com/auth/drive.readonly`
- `https://www.googleapis.com/auth/meetings.space.created`
- `https://www.googleapis.com/auth/meetings.space.readonly`

---

### `workspaceevents.subscriptions.reactivate`

**POST** `v1/{+name}:reactivate`

Reactivates a suspended Google Workspace subscription. This method resets your subscription's `State` field to `ACTIVE`. Before you use this method, you must fix the error that suspended the subscription. This method will ignore or reject any subscription that isn't currently in a suspended state. To learn how to use this method, see [Reactivate a Google Workspace subscription](https://developers.google.com/workspace/events/guides/reactivate-subscription). For a subscription on a [Chat target resource](https://developers.google.com/workspace/events/guides/events-chat), you can reactivate a subscription as: - A Chat app by specifying an authorization scope that begins with `chat.app` andgetting one-time administrator approval ([Developer Preview](https://developers.google.com/workspace/preview)). To learn more, see [Authorize as a Chat app with administrator approval](https://developers.google.com/workspace/chat/authenticate-authorize-chat-app). - A user by specifying an authorization scope that doesn't include `app` in its name. To learn more, see [Authorize as a Chat user](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Resource name of the subscription. Format: `subscriptions/{subscription}` |

**Request body**: `ReactivateSubscriptionRequest`

**Response**: `Operation`

```typescript
const res = await workspaceevents.subscriptions.reactivate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/chat.app.memberships`
- `https://www.googleapis.com/auth/chat.app.messages.readonly`
- `https://www.googleapis.com/auth/chat.app.spaces`
- `https://www.googleapis.com/auth/chat.memberships`
- `https://www.googleapis.com/auth/chat.memberships.readonly`
- `https://www.googleapis.com/auth/chat.messages`
- `https://www.googleapis.com/auth/chat.messages.reactions`
- `https://www.googleapis.com/auth/chat.messages.reactions.readonly`
- `https://www.googleapis.com/auth/chat.messages.readonly`
- `https://www.googleapis.com/auth/chat.spaces`
- `https://www.googleapis.com/auth/chat.spaces.readonly`
- `https://www.googleapis.com/auth/drive`
- `https://www.googleapis.com/auth/drive.file`
- `https://www.googleapis.com/auth/drive.metadata`
- `https://www.googleapis.com/auth/drive.metadata.readonly`
- `https://www.googleapis.com/auth/drive.readonly`
- `https://www.googleapis.com/auth/meetings.space.created`
- `https://www.googleapis.com/auth/meetings.space.readonly`

---

### `workspaceevents.message.stream`

**POST** `v1/message:stream`

SendStreamingMessage is a streaming call that will return a stream of task update events until the Task is in an interrupted or terminal state.

**Request body**: `SendMessageRequest`

**Response**: `StreamResponse`

```typescript
const res = await workspaceevents.message.stream({
  // parameters
});
```

---

### `workspaceevents.tasks.get`

**GET** `v1/{+name}`

Get the current state of a task from the agent.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the task. Format: tasks/{task_id} |
| `historyLength` | `integer` | query | No | The number of most recent messages from the task's history to retrieve. |
| `tenant` | `string` | query | No | Optional tenant, provided as a path parameter. Experimental, might still change for 1.0 release. |

**Response**: `Task`

```typescript
const res = await workspaceevents.tasks.get({
  // parameters
});
```

---

### `workspaceevents.tasks.cancel`

**POST** `v1/{+name}:cancel`

Cancel a task from the agent. If supported one should expect no more task updates for the task.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource name of the task to cancel. Format: tasks/{task_id} |

**Request body**: `CancelTaskRequest`

**Response**: `Task`

```typescript
const res = await workspaceevents.tasks.cancel({
  // parameters
});
```

---

### `workspaceevents.tasks.subscribe`

**GET** `v1/{+name}:subscribe`

TaskSubscription is a streaming call that will return a stream of task update events. This attaches the stream to an existing in process task. If the task is complete the stream will return the completed task (like GetTask) and close the stream.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource name of the task to subscribe to. Format: tasks/{task_id} |
| `tenant` | `string` | query | No | Optional tenant, provided as a path parameter. Experimental, might still change for 1.0 release. |

**Response**: `StreamResponse`

```typescript
const res = await workspaceevents.tasks.subscribe({
  // parameters
});
```

---

### `workspaceevents.tasks.pushNotificationConfigs.create`

**POST** `v1/{+parent}`

Set a push notification config for a task.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent task resource for this config. Format: tasks/{task_id} |
| `configId` | `string` | query | No | Required. The ID for the new config. |
| `tenant` | `string` | query | No | Optional tenant, provided as a path parameter. Experimental, might still change for 1.0 release. |

**Request body**: `TaskPushNotificationConfig`

**Response**: `TaskPushNotificationConfig`

```typescript
const res = await workspaceevents.pushNotificationConfigs.create({
  // parameters
});
```

---

### `workspaceevents.tasks.pushNotificationConfigs.get`

**GET** `v1/{+name}`

Get a push notification config for a task.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource name of the config to retrieve. Format: tasks/{task_id}/pushNotificationConfigs/{config_id} |
| `tenant` | `string` | query | No | Optional tenant, provided as a path parameter. Experimental, might still change for 1.0 release. |

**Response**: `TaskPushNotificationConfig`

```typescript
const res = await workspaceevents.pushNotificationConfigs.get({
  // parameters
});
```

---

### `workspaceevents.tasks.pushNotificationConfigs.list`

**GET** `v1/{+parent}/pushNotificationConfigs`

Get a list of push notifications configured for a task.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The parent task resource. Format: tasks/{task_id} |
| `pageSize` | `integer` | query | No | For AIP-158 these fields are present. Usually not used/needed. The maximum number of configurations to return. If uns... |
| `pageToken` | `string` | query | No | A page token received from a previous ListTaskPushNotificationConfigRequest call. Provide this to retrieve the subseq... |
| `tenant` | `string` | query | No | Optional tenant, provided as a path parameter. Experimental, might still change for 1.0 release. |

**Response**: `ListTaskPushNotificationConfigResponse`

```typescript
const res = await workspaceevents.pushNotificationConfigs.list({
  // parameters
});
```

---

### `workspaceevents.tasks.pushNotificationConfigs.delete`

**DELETE** `v1/{+name}`

Delete a push notification config for a task.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource name of the config to delete. Format: tasks/{task_id}/pushNotificationConfigs/{config_id} |
| `tenant` | `string` | query | No | Optional tenant, provided as a path parameter. Experimental, might still change for 1.0 release. |

**Response**: `Empty`

```typescript
const res = await workspaceevents.pushNotificationConfigs.delete({
  // parameters
});
```

---

## Schemas

### `Artifact`

Artifacts are the container for task completed results. These are similar to Messages but are intended to be the product of a task, as opposed to point-to-point communication.

| Property | Type | Description |
|----------|------|-------------|
| `artifactId` | `string` | Unique identifier (e.g. UUID) for the artifact. It must be at least unique within a task. |
| `description` | `string` | A human readable description of the artifact, optional. |
| `extensions` | `array<string>` | The URIs of extensions that are present or contributed to this Artifact. |
| `metadata` | `object` | Optional metadata included with the artifact. |
| `name` | `string` | A human readable name for the artifact. |
| `parts` | `array<Part>` | The content of the artifact. |

### `AuthenticationInfo`

Defines authentication details, used for push notifications.

| Property | Type | Description |
|----------|------|-------------|
| `credentials` | `string` | Optional credentials |
| `schemes` | `array<string>` | Supported authentication schemes - e.g. Basic, Bearer, etc |

### `CancelTaskRequest`

| Property | Type | Description |
|----------|------|-------------|
| `tenant` | `string` | Optional tenant, provided as a path parameter. Experimental, might still change for 1.0 release. |

### `DataPart`

DataPart represents a structured blob. This is most commonly a JSON payload.

| Property | Type | Description |
|----------|------|-------------|
| `data` | `object` |  |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `FilePart`

FilePart represents the different ways files can be provided. If files are small, directly feeding the bytes is supported via file_with_bytes. If the file is large, the agent should read the content as appropriate directly from the file_with_uri source.

| Property | Type | Description |
|----------|------|-------------|
| `fileWithBytes` | `string` |  |
| `fileWithUri` | `string` |  |
| `mimeType` | `string` |  |
| `name` | `string` |  |

### `ListSubscriptionsResponse`

The response message for SubscriptionsService.ListSubscriptions.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `subscriptions` | `array<Subscription>` | List of subscriptions. |

### `ListTaskPushNotificationConfigResponse`

| Property | Type | Description |
|----------|------|-------------|
| `configs` | `array<TaskPushNotificationConfig>` | The list of push notification configurations. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `Message`

Message is one unit of communication between client and server. It is associated with a context and optionally a task. Since the server is responsible for the context definition, it must always provide a context_id in its messages. The client can optionally provide the context_id if it knows the context to associate the message to. Similarly for task_id, except the server decides if a task is created and whether to include the task_id.

| Property | Type | Description |
|----------|------|-------------|
| `content` | `array<Part>` | protolint:disable REPEATED_FIELD_NAMES_PLURALIZED Content is the container of the message content. |
| `contextId` | `string` | The context id of the message. This is optional and if set, the message will be associated with t... |
| `extensions` | `array<string>` | The URIs of extensions that are present or contributed to this Message. |
| `messageId` | `string` | The unique identifier (e.g. UUID)of the message. This is required and created by the message crea... |
| `metadata` | `object` | protolint:enable REPEATED_FIELD_NAMES_PLURALIZED Any optional metadata to provide along with the ... |
| `role` | `string` | A role for the message. |
| `taskId` | `string` | The task id of the message. This is optional and if set, the message will be associated with the ... |

### `NotificationEndpoint`

The endpoint where the subscription delivers events.

| Property | Type | Description |
|----------|------|-------------|
| `pubsubTopic` | `string` | Immutable. The Pub/Sub topic that receives events for the subscription. Format: `projects/{projec... |

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `Part`

Part represents a container for a section of communication content. Parts can be purely textual, some sort of file (image, video, etc) or a structured data blob (i.e. JSON).

| Property | Type | Description |
|----------|------|-------------|
| `data` | `DataPart` |  |
| `file` | `FilePart` |  |
| `metadata` | `object` | Optional metadata associated with this part. |
| `text` | `string` |  |

### `PayloadOptions`

Options about what data to include in the event payload. Only supported for Google Chat and Google Drive events.

| Property | Type | Description |
|----------|------|-------------|
| `fieldMask` | `string` | Optional. If `include_resource` is set to `true`, the list of fields to include in the event payl... |
| `includeResource` | `boolean` | Optional. Whether the event payload includes data about the resource that changed. For example, f... |

### `PushNotificationConfig`

Configuration for setting up push notifications for task updates.

| Property | Type | Description |
|----------|------|-------------|
| `authentication` | `AuthenticationInfo` | Information about the authentication to sent with the notification |
| `id` | `string` | A unique identifier (e.g. UUID) for this push notification. |
| `token` | `string` | Token unique for this task/session |
| `url` | `string` | Url to send the notification too |

### `ReactivateSubscriptionRequest`

The request message for SubscriptionsService.ReactivateSubscription.

### `SendMessageConfiguration`

Configuration of a send message request.

| Property | Type | Description |
|----------|------|-------------|
| `acceptedOutputModes` | `array<string>` | The output modes that the agent is expected to respond with. |
| `blocking` | `boolean` | If true, the message will be blocking until the task is completed. If false, the message will be ... |
| `historyLength` | `integer` | The maximum number of messages to include in the history. if 0, the history will be unlimited. |
| `pushNotification` | `PushNotificationConfig` | A configuration of a webhook that can be used to receive updates |

### `SendMessageRequest`

/////////// Request Messages ///////////

| Property | Type | Description |
|----------|------|-------------|
| `configuration` | `SendMessageConfiguration` | Configuration for the send request. |
| `message` | `Message` | Required. The message to send to the agent. |
| `metadata` | `object` | Optional metadata for the request. |
| `tenant` | `string` | Optional tenant, provided as a path parameter. Experimental, might still change for 1.0 release. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `StreamResponse`

The stream response for a message. The stream should be one of the following sequences: If the response is a message, the stream should contain one, and only one, message and then close If the response is a task lifecycle, the first response should be a Task object followed by zero or more TaskStatusUpdateEvents and TaskArtifactUpdateEvents. The stream should complete when the Task if in an interrupted or terminal state. A stream that ends before these conditions are met are

| Property | Type | Description |
|----------|------|-------------|
| `artifactUpdate` | `TaskArtifactUpdateEvent` |  |
| `message` | `Message` |  |
| `statusUpdate` | `TaskStatusUpdateEvent` |  |
| `task` | `Task` |  |

### `Subscription`

A subscription to receive events about a Google Workspace resource. To learn more about subscriptions, see the [Google Workspace Events API overview](https://developers.google.com/workspace/events).

| Property | Type | Description |
|----------|------|-------------|
| `authority` | `string` | Output only. The user who authorized the creation of the subscription. When a user authorizes the... |
| `createTime` | `string` | Output only. The time when the subscription is created. |
| `etag` | `string` | Optional. This checksum is computed by the server based on the value of other fields, and might b... |
| `eventTypes` | `array<string>` | Required. Unordered list. Input for creating a subscription. Otherwise, output only. One or more ... |
| `expireTime` | `string` | Non-empty default. The timestamp in UTC when the subscription expires. Always displayed on output... |
| `name` | `string` | Identifier. Resource name of the subscription. Format: `subscriptions/{subscription}` |
| `notificationEndpoint` | `NotificationEndpoint` | Required. Immutable. The endpoint where the subscription delivers events, such as a Pub/Sub topic. |
| `payloadOptions` | `PayloadOptions` | Optional. Options about what data to include in the event payload. Only supported for Google Chat... |
| `reconciling` | `boolean` | Output only. If `true`, the subscription is in the process of being updated. |
| `state` | `string` | Output only. The state of the subscription. Determines whether the subscription can receive event... |
| `suspensionReason` | `string` | Output only. The error that suspended the subscription. To reactivate the subscription, resolve t... |
| `targetResource` | `string` | Required. Immutable. The Google Workspace resource that's monitored for events, formatted as the ... |
| `ttl` | `string` | Input only. The time-to-live (TTL) or duration for the subscription. If unspecified or set to `0`... |
| `uid` | `string` | Output only. System-assigned unique identifier for the subscription. |
| `updateTime` | `string` | Output only. The last time that the subscription is updated. |

### `Task`

Task is the core unit of action for A2A. It has a current status and when results are created for the task they are stored in the artifact. If there are multiple turns for a task, these are stored in history.

| Property | Type | Description |
|----------|------|-------------|
| `artifacts` | `array<Artifact>` | A set of output artifacts for a Task. |
| `contextId` | `string` | Unique identifier (e.g. UUID) for the contextual collection of interactions (tasks and messages).... |
| `history` | `array<Message>` | protolint:disable REPEATED_FIELD_NAMES_PLURALIZED The history of interactions from a task. |
| `id` | `string` | Unique identifier (e.g. UUID) for the task, generated by the server for a new task. |
| `metadata` | `object` | protolint:enable REPEATED_FIELD_NAMES_PLURALIZED A key/value object to store custom metadata abou... |
| `status` | `TaskStatus` | The current status of a Task, including state and a message. |

### `TaskArtifactUpdateEvent`

TaskArtifactUpdateEvent represents a task delta where an artifact has been generated.

| Property | Type | Description |
|----------|------|-------------|
| `append` | `boolean` | Whether this should be appended to a prior one produced |
| `artifact` | `Artifact` | The artifact itself |
| `contextId` | `string` | The id of the context that this task belongs too |
| `lastChunk` | `boolean` | Whether this represents the last part of an artifact |
| `metadata` | `object` | Optional metadata associated with the artifact update. |
| `taskId` | `string` | The id of the task for this artifact |

### `TaskPushNotificationConfig`

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The resource name of the config. Format: tasks/{task_id}/pushNotificationConfigs/{config_id} |
| `pushNotificationConfig` | `PushNotificationConfig` | The push notification configuration details. |

### `TaskStatus`

A container for the status of a task

| Property | Type | Description |
|----------|------|-------------|
| `message` | `Message` | A message associated with the status. |
| `state` | `string` | The current state of this task |
| `timestamp` | `string` | Timestamp when the status was recorded. Example: "2023-10-27T10:00:00Z" |

### `TaskStatusUpdateEvent`

TaskStatusUpdateEvent is a delta even on a task indicating that a task has changed.

| Property | Type | Description |
|----------|------|-------------|
| `contextId` | `string` | The id of the context that the task belongs to |
| `final` | `boolean` | Whether this is the last status update expected for this task. |
| `metadata` | `object` | Optional metadata to associate with the task update. |
| `status` | `TaskStatus` | The new status of the task. |
| `taskId` | `string` | The id of the task that is changed |

