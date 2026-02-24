# Cloud Datastore API - API Reference

**Version**: `v1` | **Methods**: 18 | **Schemas**: 82

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `datastore.projects.export` | POST | `v1/projects/{projectId}:export` | Exports a copy of all or a subset of entities from Google Cloud Datastore to another storage syst... |
| `datastore.projects.allocateIds` | POST | `v1/projects/{projectId}:allocateIds` | Allocates IDs for the given keys, which is useful for referencing an entity before it is inserted. |
| `datastore.projects.beginTransaction` | POST | `v1/projects/{projectId}:beginTransaction` | Begins a new transaction. |
| `datastore.projects.import` | POST | `v1/projects/{projectId}:import` | Imports entities into Google Cloud Datastore. Existing entities with the same key are overwritten... |
| `datastore.projects.runAggregationQuery` | POST | `v1/projects/{projectId}:runAggregationQuery` | Runs an aggregation query. |
| `datastore.projects.rollback` | POST | `v1/projects/{projectId}:rollback` | Rolls back a transaction. |
| `datastore.projects.runQuery` | POST | `v1/projects/{projectId}:runQuery` | Queries for entities. |
| `datastore.projects.commit` | POST | `v1/projects/{projectId}:commit` | Commits a transaction, optionally creating, deleting or modifying some entities. |
| `datastore.projects.reserveIds` | POST | `v1/projects/{projectId}:reserveIds` | Prevents the supplied keys' IDs from being auto-allocated by Cloud Datastore. |
| `datastore.projects.lookup` | POST | `v1/projects/{projectId}:lookup` | Looks up entities by key. |
| `datastore.projects.indexes.create` | POST | `v1/projects/{projectId}/indexes` | Creates the specified index. A newly created index's initial state is `CREATING`. On completion o... |
| `datastore.projects.indexes.delete` | DELETE | `v1/projects/{projectId}/indexes/{indexId}` | Deletes an existing index. An index can only be deleted if it is in a `READY` or `ERROR` state. O... |
| `datastore.projects.indexes.list` | GET | `v1/projects/{projectId}/indexes` | Lists the indexes that match the specified filters. Datastore uses an eventually consistent query... |
| `datastore.projects.indexes.get` | GET | `v1/projects/{projectId}/indexes/{indexId}` | Gets an index. |
| `datastore.projects.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `datastore.projects.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `datastore.projects.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `datastore.projects.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |

### `datastore.projects.export`

**POST** `v1/projects/{projectId}:export`

Exports a copy of all or a subset of entities from Google Cloud Datastore to another storage system, such as Google Cloud Storage. Recent updates to entities may not be reflected in the export. The export occurs in the background and its progress can be monitored and managed via the Operation resource that is created. The output of an export may only be used once the associated operation is done. If an export operation is cancelled before completion it may leave partial data behind in Google Cloud Storage.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. Project ID against which to make the request. |

**Request body**: `GoogleDatastoreAdminV1ExportEntitiesRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await datastore.projects.export({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `datastore.projects.allocateIds`

**POST** `v1/projects/{projectId}:allocateIds`

Allocates IDs for the given keys, which is useful for referencing an entity before it is inserted.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. The ID of the project against which to make the request. |

**Request body**: `AllocateIdsRequest`

**Response**: `AllocateIdsResponse`

```typescript
const res = await datastore.projects.allocateIds({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `datastore.projects.beginTransaction`

**POST** `v1/projects/{projectId}:beginTransaction`

Begins a new transaction.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. The ID of the project against which to make the request. |

**Request body**: `BeginTransactionRequest`

**Response**: `BeginTransactionResponse`

```typescript
const res = await datastore.projects.beginTransaction({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `datastore.projects.import`

**POST** `v1/projects/{projectId}:import`

Imports entities into Google Cloud Datastore. Existing entities with the same key are overwritten. The import occurs in the background and its progress can be monitored and managed via the Operation resource that is created. If an ImportEntities operation is cancelled, it is possible that a subset of the data has already been imported to Cloud Datastore.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. Project ID against which to make the request. |

**Request body**: `GoogleDatastoreAdminV1ImportEntitiesRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await datastore.projects.import({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `datastore.projects.runAggregationQuery`

**POST** `v1/projects/{projectId}:runAggregationQuery`

Runs an aggregation query.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. The ID of the project against which to make the request. |

**Request body**: `RunAggregationQueryRequest`

**Response**: `RunAggregationQueryResponse`

```typescript
const res = await datastore.projects.runAggregationQuery({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `datastore.projects.rollback`

**POST** `v1/projects/{projectId}:rollback`

Rolls back a transaction.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. The ID of the project against which to make the request. |

**Request body**: `RollbackRequest`

**Response**: `RollbackResponse`

```typescript
const res = await datastore.projects.rollback({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `datastore.projects.runQuery`

**POST** `v1/projects/{projectId}:runQuery`

Queries for entities.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. The ID of the project against which to make the request. |

**Request body**: `RunQueryRequest`

**Response**: `RunQueryResponse`

```typescript
const res = await datastore.projects.runQuery({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `datastore.projects.commit`

**POST** `v1/projects/{projectId}:commit`

Commits a transaction, optionally creating, deleting or modifying some entities.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. The ID of the project against which to make the request. |

**Request body**: `CommitRequest`

**Response**: `CommitResponse`

```typescript
const res = await datastore.projects.commit({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `datastore.projects.reserveIds`

**POST** `v1/projects/{projectId}:reserveIds`

Prevents the supplied keys' IDs from being auto-allocated by Cloud Datastore.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. The ID of the project against which to make the request. |

**Request body**: `ReserveIdsRequest`

**Response**: `ReserveIdsResponse`

```typescript
const res = await datastore.projects.reserveIds({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `datastore.projects.lookup`

**POST** `v1/projects/{projectId}:lookup`

Looks up entities by key.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Required. The ID of the project against which to make the request. |

**Request body**: `LookupRequest`

**Response**: `LookupResponse`

```typescript
const res = await datastore.projects.lookup({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `datastore.projects.indexes.create`

**POST** `v1/projects/{projectId}/indexes`

Creates the specified index. A newly created index's initial state is `CREATING`. On completion of the returned google.longrunning.Operation, the state will be `READY`. If the index already exists, the call will return an `ALREADY_EXISTS` status. During index creation, the process could result in an error, in which case the index will move to the `ERROR` state. The process can be recovered by fixing the data that caused the error, removing the index with delete, then re-creating the index with create. Indexes with a single property cannot be created.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Project ID against which to make the request. |

**Request body**: `GoogleDatastoreAdminV1Index`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await datastore.indexes.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `datastore.projects.indexes.delete`

**DELETE** `v1/projects/{projectId}/indexes/{indexId}`

Deletes an existing index. An index can only be deleted if it is in a `READY` or `ERROR` state. On successful execution of the request, the index will be in a `DELETING` state. And on completion of the returned google.longrunning.Operation, the index will be removed. During index deletion, the process could result in an error, in which case the index will move to the `ERROR` state. The process can be recovered by fixing the data that caused the error, followed by calling delete again.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Project ID against which to make the request. |
| `indexId` | `string` | path | Yes | The resource ID of the index to delete. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await datastore.indexes.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `datastore.projects.indexes.list`

**GET** `v1/projects/{projectId}/indexes`

Lists the indexes that match the specified filters. Datastore uses an eventually consistent query to fetch the list of indexes and may occasionally return stale results.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Project ID against which to make the request. |
| `filter` | `string` | query | No |  |
| `pageSize` | `integer` | query | No | The maximum number of items to return. If zero, then all results will be returned. |
| `pageToken` | `string` | query | No | The next_page_token value returned from a previous List request, if any. |

**Response**: `GoogleDatastoreAdminV1ListIndexesResponse`

```typescript
const res = await datastore.indexes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `datastore.projects.indexes.get`

**GET** `v1/projects/{projectId}/indexes/{indexId}`

Gets an index.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `projectId` | `string` | path | Yes | Project ID against which to make the request. |
| `indexId` | `string` | path | Yes | The resource ID of the index to get. |

**Response**: `GoogleDatastoreAdminV1Index`

```typescript
const res = await datastore.indexes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `datastore.projects.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await datastore.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `datastore.projects.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await datastore.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `datastore.projects.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Response**: `Empty`

```typescript
const res = await datastore.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `datastore.projects.operations.list`

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

**Response**: `GoogleLongrunningListOperationsResponse`

```typescript
const res = await datastore.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

## Schemas

### `Aggregation`

Defines an aggregation that produces a single result.

| Property | Type | Description |
|----------|------|-------------|
| `alias` | `string` | Optional. Optional name of the property to store the result of the aggregation. If not provided, ... |
| `avg` | `Avg` | Average aggregator. |
| `count` | `Count` | Count aggregator. |
| `sum` | `Sum` | Sum aggregator. |

### `AggregationQuery`

Datastore query for running an aggregation over a Query.

| Property | Type | Description |
|----------|------|-------------|
| `aggregations` | `array<Aggregation>` | Optional. Series of aggregations to apply over the results of the `nested_query`. Requires: * A m... |
| `nestedQuery` | `Query` | Nested query for aggregation |

### `AggregationResult`

The result of a single bucket from a Datastore aggregation query. The keys of `aggregate_properties` are the same for all results in an aggregation query, unlike entity queries which can have different fields present for each result.

| Property | Type | Description |
|----------|------|-------------|
| `aggregateProperties` | `object` | The result of the aggregation functions, ex: `COUNT(*) AS total_entities`. The key is the alias a... |

### `AggregationResultBatch`

A batch of aggregation results produced by an aggregation query.

| Property | Type | Description |
|----------|------|-------------|
| `aggregationResults` | `array<AggregationResult>` | The aggregation results for this batch. |
| `moreResults` | `string` | The state of the query after the current batch. Only COUNT(*) aggregations are supported in the i... |
| `readTime` | `string` | Read timestamp this batch was returned from. In a single transaction, subsequent query result bat... |

### `AllocateIdsRequest`

The request for Datastore.AllocateIds.

| Property | Type | Description |
|----------|------|-------------|
| `databaseId` | `string` | The ID of the database against which to make the request. '(default)' is not allowed; please use ... |
| `keys` | `array<Key>` | Required. A list of keys with incomplete key paths for which to allocate IDs. No key may be reser... |

### `AllocateIdsResponse`

The response for Datastore.AllocateIds.

| Property | Type | Description |
|----------|------|-------------|
| `keys` | `array<Key>` | The keys specified in the request (in the same order), each with its key path completed with a ne... |

### `ArrayValue`

An array value.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<Value>` | Values in the array. The order of values in an array is preserved as long as all values have iden... |

### `Avg`

Average of the values of the requested property. * Only numeric values will be aggregated. All non-numeric values including `NULL` are skipped. * If the aggregated values contain `NaN`, returns `NaN`. Infinity math follows IEEE-754 standards. * If the aggregated value set is empty, returns `NULL`. * Always returns the result as a double.

| Property | Type | Description |
|----------|------|-------------|
| `property` | `PropertyReference` | The property to aggregate on. |

### `BeginTransactionRequest`

The request for Datastore.BeginTransaction.

| Property | Type | Description |
|----------|------|-------------|
| `databaseId` | `string` | The ID of the database against which to make the request. '(default)' is not allowed; please use ... |
| `transactionOptions` | `TransactionOptions` | Options for a new transaction. |

### `BeginTransactionResponse`

The response for Datastore.BeginTransaction.

| Property | Type | Description |
|----------|------|-------------|
| `transaction` | `string` | The transaction identifier (always present). |

### `CommitRequest`

The request for Datastore.Commit.

| Property | Type | Description |
|----------|------|-------------|
| `databaseId` | `string` | The ID of the database against which to make the request. '(default)' is not allowed; please use ... |
| `mode` | `string` | The type of commit to perform. Defaults to `TRANSACTIONAL`. |
| `mutations` | `array<Mutation>` | The mutations to perform. When mode is `TRANSACTIONAL`, mutations affecting a single entity are a... |
| `singleUseTransaction` | `TransactionOptions` | Options for beginning a new transaction for this request. The transaction is committed when the r... |
| `transaction` | `string` | The identifier of the transaction associated with the commit. A transaction identifier is returne... |

### `CommitResponse`

The response for Datastore.Commit.

| Property | Type | Description |
|----------|------|-------------|
| `commitTime` | `string` | The transaction commit timestamp. Not set for non-transactional commits. |
| `indexUpdates` | `integer` | The number of index entries updated during the commit, or zero if none were updated. |
| `mutationResults` | `array<MutationResult>` | The result of performing the mutations. The i-th mutation result corresponds to the i-th mutation... |

### `CompositeFilter`

A filter that merges multiple other filters using the given operator.

| Property | Type | Description |
|----------|------|-------------|
| `filters` | `array<Filter>` | The list of filters to combine. Requires: * At least one filter is present. |
| `op` | `string` | The operator for combining multiple filters. |

### `Count`

Count of entities that match the query. The `COUNT(*)` aggregation function operates on the entire entity so it does not require a field reference.

| Property | Type | Description |
|----------|------|-------------|
| `upTo` | `string` | Optional. Optional constraint on the maximum number of entities to count. This provides a way to ... |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Entity`

A Datastore data object. Must not exceed 1 MiB - 4 bytes.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `Key` | The entity's key. An entity must have a key, unless otherwise documented (for example, an entity ... |
| `properties` | `object` | The entity's properties. The map's keys are property names. A property name matching regex `__.*_... |

### `EntityResult`

The result of fetching an entity from Datastore.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | The time at which the entity was created. This field is set for `FULL` entity results. If this en... |
| `cursor` | `string` | A cursor that points to the position after the result entity. Set only when the `EntityResult` is... |
| `entity` | `Entity` | The resulting entity. |
| `updateTime` | `string` | The time at which the entity was last changed. This field is set for `FULL` entity results. If th... |
| `version` | `string` | The version of the entity, a strictly positive number that monotonically increases with changes t... |

### `ExecutionStats`

Execution statistics for the query.

| Property | Type | Description |
|----------|------|-------------|
| `debugStats` | `object` | Debugging statistics from the execution of the query. Note that the debugging stats are subject t... |
| `executionDuration` | `string` | Total time to execute the query in the backend. |
| `readOperations` | `string` | Total billable read operations. |
| `resultsReturned` | `string` | Total number of results returned, including documents, projections, aggregation results, keys. |

### `ExplainMetrics`

Explain metrics for the query.

| Property | Type | Description |
|----------|------|-------------|
| `executionStats` | `ExecutionStats` | Aggregated stats from the execution of the query. Only present when ExplainOptions.analyze is set... |
| `planSummary` | `PlanSummary` | Planning phase information for the query. |

### `ExplainOptions`

Explain options for the query.

| Property | Type | Description |
|----------|------|-------------|
| `analyze` | `boolean` | Optional. Whether to execute this query. When false (the default), the query will be planned, ret... |

### `Filter`

A holder for any type of filter.

| Property | Type | Description |
|----------|------|-------------|
| `compositeFilter` | `CompositeFilter` | A composite filter. |
| `propertyFilter` | `PropertyFilter` | A filter on a property. |

### `FindNearest`

Nearest Neighbors search config. The ordering provided by FindNearest supersedes the order_by stage. If multiple documents have the same vector distance, the returned document order is not guaranteed to be stable between queries.

| Property | Type | Description |
|----------|------|-------------|
| `distanceMeasure` | `string` | Required. The Distance Measure to use, required. |
| `distanceResultProperty` | `string` | Optional. Optional name of the field to output the result of the vector distance calculation. Mus... |
| `distanceThreshold` | `number` | Optional. Option to specify a threshold for which no less similar documents will be returned. The... |
| `limit` | `integer` | Required. The number of nearest neighbors to return. Must be a positive integer of no more than 100. |
| `queryVector` | `Value` | Required. The query vector that we are searching on. Must be a vector of no more than 2048 dimens... |
| `vectorProperty` | `PropertyReference` | Required. An indexed vector property to search upon. Only documents which contain vectors whose d... |

### `GoogleDatastoreAdminV1CommonMetadata`

Metadata common to all Datastore Admin operations.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | The time the operation ended, either successfully or otherwise. |
| `labels` | `object` | The client-assigned labels which were provided when the operation was created. May also include a... |
| `operationType` | `string` | The type of the operation. Can be used as a filter in ListOperationsRequest. |
| `startTime` | `string` | The time that work began on the operation. |
| `state` | `string` | The current state of the Operation. |

### `GoogleDatastoreAdminV1DatastoreFirestoreMigrationMetadata`

Metadata for Datastore to Firestore migration operations. The DatastoreFirestoreMigration operation is not started by the end-user via an explicit "creation" method. This is an intentional deviation from the LRO design pattern. This singleton resource can be accessed at: "projects/{project_id}/operations/datastore-firestore-migration"

| Property | Type | Description |
|----------|------|-------------|
| `migrationState` | `string` | The current state of migration from Cloud Datastore to Cloud Firestore in Datastore mode. |
| `migrationStep` | `string` | The current step of migration from Cloud Datastore to Cloud Firestore in Datastore mode. |

### `GoogleDatastoreAdminV1EntityFilter`

Identifies a subset of entities in a project. This is specified as combinations of kinds and namespaces (either or both of which may be all, as described in the following examples). Example usage: Entire project: kinds=[], namespace_ids=[] Kinds Foo and Bar in all namespaces: kinds=['Foo', 'Bar'], namespace_ids=[] Kinds Foo and Bar only in the default namespace: kinds=['Foo', 'Bar'], namespace_ids=[''] Kinds Foo and Bar in both the default and Baz namespaces: kinds=['Foo', 'Bar'], namespace_ids=['', 'Baz'] The entire Baz namespace: kinds=[], namespace_ids=['Baz']

| Property | Type | Description |
|----------|------|-------------|
| `kinds` | `array<string>` | If empty, then this represents all kinds. |
| `namespaceIds` | `array<string>` | An empty list represents all namespaces. This is the preferred usage for projects that don't use ... |

### `GoogleDatastoreAdminV1ExportEntitiesMetadata`

Metadata for ExportEntities operations.

| Property | Type | Description |
|----------|------|-------------|
| `common` | `GoogleDatastoreAdminV1CommonMetadata` | Metadata common to all Datastore Admin operations. |
| `entityFilter` | `GoogleDatastoreAdminV1EntityFilter` | Description of which entities are being exported. |
| `outputUrlPrefix` | `string` | Location for the export metadata and data files. This will be the same value as the google.datast... |
| `progressBytes` | `GoogleDatastoreAdminV1Progress` | An estimate of the number of bytes processed. |
| `progressEntities` | `GoogleDatastoreAdminV1Progress` | An estimate of the number of entities processed. |

### `GoogleDatastoreAdminV1ExportEntitiesRequest`

The request for google.datastore.admin.v1.DatastoreAdmin.ExportEntities.

| Property | Type | Description |
|----------|------|-------------|
| `entityFilter` | `GoogleDatastoreAdminV1EntityFilter` | Description of what data from the project is included in the export. |
| `labels` | `object` | Client-assigned labels. |
| `outputUrlPrefix` | `string` | Required. Location for the export metadata and data files. The full resource URL of the external ... |

### `GoogleDatastoreAdminV1ExportEntitiesResponse`

The response for google.datastore.admin.v1.DatastoreAdmin.ExportEntities.

| Property | Type | Description |
|----------|------|-------------|
| `outputUrl` | `string` | Location of the output metadata file. This can be used to begin an import into Cloud Datastore (t... |

### `GoogleDatastoreAdminV1ImportEntitiesMetadata`

Metadata for ImportEntities operations.

| Property | Type | Description |
|----------|------|-------------|
| `common` | `GoogleDatastoreAdminV1CommonMetadata` | Metadata common to all Datastore Admin operations. |
| `entityFilter` | `GoogleDatastoreAdminV1EntityFilter` | Description of which entities are being imported. |
| `inputUrl` | `string` | The location of the import metadata file. This will be the same value as the google.datastore.adm... |
| `progressBytes` | `GoogleDatastoreAdminV1Progress` | An estimate of the number of bytes processed. |
| `progressEntities` | `GoogleDatastoreAdminV1Progress` | An estimate of the number of entities processed. |

### `GoogleDatastoreAdminV1ImportEntitiesRequest`

The request for google.datastore.admin.v1.DatastoreAdmin.ImportEntities.

| Property | Type | Description |
|----------|------|-------------|
| `entityFilter` | `GoogleDatastoreAdminV1EntityFilter` | Optionally specify which kinds/namespaces are to be imported. If provided, the list must be a sub... |
| `inputUrl` | `string` | Required. The full resource URL of the external storage location. Currently, only Google Cloud St... |
| `labels` | `object` | Client-assigned labels. |

### `GoogleDatastoreAdminV1Index`

Datastore composite index definition.

| Property | Type | Description |
|----------|------|-------------|
| `ancestor` | `string` | Required. The index's ancestor mode. Must not be ANCESTOR_MODE_UNSPECIFIED. |
| `indexId` | `string` | Output only. The resource ID of the index. |
| `kind` | `string` | Required. The entity kind to which this index applies. |
| `projectId` | `string` | Output only. Project ID. |
| `properties` | `array<GoogleDatastoreAdminV1IndexedProperty>` | Required. An ordered sequence of property names and their index attributes. Requires: * A maximum... |
| `state` | `string` | Output only. The state of the index. |

### `GoogleDatastoreAdminV1IndexOperationMetadata`

Metadata for Index operations.

| Property | Type | Description |
|----------|------|-------------|
| `common` | `GoogleDatastoreAdminV1CommonMetadata` | Metadata common to all Datastore Admin operations. |
| `indexId` | `string` | The index resource ID that this operation is acting on. |
| `progressEntities` | `GoogleDatastoreAdminV1Progress` | An estimate of the number of entities processed. |

### `GoogleDatastoreAdminV1IndexedProperty`

A property of an index.

| Property | Type | Description |
|----------|------|-------------|
| `direction` | `string` | Required. The indexed property's direction. Must not be DIRECTION_UNSPECIFIED. |
| `name` | `string` | Required. The property name to index. |

### `GoogleDatastoreAdminV1ListIndexesResponse`

The response for google.datastore.admin.v1.DatastoreAdmin.ListIndexes.

| Property | Type | Description |
|----------|------|-------------|
| `indexes` | `array<GoogleDatastoreAdminV1Index>` | The indexes. |
| `nextPageToken` | `string` | The standard List next-page token. |

### `GoogleDatastoreAdminV1MigrationProgressEvent`

An event signifying the start of a new step in a [migration from Cloud Datastore to Cloud Firestore in Datastore mode](https://cloud.google.com/datastore/docs/upgrade-to-firestore).

| Property | Type | Description |
|----------|------|-------------|
| `prepareStepDetails` | `GoogleDatastoreAdminV1PrepareStepDetails` | Details for the `PREPARE` step. |
| `redirectWritesStepDetails` | `GoogleDatastoreAdminV1RedirectWritesStepDetails` | Details for the `REDIRECT_WRITES` step. |
| `step` | `string` | The step that is starting. An event with step set to `START` indicates that the migration has bee... |

### `GoogleDatastoreAdminV1MigrationStateEvent`

An event signifying a change in state of a [migration from Cloud Datastore to Cloud Firestore in Datastore mode](https://cloud.google.com/datastore/docs/upgrade-to-firestore).

| Property | Type | Description |
|----------|------|-------------|
| `state` | `string` | The new state of the migration. |

### `GoogleDatastoreAdminV1PrepareStepDetails`

Details for the `PREPARE` step.

| Property | Type | Description |
|----------|------|-------------|
| `concurrencyMode` | `string` | The concurrency mode this database will use when it reaches the `REDIRECT_WRITES` step. |

### `GoogleDatastoreAdminV1Progress`

Measures the progress of a particular metric.

| Property | Type | Description |
|----------|------|-------------|
| `workCompleted` | `string` | The amount of work that has been completed. Note that this may be greater than work_estimated. |
| `workEstimated` | `string` | An estimate of how much work needs to be performed. May be zero if the work estimate is unavailable. |

### `GoogleDatastoreAdminV1RedirectWritesStepDetails`

Details for the `REDIRECT_WRITES` step.

| Property | Type | Description |
|----------|------|-------------|
| `concurrencyMode` | `string` | The concurrency mode for this database. |

### `GoogleDatastoreAdminV1beta1CommonMetadata`

Metadata common to all Datastore Admin operations.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | The time the operation ended, either successfully or otherwise. |
| `labels` | `object` | The client-assigned labels which were provided when the operation was created. May also include a... |
| `operationType` | `string` | The type of the operation. Can be used as a filter in ListOperationsRequest. |
| `startTime` | `string` | The time that work began on the operation. |
| `state` | `string` | The current state of the Operation. |

### `GoogleDatastoreAdminV1beta1EntityFilter`

Identifies a subset of entities in a project. This is specified as combinations of kinds and namespaces (either or both of which may be all, as described in the following examples). Example usage: Entire project: kinds=[], namespace_ids=[] Kinds Foo and Bar in all namespaces: kinds=['Foo', 'Bar'], namespace_ids=[] Kinds Foo and Bar only in the default namespace: kinds=['Foo', 'Bar'], namespace_ids=[''] Kinds Foo and Bar in both the default and Baz namespaces: kinds=['Foo', 'Bar'], namespace_ids=['', 'Baz'] The entire Baz namespace: kinds=[], namespace_ids=['Baz']

| Property | Type | Description |
|----------|------|-------------|
| `kinds` | `array<string>` | If empty, then this represents all kinds. |
| `namespaceIds` | `array<string>` | An empty list represents all namespaces. This is the preferred usage for projects that don't use ... |

### `GoogleDatastoreAdminV1beta1ExportEntitiesMetadata`

Metadata for ExportEntities operations.

| Property | Type | Description |
|----------|------|-------------|
| `common` | `GoogleDatastoreAdminV1beta1CommonMetadata` | Metadata common to all Datastore Admin operations. |
| `entityFilter` | `GoogleDatastoreAdminV1beta1EntityFilter` | Description of which entities are being exported. |
| `outputUrlPrefix` | `string` | Location for the export metadata and data files. This will be the same value as the google.datast... |
| `progressBytes` | `GoogleDatastoreAdminV1beta1Progress` | An estimate of the number of bytes processed. |
| `progressEntities` | `GoogleDatastoreAdminV1beta1Progress` | An estimate of the number of entities processed. |

### `GoogleDatastoreAdminV1beta1ExportEntitiesResponse`

The response for google.datastore.admin.v1beta1.DatastoreAdmin.ExportEntities.

| Property | Type | Description |
|----------|------|-------------|
| `outputUrl` | `string` | Location of the output metadata file. This can be used to begin an import into Cloud Datastore (t... |

### `GoogleDatastoreAdminV1beta1ImportEntitiesMetadata`

Metadata for ImportEntities operations.

| Property | Type | Description |
|----------|------|-------------|
| `common` | `GoogleDatastoreAdminV1beta1CommonMetadata` | Metadata common to all Datastore Admin operations. |
| `entityFilter` | `GoogleDatastoreAdminV1beta1EntityFilter` | Description of which entities are being imported. |
| `inputUrl` | `string` | The location of the import metadata file. This will be the same value as the google.datastore.adm... |
| `progressBytes` | `GoogleDatastoreAdminV1beta1Progress` | An estimate of the number of bytes processed. |
| `progressEntities` | `GoogleDatastoreAdminV1beta1Progress` | An estimate of the number of entities processed. |

### `GoogleDatastoreAdminV1beta1Progress`

Measures the progress of a particular metric.

| Property | Type | Description |
|----------|------|-------------|
| `workCompleted` | `string` | The amount of work that has been completed. Note that this may be greater than work_estimated. |
| `workEstimated` | `string` | An estimate of how much work needs to be performed. May be zero if the work estimate is unavailable. |

### `GoogleLongrunningListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<GoogleLongrunningOperation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `GoogleLongrunningOperation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `GqlQuery`

A [GQL query](https://cloud.google.com/datastore/docs/apis/gql/gql_reference).

| Property | Type | Description |
|----------|------|-------------|
| `allowLiterals` | `boolean` | When false, the query string must not contain any literals and instead must bind all values. For ... |
| `namedBindings` | `object` | For each non-reserved named binding site in the query string, there must be a named parameter wit... |
| `positionalBindings` | `array<GqlQueryParameter>` | Numbered binding site @1 references the first numbered parameter, effectively using 1-based index... |
| `queryString` | `string` | A string of the format described [here](https://cloud.google.com/datastore/docs/apis/gql/gql_refe... |

### `GqlQueryParameter`

A binding parameter for a GQL query.

| Property | Type | Description |
|----------|------|-------------|
| `cursor` | `string` | A query cursor. Query cursors are returned in query result batches. |
| `value` | `Value` | A value parameter. |

### `Key`

A unique identifier for an entity. If a key's partition ID or any of its path kinds or names are reserved/read-only, the key is reserved/read-only. A reserved/read-only key is forbidden in certain documented contexts.

| Property | Type | Description |
|----------|------|-------------|
| `partitionId` | `PartitionId` | Entities are partitioned into subsets, currently identified by a project ID and namespace ID. Que... |
| `path` | `array<PathElement>` | The entity path. An entity path consists of one or more elements composed of a kind and a string ... |

### `KindExpression`

A representation of a kind.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name of the kind. |

### `LatLng`

An object that represents a latitude/longitude pair. This is expressed as a pair of doubles to represent degrees latitude and degrees longitude. Unless specified otherwise, this object must conform to the WGS84 standard. Values must be within normalized ranges.

| Property | Type | Description |
|----------|------|-------------|
| `latitude` | `number` | The latitude in degrees. It must be in the range [-90.0, +90.0]. |
| `longitude` | `number` | The longitude in degrees. It must be in the range [-180.0, +180.0]. |

### `LookupRequest`

The request for Datastore.Lookup.

| Property | Type | Description |
|----------|------|-------------|
| `databaseId` | `string` | The ID of the database against which to make the request. '(default)' is not allowed; please use ... |
| `keys` | `array<Key>` | Required. Keys of entities to look up. |
| `propertyMask` | `PropertyMask` | The properties to return. Defaults to returning all properties. If this field is set and an entit... |
| `readOptions` | `ReadOptions` | The options for this lookup request. |

### `LookupResponse`

The response for Datastore.Lookup.

| Property | Type | Description |
|----------|------|-------------|
| `deferred` | `array<Key>` | A list of keys that were not looked up due to resource constraints. The order of results in this ... |
| `found` | `array<EntityResult>` | Entities found as `ResultType.FULL` entities. The order of results in this field is undefined and... |
| `missing` | `array<EntityResult>` | Entities not found as `ResultType.KEY_ONLY` entities. The order of results in this field is undef... |
| `readTime` | `string` | The time at which these entities were read or found missing. |
| `transaction` | `string` | The identifier of the transaction that was started as part of this Lookup request. Set only when ... |

### `Mutation`

A mutation to apply to an entity.

| Property | Type | Description |
|----------|------|-------------|
| `baseVersion` | `string` | The version of the entity that this mutation is being applied to. If this does not match the curr... |
| `conflictResolutionStrategy` | `string` | The strategy to use when a conflict is detected. Defaults to `SERVER_VALUE`. If this is set, then... |
| `delete` | `Key` | The key of the entity to delete. The entity may or may not already exist. Must have a complete ke... |
| `insert` | `Entity` | The entity to insert. The entity must not already exist. The entity key's final path element may ... |
| `propertyMask` | `PropertyMask` | The properties to write in this mutation. None of the properties in the mask may have a reserved ... |
| `propertyTransforms` | `array<PropertyTransform>` | Optional. The transforms to perform on the entity. This field can be set only when the operation ... |
| `update` | `Entity` | The entity to update. The entity must already exist. Must have a complete key path. |
| `updateTime` | `string` | The update time of the entity that this mutation is being applied to. If this does not match the ... |
| `upsert` | `Entity` | The entity to upsert. The entity may or may not already exist. The entity key's final path elemen... |

### `MutationResult`

The result of applying a mutation.

| Property | Type | Description |
|----------|------|-------------|
| `conflictDetected` | `boolean` | Whether a conflict was detected for this mutation. Always false when a conflict detection strateg... |
| `createTime` | `string` | The create time of the entity. This field will not be set after a 'delete'. |
| `key` | `Key` | The automatically allocated key. Set only when the mutation allocated a key. |
| `transformResults` | `array<Value>` | The results of applying each PropertyTransform, in the same order of the request. |
| `updateTime` | `string` | The update time of the entity on the server after processing the mutation. If the mutation doesn'... |
| `version` | `string` | The version of the entity on the server after processing the mutation. If the mutation doesn't ch... |

### `PartitionId`

A partition ID identifies a grouping of entities. The grouping is always by project and namespace, however the namespace ID may be empty. A partition ID contains several dimensions: project ID and namespace ID. Partition dimensions: - May be `""`. - Must be valid UTF-8 bytes. - Must have values that match regex `[A-Za-z\d\.\-_]{1,100}` If the value of any dimension matches regex `__.*__`, the partition is reserved/read-only. A reserved/read-only partition ID is forbidden in certain documented contexts. Foreign partition IDs (in which the project ID does not match the context project ID ) are discouraged. Reads and writes of foreign partition IDs may fail if the project is not in an active state.

| Property | Type | Description |
|----------|------|-------------|
| `databaseId` | `string` | If not empty, the ID of the database to which the entities belong. |
| `namespaceId` | `string` | If not empty, the ID of the namespace to which the entities belong. |
| `projectId` | `string` | The ID of the project to which the entities belong. |

### `PathElement`

A (kind, ID/name) pair used to construct a key path. If either name or ID is set, the element is complete. If neither is set, the element is incomplete.

| Property | Type | Description |
|----------|------|-------------|
| `id` | `string` | The auto-allocated ID of the entity. Never equal to zero. Values less than zero are discouraged a... |
| `kind` | `string` | The kind of the entity. A kind matching regex `__.*__` is reserved/read-only. A kind must not con... |
| `name` | `string` | The name of the entity. A name matching regex `__.*__` is reserved/read-only. A name must not be ... |

### `PlanSummary`

Planning phase information for the query.

| Property | Type | Description |
|----------|------|-------------|
| `indexesUsed` | `array<object>` | The indexes selected for the query. For example: [ {"query_scope": "Collection", "properties": "(... |

### `Projection`

A representation of a property in a projection.

| Property | Type | Description |
|----------|------|-------------|
| `property` | `PropertyReference` | The property to project. |

### `PropertyFilter`

A filter on a specific property.

| Property | Type | Description |
|----------|------|-------------|
| `op` | `string` | The operator to filter by. |
| `property` | `PropertyReference` | The property to filter by. |
| `value` | `Value` | The value to compare the property to. |

### `PropertyMask`

The set of arbitrarily nested property paths used to restrict an operation to only a subset of properties in an entity.

| Property | Type | Description |
|----------|------|-------------|
| `paths` | `array<string>` | The paths to the properties covered by this mask. A path is a list of property names separated by... |

### `PropertyOrder`

The desired order for a specific property.

| Property | Type | Description |
|----------|------|-------------|
| `direction` | `string` | The direction to order by. Defaults to `ASCENDING`. |
| `property` | `PropertyReference` | The property to order by. |

### `PropertyReference`

A reference to a property relative to the kind expressions.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | A reference to a property. Requires: * MUST be a dot-delimited (`.`) string of segments, where ea... |

### `PropertyTransform`

A transformation of an entity property.

| Property | Type | Description |
|----------|------|-------------|
| `appendMissingElements` | `ArrayValue` | Appends the given elements in order if they are not already present in the current property value... |
| `increment` | `Value` | Adds the given value to the property's current value. This must be an integer or a double value. ... |
| `maximum` | `Value` | Sets the property to the maximum of its current value and the given value. This must be an intege... |
| `minimum` | `Value` | Sets the property to the minimum of its current value and the given value. This must be an intege... |
| `property` | `string` | Optional. The name of the property. Property paths (a list of property names separated by dots (`... |
| `removeAllFromArray` | `ArrayValue` | Removes all of the given elements from the array in the property. If the property is not an array... |
| `setToServerValue` | `string` | Sets the property to the given server value. |

### `Query`

A query for entities. The query stages are executed in the following order: 1. kind 2. filter 3. projection 4. order + start_cursor + end_cursor 5. offset 6. limit 7. find_nearest

| Property | Type | Description |
|----------|------|-------------|
| `distinctOn` | `array<PropertyReference>` | The properties to make distinct. The query results will contain the first result for each distinc... |
| `endCursor` | `string` | An ending point for the query results. Query cursors are returned in query result batches and [ca... |
| `filter` | `Filter` | The filter to apply. |
| `findNearest` | `FindNearest` | Optional. A potential Nearest Neighbors Search. Applies after all other filters and ordering. Fin... |
| `kind` | `array<KindExpression>` | The kinds to query (if empty, returns entities of all kinds). Currently at most 1 kind may be spe... |
| `limit` | `integer` | The maximum number of results to return. Applies after all other constraints. Optional. Unspecifi... |
| `offset` | `integer` | The number of results to skip. Applies before limit, but after all other constraints. Optional. M... |
| `order` | `array<PropertyOrder>` | The order to apply to the query results (if empty, order is unspecified). |
| `projection` | `array<Projection>` | The projection to return. Defaults to returning all properties. |
| `startCursor` | `string` | A starting point for the query results. Query cursors are returned in query result batches and [c... |

### `QueryResultBatch`

A batch of results produced by a query.

| Property | Type | Description |
|----------|------|-------------|
| `endCursor` | `string` | A cursor that points to the position after the last result in the batch. |
| `entityResultType` | `string` | The result type for every entity in `entity_results`. |
| `entityResults` | `array<EntityResult>` | The results for this batch. |
| `moreResults` | `string` | The state of the query after the current batch. |
| `readTime` | `string` | Read timestamp this batch was returned from. This applies to the range of results from the query'... |
| `skippedCursor` | `string` | A cursor that points to the position after the last skipped result. Will be set when `skipped_res... |
| `skippedResults` | `integer` | The number of results skipped, typically because of an offset. |
| `snapshotVersion` | `string` | The version number of the snapshot this batch was returned from. This applies to the range of res... |

### `ReadOnly`

Options specific to read-only transactions.

| Property | Type | Description |
|----------|------|-------------|
| `readTime` | `string` | Reads entities at the given time. This must be a microsecond precision timestamp within the past ... |

### `ReadOptions`

The options shared by read requests.

| Property | Type | Description |
|----------|------|-------------|
| `newTransaction` | `TransactionOptions` | Options for beginning a new transaction for this request. The new transaction identifier will be ... |
| `readConsistency` | `string` | The non-transactional read consistency to use. |
| `readTime` | `string` | Reads entities as they were at the given time. This value is only supported for Cloud Firestore i... |
| `transaction` | `string` | The identifier of the transaction in which to read. A transaction identifier is returned by a cal... |

### `ReadWrite`

Options specific to read / write transactions.

| Property | Type | Description |
|----------|------|-------------|
| `previousTransaction` | `string` | The transaction identifier of the transaction being retried. |

### `ReserveIdsRequest`

The request for Datastore.ReserveIds.

| Property | Type | Description |
|----------|------|-------------|
| `databaseId` | `string` | The ID of the database against which to make the request. '(default)' is not allowed; please use ... |
| `keys` | `array<Key>` | Required. A list of keys with complete key paths whose numeric IDs should not be auto-allocated. |

### `ReserveIdsResponse`

The response for Datastore.ReserveIds.

### `RollbackRequest`

The request for Datastore.Rollback.

| Property | Type | Description |
|----------|------|-------------|
| `databaseId` | `string` | The ID of the database against which to make the request. '(default)' is not allowed; please use ... |
| `transaction` | `string` | Required. The transaction identifier, returned by a call to Datastore.BeginTransaction. |

### `RollbackResponse`

The response for Datastore.Rollback. (an empty message).

### `RunAggregationQueryRequest`

The request for Datastore.RunAggregationQuery.

| Property | Type | Description |
|----------|------|-------------|
| `aggregationQuery` | `AggregationQuery` | The query to run. |
| `databaseId` | `string` | The ID of the database against which to make the request. '(default)' is not allowed; please use ... |
| `explainOptions` | `ExplainOptions` | Optional. Explain options for the query. If set, additional query statistics will be returned. If... |
| `gqlQuery` | `GqlQuery` | The GQL query to run. This query must be an aggregation query. |
| `partitionId` | `PartitionId` | Entities are partitioned into subsets, identified by a partition ID. Queries are scoped to a sing... |
| `readOptions` | `ReadOptions` | The options for this query. |

### `RunAggregationQueryResponse`

The response for Datastore.RunAggregationQuery.

| Property | Type | Description |
|----------|------|-------------|
| `batch` | `AggregationResultBatch` | A batch of aggregation results. Always present. |
| `explainMetrics` | `ExplainMetrics` | Query explain metrics. This is only present when the RunAggregationQueryRequest.explain_options i... |
| `query` | `AggregationQuery` | The parsed form of the `GqlQuery` from the request, if it was set. |
| `transaction` | `string` | The identifier of the transaction that was started as part of this RunAggregationQuery request. S... |

### `RunQueryRequest`

The request for Datastore.RunQuery.

| Property | Type | Description |
|----------|------|-------------|
| `databaseId` | `string` | The ID of the database against which to make the request. '(default)' is not allowed; please use ... |
| `explainOptions` | `ExplainOptions` | Optional. Explain options for the query. If set, additional query statistics will be returned. If... |
| `gqlQuery` | `GqlQuery` | The GQL query to run. This query must be a non-aggregation query. |
| `partitionId` | `PartitionId` | Entities are partitioned into subsets, identified by a partition ID. Queries are scoped to a sing... |
| `propertyMask` | `PropertyMask` | The properties to return. This field must not be set for a projection query. See LookupRequest.pr... |
| `query` | `Query` | The query to run. |
| `readOptions` | `ReadOptions` | The options for this query. |

### `RunQueryResponse`

The response for Datastore.RunQuery.

| Property | Type | Description |
|----------|------|-------------|
| `batch` | `QueryResultBatch` | A batch of query results. This is always present unless running a query under explain-only mode: ... |
| `explainMetrics` | `ExplainMetrics` | Query explain metrics. This is only present when the RunQueryRequest.explain_options is provided,... |
| `query` | `Query` | The parsed form of the `GqlQuery` from the request, if it was set. |
| `transaction` | `string` | The identifier of the transaction that was started as part of this RunQuery request. Set only whe... |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `Sum`

Sum of the values of the requested property. * Only numeric values will be aggregated. All non-numeric values including `NULL` are skipped. * If the aggregated values contain `NaN`, returns `NaN`. Infinity math follows IEEE-754 standards. * If the aggregated value set is empty, returns 0. * Returns a 64-bit integer if all aggregated numbers are integers and the sum result does not overflow. Otherwise, the result is returned as a double. Note that even if all the aggregated values are integers, the result is returned as a double if it cannot fit within a 64-bit signed integer. When this occurs, the returned value will lose precision. * When underflow occurs, floating-point aggregation is non-deterministic. This means that running the same query repeatedly without any changes to the underlying values could produce slightly different results each time. In those cases, values should be stored as integers over floating-point numbers.

| Property | Type | Description |
|----------|------|-------------|
| `property` | `PropertyReference` | The property to aggregate on. |

### `TransactionOptions`

Options for beginning a new transaction. Transactions can be created explicitly with calls to Datastore.BeginTransaction or implicitly by setting ReadOptions.new_transaction in read requests.

| Property | Type | Description |
|----------|------|-------------|
| `readOnly` | `ReadOnly` | The transaction should only allow reads. |
| `readWrite` | `ReadWrite` | The transaction should allow both reads and writes. |

### `Value`

A message that can hold any of the supported value types and associated metadata.

| Property | Type | Description |
|----------|------|-------------|
| `arrayValue` | `ArrayValue` | An array value. Cannot contain another array value. A `Value` instance that sets field `array_val... |
| `blobValue` | `string` | A blob value. May have at most 1,000,000 bytes. When `exclude_from_indexes` is false, may have at... |
| `booleanValue` | `boolean` | A boolean value. |
| `doubleValue` | `number` | A double value. |
| `entityValue` | `Entity` | An entity value. - May have no key. - May have a key with an incomplete key path. - May have a re... |
| `excludeFromIndexes` | `boolean` | If the value should be excluded from all indexes including those defined explicitly. |
| `geoPointValue` | `LatLng` | A geo point value representing a point on the surface of Earth. |
| `integerValue` | `string` | An integer value. |
| `keyValue` | `Key` | A key value. |
| `meaning` | `integer` | The `meaning` field should only be populated for backwards compatibility. |
| `nullValue` | `string` | A null value. |
| `stringValue` | `string` | A UTF-8 encoded string value. When `exclude_from_indexes` is false (it is indexed) , may have at ... |
| `timestampValue` | `string` | A timestamp value. When stored in the Datastore, precise only to microseconds; any additional pre... |

