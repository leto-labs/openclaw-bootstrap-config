# Pub/Sub Lite API - API Reference

**Version**: `v1` | **Methods**: 28 | **Schemas**: 36

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `pubsublite.topicStats.projects.locations.topics.computeHeadCursor` | POST | `v1/topicStats/{+topic}:computeHeadCursor` | Compute the head cursor for the partition. The head cursor's offset is guaranteed to be less than... |
| `pubsublite.topicStats.projects.locations.topics.computeMessageStats` | POST | `v1/topicStats/{+topic}:computeMessageStats` | Compute statistics about a range of messages in a given topic and partition. |
| `pubsublite.topicStats.projects.locations.topics.computeTimeCursor` | POST | `v1/topicStats/{+topic}:computeTimeCursor` | Compute the corresponding cursor for a publish or event time in a topic partition. |
| `pubsublite.admin.projects.locations.subscriptions.create` | POST | `v1/admin/{+parent}/subscriptions` | Creates a new subscription. |
| `pubsublite.admin.projects.locations.subscriptions.seek` | POST | `v1/admin/{+name}:seek` | Performs an out-of-band seek for a subscription to a specified target, which may be timestamps or... |
| `pubsublite.admin.projects.locations.subscriptions.patch` | PATCH | `v1/admin/{+name}` | Updates properties of the specified subscription. |
| `pubsublite.admin.projects.locations.subscriptions.delete` | DELETE | `v1/admin/{+name}` | Deletes the specified subscription. |
| `pubsublite.admin.projects.locations.subscriptions.get` | GET | `v1/admin/{+name}` | Returns the subscription configuration. |
| `pubsublite.admin.projects.locations.subscriptions.list` | GET | `v1/admin/{+parent}/subscriptions` | Returns the list of subscriptions for the given project. |
| `pubsublite.admin.projects.locations.topics.patch` | PATCH | `v1/admin/{+name}` | Updates properties of the specified topic. |
| `pubsublite.admin.projects.locations.topics.create` | POST | `v1/admin/{+parent}/topics` | Creates a new topic. |
| `pubsublite.admin.projects.locations.topics.get` | GET | `v1/admin/{+name}` | Returns the topic configuration. |
| `pubsublite.admin.projects.locations.topics.getPartitions` | GET | `v1/admin/{+name}/partitions` | Returns the partition information for the requested topic. |
| `pubsublite.admin.projects.locations.topics.list` | GET | `v1/admin/{+parent}/topics` | Returns the list of topics for the given project. |
| `pubsublite.admin.projects.locations.topics.delete` | DELETE | `v1/admin/{+name}` | Deletes the specified topic. |
| `pubsublite.admin.projects.locations.topics.subscriptions.list` | GET | `v1/admin/{+name}/subscriptions` | Lists the subscriptions attached to the specified topic. |
| `pubsublite.admin.projects.locations.reservations.create` | POST | `v1/admin/{+parent}/reservations` | Creates a new reservation. |
| `pubsublite.admin.projects.locations.reservations.delete` | DELETE | `v1/admin/{+name}` | Deletes the specified reservation. |
| `pubsublite.admin.projects.locations.reservations.patch` | PATCH | `v1/admin/{+name}` | Updates properties of the specified reservation. |
| `pubsublite.admin.projects.locations.reservations.get` | GET | `v1/admin/{+name}` | Returns the reservation configuration. |
| `pubsublite.admin.projects.locations.reservations.list` | GET | `v1/admin/{+parent}/reservations` | Returns the list of reservations for the given project. |
| `pubsublite.admin.projects.locations.reservations.topics.list` | GET | `v1/admin/{+name}/topics` | Lists the topics attached to the specified reservation. |
| `pubsublite.admin.projects.locations.operations.cancel` | POST | `v1/admin/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `pubsublite.admin.projects.locations.operations.list` | GET | `v1/admin/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `pubsublite.admin.projects.locations.operations.get` | GET | `v1/admin/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `pubsublite.admin.projects.locations.operations.delete` | DELETE | `v1/admin/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `pubsublite.cursor.projects.locations.subscriptions.commitCursor` | POST | `v1/cursor/{+subscription}:commitCursor` | Updates the committed cursor. |
| `pubsublite.cursor.projects.locations.subscriptions.cursors.list` | GET | `v1/cursor/{+parent}/cursors` | Returns all committed cursor information for a subscription. |

### `pubsublite.topicStats.projects.locations.topics.computeHeadCursor`

**POST** `v1/topicStats/{+topic}:computeHeadCursor`

Compute the head cursor for the partition. The head cursor's offset is guaranteed to be less than or equal to all messages which have not yet been acknowledged as published, and greater than the offset of any message whose publish has already been acknowledged. It is zero if there have never been messages in the partition.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `topic` | `string` | path | Yes | Required. The topic for which we should compute the head cursor. |

**Request body**: `ComputeHeadCursorRequest`

**Response**: `ComputeHeadCursorResponse`

```typescript
const res = await pubsublite.topics.computeHeadCursor({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `pubsublite.topicStats.projects.locations.topics.computeMessageStats`

**POST** `v1/topicStats/{+topic}:computeMessageStats`

Compute statistics about a range of messages in a given topic and partition.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `topic` | `string` | path | Yes | Required. The topic for which we should compute message stats. |

**Request body**: `ComputeMessageStatsRequest`

**Response**: `ComputeMessageStatsResponse`

```typescript
const res = await pubsublite.topics.computeMessageStats({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `pubsublite.topicStats.projects.locations.topics.computeTimeCursor`

**POST** `v1/topicStats/{+topic}:computeTimeCursor`

Compute the corresponding cursor for a publish or event time in a topic partition.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `topic` | `string` | path | Yes | Required. The topic for which we should compute the cursor. |

**Request body**: `ComputeTimeCursorRequest`

**Response**: `ComputeTimeCursorResponse`

```typescript
const res = await pubsublite.topics.computeTimeCursor({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `pubsublite.admin.projects.locations.subscriptions.create`

**POST** `v1/admin/{+parent}/subscriptions`

Creates a new subscription.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent location in which to create the subscription. Structured like `projects/{project_number}/locatio... |
| `skipBacklog` | `boolean` | query | No | If true, the newly created subscription will only receive messages published after the subscription was created. Othe... |
| `subscriptionId` | `string` | query | No | Required. The ID to use for the subscription, which will become the final component of the subscription's name. This ... |

**Request body**: `Subscription`

**Response**: `Subscription`

```typescript
const res = await pubsublite.subscriptions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `pubsublite.admin.projects.locations.subscriptions.seek`

**POST** `v1/admin/{+name}:seek`

Performs an out-of-band seek for a subscription to a specified target, which may be timestamps or named positions within the message backlog. Seek translates these targets to cursors for each partition and orchestrates subscribers to start consuming messages from these seek cursors. If an operation is returned, the seek has been registered and subscribers will eventually receive messages from the seek cursors (i.e. eventual consistency), as long as they are using a minimum supported client library version and not a system that tracks cursors independently of Pub/Sub Lite (e.g. Apache Beam, Dataflow, Spark). The seek operation will fail for unsupported clients. If clients would like to know when subscribers react to the seek (or not), they can poll the operation. The seek operation will succeed and complete once subscribers are ready to receive messages from the seek cursors for all partitions of the topic. This means that the seek operation will not complete until all subscribers come online. If the previous seek operation has not yet completed, it will be aborted and the new invocation of seek will supersede it.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the subscription to seek. |

**Request body**: `SeekSubscriptionRequest`

**Response**: `Operation`

```typescript
const res = await pubsublite.subscriptions.seek({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `pubsublite.admin.projects.locations.subscriptions.patch`

**PATCH** `v1/admin/{+name}`

Updates properties of the specified subscription.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the subscription. Structured like: projects/{project_number}/locations/{location}/subscriptions/{subscrip... |
| `updateMask` | `string` | query | No | Required. A mask specifying the subscription fields to change. |

**Request body**: `Subscription`

**Response**: `Subscription`

```typescript
const res = await pubsublite.subscriptions.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `pubsublite.admin.projects.locations.subscriptions.delete`

**DELETE** `v1/admin/{+name}`

Deletes the specified subscription.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the subscription to delete. |

**Response**: `Empty`

```typescript
const res = await pubsublite.subscriptions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `pubsublite.admin.projects.locations.subscriptions.get`

**GET** `v1/admin/{+name}`

Returns the subscription configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the subscription whose configuration to return. |

**Response**: `Subscription`

```typescript
const res = await pubsublite.subscriptions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `pubsublite.admin.projects.locations.subscriptions.list`

**GET** `v1/admin/{+parent}/subscriptions`

Returns the list of subscriptions for the given project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent whose subscriptions are to be listed. Structured like `projects/{project_number}/locations/{loca... |
| `pageSize` | `integer` | query | No | The maximum number of subscriptions to return. The service may return fewer than this value. If unset or zero, all su... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListSubscriptions` call. Provide this to retrieve the subsequent page. When p... |

**Response**: `ListSubscriptionsResponse`

```typescript
const res = await pubsublite.subscriptions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `pubsublite.admin.projects.locations.topics.patch`

**PATCH** `v1/admin/{+name}`

Updates properties of the specified topic.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the topic. Structured like: projects/{project_number}/locations/{location}/topics/{topic_id} |
| `updateMask` | `string` | query | No | Required. A mask specifying the topic fields to change. |

**Request body**: `Topic`

**Response**: `Topic`

```typescript
const res = await pubsublite.topics.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `pubsublite.admin.projects.locations.topics.create`

**POST** `v1/admin/{+parent}/topics`

Creates a new topic.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent location in which to create the topic. Structured like `projects/{project_number}/locations/{loc... |
| `topicId` | `string` | query | No | Required. The ID to use for the topic, which will become the final component of the topic's name. This value is struc... |

**Request body**: `Topic`

**Response**: `Topic`

```typescript
const res = await pubsublite.topics.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `pubsublite.admin.projects.locations.topics.get`

**GET** `v1/admin/{+name}`

Returns the topic configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the topic whose configuration to return. |

**Response**: `Topic`

```typescript
const res = await pubsublite.topics.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `pubsublite.admin.projects.locations.topics.getPartitions`

**GET** `v1/admin/{+name}/partitions`

Returns the partition information for the requested topic.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The topic whose partition information to return. |

**Response**: `TopicPartitions`

```typescript
const res = await pubsublite.topics.getPartitions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `pubsublite.admin.projects.locations.topics.list`

**GET** `v1/admin/{+parent}/topics`

Returns the list of topics for the given project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent whose topics are to be listed. Structured like `projects/{project_number}/locations/{location}`. |
| `pageSize` | `integer` | query | No | The maximum number of topics to return. The service may return fewer than this value. If unset or zero, all topics fo... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListTopics` call. Provide this to retrieve the subsequent page. When paginati... |

**Response**: `ListTopicsResponse`

```typescript
const res = await pubsublite.topics.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `pubsublite.admin.projects.locations.topics.delete`

**DELETE** `v1/admin/{+name}`

Deletes the specified topic.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the topic to delete. |

**Response**: `Empty`

```typescript
const res = await pubsublite.topics.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `pubsublite.admin.projects.locations.topics.subscriptions.list`

**GET** `v1/admin/{+name}/subscriptions`

Lists the subscriptions attached to the specified topic.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the topic whose subscriptions to list. |
| `pageSize` | `integer` | query | No | The maximum number of subscriptions to return. The service may return fewer than this value. If unset or zero, all su... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListTopicSubscriptions` call. Provide this to retrieve the subsequent page. W... |

**Response**: `ListTopicSubscriptionsResponse`

```typescript
const res = await pubsublite.subscriptions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `pubsublite.admin.projects.locations.reservations.create`

**POST** `v1/admin/{+parent}/reservations`

Creates a new reservation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent location in which to create the reservation. Structured like `projects/{project_number}/location... |
| `reservationId` | `string` | query | No | Required. The ID to use for the reservation, which will become the final component of the reservation's name. This va... |

**Request body**: `Reservation`

**Response**: `Reservation`

```typescript
const res = await pubsublite.reservations.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `pubsublite.admin.projects.locations.reservations.delete`

**DELETE** `v1/admin/{+name}`

Deletes the specified reservation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the reservation to delete. Structured like: projects/{project_number}/locations/{location}/rese... |

**Response**: `Empty`

```typescript
const res = await pubsublite.reservations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `pubsublite.admin.projects.locations.reservations.patch`

**PATCH** `v1/admin/{+name}`

Updates properties of the specified reservation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the reservation. Structured like: projects/{project_number}/locations/{location}/reservations/{reservatio... |
| `updateMask` | `string` | query | No | Required. A mask specifying the reservation fields to change. |

**Request body**: `Reservation`

**Response**: `Reservation`

```typescript
const res = await pubsublite.reservations.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `pubsublite.admin.projects.locations.reservations.get`

**GET** `v1/admin/{+name}`

Returns the reservation configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the reservation whose configuration to return. Structured like: projects/{project_number}/locat... |

**Response**: `Reservation`

```typescript
const res = await pubsublite.reservations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `pubsublite.admin.projects.locations.reservations.list`

**GET** `v1/admin/{+parent}/reservations`

Returns the list of reservations for the given project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent whose reservations are to be listed. Structured like `projects/{project_number}/locations/{locat... |
| `pageSize` | `integer` | query | No | The maximum number of reservations to return. The service may return fewer than this value. If unset or zero, all res... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListReservations` call. Provide this to retrieve the subsequent page. When pa... |

**Response**: `ListReservationsResponse`

```typescript
const res = await pubsublite.reservations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `pubsublite.admin.projects.locations.reservations.topics.list`

**GET** `v1/admin/{+name}/topics`

Lists the topics attached to the specified reservation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the reservation whose topics to list. Structured like: projects/{project_number}/locations/{loc... |
| `pageSize` | `integer` | query | No | The maximum number of topics to return. The service may return fewer than this value. If unset or zero, all topics fo... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListReservationTopics` call. Provide this to retrieve the subsequent page. Wh... |

**Response**: `ListReservationTopicsResponse`

```typescript
const res = await pubsublite.topics.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `pubsublite.admin.projects.locations.operations.cancel`

**POST** `v1/admin/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await pubsublite.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `pubsublite.admin.projects.locations.operations.list`

**GET** `v1/admin/{+name}/operations`

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
const res = await pubsublite.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `pubsublite.admin.projects.locations.operations.get`

**GET** `v1/admin/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await pubsublite.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `pubsublite.admin.projects.locations.operations.delete`

**DELETE** `v1/admin/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await pubsublite.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `pubsublite.cursor.projects.locations.subscriptions.commitCursor`

**POST** `v1/cursor/{+subscription}:commitCursor`

Updates the committed cursor.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `subscription` | `string` | path | Yes | The subscription for which to update the cursor. |

**Request body**: `CommitCursorRequest`

**Response**: `CommitCursorResponse`

```typescript
const res = await pubsublite.subscriptions.commitCursor({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `pubsublite.cursor.projects.locations.subscriptions.cursors.list`

**GET** `v1/cursor/{+parent}/cursors`

Returns all committed cursor information for a subscription.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The subscription for which to retrieve cursors. Structured like `projects/{project_number}/locations/{locat... |
| `pageSize` | `integer` | query | No | The maximum number of cursors to return. The service may return fewer than this value. If unset or zero, all cursors ... |
| `pageToken` | `string` | query | No | A page token, received from a previous `ListPartitionCursors` call. Provide this to retrieve the subsequent page. Whe... |

**Response**: `ListPartitionCursorsResponse`

```typescript
const res = await pubsublite.cursors.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `Capacity`

The throughput capacity configuration for each partition.

| Property | Type | Description |
|----------|------|-------------|
| `publishMibPerSec` | `integer` | Publish throughput capacity per partition in MiB/s. Must be >= 4 and <= 16. |
| `subscribeMibPerSec` | `integer` | Subscribe throughput capacity per partition in MiB/s. Must be >= 4 and <= 32. |

### `CommitCursorRequest`

Request for CommitCursor.

| Property | Type | Description |
|----------|------|-------------|
| `cursor` | `Cursor` | The new value for the committed cursor. |
| `partition` | `string` | The partition for which to update the cursor. Partitions are zero indexed, so `partition` must be... |

### `CommitCursorResponse`

Response for CommitCursor.

### `ComputeHeadCursorRequest`

Compute the current head cursor for a partition.

| Property | Type | Description |
|----------|------|-------------|
| `partition` | `string` | Required. The partition for which we should compute the head cursor. |

### `ComputeHeadCursorResponse`

Response containing the head cursor for the requested topic and partition.

| Property | Type | Description |
|----------|------|-------------|
| `headCursor` | `Cursor` | The head cursor. |

### `ComputeMessageStatsRequest`

Compute statistics about a range of messages in a given topic and partition.

| Property | Type | Description |
|----------|------|-------------|
| `endCursor` | `Cursor` | The exclusive end of the range. The range is empty if end_cursor <= start_cursor. Specifying a st... |
| `partition` | `string` | Required. The partition for which we should compute message stats. |
| `startCursor` | `Cursor` | The inclusive start of the range. |

### `ComputeMessageStatsResponse`

Response containing stats for messages in the requested topic and partition.

| Property | Type | Description |
|----------|------|-------------|
| `messageBytes` | `string` | The number of quota bytes accounted to these messages. |
| `messageCount` | `string` | The count of messages. |
| `minimumEventTime` | `string` | The minimum event timestamp across these messages. For the purposes of this computation, if a mes... |
| `minimumPublishTime` | `string` | The minimum publish timestamp across these messages. Note that publish timestamps within a partit... |

### `ComputeTimeCursorRequest`

Compute the corresponding cursor for a publish or event time in a topic partition.

| Property | Type | Description |
|----------|------|-------------|
| `partition` | `string` | Required. The partition for which we should compute the cursor. |
| `target` | `TimeTarget` | Required. The target publish or event time. Specifying a future time will return an unset cursor. |

### `ComputeTimeCursorResponse`

Response containing the cursor corresponding to a publish or event time in a topic partition.

| Property | Type | Description |
|----------|------|-------------|
| `cursor` | `Cursor` | If present, the cursor references the first message with time greater than or equal to the specif... |

### `Cursor`

A cursor that describes the position of a message within a topic partition.

| Property | Type | Description |
|----------|------|-------------|
| `offset` | `string` | The offset of a message within a topic partition. Must be greater than or equal 0. |

### `DeliveryConfig`

The settings for a subscription's message delivery.

| Property | Type | Description |
|----------|------|-------------|
| `deliveryRequirement` | `string` | The DeliveryRequirement for this subscription. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `ExportConfig`

Configuration for a Pub/Sub Lite subscription that writes messages to a destination. User subscriber clients must not connect to this subscription.

| Property | Type | Description |
|----------|------|-------------|
| `currentState` | `string` | Output only. The current state of the export, which may be different to the desired state due to ... |
| `deadLetterTopic` | `string` | Optional. The name of an optional Pub/Sub Lite topic to publish messages that can not be exported... |
| `desiredState` | `string` | The desired state of this export. Setting this to values other than `ACTIVE` and `PAUSED` will re... |
| `pubsubConfig` | `PubSubConfig` | Messages are automatically written from the Pub/Sub Lite topic associated with this subscription ... |

### `ListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<Operation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `ListPartitionCursorsResponse`

Response for ListPartitionCursors

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `partitionCursors` | `array<PartitionCursor>` | The partition cursors from this request. |

### `ListReservationTopicsResponse`

Response for ListReservationTopics.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page of results. If this field is o... |
| `topics` | `array<string>` | The names of topics attached to the reservation. The order of the topics is unspecified. |

### `ListReservationsResponse`

Response for ListReservations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page of results. If this field is o... |
| `reservations` | `array<Reservation>` | The list of reservation in the requested parent. The order of the reservations is unspecified. |

### `ListSubscriptionsResponse`

Response for ListSubscriptions.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page of results. If this field is o... |
| `subscriptions` | `array<Subscription>` | The list of subscriptions in the requested parent. The order of the subscriptions is unspecified. |

### `ListTopicSubscriptionsResponse`

Response for ListTopicSubscriptions.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page of results. If this field is o... |
| `subscriptions` | `array<string>` | The names of subscriptions attached to the topic. The order of the subscriptions is unspecified. |

### `ListTopicsResponse`

Response for ListTopics.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page of results. If this field is o... |
| `topics` | `array<Topic>` | The list of topic in the requested parent. The order of the topics is unspecified. |

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

Metadata for long running operations.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | The time the operation was created. |
| `endTime` | `string` | The time the operation finished running. Not set if the operation has not completed. |
| `target` | `string` | Resource path for the target of the operation. For example, targets of seeks are subscription res... |
| `verb` | `string` | Name of the verb executed by the operation. |

### `PartitionConfig`

The settings for a topic's partitions.

| Property | Type | Description |
|----------|------|-------------|
| `capacity` | `Capacity` | The capacity configuration. |
| `count` | `string` | The number of partitions in the topic. Must be at least 1. Once a topic has been created the numb... |
| `scale` | `integer` | DEPRECATED: Use capacity instead which can express a superset of configurations. Every partition ... |

### `PartitionCursor`

A pair of a Cursor and the partition it is for.

| Property | Type | Description |
|----------|------|-------------|
| `cursor` | `Cursor` | The value of the cursor. |
| `partition` | `string` | The partition this is for. |

### `PubSubConfig`

Configuration for exporting to a Pub/Sub topic.

| Property | Type | Description |
|----------|------|-------------|
| `topic` | `string` | The name of the Pub/Sub topic. Structured like: projects/{project_number}/topics/{topic_id}. The ... |

### `Reservation`

Metadata about a reservation resource.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name of the reservation. Structured like: projects/{project_number}/locations/{location}/rese... |
| `throughputCapacity` | `string` | The reserved throughput capacity. Every unit of throughput capacity is equivalent to 1 MiB/s of p... |

### `ReservationConfig`

The settings for this topic's Reservation usage.

| Property | Type | Description |
|----------|------|-------------|
| `throughputReservation` | `string` | The Reservation to use for this topic's throughput capacity. Structured like: projects/{project_n... |

### `RetentionConfig`

The settings for a topic's message retention.

| Property | Type | Description |
|----------|------|-------------|
| `perPartitionBytes` | `string` | The provisioned storage, in bytes, per partition. If the number of bytes stored in any of the top... |
| `period` | `string` | How long a published message is retained. If unset, messages will be retained as long as the byte... |

### `SeekSubscriptionRequest`

Request for SeekSubscription.

| Property | Type | Description |
|----------|------|-------------|
| `namedTarget` | `string` | Seek to a named position with respect to the message backlog. |
| `timeTarget` | `TimeTarget` | Seek to the first message whose publish or event time is greater than or equal to the specified q... |

### `SeekSubscriptionResponse`

Response for SeekSubscription long running operation.

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `Subscription`

Metadata about a subscription resource.

| Property | Type | Description |
|----------|------|-------------|
| `deliveryConfig` | `DeliveryConfig` | The settings for this subscription's message delivery. |
| `exportConfig` | `ExportConfig` | If present, messages are automatically written from the Pub/Sub Lite topic associated with this s... |
| `name` | `string` | The name of the subscription. Structured like: projects/{project_number}/locations/{location}/sub... |
| `topic` | `string` | The name of the topic this subscription is attached to. Structured like: projects/{project_number... |

### `TimeTarget`

A target publish or event time. Can be used for seeking to or retrieving the corresponding cursor.

| Property | Type | Description |
|----------|------|-------------|
| `eventTime` | `string` | Request the cursor of the first message with event time greater than or equal to `event_time`. If... |
| `publishTime` | `string` | Request the cursor of the first message with publish time greater than or equal to `publish_time`... |

### `Topic`

Metadata about a topic resource.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name of the topic. Structured like: projects/{project_number}/locations/{location}/topics/{to... |
| `partitionConfig` | `PartitionConfig` | The settings for this topic's partitions. |
| `reservationConfig` | `ReservationConfig` | The settings for this topic's Reservation usage. |
| `retentionConfig` | `RetentionConfig` | The settings for this topic's message retention. |

### `TopicPartitions`

Response for GetTopicPartitions.

| Property | Type | Description |
|----------|------|-------------|
| `partitionCount` | `string` | The number of partitions in the topic. |

