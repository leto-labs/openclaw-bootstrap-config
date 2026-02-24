# Managed Service for Apache Kafka API - API Reference

**Version**: `v1` | **Methods**: 89 | **Schemas**: 64

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `managedkafka.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `managedkafka.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `managedkafka.projects.locations.clusters.list` | GET | `v1/{+parent}/clusters` | Lists the clusters in a given project and location. |
| `managedkafka.projects.locations.clusters.get` | GET | `v1/{+name}` | Returns the properties of a single cluster. |
| `managedkafka.projects.locations.clusters.create` | POST | `v1/{+parent}/clusters` | Creates a new cluster in a given project and location. |
| `managedkafka.projects.locations.clusters.patch` | PATCH | `v1/{+name}` | Updates the properties of a single cluster. |
| `managedkafka.projects.locations.clusters.delete` | DELETE | `v1/{+name}` | Deletes a single cluster. |
| `managedkafka.projects.locations.clusters.acls.delete` | DELETE | `v1/{+name}` | Deletes an acl. |
| `managedkafka.projects.locations.clusters.acls.removeAclEntry` | POST | `v1/{+acl}:removeAclEntry` | Incremental update: Removes an acl entry from an acl. Deletes the acl if its acl entries become e... |
| `managedkafka.projects.locations.clusters.acls.get` | GET | `v1/{+name}` | Returns the properties of a single acl. |
| `managedkafka.projects.locations.clusters.acls.list` | GET | `v1/{+parent}/acls` | Lists the acls in a given cluster. |
| `managedkafka.projects.locations.clusters.acls.patch` | PATCH | `v1/{+name}` | Updates the properties of a single acl. |
| `managedkafka.projects.locations.clusters.acls.create` | POST | `v1/{+parent}/acls` | Creates a new acl in the given project, location, and cluster. |
| `managedkafka.projects.locations.clusters.acls.addAclEntry` | POST | `v1/{+acl}:addAclEntry` | Incremental update: Adds an acl entry to an acl. Creates the acl if it does not exist yet. |
| `managedkafka.projects.locations.clusters.topics.create` | POST | `v1/{+parent}/topics` | Creates a new topic in a given project and location. |
| `managedkafka.projects.locations.clusters.topics.patch` | PATCH | `v1/{+name}` | Updates the properties of a single topic. |
| `managedkafka.projects.locations.clusters.topics.delete` | DELETE | `v1/{+name}` | Deletes a single topic. |
| `managedkafka.projects.locations.clusters.topics.get` | GET | `v1/{+name}` | Returns the properties of a single topic. |
| `managedkafka.projects.locations.clusters.topics.list` | GET | `v1/{+parent}/topics` | Lists the topics in a given cluster. |
| `managedkafka.projects.locations.clusters.consumerGroups.get` | GET | `v1/{+name}` | Returns the properties of a single consumer group. |
| `managedkafka.projects.locations.clusters.consumerGroups.list` | GET | `v1/{+parent}/consumerGroups` | Lists the consumer groups in a given cluster. |
| `managedkafka.projects.locations.clusters.consumerGroups.delete` | DELETE | `v1/{+name}` | Deletes a single consumer group. |
| `managedkafka.projects.locations.clusters.consumerGroups.patch` | PATCH | `v1/{+name}` | Updates the properties of a single consumer group. |
| `managedkafka.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `managedkafka.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `managedkafka.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `managedkafka.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `managedkafka.projects.locations.connectClusters.create` | POST | `v1/{+parent}/connectClusters` | Creates a new Kafka Connect cluster in a given project and location. |
| `managedkafka.projects.locations.connectClusters.delete` | DELETE | `v1/{+name}` | Deletes a single Connect cluster. |
| `managedkafka.projects.locations.connectClusters.list` | GET | `v1/{+parent}/connectClusters` | Lists the Kafka Connect clusters in a given project and location. |
| `managedkafka.projects.locations.connectClusters.get` | GET | `v1/{+name}` | Returns the properties of a single Kafka Connect cluster. |
| `managedkafka.projects.locations.connectClusters.patch` | PATCH | `v1/{+name}` | Updates the properties of a single Kafka Connect cluster. |
| `managedkafka.projects.locations.connectClusters.connectors.delete` | DELETE | `v1/{+name}` | Deletes a connector. |
| `managedkafka.projects.locations.connectClusters.connectors.create` | POST | `v1/{+parent}/connectors` | Creates a new connector in a given Connect cluster. |
| `managedkafka.projects.locations.connectClusters.connectors.restart` | POST | `v1/{+name}:restart` | Restarts the connector. |
| `managedkafka.projects.locations.connectClusters.connectors.patch` | PATCH | `v1/{+name}` | Updates the properties of a connector. |
| `managedkafka.projects.locations.connectClusters.connectors.pause` | POST | `v1/{+name}:pause` | Pauses the connector and its tasks. |
| `managedkafka.projects.locations.connectClusters.connectors.get` | GET | `v1/{+name}` | Returns the properties of a single connector. |
| `managedkafka.projects.locations.connectClusters.connectors.list` | GET | `v1/{+parent}/connectors` | Lists the connectors in a given Connect cluster. |
| `managedkafka.projects.locations.connectClusters.connectors.stop` | POST | `v1/{+name}:stop` | Stops the connector. |
| `managedkafka.projects.locations.connectClusters.connectors.resume` | POST | `v1/{+name}:resume` | Resumes the connector and its tasks. |
| `managedkafka.projects.locations.schemaRegistries.get` | GET | `v1/{+name}` | Get the schema registry instance. |
| `managedkafka.projects.locations.schemaRegistries.create` | POST | `v1/{+parent}/schemaRegistries` | Create a schema registry instance. |
| `managedkafka.projects.locations.schemaRegistries.list` | GET | `v1/{+parent}/schemaRegistries` | List schema registries. |
| `managedkafka.projects.locations.schemaRegistries.delete` | DELETE | `v1/{+name}` | Delete a schema registry instance. |
| `managedkafka.projects.locations.schemaRegistries.mode.get` | GET | `v1/{+name}` | Get mode at global level or for a subject. |
| `managedkafka.projects.locations.schemaRegistries.mode.delete` | DELETE | `v1/{+name}` | Delete schema mode for a subject. |
| `managedkafka.projects.locations.schemaRegistries.mode.update` | PUT | `v1/{+name}` | Update mode at global level or for a subject. |
| `managedkafka.projects.locations.schemaRegistries.contexts.list` | GET | `v1/{+parent}/contexts` | List contexts for a schema registry. |
| `managedkafka.projects.locations.schemaRegistries.contexts.get` | GET | `v1/{+name}` | Get the context. |
| `managedkafka.projects.locations.schemaRegistries.contexts.subjects.delete` | DELETE | `v1/{+name}` | Delete a subject. The response will be an array of versions of the deleted subject. |
| `managedkafka.projects.locations.schemaRegistries.contexts.subjects.list` | GET | `v1/{+parent}/subjects` | List subjects in the schema registry. The response will be an array of subject names. |
| `managedkafka.projects.locations.schemaRegistries.contexts.subjects.lookupVersion` | POST | `v1/{+parent}` | Lookup a schema under the specified subject. |
| `managedkafka.projects.locations.schemaRegistries.contexts.subjects.versions.get` | GET | `v1/{+name}` | Get a versioned schema (schema with subject/version) of a subject. |
| `managedkafka.projects.locations.schemaRegistries.contexts.subjects.versions.create` | POST | `v1/{+parent}/versions` | Register a new version under a given subject with the given schema. |
| `managedkafka.projects.locations.schemaRegistries.contexts.subjects.versions.getSchema` | GET | `v1/{+name}/schema` | Get the schema string only for a version of a subject. The response will be the schema string. |
| `managedkafka.projects.locations.schemaRegistries.contexts.subjects.versions.delete` | DELETE | `v1/{+name}` | Delete a version of a subject. The response will be the deleted version id. |
| `managedkafka.projects.locations.schemaRegistries.contexts.subjects.versions.list` | GET | `v1/{+parent}/versions` | Get all versions of a subject. The response will be an array of versions of the subject. |
| `managedkafka.projects.locations.schemaRegistries.contexts.subjects.versions.referencedby.list` | GET | `v1/{+parent}/referencedby` | Get a list of IDs of schemas that reference the schema with the given subject and version. |
| `managedkafka.projects.locations.schemaRegistries.contexts.config.update` | PUT | `v1/{+name}` | Update config at global level or for a subject. Creates a SchemaSubject-level SchemaConfig if it ... |
| `managedkafka.projects.locations.schemaRegistries.contexts.config.get` | GET | `v1/{+name}` | Get schema config at global level or for a subject. |
| `managedkafka.projects.locations.schemaRegistries.contexts.config.delete` | DELETE | `v1/{+name}` | Delete schema config for a subject. |
| `managedkafka.projects.locations.schemaRegistries.contexts.compatibility.checkCompatibility` | POST | `v1/{+name}` | Check compatibility of a schema with all versions or a specific version of a subject. |
| `managedkafka.projects.locations.schemaRegistries.contexts.mode.delete` | DELETE | `v1/{+name}` | Delete schema mode for a subject. |
| `managedkafka.projects.locations.schemaRegistries.contexts.mode.get` | GET | `v1/{+name}` | Get mode at global level or for a subject. |
| `managedkafka.projects.locations.schemaRegistries.contexts.mode.update` | PUT | `v1/{+name}` | Update mode at global level or for a subject. |
| `managedkafka.projects.locations.schemaRegistries.contexts.schemas.get` | GET | `v1/{+name}` | Get the schema for the given schema id. |
| `managedkafka.projects.locations.schemaRegistries.contexts.schemas.getSchema` | GET | `v1/{+name}/schema` | Get the schema string for the given schema id. The response will be the schema string. |
| `managedkafka.projects.locations.schemaRegistries.contexts.schemas.subjects.list` | GET | `v1/{+parent}/subjects` | List subjects which reference a particular schema id. The response will be an array of subject na... |
| `managedkafka.projects.locations.schemaRegistries.contexts.schemas.types.list` | GET | `v1/{+parent}/schemas/types` | List the supported schema types. The response will be an array of schema types. |
| `managedkafka.projects.locations.schemaRegistries.contexts.schemas.versions.list` | GET | `v1/{+parent}/versions` | List the schema versions for the given schema id. The response will be an array of subject-versio... |
| `managedkafka.projects.locations.schemaRegistries.schemas.getSchema` | GET | `v1/{+name}/schema` | Get the schema string for the given schema id. The response will be the schema string. |
| `managedkafka.projects.locations.schemaRegistries.schemas.get` | GET | `v1/{+name}` | Get the schema for the given schema id. |
| `managedkafka.projects.locations.schemaRegistries.schemas.subjects.list` | GET | `v1/{+parent}/subjects` | List subjects which reference a particular schema id. The response will be an array of subject na... |
| `managedkafka.projects.locations.schemaRegistries.schemas.versions.list` | GET | `v1/{+parent}/versions` | List the schema versions for the given schema id. The response will be an array of subject-versio... |
| `managedkafka.projects.locations.schemaRegistries.schemas.types.list` | GET | `v1/{+parent}/schemas/types` | List the supported schema types. The response will be an array of schema types. |
| `managedkafka.projects.locations.schemaRegistries.config.update` | PUT | `v1/{+name}` | Update config at global level or for a subject. Creates a SchemaSubject-level SchemaConfig if it ... |
| `managedkafka.projects.locations.schemaRegistries.config.get` | GET | `v1/{+name}` | Get schema config at global level or for a subject. |
| `managedkafka.projects.locations.schemaRegistries.config.delete` | DELETE | `v1/{+name}` | Delete schema config for a subject. |
| `managedkafka.projects.locations.schemaRegistries.subjects.lookupVersion` | POST | `v1/{+parent}` | Lookup a schema under the specified subject. |
| `managedkafka.projects.locations.schemaRegistries.subjects.list` | GET | `v1/{+parent}/subjects` | List subjects in the schema registry. The response will be an array of subject names. |
| `managedkafka.projects.locations.schemaRegistries.subjects.delete` | DELETE | `v1/{+name}` | Delete a subject. The response will be an array of versions of the deleted subject. |
| `managedkafka.projects.locations.schemaRegistries.subjects.versions.list` | GET | `v1/{+parent}/versions` | Get all versions of a subject. The response will be an array of versions of the subject. |
| `managedkafka.projects.locations.schemaRegistries.subjects.versions.get` | GET | `v1/{+name}` | Get a versioned schema (schema with subject/version) of a subject. |
| `managedkafka.projects.locations.schemaRegistries.subjects.versions.delete` | DELETE | `v1/{+name}` | Delete a version of a subject. The response will be the deleted version id. |
| `managedkafka.projects.locations.schemaRegistries.subjects.versions.create` | POST | `v1/{+parent}/versions` | Register a new version under a given subject with the given schema. |
| `managedkafka.projects.locations.schemaRegistries.subjects.versions.getSchema` | GET | `v1/{+name}/schema` | Get the schema string only for a version of a subject. The response will be the schema string. |
| `managedkafka.projects.locations.schemaRegistries.subjects.versions.referencedby.list` | GET | `v1/{+parent}/referencedby` | Get a list of IDs of schemas that reference the schema with the given subject and version. |
| `managedkafka.projects.locations.schemaRegistries.compatibility.checkCompatibility` | POST | `v1/{+name}` | Check compatibility of a schema with all versions or a specific version of a subject. |

### `managedkafka.projects.locations.list`

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
const res = await managedkafka.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await managedkafka.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.clusters.list`

**GET** `v1/{+parent}/clusters`

Lists the clusters in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent location whose clusters are to be listed. Structured like `projects/{project}/locations/{locatio... |
| `filter` | `string` | query | No | Optional. Filter expression for the result. |
| `orderBy` | `string` | query | No | Optional. Order by fields for the result. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of clusters to return. The service may return fewer than this value. If unspecified, ser... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListClusters` call. Provide this to retrieve the subsequent page. W... |

**Response**: `ListClustersResponse`

```typescript
const res = await managedkafka.clusters.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.clusters.get`

**GET** `v1/{+name}`

Returns the properties of a single cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the cluster whose configuration to return. |
| `view` | `string` | query | No | Optional. Specifies the view of the Cluster resource to be returned. Defaults to CLUSTER_VIEW_BASIC. See the ClusterV... |

**Response**: `Cluster`

```typescript
const res = await managedkafka.clusters.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.clusters.create`

**POST** `v1/{+parent}/clusters`

Creates a new cluster in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent region in which to create the cluster. Structured like `projects/{project}/locations/{location}`. |
| `clusterId` | `string` | query | No | Required. The ID to use for the cluster, which will become the final component of the cluster's name. The ID must be ... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID to avoid duplication of requests. ... |

**Request body**: `Cluster`

**Response**: `Operation`

```typescript
const res = await managedkafka.clusters.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.clusters.patch`

**PATCH** `v1/{+name}`

Updates the properties of a single cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The name of the cluster. Structured like: projects/{project_number}/locations/{location}/clusters/{cluste... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID to avoid duplication of requests. ... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the cluster resource by the update. The field... |

**Request body**: `Cluster`

**Response**: `Operation`

```typescript
const res = await managedkafka.clusters.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.clusters.delete`

**DELETE** `v1/{+name}`

Deletes a single cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the cluster to delete. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID to avoid duplication of requests. ... |

**Response**: `Operation`

```typescript
const res = await managedkafka.clusters.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.clusters.acls.delete`

**DELETE** `v1/{+name}`

Deletes an acl.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the acl to delete. Structured like: `projects/{project}/locations/{location}/clusters/{cluster}... |

**Response**: `Empty`

```typescript
const res = await managedkafka.acls.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.clusters.acls.removeAclEntry`

**POST** `v1/{+acl}:removeAclEntry`

Incremental update: Removes an acl entry from an acl. Deletes the acl if its acl entries become empty (i.e. if the removed entry was the last one in the acl).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `acl` | `string` | path | Yes | Required. The name of the acl to remove the acl entry from. Structured like: `projects/{project}/locations/{location}... |

**Request body**: `AclEntry`

**Response**: `RemoveAclEntryResponse`

```typescript
const res = await managedkafka.acls.removeAclEntry({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.clusters.acls.get`

**GET** `v1/{+name}`

Returns the properties of a single acl.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the acl to return. Structured like: `projects/{project}/locations/{location}/clusters/{cluster}... |

**Response**: `Acl`

```typescript
const res = await managedkafka.acls.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.clusters.acls.list`

**GET** `v1/{+parent}/acls`

Lists the acls in a given cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent cluster whose acls are to be listed. Structured like `projects/{project}/locations/{location}/cl... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of acls to return. The service may return fewer than this value. If unset or zero, all a... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListAcls` call. Provide this to retrieve the subsequent page. When ... |

**Response**: `ListAclsResponse`

```typescript
const res = await managedkafka.acls.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.clusters.acls.patch`

**PATCH** `v1/{+name}`

Updates the properties of a single acl.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The name for the acl. Represents a single Resource Pattern. Structured like: projects/{project}/locations... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the Acl resource by the update. The fields sp... |

**Request body**: `Acl`

**Response**: `Acl`

```typescript
const res = await managedkafka.acls.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.clusters.acls.create`

**POST** `v1/{+parent}/acls`

Creates a new acl in the given project, location, and cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent cluster in which to create the acl. Structured like `projects/{project}/locations/{location}/clu... |
| `aclId` | `string` | query | No | Required. The ID to use for the acl, which will become the final component of the acl's name. The structure of `acl_i... |

**Request body**: `Acl`

**Response**: `Acl`

```typescript
const res = await managedkafka.acls.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.clusters.acls.addAclEntry`

**POST** `v1/{+acl}:addAclEntry`

Incremental update: Adds an acl entry to an acl. Creates the acl if it does not exist yet.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `acl` | `string` | path | Yes | Required. The name of the acl to add the acl entry to. Structured like: `projects/{project}/locations/{location}/clus... |

**Request body**: `AclEntry`

**Response**: `AddAclEntryResponse`

```typescript
const res = await managedkafka.acls.addAclEntry({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.clusters.topics.create`

**POST** `v1/{+parent}/topics`

Creates a new topic in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent cluster in which to create the topic. Structured like `projects/{project}/locations/{location}/c... |
| `topicId` | `string` | query | No | Required. The ID to use for the topic, which will become the final component of the topic's name. This value is struc... |

**Request body**: `Topic`

**Response**: `Topic`

```typescript
const res = await managedkafka.topics.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.clusters.topics.patch`

**PATCH** `v1/{+name}`

Updates the properties of a single topic.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The name of the topic. The `topic` segment is used when connecting directly to the cluster. Structured li... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the Topic resource by the update. The fields ... |

**Request body**: `Topic`

**Response**: `Topic`

```typescript
const res = await managedkafka.topics.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.clusters.topics.delete`

**DELETE** `v1/{+name}`

Deletes a single topic.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the topic to delete. `projects/{project}/locations/{location}/clusters/{cluster}/topics/{topic}`. |

**Response**: `Empty`

```typescript
const res = await managedkafka.topics.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.clusters.topics.get`

**GET** `v1/{+name}`

Returns the properties of a single topic.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the topic whose configuration to return. Structured like: projects/{project}/locations/{locatio... |

**Response**: `Topic`

```typescript
const res = await managedkafka.topics.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.clusters.topics.list`

**GET** `v1/{+parent}/topics`

Lists the topics in a given cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent cluster whose topics are to be listed. Structured like `projects/{project}/locations/{location}/... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of topics to return. The service may return fewer than this value. If unset or zero, all... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListTopics` call. Provide this to retrieve the subsequent page. Whe... |

**Response**: `ListTopicsResponse`

```typescript
const res = await managedkafka.topics.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.clusters.consumerGroups.get`

**GET** `v1/{+name}`

Returns the properties of a single consumer group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the consumer group whose configuration to return. `projects/{project}/locations/{location}/clus... |

**Response**: `ConsumerGroup`

```typescript
const res = await managedkafka.consumerGroups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.clusters.consumerGroups.list`

**GET** `v1/{+parent}/consumerGroups`

Lists the consumer groups in a given cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent cluster whose consumer groups are to be listed. Structured like `projects/{project}/locations/{l... |
| `filter` | `string` | query | No | Optional. Filter expression for the result. Only supports filtering by topic name as a key in the `topics` map. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of consumer groups to return. The service may return fewer than this value. If unset or ... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListConsumerGroups` call. Provide this to retrieve the subsequent p... |
| `view` | `string` | query | No | Optional. Specifies the view (BASIC or FULL) of the ConsumerGroup resource to be returned in the response. Defaults t... |

**Response**: `ListConsumerGroupsResponse`

```typescript
const res = await managedkafka.consumerGroups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.clusters.consumerGroups.delete`

**DELETE** `v1/{+name}`

Deletes a single consumer group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the consumer group to delete. `projects/{project}/locations/{location}/clusters/{cluster}/consu... |

**Response**: `Empty`

```typescript
const res = await managedkafka.consumerGroups.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.clusters.consumerGroups.patch`

**PATCH** `v1/{+name}`

Updates the properties of a single consumer group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The name of the consumer group. The `consumer_group` segment is used when connecting directly to the clus... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the ConsumerGroup resource by the update. The... |

**Request body**: `ConsumerGroup`

**Response**: `ConsumerGroup`

```typescript
const res = await managedkafka.consumerGroups.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await managedkafka.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await managedkafka.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await managedkafka.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.operations.list`

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
const res = await managedkafka.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.connectClusters.create`

**POST** `v1/{+parent}/connectClusters`

Creates a new Kafka Connect cluster in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent project/location in which to create the Kafka Connect cluster. Structured like `projects/{projec... |
| `connectClusterId` | `string` | query | No | Required. The ID to use for the Connect cluster, which will become the final component of the cluster's name. The ID ... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID to avoid duplication of requests. ... |

**Request body**: `ConnectCluster`

**Response**: `Operation`

```typescript
const res = await managedkafka.connectClusters.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.connectClusters.delete`

**DELETE** `v1/{+name}`

Deletes a single Connect cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Kafka Connect cluster to delete. Structured like `projects/{project}/locations/{location}/c... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID to avoid duplication of requests. ... |

**Response**: `Operation`

```typescript
const res = await managedkafka.connectClusters.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.connectClusters.list`

**GET** `v1/{+parent}/connectClusters`

Lists the Kafka Connect clusters in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent project/location whose Connect clusters are to be listed. Structured like `projects/{project}/lo... |
| `filter` | `string` | query | No | Optional. Filter expression for the result. |
| `orderBy` | `string` | query | No | Optional. Order by fields for the result. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of Connect clusters to return. The service may return fewer than this value. If unspecif... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListConnectClusters` call. Provide this to retrieve the subsequent ... |

**Response**: `ListConnectClustersResponse`

```typescript
const res = await managedkafka.connectClusters.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.connectClusters.get`

**GET** `v1/{+name}`

Returns the properties of a single Kafka Connect cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the Kafka Connect cluster whose configuration to return. Structured like `projects/{project}/lo... |

**Response**: `ConnectCluster`

```typescript
const res = await managedkafka.connectClusters.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.connectClusters.patch`

**PATCH** `v1/{+name}`

Updates the properties of a single Kafka Connect cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The name of the Kafka Connect cluster. Structured like: projects/{project_number}/locations/{location}/co... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID to avoid duplication of requests. ... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the cluster resource by the update. The field... |

**Request body**: `ConnectCluster`

**Response**: `Operation`

```typescript
const res = await managedkafka.connectClusters.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.connectClusters.connectors.delete`

**DELETE** `v1/{+name}`

Deletes a connector.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the connector to delete. Structured like: projects/{project}/locations/{location}/connectCluste... |

**Response**: `Empty`

```typescript
const res = await managedkafka.connectors.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.connectClusters.connectors.create`

**POST** `v1/{+parent}/connectors`

Creates a new connector in a given Connect cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent Connect cluster in which to create the connector. Structured like `projects/{project}/locations/... |
| `connectorId` | `string` | query | No | Required. The ID to use for the connector, which will become the final component of the connector's name. The ID must... |

**Request body**: `Connector`

**Response**: `Connector`

```typescript
const res = await managedkafka.connectors.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.connectClusters.connectors.restart`

**POST** `v1/{+name}:restart`

Restarts the connector.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the connector to restart. Structured like: projects/{project}/locations/{location}/connectClust... |

**Request body**: `RestartConnectorRequest`

**Response**: `RestartConnectorResponse`

```typescript
const res = await managedkafka.connectors.restart({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.connectClusters.connectors.patch`

**PATCH** `v1/{+name}`

Updates the properties of a connector.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The name of the connector. Structured like: projects/{project}/locations/{location}/connectClusters/{conn... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the cluster resource by the update. The field... |

**Request body**: `Connector`

**Response**: `Connector`

```typescript
const res = await managedkafka.connectors.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.connectClusters.connectors.pause`

**POST** `v1/{+name}:pause`

Pauses the connector and its tasks.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the connector to pause. Structured like: projects/{project}/locations/{location}/connectCluster... |

**Request body**: `PauseConnectorRequest`

**Response**: `PauseConnectorResponse`

```typescript
const res = await managedkafka.connectors.pause({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.connectClusters.connectors.get`

**GET** `v1/{+name}`

Returns the properties of a single connector.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the connector whose configuration to return. Structured like: projects/{project}/locations/{loc... |

**Response**: `Connector`

```typescript
const res = await managedkafka.connectors.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.connectClusters.connectors.list`

**GET** `v1/{+parent}/connectors`

Lists the connectors in a given Connect cluster.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent Connect cluster whose connectors are to be listed. Structured like `projects/{project}/locations... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of connectors to return. The service may return fewer than this value. If unspecified, s... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListConnectors` call. Provide this to retrieve the subsequent page.... |

**Response**: `ListConnectorsResponse`

```typescript
const res = await managedkafka.connectors.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.connectClusters.connectors.stop`

**POST** `v1/{+name}:stop`

Stops the connector.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the connector to stop. Structured like: projects/{project}/locations/{location}/connectClusters... |

**Request body**: `StopConnectorRequest`

**Response**: `StopConnectorResponse`

```typescript
const res = await managedkafka.connectors.stop({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.connectClusters.connectors.resume`

**POST** `v1/{+name}:resume`

Resumes the connector and its tasks.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the connector to pause. Structured like: projects/{project}/locations/{location}/connectCluster... |

**Request body**: `ResumeConnectorRequest`

**Response**: `ResumeConnectorResponse`

```typescript
const res = await managedkafka.connectors.resume({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.get`

**GET** `v1/{+name}`

Get the schema registry instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the schema registry instance to return. Structured like: `projects/{project}/locations/{locatio... |

**Response**: `SchemaRegistry`

```typescript
const res = await managedkafka.schemaRegistries.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.create`

**POST** `v1/{+parent}/schemaRegistries`

Create a schema registry instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent whose schema registry instance is to be created. Structured like: `projects/{project}/locations/... |

**Request body**: `CreateSchemaRegistryRequest`

**Response**: `SchemaRegistry`

```typescript
const res = await managedkafka.schemaRegistries.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.list`

**GET** `v1/{+parent}/schemaRegistries`

List schema registries.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent whose schema registry instances are to be listed. Structured like: `projects/{project}/locations... |
| `view` | `string` | query | No | Optional. Specifies the view to return for the schema registry instances. If not specified, the default view is SCHEM... |

**Response**: `ListSchemaRegistriesResponse`

```typescript
const res = await managedkafka.schemaRegistries.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.delete`

**DELETE** `v1/{+name}`

Delete a schema registry instance.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the schema registry instance to delete. Structured like: `projects/{project}/locations/{locatio... |

**Response**: `Empty`

```typescript
const res = await managedkafka.schemaRegistries.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.mode.get`

**GET** `v1/{+name}`

Get mode at global level or for a subject.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the mode. The format is * projects/{project}/locations/{location}/schemaRegistries/{sc... |

**Response**: `SchemaMode`

```typescript
const res = await managedkafka.mode.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.mode.delete`

**DELETE** `v1/{+name}`

Delete schema mode for a subject.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of subject to delete the mode for. The format is * projects/{project}/locations/{location... |

**Response**: `SchemaMode`

```typescript
const res = await managedkafka.mode.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.mode.update`

**PUT** `v1/{+name}`

Update mode at global level or for a subject.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the mode. The format is * projects/{project}/locations/{location}/schemaRegistries/{sc... |

**Request body**: `UpdateSchemaModeRequest`

**Response**: `SchemaMode`

```typescript
const res = await managedkafka.mode.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.contexts.list`

**GET** `v1/{+parent}/contexts`

List contexts for a schema registry.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent of the contexts. Structured like: `projects/{project}/locations/{location}/schemaRegistries/{sch... |

**Response**: `HttpBody`

```typescript
const res = await managedkafka.contexts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.contexts.get`

**GET** `v1/{+name}`

Get the context.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the context to return. Structured like: `projects/{project}/locations/{location}/schemaRegistri... |

**Response**: `Context`

```typescript
const res = await managedkafka.contexts.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.contexts.subjects.delete`

**DELETE** `v1/{+name}`

Delete a subject. The response will be an array of versions of the deleted subject.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the subject to delete. Structured like: `projects/{project}/locations/{location}/schemaRegistri... |
| `permanent` | `boolean` | query | No | Optional. If true, the subject and all associated metadata including the schema ID will be deleted permanently. Other... |

**Response**: `HttpBody`

```typescript
const res = await managedkafka.subjects.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.contexts.subjects.list`

**GET** `v1/{+parent}/subjects`

List subjects in the schema registry. The response will be an array of subject names.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent schema registry/context whose subjects are to be listed. Structured like: `projects/{project}/lo... |
| `deleted` | `boolean` | query | No | Optional. If true, the response will include soft-deleted subjects. The default is false. |
| `subjectPrefix` | `string` | query | No | Optional. The context to filter the subjects by, in the format of `:.{context}:`. If unset, all subjects in the regis... |

**Response**: `HttpBody`

```typescript
const res = await managedkafka.subjects.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.contexts.subjects.lookupVersion`

**POST** `v1/{+parent}`

Lookup a schema under the specified subject.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The subject to lookup the schema in. Structured like: `projects/{project}/locations/{location}/schemaRegist... |

**Request body**: `LookupVersionRequest`

**Response**: `SchemaVersion`

```typescript
const res = await managedkafka.subjects.lookupVersion({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.contexts.subjects.versions.get`

**GET** `v1/{+name}`

Get a versioned schema (schema with subject/version) of a subject.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the subject to return versions. Structured like: `projects/{project}/locations/{location}/schem... |
| `deleted` | `boolean` | query | No | Optional. If true, no matter if the subject/version is soft-deleted or not, it returns the version details. If false,... |

**Response**: `SchemaVersion`

```typescript
const res = await managedkafka.versions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.contexts.subjects.versions.create`

**POST** `v1/{+parent}/versions`

Register a new version under a given subject with the given schema.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The subject to create the version for. Structured like: `projects/{project}/locations/{location}/schemaRegi... |

**Request body**: `CreateVersionRequest`

**Response**: `CreateVersionResponse`

```typescript
const res = await managedkafka.versions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.contexts.subjects.versions.getSchema`

**GET** `v1/{+name}/schema`

Get the schema string only for a version of a subject. The response will be the schema string.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the subject to return versions. Structured like: `projects/{project}/locations/{location}/schem... |
| `deleted` | `boolean` | query | No | Optional. If true, no matter if the subject/version is soft-deleted or not, it returns the version details. If false,... |

**Response**: `HttpBody`

```typescript
const res = await managedkafka.versions.getSchema({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.contexts.subjects.versions.delete`

**DELETE** `v1/{+name}`

Delete a version of a subject. The response will be the deleted version id.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the subject version to delete. Structured like: `projects/{project}/locations/{location}/schema... |
| `permanent` | `boolean` | query | No | Optional. If true, both the version and the referenced schema ID will be permanently deleted. The default is false. I... |

**Response**: `HttpBody`

```typescript
const res = await managedkafka.versions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.contexts.subjects.versions.list`

**GET** `v1/{+parent}/versions`

Get all versions of a subject. The response will be an array of versions of the subject.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The subject whose versions are to be listed. Structured like: `projects/{project}/locations/{location}/sche... |
| `deleted` | `boolean` | query | No | Optional. If true, the response will include soft-deleted versions of an active or soft-deleted subject. The default ... |

**Response**: `HttpBody`

```typescript
const res = await managedkafka.versions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.contexts.subjects.versions.referencedby.list`

**GET** `v1/{+parent}/referencedby`

Get a list of IDs of schemas that reference the schema with the given subject and version.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The version to list referenced by. Structured like: `projects/{project}/locations/{location}/schemaRegistri... |

**Response**: `HttpBody`

```typescript
const res = await managedkafka.referencedby.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.contexts.config.update`

**PUT** `v1/{+name}`

Update config at global level or for a subject. Creates a SchemaSubject-level SchemaConfig if it does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name to update the config for. It can be either of following: * projects/{project}/locations/{... |

**Request body**: `UpdateSchemaConfigRequest`

**Response**: `SchemaConfig`

```typescript
const res = await managedkafka.config.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.contexts.config.get`

**GET** `v1/{+name}`

Get schema config at global level or for a subject.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name to get the config for. It can be either of following: * projects/{project}/locations/{loc... |
| `defaultToGlobal` | `boolean` | query | No | Optional. If true, the config will fall back to the config at the global level if no subject level config is found. |

**Response**: `SchemaConfig`

```typescript
const res = await managedkafka.config.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.contexts.config.delete`

**DELETE** `v1/{+name}`

Delete schema config for a subject.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of subject to delete the config for. The format is * projects/{project}/locations/{locati... |

**Response**: `SchemaConfig`

```typescript
const res = await managedkafka.config.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.contexts.compatibility.checkCompatibility`

**POST** `v1/{+name}`

Check compatibility of a schema with all versions or a specific version of a subject.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource to check compatibility for. The format is either of following: * projects/{project... |

**Request body**: `CheckCompatibilityRequest`

**Response**: `CheckCompatibilityResponse`

```typescript
const res = await managedkafka.compatibility.checkCompatibility({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.contexts.mode.delete`

**DELETE** `v1/{+name}`

Delete schema mode for a subject.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of subject to delete the mode for. The format is * projects/{project}/locations/{location... |

**Response**: `SchemaMode`

```typescript
const res = await managedkafka.mode.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.contexts.mode.get`

**GET** `v1/{+name}`

Get mode at global level or for a subject.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the mode. The format is * projects/{project}/locations/{location}/schemaRegistries/{sc... |

**Response**: `SchemaMode`

```typescript
const res = await managedkafka.mode.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.contexts.mode.update`

**PUT** `v1/{+name}`

Update mode at global level or for a subject.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the mode. The format is * projects/{project}/locations/{location}/schemaRegistries/{sc... |

**Request body**: `UpdateSchemaModeRequest`

**Response**: `SchemaMode`

```typescript
const res = await managedkafka.mode.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.contexts.schemas.get`

**GET** `v1/{+name}`

Get the schema for the given schema id.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the schema to return. Structured like: `projects/{project}/locations/{location}/schemaRegistrie... |
| `subject` | `string` | query | No | Optional. Used to limit the search for the schema ID to a specific subject, otherwise the schema ID will be searched ... |

**Response**: `Schema`

```typescript
const res = await managedkafka.schemas.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.contexts.schemas.getSchema`

**GET** `v1/{+name}/schema`

Get the schema string for the given schema id. The response will be the schema string.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the schema to return. Structured like: `projects/{project}/locations/{location}/schemaRegistrie... |
| `subject` | `string` | query | No | Optional. Used to limit the search for the schema ID to a specific subject, otherwise the schema ID will be searched ... |

**Response**: `HttpBody`

```typescript
const res = await managedkafka.schemas.getSchema({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.contexts.schemas.subjects.list`

**GET** `v1/{+parent}/subjects`

List subjects which reference a particular schema id. The response will be an array of subject names.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The schema resource whose associated subjects are to be listed. Structured like: `projects/{project}/locati... |
| `deleted` | `boolean` | query | No | Optional. If true, the response will include soft-deleted subjects. The default is false. |
| `subject` | `string` | query | No | Optional. The subject to filter the subjects by. |

**Response**: `HttpBody`

```typescript
const res = await managedkafka.subjects.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.contexts.schemas.types.list`

**GET** `v1/{+parent}/schemas/types`

List the supported schema types. The response will be an array of schema types.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent schema registry whose schema types are to be listed. Structured like: `projects/{project}/locati... |

**Response**: `HttpBody`

```typescript
const res = await managedkafka.types.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.contexts.schemas.versions.list`

**GET** `v1/{+parent}/versions`

List the schema versions for the given schema id. The response will be an array of subject-version pairs as: [{"subject":"subject1", "version":1}, {"subject":"subject2", "version":2}].

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The schema whose schema versions are to be listed. Structured like: `projects/{project}/locations/{location... |
| `deleted` | `boolean` | query | No | Optional. If true, the response will include soft-deleted versions of the schema, even if the subject is soft-deleted... |
| `subject` | `string` | query | No | Optional. The subject to filter the subjects by. |

**Response**: `HttpBody`

```typescript
const res = await managedkafka.versions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.schemas.getSchema`

**GET** `v1/{+name}/schema`

Get the schema string for the given schema id. The response will be the schema string.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the schema to return. Structured like: `projects/{project}/locations/{location}/schemaRegistrie... |
| `subject` | `string` | query | No | Optional. Used to limit the search for the schema ID to a specific subject, otherwise the schema ID will be searched ... |

**Response**: `HttpBody`

```typescript
const res = await managedkafka.schemas.getSchema({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.schemas.get`

**GET** `v1/{+name}`

Get the schema for the given schema id.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the schema to return. Structured like: `projects/{project}/locations/{location}/schemaRegistrie... |
| `subject` | `string` | query | No | Optional. Used to limit the search for the schema ID to a specific subject, otherwise the schema ID will be searched ... |

**Response**: `Schema`

```typescript
const res = await managedkafka.schemas.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.schemas.subjects.list`

**GET** `v1/{+parent}/subjects`

List subjects which reference a particular schema id. The response will be an array of subject names.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The schema resource whose associated subjects are to be listed. Structured like: `projects/{project}/locati... |
| `deleted` | `boolean` | query | No | Optional. If true, the response will include soft-deleted subjects. The default is false. |
| `subject` | `string` | query | No | Optional. The subject to filter the subjects by. |

**Response**: `HttpBody`

```typescript
const res = await managedkafka.subjects.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.schemas.versions.list`

**GET** `v1/{+parent}/versions`

List the schema versions for the given schema id. The response will be an array of subject-version pairs as: [{"subject":"subject1", "version":1}, {"subject":"subject2", "version":2}].

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The schema whose schema versions are to be listed. Structured like: `projects/{project}/locations/{location... |
| `deleted` | `boolean` | query | No | Optional. If true, the response will include soft-deleted versions of the schema, even if the subject is soft-deleted... |
| `subject` | `string` | query | No | Optional. The subject to filter the subjects by. |

**Response**: `HttpBody`

```typescript
const res = await managedkafka.versions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.schemas.types.list`

**GET** `v1/{+parent}/schemas/types`

List the supported schema types. The response will be an array of schema types.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent schema registry whose schema types are to be listed. Structured like: `projects/{project}/locati... |

**Response**: `HttpBody`

```typescript
const res = await managedkafka.types.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.config.update`

**PUT** `v1/{+name}`

Update config at global level or for a subject. Creates a SchemaSubject-level SchemaConfig if it does not exist.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name to update the config for. It can be either of following: * projects/{project}/locations/{... |

**Request body**: `UpdateSchemaConfigRequest`

**Response**: `SchemaConfig`

```typescript
const res = await managedkafka.config.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.config.get`

**GET** `v1/{+name}`

Get schema config at global level or for a subject.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name to get the config for. It can be either of following: * projects/{project}/locations/{loc... |
| `defaultToGlobal` | `boolean` | query | No | Optional. If true, the config will fall back to the config at the global level if no subject level config is found. |

**Response**: `SchemaConfig`

```typescript
const res = await managedkafka.config.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.config.delete`

**DELETE** `v1/{+name}`

Delete schema config for a subject.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of subject to delete the config for. The format is * projects/{project}/locations/{locati... |

**Response**: `SchemaConfig`

```typescript
const res = await managedkafka.config.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.subjects.lookupVersion`

**POST** `v1/{+parent}`

Lookup a schema under the specified subject.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The subject to lookup the schema in. Structured like: `projects/{project}/locations/{location}/schemaRegist... |

**Request body**: `LookupVersionRequest`

**Response**: `SchemaVersion`

```typescript
const res = await managedkafka.subjects.lookupVersion({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.subjects.list`

**GET** `v1/{+parent}/subjects`

List subjects in the schema registry. The response will be an array of subject names.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent schema registry/context whose subjects are to be listed. Structured like: `projects/{project}/lo... |
| `deleted` | `boolean` | query | No | Optional. If true, the response will include soft-deleted subjects. The default is false. |
| `subjectPrefix` | `string` | query | No | Optional. The context to filter the subjects by, in the format of `:.{context}:`. If unset, all subjects in the regis... |

**Response**: `HttpBody`

```typescript
const res = await managedkafka.subjects.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.subjects.delete`

**DELETE** `v1/{+name}`

Delete a subject. The response will be an array of versions of the deleted subject.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the subject to delete. Structured like: `projects/{project}/locations/{location}/schemaRegistri... |
| `permanent` | `boolean` | query | No | Optional. If true, the subject and all associated metadata including the schema ID will be deleted permanently. Other... |

**Response**: `HttpBody`

```typescript
const res = await managedkafka.subjects.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.subjects.versions.list`

**GET** `v1/{+parent}/versions`

Get all versions of a subject. The response will be an array of versions of the subject.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The subject whose versions are to be listed. Structured like: `projects/{project}/locations/{location}/sche... |
| `deleted` | `boolean` | query | No | Optional. If true, the response will include soft-deleted versions of an active or soft-deleted subject. The default ... |

**Response**: `HttpBody`

```typescript
const res = await managedkafka.versions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.subjects.versions.get`

**GET** `v1/{+name}`

Get a versioned schema (schema with subject/version) of a subject.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the subject to return versions. Structured like: `projects/{project}/locations/{location}/schem... |
| `deleted` | `boolean` | query | No | Optional. If true, no matter if the subject/version is soft-deleted or not, it returns the version details. If false,... |

**Response**: `SchemaVersion`

```typescript
const res = await managedkafka.versions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.subjects.versions.delete`

**DELETE** `v1/{+name}`

Delete a version of a subject. The response will be the deleted version id.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the subject version to delete. Structured like: `projects/{project}/locations/{location}/schema... |
| `permanent` | `boolean` | query | No | Optional. If true, both the version and the referenced schema ID will be permanently deleted. The default is false. I... |

**Response**: `HttpBody`

```typescript
const res = await managedkafka.versions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.subjects.versions.create`

**POST** `v1/{+parent}/versions`

Register a new version under a given subject with the given schema.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The subject to create the version for. Structured like: `projects/{project}/locations/{location}/schemaRegi... |

**Request body**: `CreateVersionRequest`

**Response**: `CreateVersionResponse`

```typescript
const res = await managedkafka.versions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.subjects.versions.getSchema`

**GET** `v1/{+name}/schema`

Get the schema string only for a version of a subject. The response will be the schema string.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the subject to return versions. Structured like: `projects/{project}/locations/{location}/schem... |
| `deleted` | `boolean` | query | No | Optional. If true, no matter if the subject/version is soft-deleted or not, it returns the version details. If false,... |

**Response**: `HttpBody`

```typescript
const res = await managedkafka.versions.getSchema({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.subjects.versions.referencedby.list`

**GET** `v1/{+parent}/referencedby`

Get a list of IDs of schemas that reference the schema with the given subject and version.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The version to list referenced by. Structured like: `projects/{project}/locations/{location}/schemaRegistri... |

**Response**: `HttpBody`

```typescript
const res = await managedkafka.referencedby.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `managedkafka.projects.locations.schemaRegistries.compatibility.checkCompatibility`

**POST** `v1/{+name}`

Check compatibility of a schema with all versions or a specific version of a subject.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the resource to check compatibility for. The format is either of following: * projects/{project... |

**Request body**: `CheckCompatibilityRequest`

**Response**: `CheckCompatibilityResponse`

```typescript
const res = await managedkafka.compatibility.checkCompatibility({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AccessConfig`

The configuration of access to the Kafka cluster.

| Property | Type | Description |
|----------|------|-------------|
| `networkConfigs` | `array<NetworkConfig>` | Required. Virtual Private Cloud (VPC) networks that must be granted direct access to the Kafka cl... |

### `Acl`

Represents the set of ACLs for a given Kafka Resource Pattern, which consists of resource_type, resource_name and pattern_type.

| Property | Type | Description |
|----------|------|-------------|
| `aclEntries` | `array<AclEntry>` | Required. The ACL entries that apply to the resource pattern. The maximum number of allowed entri... |
| `etag` | `string` | Optional. `etag` is used for concurrency control. An `etag` is returned in the response to `GetAc... |
| `name` | `string` | Identifier. The name for the acl. Represents a single Resource Pattern. Structured like: projects... |
| `patternType` | `string` | Output only. The ACL pattern type derived from the name. One of: LITERAL, PREFIXED. |
| `resourceName` | `string` | Output only. The ACL resource name derived from the name. For cluster resource_type, this is alwa... |
| `resourceType` | `string` | Output only. The ACL resource type derived from the name. One of: CLUSTER, TOPIC, GROUP, TRANSACT... |

### `AclEntry`

Represents the access granted for a given Resource Pattern in an ACL.

| Property | Type | Description |
|----------|------|-------------|
| `host` | `string` | Required. The host. Must be set to "*" for Managed Service for Apache Kafka. |
| `operation` | `string` | Required. The operation type. Allowed values are (case insensitive): ALL, READ, WRITE, CREATE, DE... |
| `permissionType` | `string` | Required. The permission type. Accepted values are (case insensitive): ALLOW, DENY. |
| `principal` | `string` | Required. The principal. Specified as Google Cloud account, with the Kafka StandardAuthorizer pre... |

### `AddAclEntryResponse`

Response for AddAclEntry.

| Property | Type | Description |
|----------|------|-------------|
| `acl` | `Acl` | The updated acl. |
| `aclCreated` | `boolean` | Whether the acl was created as a result of adding the acl entry. |

### `BrokerDetails`

Details of a broker in the Kafka cluster.

| Property | Type | Description |
|----------|------|-------------|
| `brokerIndex` | `string` | Output only. The index of the broker. |
| `nodeId` | `string` | Output only. The node id of the broker. |
| `rack` | `string` | Output only. The rack of the broker. |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `CapacityConfig`

A capacity configuration of a Kafka cluster.

| Property | Type | Description |
|----------|------|-------------|
| `memoryBytes` | `string` | Required. The memory to provision for the cluster in bytes. The CPU:memory ratio (vCPU:GiB) must ... |
| `vcpuCount` | `string` | Required. The number of vCPUs to provision for the cluster. Minimum: 3. |

### `CertificateAuthorityServiceConfig`

A configuration for the Google Certificate Authority Service.

| Property | Type | Description |
|----------|------|-------------|
| `caPool` | `string` | Required. The name of the CA pool to pull CA certificates from. Structured like: projects/{projec... |

### `CheckCompatibilityRequest`

Request for CheckCompatibility.

| Property | Type | Description |
|----------|------|-------------|
| `references` | `array<SchemaReference>` | Optional. The schema references used by the schema. |
| `schema` | `string` | Required. The schema payload |
| `schemaType` | `string` | Optional. The schema type of the schema. |
| `verbose` | `boolean` | Optional. If true, the response will contain the compatibility check result with reasons for fail... |

### `CheckCompatibilityResponse`

Response for CheckCompatibility.

| Property | Type | Description |
|----------|------|-------------|
| `is_compatible` | `boolean` | The compatibility check result. If true, the schema is compatible with the resource. |
| `messages` | `array<string>` | Failure reasons if verbose = true. |

### `Cluster`

An Apache Kafka cluster deployed in a location.

| Property | Type | Description |
|----------|------|-------------|
| `brokerDetails` | `array<BrokerDetails>` | Output only. Only populated when FULL view is requested. Details of each broker in the cluster. |
| `capacityConfig` | `CapacityConfig` | Required. Capacity configuration for the Kafka cluster. |
| `createTime` | `string` | Output only. The time when the cluster was created. |
| `gcpConfig` | `GcpConfig` | Required. Configuration properties for a Kafka cluster deployed to Google Cloud Platform. |
| `kafkaVersion` | `string` | Output only. Only populated when FULL view is requested. The Kafka version of the cluster. |
| `labels` | `object` | Optional. Labels as key value pairs. |
| `name` | `string` | Identifier. The name of the cluster. Structured like: projects/{project_number}/locations/{locati... |
| `rebalanceConfig` | `RebalanceConfig` | Optional. Rebalance configuration for the Kafka cluster. |
| `satisfiesPzi` | `boolean` | Output only. Reserved for future use. |
| `satisfiesPzs` | `boolean` | Output only. Reserved for future use. |
| `state` | `string` | Output only. The current state of the cluster. |
| `tlsConfig` | `TlsConfig` | Optional. TLS configuration for the Kafka cluster. |
| `updateOptions` | `UpdateOptions` | Optional. UpdateOptions represents options that control how updates to the cluster are applied. |
| `updateTime` | `string` | Output only. The time when the cluster was last updated. |

### `ConnectAccessConfig`

The configuration of access to the Kafka Connect cluster.

| Property | Type | Description |
|----------|------|-------------|
| `networkConfigs` | `array<ConnectNetworkConfig>` | Required. Virtual Private Cloud (VPC) networks that must be granted direct access to the Kafka Co... |

### `ConnectCluster`

An Apache Kafka Connect cluster deployed in a location.

| Property | Type | Description |
|----------|------|-------------|
| `capacityConfig` | `CapacityConfig` | Required. Capacity configuration for the Kafka Connect cluster. |
| `config` | `object` | Optional. Configurations for the worker that are overridden from the defaults. The key of the map... |
| `createTime` | `string` | Output only. The time when the cluster was created. |
| `gcpConfig` | `ConnectGcpConfig` | Required. Configuration properties for a Kafka Connect cluster deployed to Google Cloud Platform. |
| `kafkaCluster` | `string` | Required. Immutable. The name of the Kafka cluster this Kafka Connect cluster is attached to. Str... |
| `labels` | `object` | Optional. Labels as key value pairs. |
| `name` | `string` | Identifier. The name of the Kafka Connect cluster. Structured like: projects/{project_number}/loc... |
| `satisfiesPzi` | `boolean` | Output only. Reserved for future use. |
| `satisfiesPzs` | `boolean` | Output only. Reserved for future use. |
| `state` | `string` | Output only. The current state of the Kafka Connect cluster. |
| `updateTime` | `string` | Output only. The time when the cluster was last updated. |

### `ConnectGcpConfig`

Configuration properties for a Kafka Connect cluster deployed to Google Cloud Platform.

| Property | Type | Description |
|----------|------|-------------|
| `accessConfig` | `ConnectAccessConfig` | Required. Access configuration for the Kafka Connect cluster. |
| `secretPaths` | `array<string>` | Optional. Secrets to load into workers. Exact SecretVersions from Secret Manager must be provided... |

### `ConnectNetworkConfig`

The configuration of a Virtual Private Cloud (VPC) network that can access the Kafka Connect cluster.

| Property | Type | Description |
|----------|------|-------------|
| `additionalSubnets` | `array<string>` | Optional. Deprecated: Managed Kafka Connect clusters can now reach any endpoint accessible from t... |
| `dnsDomainNames` | `array<string>` | Optional. Additional DNS domain names from the subnet's network to be made visible to the Connect... |
| `primarySubnet` | `string` | Required. VPC subnet to make available to the Kafka Connect cluster. Structured like: projects/{p... |

### `Connector`

A Kafka Connect connector in a given ConnectCluster.

| Property | Type | Description |
|----------|------|-------------|
| `configs` | `object` | Optional. Connector config as keys/values. The keys of the map are connector property names, for ... |
| `name` | `string` | Identifier. The name of the connector. Structured like: projects/{project}/locations/{location}/c... |
| `state` | `string` | Output only. The current state of the connector. |
| `taskRestartPolicy` | `TaskRetryPolicy` | Optional. Restarts the individual tasks of a Connector. |

### `ConsumerGroup`

A Kafka consumer group in a given cluster.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Identifier. The name of the consumer group. The `consumer_group` segment is used when connecting ... |
| `topics` | `object` | Optional. Metadata for this consumer group for all topics it has metadata for. The key of the map... |

### `ConsumerPartitionMetadata`

Metadata for a consumer group corresponding to a specific partition.

| Property | Type | Description |
|----------|------|-------------|
| `metadata` | `string` | Optional. The associated metadata for this partition, or empty if it does not exist. |
| `offset` | `string` | Required. The current offset for this partition, or 0 if no offset has been committed. |

### `ConsumerTopicMetadata`

Metadata for a consumer group corresponding to a specific topic.

| Property | Type | Description |
|----------|------|-------------|
| `partitions` | `object` | Optional. Metadata for this consumer group and topic for all partition indexes it has metadata for. |

### `Context`

Context represents an independent schema grouping in a schema registry instance.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Identifier. The name of the context. Structured like: `projects/{project}/locations/{location}/sc... |
| `subjects` | `array<string>` | Optional. The subjects of the context. |

### `CreateSchemaRegistryRequest`

Request to create a schema registry instance.

| Property | Type | Description |
|----------|------|-------------|
| `schemaRegistry` | `SchemaRegistry` | Required. The schema registry instance to create. The name field is ignored. |
| `schemaRegistryId` | `string` | Required. The schema registry instance ID to use for this schema registry. The ID must contain on... |

### `CreateVersionRequest`

Request for CreateVersion.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `integer` | Optional. The schema ID of the schema. If not specified, the schema ID will be generated by the s... |
| `normalize` | `boolean` | Optional. If true, the schema will be normalized before being stored. The default is false. |
| `references` | `array<SchemaReference>` | Optional. The schema references used by the schema. |
| `schema` | `string` | Required. The schema payload |
| `schemaType` | `string` | Optional. The type of the schema. It is optional. If not specified, the schema type will be AVRO. |
| `version` | `integer` | Optional. The version to create. It is optional. If not specified, the version will be created wi... |

### `CreateVersionResponse`

Response for CreateVersion.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `integer` | The unique identifier of the schema created. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `GcpConfig`

Configuration properties for a Kafka cluster deployed to Google Cloud Platform.

| Property | Type | Description |
|----------|------|-------------|
| `accessConfig` | `AccessConfig` | Required. Access configuration for the Kafka cluster. |
| `kmsKey` | `string` | Optional. Immutable. The Cloud KMS Key name to use for encryption. The key must be located in the... |

### `HttpBody`

Message that represents an arbitrary HTTP body. It should only be used for payload formats that can't be represented as JSON, such as raw binary or an HTML page. This message can be used both in streaming and non-streaming API methods in the request as well as the response. It can be used as a top-level request field, which is convenient if one wants to extract parameters from either the URL or HTTP template into the request fields and also want access to the raw HTTP body. Example: message GetResourceRequest { // A unique request id. string request_id = 1; // The raw HTTP body is bound to this field. google.api.HttpBody http_body = 2; } service ResourceService { rpc GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); } Example with streaming methods: service CaldavService { rpc GetCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); } Use of this type only changes how the request and response bodies are handled, all other features will continue to work unchanged.

| Property | Type | Description |
|----------|------|-------------|
| `contentType` | `string` | The HTTP Content-Type header value specifying the content type of the body. |
| `data` | `string` | The HTTP request/response body as raw binary. |
| `extensions` | `array<object>` | Application specific response metadata. Must be set in the first response for streaming APIs. |

### `ListAclsResponse`

Response for ListAcls.

| Property | Type | Description |
|----------|------|-------------|
| `acls` | `array<Acl>` | The list of acls in the requested parent. The order of the acls is unspecified. |
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page of results. If this field is o... |

### `ListClustersResponse`

Response for ListClusters.

| Property | Type | Description |
|----------|------|-------------|
| `clusters` | `array<Cluster>` | The list of Clusters in the requested parent. |
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page of results. If this field is o... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListConnectClustersResponse`

Response for ListConnectClusters.

| Property | Type | Description |
|----------|------|-------------|
| `connectClusters` | `array<ConnectCluster>` | The list of Connect clusters in the requested parent. |
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page of results. If this field is o... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListConnectorsResponse`

Response for ListConnectors.

| Property | Type | Description |
|----------|------|-------------|
| `connectors` | `array<Connector>` | The list of connectors in the requested parent. |
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page of results. If this field is o... |

### `ListConsumerGroupsResponse`

Response for ListConsumerGroups.

| Property | Type | Description |
|----------|------|-------------|
| `consumerGroups` | `array<ConsumerGroup>` | The list of consumer group in the requested parent. The order of the consumer groups is unspecified. |
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page of results. If this field is o... |

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

### `ListSchemaRegistriesResponse`

Request for ListSchemaRegistries.

| Property | Type | Description |
|----------|------|-------------|
| `schemaRegistries` | `array<SchemaRegistry>` | The schema registry instances. |

### `ListTopicsResponse`

Response for ListTopics.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page of results. If this field is o... |
| `topics` | `array<Topic>` | The list of topics in the requested parent. The order of the topics is unspecified. |

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `LookupVersionRequest`

Request for LookupVersion.

| Property | Type | Description |
|----------|------|-------------|
| `deleted` | `boolean` | Optional. If true, soft-deleted versions will be included in lookup, no matter if the subject is ... |
| `normalize` | `boolean` | Optional. If true, the schema will be normalized before being looked up. The default is false. |
| `references` | `array<SchemaReference>` | Optional. The schema references used by the schema. |
| `schema` | `string` | Required. The schema payload |
| `schemaType` | `string` | Optional. The schema type of the schema. |

### `NetworkConfig`

The configuration of a Virtual Private Cloud (VPC) network that can access the Kafka cluster.

| Property | Type | Description |
|----------|------|-------------|
| `subnet` | `string` | Required. Name of the VPC subnet in which to create Private Service Connect (PSC) endpoints for t... |

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
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `requestedCancellation` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. Operations ... |
| `statusMessage` | `string` | Output only. Human-readable status of the operation, if any. |
| `target` | `string` | Output only. Server-defined resource path for the target of the operation. |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `PauseConnectorRequest`

Request for PauseConnector.

### `PauseConnectorResponse`

Response for PauseConnector.

### `RebalanceConfig`

Defines rebalancing behavior of a Kafka cluster.

| Property | Type | Description |
|----------|------|-------------|
| `mode` | `string` | Optional. The rebalance behavior for the cluster. When not specified, defaults to `NO_REBALANCE`. |

### `RemoveAclEntryResponse`

Response for RemoveAclEntry.

| Property | Type | Description |
|----------|------|-------------|
| `acl` | `Acl` | The updated acl. Returned if the removed acl entry was not the last entry in the acl. |
| `aclDeleted` | `boolean` | Returned with value true if the removed acl entry was the last entry in the acl, resulting in acl... |

### `RestartConnectorRequest`

Request for RestartConnector.

### `RestartConnectorResponse`

Response for RestartConnector.

### `ResumeConnectorRequest`

Request for ResumeConnector.

### `ResumeConnectorResponse`

Response for ResumeConnector.

### `Schema`

Schema for a Kafka message.

| Property | Type | Description |
|----------|------|-------------|
| `references` | `array<SchemaReference>` | Optional. The schema references used by the schema. |
| `schema` | `string` | The schema payload. |
| `schemaType` | `string` | Optional. The schema type of the schema. |

### `SchemaConfig`

SchemaConfig represents configuration for a schema registry or a specific subject.

| Property | Type | Description |
|----------|------|-------------|
| `alias` | `string` | Optional. The subject to which this subject is an alias of. Only applicable for subject config. |
| `compatibility` | `string` | Required. The compatibility type of the schema. The default value is BACKWARD. If unset in a Sche... |
| `normalize` | `boolean` | Optional. If true, the schema will be normalized before being stored or looked up. The default is... |

### `SchemaMode`

SchemaMode represents the mode of a schema registry or a specific subject. Four modes are supported: * NONE: deprecated. This was the default mode for a subject, but now the default is unset (which means use the global schema registry setting) * READONLY: The schema registry is in read-only mode. * READWRITE: The schema registry is in read-write mode, which allows limited write operations on the schema. * IMPORT: The schema registry is in import mode, which allows more editing operations on the schema for data importing purposes.

| Property | Type | Description |
|----------|------|-------------|
| `mode` | `string` | Required. The mode type of a schema registry (READWRITE by default) or of a subject (unset by def... |

### `SchemaReference`

SchemaReference is a reference to a schema.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. The name of the reference. |
| `subject` | `string` | Required. The subject of the reference. |
| `version` | `integer` | Required. The version of the reference. |

### `SchemaRegistry`

SchemaRegistry is a schema registry instance.

| Property | Type | Description |
|----------|------|-------------|
| `contexts` | `array<string>` | Output only. The contexts of the schema registry instance. |
| `name` | `string` | Identifier. The name of the schema registry instance. Structured like: `projects/{project}/locati... |

### `SchemaVersion`

Version of a schema.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `integer` | Required. The schema ID. |
| `references` | `array<SchemaReference>` | Optional. The schema references used by the schema. |
| `schema` | `string` | Required. The schema payload. |
| `schemaType` | `string` | Optional. The schema type of the schema. |
| `subject` | `string` | Required. The subject of the version. |
| `version` | `integer` | Required. The version ID |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `StopConnectorRequest`

Request for StopConnector.

### `StopConnectorResponse`

Response for StopConnector.

### `TaskRetryPolicy`

Task Retry Policy is implemented on a best-effort basis. The default policy retries tasks with a minimum_backoff of 60 seconds, and a maximum_backoff of 12 hours. You can disable the policy by setting the task_retry_disabled field to true. Retry delay will be exponential based on provided minimum and maximum backoffs. https://en.wikipedia.org/wiki/Exponential_backoff. Note that the delay between consecutive task restarts may not always precisely match the configured settings. This can happen when the ConnectCluster is in rebalancing state or if the ConnectCluster is unresponsive etc. The default values for minimum and maximum backoffs are 60 seconds and 12 hours respectively.

| Property | Type | Description |
|----------|------|-------------|
| `maximumBackoff` | `string` | Optional. The maximum amount of time to wait before retrying a failed task. This sets an upper bo... |
| `minimumBackoff` | `string` | Optional. The minimum amount of time to wait before retrying a failed task. This sets a lower bou... |
| `taskRetryDisabled` | `boolean` | Optional. If true, task retry is disabled. |

### `TlsConfig`

The TLS configuration for the Kafka cluster.

| Property | Type | Description |
|----------|------|-------------|
| `sslPrincipalMappingRules` | `string` | Optional. A list of rules for mapping from SSL principal names to short names. These are applied ... |
| `trustConfig` | `TrustConfig` | Optional. The configuration of the broker truststore. If specified, clients can use mTLS for auth... |

### `Topic`

A Kafka topic in a given cluster.

| Property | Type | Description |
|----------|------|-------------|
| `configs` | `object` | Optional. Configurations for the topic that are overridden from the cluster defaults. The key of ... |
| `name` | `string` | Identifier. The name of the topic. The `topic` segment is used when connecting directly to the cl... |
| `partitionCount` | `integer` | Required. The number of partitions this topic has. The partition count can only be increased, not... |
| `replicationFactor` | `integer` | Required. Immutable. The number of replicas of each partition. A replication factor of 3 is recom... |

### `TrustConfig`

Sources of CA certificates to install in the broker's truststore.

| Property | Type | Description |
|----------|------|-------------|
| `casConfigs` | `array<CertificateAuthorityServiceConfig>` | Optional. Configuration for the Google Certificate Authority Service. Maximum 10. |

### `UpdateOptions`

UpdateOptions specifies options that influence how a cluster update is applied. These options control the behavior of the update process, rather than defining the desired end-state of a cluster.

| Property | Type | Description |
|----------|------|-------------|
| `allowBrokerDownscaleOnClusterUpscale` | `boolean` | Optional. If true, allows an update operation that increases the total vCPU and/or memory allocat... |

### `UpdateSchemaConfigRequest`

Request for updating schema config. On a SchemaSubject-level SchemaConfig, an unset field will be removed from the SchemaConfig.

| Property | Type | Description |
|----------|------|-------------|
| `compatibility` | `string` | Required. The compatibility type of the schemas. Cannot be unset for a SchemaRegistry-level Schem... |
| `normalize` | `boolean` | Optional. If true, the schema will be normalized before being stored or looked up. The default is... |

### `UpdateSchemaModeRequest`

Request for updating schema registry or subject mode.

| Property | Type | Description |
|----------|------|-------------|
| `mode` | `string` | Required. The mode type. |

