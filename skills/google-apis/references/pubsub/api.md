# Cloud Pub/Sub API - API Reference

**Version**: `v1` | **Methods**: 46 | **Schemas**: 68

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `pubsub.projects.schemas.deleteRevision` | DELETE | `v1/{+name}:deleteRevision` | Deletes a specific schema revision. |
| `pubsub.projects.schemas.delete` | DELETE | `v1/{+name}` | Deletes a schema. |
| `pubsub.projects.schemas.list` | GET | `v1/{+parent}/schemas` | Lists schemas in a project. |
| `pubsub.projects.schemas.validate` | POST | `v1/{+parent}/schemas:validate` | Validates a schema. |
| `pubsub.projects.schemas.get` | GET | `v1/{+name}` | Gets a schema. |
| `pubsub.projects.schemas.listRevisions` | GET | `v1/{+name}:listRevisions` | Lists all schema revisions for the named schema. |
| `pubsub.projects.schemas.validateMessage` | POST | `v1/{+parent}/schemas:validateMessage` | Validates a message against a schema. |
| `pubsub.projects.schemas.commit` | POST | `v1/{+name}:commit` | Commits a new schema revision to an existing schema. |
| `pubsub.projects.schemas.rollback` | POST | `v1/{+name}:rollback` | Creates a new schema revision that is a copy of the provided revision_id. |
| `pubsub.projects.schemas.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `pubsub.projects.schemas.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `pubsub.projects.schemas.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `pubsub.projects.schemas.create` | POST | `v1/{+parent}/schemas` | Creates a schema. |
| `pubsub.projects.subscriptions.pull` | POST | `v1/{+subscription}:pull` | Pulls messages from the server. |
| `pubsub.projects.subscriptions.seek` | POST | `v1/{+subscription}:seek` | Seeks an existing subscription to a point in time or to a given snapshot, whichever is provided i... |
| `pubsub.projects.subscriptions.create` | PUT | `v1/{+name}` | Creates a subscription to a given topic. See the [resource name rules] (https://cloud.google.com/... |
| `pubsub.projects.subscriptions.modifyAckDeadline` | POST | `v1/{+subscription}:modifyAckDeadline` | Modifies the ack deadline for a specific message. This method is useful to indicate that more tim... |
| `pubsub.projects.subscriptions.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `pubsub.projects.subscriptions.delete` | DELETE | `v1/{+subscription}` | Deletes an existing subscription. All messages retained in the subscription are immediately dropp... |
| `pubsub.projects.subscriptions.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `pubsub.projects.subscriptions.modifyPushConfig` | POST | `v1/{+subscription}:modifyPushConfig` | Modifies the `PushConfig` for a specified subscription. This may be used to change a push subscri... |
| `pubsub.projects.subscriptions.list` | GET | `v1/{+project}/subscriptions` | Lists matching subscriptions. |
| `pubsub.projects.subscriptions.acknowledge` | POST | `v1/{+subscription}:acknowledge` | Acknowledges the messages associated with the `ack_ids` in the `AcknowledgeRequest`. The Pub/Sub ... |
| `pubsub.projects.subscriptions.detach` | POST | `v1/{+subscription}:detach` | Detaches a subscription from this topic. All messages retained in the subscription are dropped. S... |
| `pubsub.projects.subscriptions.patch` | PATCH | `v1/{+name}` | Updates an existing subscription by updating the fields specified in the update mask. Note that c... |
| `pubsub.projects.subscriptions.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `pubsub.projects.subscriptions.get` | GET | `v1/{+subscription}` | Gets the configuration details of a subscription. |
| `pubsub.projects.topics.get` | GET | `v1/{+topic}` | Gets the configuration of a topic. |
| `pubsub.projects.topics.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `pubsub.projects.topics.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `pubsub.projects.topics.patch` | PATCH | `v1/{+name}` | Updates an existing topic by updating the fields specified in the update mask. Note that certain ... |
| `pubsub.projects.topics.delete` | DELETE | `v1/{+topic}` | Deletes the topic with the given name. Returns `NOT_FOUND` if the topic does not exist. After a t... |
| `pubsub.projects.topics.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `pubsub.projects.topics.publish` | POST | `v1/{+topic}:publish` | Adds one or more messages to the topic. Returns `NOT_FOUND` if the topic does not exist. |
| `pubsub.projects.topics.list` | GET | `v1/{+project}/topics` | Lists matching topics. |
| `pubsub.projects.topics.create` | PUT | `v1/{+name}` | Creates the given topic with the given name. See the [resource name rules] (https://cloud.google.... |
| `pubsub.projects.topics.snapshots.list` | GET | `v1/{+topic}/snapshots` | Lists the names of the snapshots on this topic. Snapshots are used in [Seek](https://cloud.google... |
| `pubsub.projects.topics.subscriptions.list` | GET | `v1/{+topic}/subscriptions` | Lists the names of the attached subscriptions on this topic. |
| `pubsub.projects.snapshots.delete` | DELETE | `v1/{+snapshot}` | Removes an existing snapshot. Snapshots are used in [Seek] (https://cloud.google.com/pubsub/docs/... |
| `pubsub.projects.snapshots.create` | PUT | `v1/{+name}` | Creates a snapshot from the requested subscription. Snapshots are used in [Seek](https://cloud.go... |
| `pubsub.projects.snapshots.list` | GET | `v1/{+project}/snapshots` | Lists the existing snapshots. Snapshots are used in [Seek]( https://cloud.google.com/pubsub/docs/... |
| `pubsub.projects.snapshots.patch` | PATCH | `v1/{+name}` | Updates an existing snapshot by updating the fields specified in the update mask. Snapshots are u... |
| `pubsub.projects.snapshots.get` | GET | `v1/{+snapshot}` | Gets the configuration details of a snapshot. Snapshots are used in [Seek](https://cloud.google.c... |
| `pubsub.projects.snapshots.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `pubsub.projects.snapshots.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `pubsub.projects.snapshots.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |

### `pubsub.projects.schemas.deleteRevision`

**DELETE** `v1/{+name}:deleteRevision`

Deletes a specific schema revision.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the schema revision to be deleted, with a revision ID explicitly included. Example: `projects/1... |
| `revisionId` | `string` | query | No | Optional. This field is deprecated and should not be used for specifying the revision ID. The revision ID should be s... |

**Response**: `Schema`

```typescript
const res = await pubsub.schemas.deleteRevision({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.schemas.delete`

**DELETE** `v1/{+name}`

Deletes a schema.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the schema to delete. Format is `projects/{project}/schemas/{schema}`. |

**Response**: `Empty`

```typescript
const res = await pubsub.schemas.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.schemas.list`

**GET** `v1/{+parent}/schemas`

Lists schemas in a project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project in which to list schemas. Format is `projects/{project-id}`. |
| `pageSize` | `integer` | query | No | Maximum number of schemas to return. |
| `pageToken` | `string` | query | No | The value returned by the last `ListSchemasResponse`; indicates that this is a continuation of a prior `ListSchemas` ... |
| `view` | `string` | query | No | The set of Schema fields to return in the response. If not set, returns Schemas with `name` and `type`, but not `defi... |

**Response**: `ListSchemasResponse`

```typescript
const res = await pubsub.schemas.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.schemas.validate`

**POST** `v1/{+parent}/schemas:validate`

Validates a schema.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project in which to validate schemas. Format is `projects/{project-id}`. |

**Request body**: `ValidateSchemaRequest`

**Response**: `ValidateSchemaResponse`

```typescript
const res = await pubsub.schemas.validate({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.schemas.get`

**GET** `v1/{+name}`

Gets a schema.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the schema to get. Format is `projects/{project}/schemas/{schema}`. |
| `view` | `string` | query | No | The set of fields to return in the response. If not set, returns a Schema with all fields filled out. Set to `BASIC` ... |

**Response**: `Schema`

```typescript
const res = await pubsub.schemas.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.schemas.listRevisions`

**GET** `v1/{+name}:listRevisions`

Lists all schema revisions for the named schema.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the schema to list revisions for. |
| `pageSize` | `integer` | query | No | The maximum number of revisions to return per page. |
| `pageToken` | `string` | query | No | The page token, received from a previous ListSchemaRevisions call. Provide this to retrieve the subsequent page. |
| `view` | `string` | query | No | The set of Schema fields to return in the response. If not set, returns Schemas with `name` and `type`, but not `defi... |

**Response**: `ListSchemaRevisionsResponse`

```typescript
const res = await pubsub.schemas.listRevisions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.schemas.validateMessage`

**POST** `v1/{+parent}/schemas:validateMessage`

Validates a message against a schema.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project in which to validate schemas. Format is `projects/{project-id}`. |

**Request body**: `ValidateMessageRequest`

**Response**: `ValidateMessageResponse`

```typescript
const res = await pubsub.schemas.validateMessage({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.schemas.commit`

**POST** `v1/{+name}:commit`

Commits a new schema revision to an existing schema.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the schema we are revising. Format is `projects/{project}/schemas/{schema}`. |

**Request body**: `CommitSchemaRequest`

**Response**: `Schema`

```typescript
const res = await pubsub.schemas.commit({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.schemas.rollback`

**POST** `v1/{+name}:rollback`

Creates a new schema revision that is a copy of the provided revision_id.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The schema being rolled back with revision id. |

**Request body**: `RollbackSchemaRequest`

**Response**: `Schema`

```typescript
const res = await pubsub.schemas.rollback({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.schemas.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await pubsub.schemas.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.schemas.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await pubsub.schemas.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.schemas.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await pubsub.schemas.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.schemas.create`

**POST** `v1/{+parent}/schemas`

Creates a schema.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The name of the project in which to create the schema. Format is `projects/{project-id}`. |
| `schemaId` | `string` | query | No | The ID to use for the schema, which will become the final component of the schema's resource name. See https://cloud.... |

**Request body**: `Schema`

**Response**: `Schema`

```typescript
const res = await pubsub.schemas.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.subscriptions.pull`

**POST** `v1/{+subscription}:pull`

Pulls messages from the server.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `subscription` | `string` | path | Yes | Required. The subscription from which messages should be pulled. Format is `projects/{project}/subscriptions/{sub}`. |

**Request body**: `PullRequest`

**Response**: `PullResponse`

```typescript
const res = await pubsub.subscriptions.pull({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.subscriptions.seek`

**POST** `v1/{+subscription}:seek`

Seeks an existing subscription to a point in time or to a given snapshot, whichever is provided in the request. Snapshots are used in [Seek] (https://cloud.google.com/pubsub/docs/replay-overview) operations, which allow you to manage message acknowledgments in bulk. That is, you can set the acknowledgment state of messages in an existing subscription to the state captured by a snapshot. Note that both the subscription and the snapshot must be on the same topic.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `subscription` | `string` | path | Yes | Required. The subscription to affect. |

**Request body**: `SeekRequest`

**Response**: `SeekResponse`

```typescript
const res = await pubsub.subscriptions.seek({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.subscriptions.create`

**PUT** `v1/{+name}`

Creates a subscription to a given topic. See the [resource name rules] (https://cloud.google.com/pubsub/docs/pubsub-basics#resource_names). If the subscription already exists, returns `ALREADY_EXISTS`. If the corresponding topic doesn't exist, returns `NOT_FOUND`. If the name is not provided in the request, the server will assign a random name for this subscription on the same project as the topic, conforming to the [resource name format] (https://cloud.google.com/pubsub/docs/pubsub-basics#resource_names). The generated name is populated in the returned Subscription object. Note that for REST API requests, you must specify a name in the request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Identifier. The name of the subscription. It must have the format `"projects/{project}/subscriptions/{subsc... |

**Request body**: `Subscription`

**Response**: `Subscription`

```typescript
const res = await pubsub.subscriptions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.subscriptions.modifyAckDeadline`

**POST** `v1/{+subscription}:modifyAckDeadline`

Modifies the ack deadline for a specific message. This method is useful to indicate that more time is needed to process a message by the subscriber, or to make the message available for redelivery if the processing was interrupted. Note that this does not modify the subscription-level `ackDeadlineSeconds` used for subsequent messages.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `subscription` | `string` | path | Yes | Required. The name of the subscription. Format is `projects/{project}/subscriptions/{sub}`. |

**Request body**: `ModifyAckDeadlineRequest`

**Response**: `Empty`

```typescript
const res = await pubsub.subscriptions.modifyAckDeadline({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.subscriptions.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await pubsub.subscriptions.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.subscriptions.delete`

**DELETE** `v1/{+subscription}`

Deletes an existing subscription. All messages retained in the subscription are immediately dropped. Calls to `Pull` after deletion will return `NOT_FOUND`. After a subscription is deleted, a new one may be created with the same name, but the new one has no association with the old subscription or its topic unless the same topic is specified.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `subscription` | `string` | path | Yes | Required. The subscription to delete. Format is `projects/{project}/subscriptions/{sub}`. |

**Response**: `Empty`

```typescript
const res = await pubsub.subscriptions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.subscriptions.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await pubsub.subscriptions.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.subscriptions.modifyPushConfig`

**POST** `v1/{+subscription}:modifyPushConfig`

Modifies the `PushConfig` for a specified subscription. This may be used to change a push subscription to a pull one (signified by an empty `PushConfig`) or vice versa, or change the endpoint URL and other attributes of a push subscription. Messages will accumulate for delivery continuously through the call regardless of changes to the `PushConfig`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `subscription` | `string` | path | Yes | Required. The name of the subscription. Format is `projects/{project}/subscriptions/{sub}`. |

**Request body**: `ModifyPushConfigRequest`

**Response**: `Empty`

```typescript
const res = await pubsub.subscriptions.modifyPushConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.subscriptions.list`

**GET** `v1/{+project}/subscriptions`

Lists matching subscriptions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Required. The name of the project in which to list subscriptions. Format is `projects/{project-id}`. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of subscriptions to return. |
| `pageToken` | `string` | query | No | Optional. The value returned by the last `ListSubscriptionsResponse`; indicates that this is a continuation of a prio... |

**Response**: `ListSubscriptionsResponse`

```typescript
const res = await pubsub.subscriptions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.subscriptions.acknowledge`

**POST** `v1/{+subscription}:acknowledge`

Acknowledges the messages associated with the `ack_ids` in the `AcknowledgeRequest`. The Pub/Sub system can remove the relevant messages from the subscription. Acknowledging a message whose ack deadline has expired may succeed, but such a message may be redelivered later. Acknowledging a message more than once will not result in an error.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `subscription` | `string` | path | Yes | Required. The subscription whose message is being acknowledged. Format is `projects/{project}/subscriptions/{sub}`. |

**Request body**: `AcknowledgeRequest`

**Response**: `Empty`

```typescript
const res = await pubsub.subscriptions.acknowledge({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.subscriptions.detach`

**POST** `v1/{+subscription}:detach`

Detaches a subscription from this topic. All messages retained in the subscription are dropped. Subsequent `Pull` and `StreamingPull` requests will return FAILED_PRECONDITION. If the subscription is a push subscription, pushes to the endpoint will stop.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `subscription` | `string` | path | Yes | Required. The subscription to detach. Format is `projects/{project}/subscriptions/{subscription}`. |

**Response**: `DetachSubscriptionResponse`

```typescript
const res = await pubsub.subscriptions.detach({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.subscriptions.patch`

**PATCH** `v1/{+name}`

Updates an existing subscription by updating the fields specified in the update mask. Note that certain properties of a subscription, such as its topic, are not modifiable.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Identifier. The name of the subscription. It must have the format `"projects/{project}/subscriptions/{subsc... |

**Request body**: `UpdateSubscriptionRequest`

**Response**: `Subscription`

```typescript
const res = await pubsub.subscriptions.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.subscriptions.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await pubsub.subscriptions.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.subscriptions.get`

**GET** `v1/{+subscription}`

Gets the configuration details of a subscription.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `subscription` | `string` | path | Yes | Required. The name of the subscription to get. Format is `projects/{project}/subscriptions/{sub}`. |

**Response**: `Subscription`

```typescript
const res = await pubsub.subscriptions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.topics.get`

**GET** `v1/{+topic}`

Gets the configuration of a topic.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `topic` | `string` | path | Yes | Required. The name of the topic to get. Format is `projects/{project}/topics/{topic}`. |

**Response**: `Topic`

```typescript
const res = await pubsub.topics.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.topics.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await pubsub.topics.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.topics.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await pubsub.topics.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.topics.patch`

**PATCH** `v1/{+name}`

Updates an existing topic by updating the fields specified in the update mask. Note that certain properties of a topic are not modifiable.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Identifier. The name of the topic. It must have the format `"projects/{project}/topics/{topic}"`. `{topic}`... |

**Request body**: `UpdateTopicRequest`

**Response**: `Topic`

```typescript
const res = await pubsub.topics.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.topics.delete`

**DELETE** `v1/{+topic}`

Deletes the topic with the given name. Returns `NOT_FOUND` if the topic does not exist. After a topic is deleted, a new topic may be created with the same name; this is an entirely new topic with none of the old configuration or subscriptions. Existing subscriptions to this topic are not deleted, but their `topic` field is set to `_deleted-topic_`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `topic` | `string` | path | Yes | Required. Name of the topic to delete. Format is `projects/{project}/topics/{topic}`. |

**Response**: `Empty`

```typescript
const res = await pubsub.topics.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.topics.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await pubsub.topics.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.topics.publish`

**POST** `v1/{+topic}:publish`

Adds one or more messages to the topic. Returns `NOT_FOUND` if the topic does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `topic` | `string` | path | Yes | Required. The messages in the request will be published on this topic. Format is `projects/{project}/topics/{topic}`. |

**Request body**: `PublishRequest`

**Response**: `PublishResponse`

```typescript
const res = await pubsub.topics.publish({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.topics.list`

**GET** `v1/{+project}/topics`

Lists matching topics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Required. The name of the project in which to list topics. Format is `projects/{project-id}`. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of topics to return. |
| `pageToken` | `string` | query | No | Optional. The value returned by the last `ListTopicsResponse`; indicates that this is a continuation of a prior `List... |

**Response**: `ListTopicsResponse`

```typescript
const res = await pubsub.topics.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.topics.create`

**PUT** `v1/{+name}`

Creates the given topic with the given name. See the [resource name rules] (https://cloud.google.com/pubsub/docs/pubsub-basics#resource_names).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Identifier. The name of the topic. It must have the format `"projects/{project}/topics/{topic}"`. `{topic}`... |

**Request body**: `Topic`

**Response**: `Topic`

```typescript
const res = await pubsub.topics.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.topics.snapshots.list`

**GET** `v1/{+topic}/snapshots`

Lists the names of the snapshots on this topic. Snapshots are used in [Seek](https://cloud.google.com/pubsub/docs/replay-overview) operations, which allow you to manage message acknowledgments in bulk. That is, you can set the acknowledgment state of messages in an existing subscription to the state captured by a snapshot.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `topic` | `string` | path | Yes | Required. The name of the topic that snapshots are attached to. Format is `projects/{project}/topics/{topic}`. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of snapshot names to return. |
| `pageToken` | `string` | query | No | Optional. The value returned by the last `ListTopicSnapshotsResponse`; indicates that this is a continuation of a pri... |

**Response**: `ListTopicSnapshotsResponse`

```typescript
const res = await pubsub.snapshots.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.topics.subscriptions.list`

**GET** `v1/{+topic}/subscriptions`

Lists the names of the attached subscriptions on this topic.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `topic` | `string` | path | Yes | Required. The name of the topic that subscriptions are attached to. Format is `projects/{project}/topics/{topic}`. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of subscription names to return. |
| `pageToken` | `string` | query | No | Optional. The value returned by the last `ListTopicSubscriptionsResponse`; indicates that this is a continuation of a... |

**Response**: `ListTopicSubscriptionsResponse`

```typescript
const res = await pubsub.subscriptions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.snapshots.delete`

**DELETE** `v1/{+snapshot}`

Removes an existing snapshot. Snapshots are used in [Seek] (https://cloud.google.com/pubsub/docs/replay-overview) operations, which allow you to manage message acknowledgments in bulk. That is, you can set the acknowledgment state of messages in an existing subscription to the state captured by a snapshot. When the snapshot is deleted, all messages retained in the snapshot are immediately dropped. After a snapshot is deleted, a new one may be created with the same name, but the new one has no association with the old snapshot or its subscription, unless the same subscription is specified.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `snapshot` | `string` | path | Yes | Required. The name of the snapshot to delete. Format is `projects/{project}/snapshots/{snap}`. |

**Response**: `Empty`

```typescript
const res = await pubsub.snapshots.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.snapshots.create`

**PUT** `v1/{+name}`

Creates a snapshot from the requested subscription. Snapshots are used in [Seek](https://cloud.google.com/pubsub/docs/replay-overview) operations, which allow you to manage message acknowledgments in bulk. That is, you can set the acknowledgment state of messages in an existing subscription to the state captured by a snapshot. If the snapshot already exists, returns `ALREADY_EXISTS`. If the requested subscription doesn't exist, returns `NOT_FOUND`. If the backlog in the subscription is too old -- and the resulting snapshot would expire in less than 1 hour -- then `FAILED_PRECONDITION` is returned. See also the `Snapshot.expire_time` field. If the name is not provided in the request, the server will assign a random name for this snapshot on the same project as the subscription, conforming to the [resource name format] (https://cloud.google.com/pubsub/docs/pubsub-basics#resource_names). The generated name is populated in the returned Snapshot object. Note that for REST API requests, you must specify a name in the request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. User-provided name for this snapshot. If the name is not provided in the request, the server will assign a ... |

**Request body**: `CreateSnapshotRequest`

**Response**: `Snapshot`

```typescript
const res = await pubsub.snapshots.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.snapshots.list`

**GET** `v1/{+project}/snapshots`

Lists the existing snapshots. Snapshots are used in [Seek]( https://cloud.google.com/pubsub/docs/replay-overview) operations, which allow you to manage message acknowledgments in bulk. That is, you can set the acknowledgment state of messages in an existing subscription to the state captured by a snapshot.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `project` | `string` | path | Yes | Required. The name of the project in which to list snapshots. Format is `projects/{project-id}`. |
| `pageSize` | `integer` | query | No | Optional. Maximum number of snapshots to return. |
| `pageToken` | `string` | query | No | Optional. The value returned by the last `ListSnapshotsResponse`; indicates that this is a continuation of a prior `L... |

**Response**: `ListSnapshotsResponse`

```typescript
const res = await pubsub.snapshots.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.snapshots.patch`

**PATCH** `v1/{+name}`

Updates an existing snapshot by updating the fields specified in the update mask. Snapshots are used in [Seek](https://cloud.google.com/pubsub/docs/replay-overview) operations, which allow you to manage message acknowledgments in bulk. That is, you can set the acknowledgment state of messages in an existing subscription to the state captured by a snapshot.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Optional. The name of the snapshot. |

**Request body**: `UpdateSnapshotRequest`

**Response**: `Snapshot`

```typescript
const res = await pubsub.snapshots.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.snapshots.get`

**GET** `v1/{+snapshot}`

Gets the configuration details of a snapshot. Snapshots are used in [Seek](https://cloud.google.com/pubsub/docs/replay-overview) operations, which allow you to manage message acknowledgments in bulk. That is, you can set the acknowledgment state of messages in an existing subscription to the state captured by a snapshot.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `snapshot` | `string` | path | Yes | Required. The name of the snapshot to get. Format is `projects/{project}/snapshots/{snap}`. |

**Response**: `Snapshot`

```typescript
const res = await pubsub.snapshots.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.snapshots.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `SetIamPolicyRequest`

**Response**: `Policy`

```typescript
const res = await pubsub.snapshots.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.snapshots.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `TestIamPermissionsRequest`

**Response**: `TestIamPermissionsResponse`

```typescript
const res = await pubsub.snapshots.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

### `pubsub.projects.snapshots.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `Policy`

```typescript
const res = await pubsub.snapshots.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/pubsub`

---

## Schemas

### `AIInference`

Configuration for making inference requests against Vertex AI models.

| Property | Type | Description |
|----------|------|-------------|
| `endpoint` | `string` | Required. An endpoint to a Vertex AI model of the form `projects/{project}/locations/{location}/e... |
| `serviceAccountEmail` | `string` | Optional. The service account to use to make prediction requests against endpoints. The resource ... |
| `unstructuredInference` | `UnstructuredInference` | Optional. Requests and responses can be any arbitrary JSON object. |

### `AcknowledgeRequest`

Request for the Acknowledge method.

| Property | Type | Description |
|----------|------|-------------|
| `ackIds` | `array<string>` | Required. The acknowledgment ID for the messages being acknowledged that was returned by the Pub/... |

### `AnalyticsHubSubscriptionInfo`

Information about an associated [Analytics Hub subscription](https://cloud.google.com/bigquery/docs/analytics-hub-manage-subscriptions).

| Property | Type | Description |
|----------|------|-------------|
| `listing` | `string` | Optional. The name of the associated Analytics Hub listing resource. Pattern: "projects/{project}... |
| `subscription` | `string` | Optional. The name of the associated Analytics Hub subscription resource. Pattern: "projects/{pro... |

### `AvroConfig`

Configuration for writing message data in Avro format. Message payloads and metadata will be written to files as an Avro binary.

| Property | Type | Description |
|----------|------|-------------|
| `useTopicSchema` | `boolean` | Optional. When true, the output Cloud Storage file will be serialized using the topic schema, if ... |
| `writeMetadata` | `boolean` | Optional. When true, write the subscription name, message_id, publish_time, attributes, and order... |

### `AvroFormat`

Configuration for reading Cloud Storage data in Avro binary format. The bytes of each object will be set to the `data` field of a Pub/Sub message.

### `AwsKinesis`

Ingestion settings for Amazon Kinesis Data Streams.

| Property | Type | Description |
|----------|------|-------------|
| `awsRoleArn` | `string` | Required. AWS role ARN to be used for Federated Identity authentication with Kinesis. Check the P... |
| `consumerArn` | `string` | Required. The Kinesis consumer ARN to used for ingestion in Enhanced Fan-Out mode. The consumer m... |
| `gcpServiceAccount` | `string` | Required. The GCP service account to be used for Federated Identity authentication with Kinesis (... |
| `state` | `string` | Output only. An output-only field that indicates the state of the Kinesis ingestion source. |
| `streamArn` | `string` | Required. The Kinesis stream ARN to ingest data from. |

### `AwsMsk`

Ingestion settings for Amazon MSK.

| Property | Type | Description |
|----------|------|-------------|
| `awsRoleArn` | `string` | Required. AWS role ARN to be used for Federated Identity authentication with Amazon MSK. Check th... |
| `clusterArn` | `string` | Required. The Amazon Resource Name (ARN) that uniquely identifies the cluster. |
| `gcpServiceAccount` | `string` | Required. The GCP service account to be used for Federated Identity authentication with Amazon MS... |
| `state` | `string` | Output only. An output-only field that indicates the state of the Amazon MSK ingestion source. |
| `topic` | `string` | Required. The name of the topic in the Amazon MSK cluster that Pub/Sub will import from. |

### `AzureEventHubs`

Ingestion settings for Azure Event Hubs.

| Property | Type | Description |
|----------|------|-------------|
| `clientId` | `string` | Optional. The client id of the Azure application that is being used to authenticate Pub/Sub. |
| `eventHub` | `string` | Optional. The name of the Event Hub. |
| `gcpServiceAccount` | `string` | Optional. The GCP service account to be used for Federated Identity authentication. |
| `namespace` | `string` | Optional. The name of the Event Hubs namespace. |
| `resourceGroup` | `string` | Optional. Name of the resource group within the azure subscription. |
| `state` | `string` | Output only. An output-only field that indicates the state of the Event Hubs ingestion source. |
| `subscriptionId` | `string` | Optional. The Azure subscription id. |
| `tenantId` | `string` | Optional. The tenant id of the Azure application that is being used to authenticate Pub/Sub. |

### `BigQueryConfig`

Configuration for a BigQuery subscription.

| Property | Type | Description |
|----------|------|-------------|
| `dropUnknownFields` | `boolean` | Optional. When true and use_topic_schema is true, any fields that are a part of the topic schema ... |
| `serviceAccountEmail` | `string` | Optional. The service account to use to write to BigQuery. The subscription creator or updater th... |
| `state` | `string` | Output only. An output-only field that indicates whether or not the subscription can receive mess... |
| `table` | `string` | Optional. The name of the table to which to write data, of the form {projectId}.{datasetId}.{tabl... |
| `useTableSchema` | `boolean` | Optional. When true, use the BigQuery table's schema as the columns to write to in BigQuery. `use... |
| `useTopicSchema` | `boolean` | Optional. When true, use the topic's schema as the columns to write to in BigQuery, if it exists.... |
| `writeMetadata` | `boolean` | Optional. When true, write the subscription name, message_id, publish_time, attributes, and order... |

### `Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `CloudStorage`

Ingestion settings for Cloud Storage.

| Property | Type | Description |
|----------|------|-------------|
| `avroFormat` | `AvroFormat` | Optional. Data from Cloud Storage will be interpreted in Avro format. |
| `bucket` | `string` | Optional. Cloud Storage bucket. The bucket name must be without any prefix like "gs://". See the ... |
| `matchGlob` | `string` | Optional. Glob pattern used to match objects that will be ingested. If unset, all objects will be... |
| `minimumObjectCreateTime` | `string` | Optional. Only objects with a larger or equal creation timestamp will be ingested. |
| `pubsubAvroFormat` | `PubSubAvroFormat` | Optional. It will be assumed data from Cloud Storage was written via [Cloud Storage subscriptions... |
| `state` | `string` | Output only. An output-only field that indicates the state of the Cloud Storage ingestion source. |
| `textFormat` | `TextFormat` | Optional. Data from Cloud Storage will be interpreted as text. |

### `CloudStorageConfig`

Configuration for a Cloud Storage subscription.

| Property | Type | Description |
|----------|------|-------------|
| `avroConfig` | `AvroConfig` | Optional. If set, message data will be written to Cloud Storage in Avro format. |
| `bucket` | `string` | Required. User-provided name for the Cloud Storage bucket. The bucket must be created by the user... |
| `filenameDatetimeFormat` | `string` | Optional. User-provided format string specifying how to represent datetimes in Cloud Storage file... |
| `filenamePrefix` | `string` | Optional. User-provided prefix for Cloud Storage filename. See the [object naming requirements](h... |
| `filenameSuffix` | `string` | Optional. User-provided suffix for Cloud Storage filename. See the [object naming requirements](h... |
| `maxBytes` | `string` | Optional. The maximum bytes that can be written to a Cloud Storage file before a new file is crea... |
| `maxDuration` | `string` | Optional. The maximum duration that can elapse before a new Cloud Storage file is created. Min 1 ... |
| `maxMessages` | `string` | Optional. The maximum number of messages that can be written to a Cloud Storage file before a new... |
| `serviceAccountEmail` | `string` | Optional. The service account to use to write to Cloud Storage. The subscription creator or updat... |
| `state` | `string` | Output only. An output-only field that indicates whether or not the subscription can receive mess... |
| `textConfig` | `TextConfig` | Optional. If set, message data will be written to Cloud Storage in text format. |

### `CommitSchemaRequest`

Request for CommitSchema method.

| Property | Type | Description |
|----------|------|-------------|
| `schema` | `Schema` | Required. The schema revision to commit. |

### `ConfluentCloud`

Ingestion settings for Confluent Cloud.

| Property | Type | Description |
|----------|------|-------------|
| `bootstrapServer` | `string` | Required. The address of the bootstrap server. The format is url:port. |
| `clusterId` | `string` | Required. The id of the cluster. |
| `gcpServiceAccount` | `string` | Required. The GCP service account to be used for Federated Identity authentication with `identity... |
| `identityPoolId` | `string` | Required. The id of the identity pool to be used for Federated Identity authentication with Confl... |
| `state` | `string` | Output only. An output-only field that indicates the state of the Confluent Cloud ingestion source. |
| `topic` | `string` | Required. The name of the topic in the Confluent Cloud cluster that Pub/Sub will import from. |

### `CreateSnapshotRequest`

Request for the `CreateSnapshot` method.

| Property | Type | Description |
|----------|------|-------------|
| `labels` | `object` | Optional. See [Creating and managing labels](https://cloud.google.com/pubsub/docs/labels). |
| `subscription` | `string` | Required. The subscription whose backlog the snapshot retains. Specifically, the created snapshot... |
| `tags` | `object` | Optional. Input only. Immutable. Tag keys/values directly bound to this resource. For example: "1... |

### `DeadLetterPolicy`

Dead lettering is done on a best effort basis. The same message might be dead lettered multiple times. If validation on any of the fields fails at subscription creation/updation, the create/update subscription request will fail.

| Property | Type | Description |
|----------|------|-------------|
| `deadLetterTopic` | `string` | Optional. The name of the topic to which dead letter messages should be published. Format is `pro... |
| `maxDeliveryAttempts` | `integer` | Optional. The maximum number of delivery attempts for any message. The value must be between 5 an... |

### `DetachSubscriptionResponse`

Response for the DetachSubscription method. Reserved for future use.

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `ExpirationPolicy`

A policy that specifies the conditions for resource expiration (i.e., automatic resource deletion).

| Property | Type | Description |
|----------|------|-------------|
| `ttl` | `string` | Optional. Specifies the "time-to-live" duration for an associated resource. The resource expires ... |

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `IngestionDataSourceSettings`

Settings for an ingestion data source on a topic.

| Property | Type | Description |
|----------|------|-------------|
| `awsKinesis` | `AwsKinesis` | Optional. Amazon Kinesis Data Streams. |
| `awsMsk` | `AwsMsk` | Optional. Amazon MSK. |
| `azureEventHubs` | `AzureEventHubs` | Optional. Azure Event Hubs. |
| `cloudStorage` | `CloudStorage` | Optional. Cloud Storage. |
| `confluentCloud` | `ConfluentCloud` | Optional. Confluent Cloud. |
| `platformLogsSettings` | `PlatformLogsSettings` | Optional. Platform Logs settings. If unset, no Platform Logs will be generated. |

### `JavaScriptUDF`

User-defined JavaScript function that can transform or filter a Pub/Sub message.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | Required. JavaScript code that contains a function `function_name` with the below signature: ``` ... |
| `functionName` | `string` | Required. Name of the JavasScript function that should applied to Pub/Sub messages. |

### `ListSchemaRevisionsResponse`

Response for the `ListSchemaRevisions` method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page. If this field is empty, there... |
| `schemas` | `array<Schema>` | The revisions of the schema. |

### `ListSchemasResponse`

Response for the `ListSchemas` method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If not empty, indicates that there may be more schemas that match the request; this value should ... |
| `schemas` | `array<Schema>` | The resulting schemas. |

### `ListSnapshotsResponse`

Response for the `ListSnapshots` method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Optional. If not empty, indicates that there may be more snapshot that match the request; this va... |
| `snapshots` | `array<Snapshot>` | Optional. The resulting snapshots. |

### `ListSubscriptionsResponse`

Response for the `ListSubscriptions` method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Optional. If not empty, indicates that there may be more subscriptions that match the request; th... |
| `subscriptions` | `array<Subscription>` | Optional. The subscriptions that match the request. |

### `ListTopicSnapshotsResponse`

Response for the `ListTopicSnapshots` method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Optional. If not empty, indicates that there may be more snapshots that match the request; this v... |
| `snapshots` | `array<string>` | Optional. The names of the snapshots that match the request. |

### `ListTopicSubscriptionsResponse`

Response for the `ListTopicSubscriptions` method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Optional. If not empty, indicates that there may be more subscriptions that match the request; th... |
| `subscriptions` | `array<string>` | Optional. The names of subscriptions attached to the topic specified in the request. |

### `ListTopicsResponse`

Response for the `ListTopics` method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Optional. If not empty, indicates that there may be more topics that match the request; this valu... |
| `topics` | `array<Topic>` | Optional. The resulting topics. |

### `MessageStoragePolicy`

A policy constraining the storage of messages published to the topic.

| Property | Type | Description |
|----------|------|-------------|
| `allowedPersistenceRegions` | `array<string>` | Optional. A list of IDs of Google Cloud regions where messages that are published to the topic ma... |
| `enforceInTransit` | `boolean` | Optional. If true, `allowed_persistence_regions` is also used to enforce in-transit guarantees fo... |

### `MessageTransform`

All supported message transforms types.

| Property | Type | Description |
|----------|------|-------------|
| `aiInference` | `AIInference` | Optional. AI Inference. Specifies the Vertex AI endpoint that inference requests built from the P... |
| `disabled` | `boolean` | Optional. If true, the transform is disabled and will not be applied to messages. Defaults to `fa... |
| `enabled` | `boolean` | Optional. This field is deprecated, use the `disabled` field to disable transforms. |
| `javascriptUdf` | `JavaScriptUDF` | Optional. JavaScript User Defined Function. If multiple JavaScriptUDF's are specified on a resour... |

### `ModifyAckDeadlineRequest`

Request for the ModifyAckDeadline method.

| Property | Type | Description |
|----------|------|-------------|
| `ackDeadlineSeconds` | `integer` | Required. The new ack deadline with respect to the time this request was sent to the Pub/Sub syst... |
| `ackIds` | `array<string>` | Required. List of acknowledgment IDs. |

### `ModifyPushConfigRequest`

Request for the ModifyPushConfig method.

| Property | Type | Description |
|----------|------|-------------|
| `pushConfig` | `PushConfig` | Required. The push configuration for future deliveries. An empty `pushConfig` indicates that the ... |

### `NoWrapper`

Sets the `data` field as the HTTP body for delivery.

| Property | Type | Description |
|----------|------|-------------|
| `writeMetadata` | `boolean` | Optional. When true, writes the Pub/Sub message metadata to `x-goog-pubsub-:` headers of the HTTP... |

### `OidcToken`

Contains information needed for generating an [OpenID Connect token](https://developers.google.com/identity/protocols/OpenIDConnect).

| Property | Type | Description |
|----------|------|-------------|
| `audience` | `string` | Optional. Audience to be used when generating OIDC token. The audience claim identifies the recip... |
| `serviceAccountEmail` | `string` | Optional. [Service account email](https://cloud.google.com/iam/docs/service-accounts) used for ge... |

### `PlatformLogsSettings`

Settings for Platform Logs produced by Pub/Sub.

| Property | Type | Description |
|----------|------|-------------|
| `severity` | `string` | Optional. The minimum severity level of Platform Logs that will be written. |

### `Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `bindings` | `array<Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `PubSubAvroFormat`

Configuration for reading Cloud Storage data written via [Cloud Storage subscriptions](https://cloud.google.com/pubsub/docs/cloudstorage). The data and attributes fields of the originally exported Pub/Sub message will be restored when publishing.

### `PublishRequest`

Request for the Publish method.

| Property | Type | Description |
|----------|------|-------------|
| `messages` | `array<PubsubMessage>` | Required. The messages to publish. |

### `PublishResponse`

Response for the `Publish` method.

| Property | Type | Description |
|----------|------|-------------|
| `messageIds` | `array<string>` | Optional. The server-assigned ID of each published message, in the same order as the messages in ... |

### `PubsubMessage`

A message that is published by publishers and consumed by subscribers. The message must contain either a non-empty data field or at least one attribute. Note that client libraries represent this object differently depending on the language. See the corresponding [client library documentation](https://cloud.google.com/pubsub/docs/reference/libraries) for more information. See [quotas and limits] (https://cloud.google.com/pubsub/quotas) for more information about message limits.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `object` | Optional. Attributes for this message. If this field is empty, the message must contain non-empty... |
| `data` | `string` | Optional. The message data field. If this field is empty, the message must contain at least one a... |
| `messageId` | `string` | ID of this message, assigned by the server when the message is published. Guaranteed to be unique... |
| `orderingKey` | `string` | Optional. If non-empty, identifies related messages for which publish order should be respected. ... |
| `publishTime` | `string` | The time at which the message was published, populated by the server when it receives the `Publis... |

### `PubsubWrapper`

The payload to the push endpoint is in the form of the JSON representation of a PubsubMessage (https://cloud.google.com/pubsub/docs/reference/rpc/google.pubsub.v1#pubsubmessage).

### `PullRequest`

Request for the `Pull` method.

| Property | Type | Description |
|----------|------|-------------|
| `maxMessages` | `integer` | Required. The maximum number of messages to return for this request. Must be a positive integer. ... |
| `returnImmediately` | `boolean` | Optional. If this field set to true, the system will respond immediately even if it there are no ... |

### `PullResponse`

Response for the `Pull` method.

| Property | Type | Description |
|----------|------|-------------|
| `receivedMessages` | `array<ReceivedMessage>` | Optional. Received Pub/Sub messages. The list will be empty if there are no more messages availab... |

### `PushConfig`

Configuration for a push delivery endpoint.

| Property | Type | Description |
|----------|------|-------------|
| `attributes` | `object` | Optional. Endpoint configuration attributes that can be used to control different aspects of the ... |
| `noWrapper` | `NoWrapper` | Optional. When set, the payload to the push endpoint is not wrapped. |
| `oidcToken` | `OidcToken` | Optional. If specified, Pub/Sub will generate and attach an OIDC JWT token as an `Authorization` ... |
| `pubsubWrapper` | `PubsubWrapper` | Optional. When set, the payload to the push endpoint is in the form of the JSON representation of... |
| `pushEndpoint` | `string` | Optional. A URL locating the endpoint to which messages should be pushed. For example, a Webhook ... |

### `ReceivedMessage`

A message and its corresponding acknowledgment ID.

| Property | Type | Description |
|----------|------|-------------|
| `ackId` | `string` | Optional. This ID can be used to acknowledge the received message. |
| `deliveryAttempt` | `integer` | Optional. The approximate number of times that Pub/Sub has attempted to deliver the associated me... |
| `message` | `PubsubMessage` | Optional. The message. |

### `RetryPolicy`

A policy that specifies how Pub/Sub retries message delivery. Retry delay will be exponential based on provided minimum and maximum backoffs. https://en.wikipedia.org/wiki/Exponential_backoff. RetryPolicy will be triggered on NACKs or acknowledgment deadline exceeded events for a given message. Retry Policy is implemented on a best effort basis. At times, the delay between consecutive deliveries may not match the configuration. That is, delay can be more or less than configured backoff.

| Property | Type | Description |
|----------|------|-------------|
| `maximumBackoff` | `string` | Optional. The maximum delay between consecutive deliveries of a given message. Value should be be... |
| `minimumBackoff` | `string` | Optional. The minimum delay between consecutive deliveries of a given message. Value should be be... |

### `RollbackSchemaRequest`

Request for the `RollbackSchema` method.

| Property | Type | Description |
|----------|------|-------------|
| `revisionId` | `string` | Required. The revision ID to roll back to. It must be a revision of the same schema. Example: c7c... |

### `Schema`

A schema resource.

| Property | Type | Description |
|----------|------|-------------|
| `definition` | `string` | The definition of the schema. This should contain a string representing the full definition of th... |
| `name` | `string` | Required. Name of the schema. Format is `projects/{project}/schemas/{schema}`. |
| `revisionCreateTime` | `string` | Output only. The timestamp that the revision was created. |
| `revisionId` | `string` | Output only. Immutable. The revision ID of the schema. |
| `type` | `string` | The type of the schema definition. |

### `SchemaSettings`

Settings for validating messages published against a schema.

| Property | Type | Description |
|----------|------|-------------|
| `encoding` | `string` | Optional. The encoding of messages validated against `schema`. |
| `firstRevisionId` | `string` | Optional. The minimum (inclusive) revision allowed for validating messages. If empty or not prese... |
| `lastRevisionId` | `string` | Optional. The maximum (inclusive) revision allowed for validating messages. If empty or not prese... |
| `schema` | `string` | Required. The name of the schema that messages published should be validated against. Format is `... |

### `SeekRequest`

Request for the `Seek` method.

| Property | Type | Description |
|----------|------|-------------|
| `snapshot` | `string` | Optional. The snapshot to seek to. The snapshot's topic must be the same as that of the provided ... |
| `time` | `string` | Optional. The time to seek to. Messages retained in the subscription that were published before t... |

### `SeekResponse`

Response for the `Seek` method (this response is empty).

### `SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |

### `Snapshot`

A snapshot resource. Snapshots are used in [Seek](https://cloud.google.com/pubsub/docs/replay-overview) operations, which allow you to manage message acknowledgments in bulk. That is, you can set the acknowledgment state of messages in an existing subscription to the state captured by a snapshot.

| Property | Type | Description |
|----------|------|-------------|
| `expireTime` | `string` | Optional. The snapshot is guaranteed to exist up until this time. A newly-created snapshot expire... |
| `labels` | `object` | Optional. See [Creating and managing labels] (https://cloud.google.com/pubsub/docs/labels). |
| `name` | `string` | Optional. The name of the snapshot. |
| `topic` | `string` | Optional. The name of the topic from which this snapshot is retaining messages. |

### `Subscription`

A subscription resource. If none of `push_config`, `bigquery_config`, or `cloud_storage_config` is set, then the subscriber will pull and ack messages using API methods. At most one of these fields may be set.

| Property | Type | Description |
|----------|------|-------------|
| `ackDeadlineSeconds` | `integer` | Optional. The approximate amount of time (on a best-effort basis) Pub/Sub waits for the subscribe... |
| `analyticsHubSubscriptionInfo` | `AnalyticsHubSubscriptionInfo` | Output only. Information about the associated Analytics Hub subscription. Only set if the subscri... |
| `bigqueryConfig` | `BigQueryConfig` | Optional. If delivery to BigQuery is used with this subscription, this field is used to configure... |
| `cloudStorageConfig` | `CloudStorageConfig` | Optional. If delivery to Google Cloud Storage is used with this subscription, this field is used ... |
| `deadLetterPolicy` | `DeadLetterPolicy` | Optional. A policy that specifies the conditions for dead lettering messages in this subscription... |
| `detached` | `boolean` | Optional. Indicates whether the subscription is detached from its topic. Detached subscriptions d... |
| `enableExactlyOnceDelivery` | `boolean` | Optional. If true, Pub/Sub provides the following guarantees for the delivery of a message with a... |
| `enableMessageOrdering` | `boolean` | Optional. If true, messages published with the same `ordering_key` in `PubsubMessage` will be del... |
| `expirationPolicy` | `ExpirationPolicy` | Optional. A policy that specifies the conditions for this subscription's expiration. A subscripti... |
| `filter` | `string` | Optional. An expression written in the Pub/Sub [filter language](https://cloud.google.com/pubsub/... |
| `labels` | `object` | Optional. See [Creating and managing labels](https://cloud.google.com/pubsub/docs/labels). |
| `messageRetentionDuration` | `string` | Optional. How long to retain unacknowledged messages in the subscription's backlog, from the mome... |
| `messageTransforms` | `array<MessageTransform>` | Optional. Transforms to be applied to messages before they are delivered to subscribers. Transfor... |
| `name` | `string` | Required. Identifier. The name of the subscription. It must have the format `"projects/{project}/... |
| `pushConfig` | `PushConfig` | Optional. If push delivery is used with this subscription, this field is used to configure it. |
| `retainAckedMessages` | `boolean` | Optional. Indicates whether to retain acknowledged messages. If true, then messages are not expun... |
| `retryPolicy` | `RetryPolicy` | Optional. A policy that specifies how Pub/Sub retries message delivery for this subscription. If ... |
| `state` | `string` | Output only. An output-only field indicating whether or not the subscription can receive messages. |
| `tags` | `object` | Optional. Input only. Immutable. Tag keys/values directly bound to this resource. For example: "1... |
| `topic` | `string` | Required. The name of the topic from which this subscription is receiving messages. Format is `pr... |
| `topicMessageRetentionDuration` | `string` | Output only. Indicates the minimum duration for which a message is retained after it is published... |

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

### `TextConfig`

Configuration for writing message data in text format. Message payloads will be written to files as raw text, separated by a newline.

### `TextFormat`

Configuration for reading Cloud Storage data in text format. Each line of text as specified by the delimiter will be set to the `data` field of a Pub/Sub message.

| Property | Type | Description |
|----------|------|-------------|
| `delimiter` | `string` | Optional. When unset, '\n' is used. |

### `Topic`

A topic resource.

| Property | Type | Description |
|----------|------|-------------|
| `ingestionDataSourceSettings` | `IngestionDataSourceSettings` | Optional. Settings for ingestion from a data source into this topic. |
| `kmsKeyName` | `string` | Optional. The resource name of the Cloud KMS CryptoKey to be used to protect access to messages p... |
| `labels` | `object` | Optional. See [Creating and managing labels] (https://cloud.google.com/pubsub/docs/labels). |
| `messageRetentionDuration` | `string` | Optional. Indicates the minimum duration to retain a message after it is published to the topic. ... |
| `messageStoragePolicy` | `MessageStoragePolicy` | Optional. Policy constraining the set of Google Cloud Platform regions where messages published t... |
| `messageTransforms` | `array<MessageTransform>` | Optional. Transforms to be applied to messages published to the topic. Transforms are applied in ... |
| `name` | `string` | Required. Identifier. The name of the topic. It must have the format `"projects/{project}/topics/... |
| `satisfiesPzs` | `boolean` | Optional. Reserved for future use. This field is set only in responses from the server; it is ign... |
| `schemaSettings` | `SchemaSettings` | Optional. Settings for validating messages published against a schema. |
| `state` | `string` | Output only. An output-only field indicating the state of the topic. |
| `tags` | `object` | Optional. Input only. Immutable. Tag keys/values directly bound to this resource. For example: "1... |

### `UnstructuredInference`

Configuration for making inferences using arbitrary JSON payloads.

| Property | Type | Description |
|----------|------|-------------|
| `parameters` | `object` | Optional. A parameters object to be included in each inference request. The parameters object is ... |

### `UpdateSnapshotRequest`

Request for the UpdateSnapshot method.

| Property | Type | Description |
|----------|------|-------------|
| `snapshot` | `Snapshot` | Required. The updated snapshot object. |
| `updateMask` | `string` | Required. Indicates which fields in the provided snapshot to update. Must be specified and non-em... |

### `UpdateSubscriptionRequest`

Request for the UpdateSubscription method.

| Property | Type | Description |
|----------|------|-------------|
| `subscription` | `Subscription` | Required. The updated subscription object. |
| `updateMask` | `string` | Required. Indicates which fields in the provided subscription to update. Must be specified and no... |

### `UpdateTopicRequest`

Request for the UpdateTopic method.

| Property | Type | Description |
|----------|------|-------------|
| `topic` | `Topic` | Required. The updated topic object. |
| `updateMask` | `string` | Required. Indicates which fields in the provided topic to update. Must be specified and non-empty... |

### `ValidateMessageRequest`

Request for the `ValidateMessage` method.

| Property | Type | Description |
|----------|------|-------------|
| `encoding` | `string` | The encoding expected for messages |
| `message` | `string` | Message to validate against the provided `schema_spec`. |
| `name` | `string` | Name of the schema against which to validate. Format is `projects/{project}/schemas/{schema}`. |
| `schema` | `Schema` | Ad-hoc schema against which to validate |

### `ValidateMessageResponse`

Response for the `ValidateMessage` method. Empty for now.

### `ValidateSchemaRequest`

Request for the `ValidateSchema` method.

| Property | Type | Description |
|----------|------|-------------|
| `schema` | `Schema` | Required. The schema object to validate. |

### `ValidateSchemaResponse`

Response for the `ValidateSchema` method. Empty for now.

