# Cloud Firestore API - API Reference

**Version**: `v1` | **Methods**: 56 | **Schemas**: 133

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `firestore.projects.databases.delete` | DELETE | `v1/{+name}` | Deletes a database. |
| `firestore.projects.databases.create` | POST | `v1/{+parent}/databases` | Create a database. |
| `firestore.projects.databases.patch` | PATCH | `v1/{+name}` | Updates a database. |
| `firestore.projects.databases.exportDocuments` | POST | `v1/{+name}:exportDocuments` | Exports a copy of all or a subset of documents from Google Cloud Firestore to another storage sys... |
| `firestore.projects.databases.clone` | POST | `v1/{+parent}/databases:clone` | Creates a new database by cloning an existing one. The new database must be in the same cloud reg... |
| `firestore.projects.databases.bulkDeleteDocuments` | POST | `v1/{+name}:bulkDeleteDocuments` | Bulk deletes a subset of documents from Google Cloud Firestore. Documents created or updated afte... |
| `firestore.projects.databases.list` | GET | `v1/{+parent}/databases` | List all the databases in the project. |
| `firestore.projects.databases.restore` | POST | `v1/{+parent}/databases:restore` | Creates a new database by restoring from an existing backup. The new database must be in the same... |
| `firestore.projects.databases.get` | GET | `v1/{+name}` | Gets information about a database. |
| `firestore.projects.databases.importDocuments` | POST | `v1/{+name}:importDocuments` | Imports documents into Google Cloud Firestore. Existing documents with the same name are overwrit... |
| `firestore.projects.databases.userCreds.disable` | POST | `v1/{+name}:disable` | Disables a user creds. No-op if the user creds are already disabled. |
| `firestore.projects.databases.userCreds.get` | GET | `v1/{+name}` | Gets a user creds resource. Note that the returned resource does not contain the secret value its... |
| `firestore.projects.databases.userCreds.create` | POST | `v1/{+parent}/userCreds` | Create a user creds. |
| `firestore.projects.databases.userCreds.enable` | POST | `v1/{+name}:enable` | Enables a user creds. No-op if the user creds are already enabled. |
| `firestore.projects.databases.userCreds.list` | GET | `v1/{+parent}/userCreds` | List all user creds in the database. Note that the returned resource does not contain the secret ... |
| `firestore.projects.databases.userCreds.delete` | DELETE | `v1/{+name}` | Deletes a user creds. |
| `firestore.projects.databases.userCreds.resetPassword` | POST | `v1/{+name}:resetPassword` | Resets the password of a user creds. |
| `firestore.projects.databases.documents.listDocuments` | GET | `v1/{+parent}/{collectionId}` | Lists documents. |
| `firestore.projects.databases.documents.commit` | POST | `v1/{+database}/documents:commit` | Commits a transaction, while optionally updating documents. |
| `firestore.projects.databases.documents.listCollectionIds` | POST | `v1/{+parent}:listCollectionIds` | Lists all the collection IDs underneath a document. |
| `firestore.projects.databases.documents.rollback` | POST | `v1/{+database}/documents:rollback` | Rolls back a transaction. |
| `firestore.projects.databases.documents.runQuery` | POST | `v1/{+parent}:runQuery` | Runs a query. |
| `firestore.projects.databases.documents.delete` | DELETE | `v1/{+name}` | Deletes a document. |
| `firestore.projects.databases.documents.patch` | PATCH | `v1/{+name}` | Updates or inserts a document. |
| `firestore.projects.databases.documents.write` | POST | `v1/{+database}/documents:write` | Streams batches of document updates and deletes, in order. This method is only available via gRPC... |
| `firestore.projects.databases.documents.runAggregationQuery` | POST | `v1/{+parent}:runAggregationQuery` | Runs an aggregation query. Rather than producing Document results like Firestore.RunQuery, this A... |
| `firestore.projects.databases.documents.batchWrite` | POST | `v1/{+database}/documents:batchWrite` | Applies a batch of write operations. The BatchWrite method does not apply the write operations at... |
| `firestore.projects.databases.documents.list` | GET | `v1/{+parent}/{collectionId}` | Lists documents. |
| `firestore.projects.databases.documents.createDocument` | POST | `v1/{+parent}/{collectionId}` | Creates a new document. |
| `firestore.projects.databases.documents.executePipeline` | POST | `v1/{+database}/documents:executePipeline` | Executes a pipeline query. |
| `firestore.projects.databases.documents.partitionQuery` | POST | `v1/{+parent}:partitionQuery` | Partitions a query by returning partition cursors that can be used to run the query in parallel. ... |
| `firestore.projects.databases.documents.get` | GET | `v1/{+name}` | Gets a single document. |
| `firestore.projects.databases.documents.beginTransaction` | POST | `v1/{+database}/documents:beginTransaction` | Starts a new transaction. |
| `firestore.projects.databases.documents.batchGet` | POST | `v1/{+database}/documents:batchGet` | Gets multiple documents. Documents returned by this method are not guaranteed to be returned in t... |
| `firestore.projects.databases.documents.listen` | POST | `v1/{+database}/documents:listen` | Listens to changes. This method is only available via gRPC or WebChannel (not REST). |
| `firestore.projects.databases.backupSchedules.list` | GET | `v1/{+parent}/backupSchedules` | List backup schedules. |
| `firestore.projects.databases.backupSchedules.patch` | PATCH | `v1/{+name}` | Updates a backup schedule. |
| `firestore.projects.databases.backupSchedules.delete` | DELETE | `v1/{+name}` | Deletes a backup schedule. |
| `firestore.projects.databases.backupSchedules.get` | GET | `v1/{+name}` | Gets information about a backup schedule. |
| `firestore.projects.databases.backupSchedules.create` | POST | `v1/{+parent}/backupSchedules` | Creates a backup schedule on a database. At most two backup schedules can be configured on a data... |
| `firestore.projects.databases.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `firestore.projects.databases.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `firestore.projects.databases.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `firestore.projects.databases.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `firestore.projects.databases.collectionGroups.fields.patch` | PATCH | `v1/{+name}` | Updates a field configuration. Currently, field updates apply only to single field index configur... |
| `firestore.projects.databases.collectionGroups.fields.get` | GET | `v1/{+name}` | Gets the metadata and configuration for a Field. |
| `firestore.projects.databases.collectionGroups.fields.list` | GET | `v1/{+parent}/fields` | Lists the field configuration and metadata for this database. Currently, FirestoreAdmin.ListField... |
| `firestore.projects.databases.collectionGroups.indexes.list` | GET | `v1/{+parent}/indexes` | Lists composite indexes. |
| `firestore.projects.databases.collectionGroups.indexes.delete` | DELETE | `v1/{+name}` | Deletes a composite index. |
| `firestore.projects.databases.collectionGroups.indexes.get` | GET | `v1/{+name}` | Gets a composite index. |
| `firestore.projects.databases.collectionGroups.indexes.create` | POST | `v1/{+parent}/indexes` | Creates a composite index. This returns a google.longrunning.Operation which may be used to track... |
| `firestore.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `firestore.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `firestore.projects.locations.backups.list` | GET | `v1/{+parent}/backups` | Lists all the backups. |
| `firestore.projects.locations.backups.get` | GET | `v1/{+name}` | Gets information about a backup. |
| `firestore.projects.locations.backups.delete` | DELETE | `v1/{+name}` | Deletes a backup. |

### `firestore.projects.databases.delete`

**DELETE** `v1/{+name}`

Deletes a database.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the form `projects/{project_id}/databases/{database_id}` |
| `etag` | `string` | query | No | The current etag of the Database. If an etag is provided and does not match the current etag of the database, deletio... |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await firestore.databases.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.create`

**POST** `v1/{+parent}/databases`

Create a database.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. A parent name of the form `projects/{project_id}` |
| `databaseId` | `string` | query | No | Required. The ID to use for the database, which will become the final component of the database's resource name. This... |

**Request body**: `GoogleFirestoreAdminV1Database`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await firestore.databases.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.patch`

**PATCH** `v1/{+name}`

Updates a database.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource name of the Database. Format: `projects/{project}/databases/{database}` |
| `updateMask` | `string` | query | No | The list of fields to be updated. |

**Request body**: `GoogleFirestoreAdminV1Database`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await firestore.databases.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.exportDocuments`

**POST** `v1/{+name}:exportDocuments`

Exports a copy of all or a subset of documents from Google Cloud Firestore to another storage system, such as Google Cloud Storage. Recent updates to documents may not be reflected in the export. The export occurs in the background and its progress can be monitored and managed via the Operation resource that is created. The output of an export may only be used once the associated operation is done. If an export operation is cancelled before completion it may leave partial data behind in Google Cloud Storage. For more details on export behavior and output format, refer to: https://cloud.google.com/firestore/docs/manage-data/export-import

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Database to export. Should be of the form: `projects/{project_id}/databases/{database_id}`. |

**Request body**: `GoogleFirestoreAdminV1ExportDocumentsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await firestore.databases.exportDocuments({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.clone`

**POST** `v1/{+parent}/databases:clone`

Creates a new database by cloning an existing one. The new database must be in the same cloud region or multi-region location as the existing database. This behaves similar to FirestoreAdmin.CreateDatabase except instead of creating a new empty database, a new database is created with the database type, index configuration, and documents from an existing database. The long-running operation can be used to track the progress of the clone, with the Operation's metadata field type being the CloneDatabaseMetadata. The response type is the Database if the clone was successful. The new database is not readable or writeable until the LRO has completed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project to clone the database in. Format is `projects/{project_id}`. |

**Request body**: `GoogleFirestoreAdminV1CloneDatabaseRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await firestore.databases.clone({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.bulkDeleteDocuments`

**POST** `v1/{+name}:bulkDeleteDocuments`

Bulk deletes a subset of documents from Google Cloud Firestore. Documents created or updated after the underlying system starts to process the request will not be deleted. The bulk delete occurs in the background and its progress can be monitored and managed via the Operation resource that is created. For more details on bulk delete behavior, refer to: https://cloud.google.com/firestore/docs/manage-data/bulk-delete

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Database to operate. Should be of the form: `projects/{project_id}/databases/{database_id}`. |

**Request body**: `GoogleFirestoreAdminV1BulkDeleteDocumentsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await firestore.databases.bulkDeleteDocuments({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.list`

**GET** `v1/{+parent}/databases`

List all the databases in the project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. A parent name of the form `projects/{project_id}` |
| `showDeleted` | `boolean` | query | No | If true, also returns deleted resources. |

**Response**: `GoogleFirestoreAdminV1ListDatabasesResponse`

```typescript
const res = await firestore.databases.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.restore`

**POST** `v1/{+parent}/databases:restore`

Creates a new database by restoring from an existing backup. The new database must be in the same cloud region or multi-region location as the existing backup. This behaves similar to FirestoreAdmin.CreateDatabase except instead of creating a new empty database, a new database is created with the database type, index configuration, and documents from an existing backup. The long-running operation can be used to track the progress of the restore, with the Operation's metadata field type being the RestoreDatabaseMetadata. The response type is the Database if the restore was successful. The new database is not readable or writeable until the LRO has completed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project to restore the database in. Format is `projects/{project_id}`. |

**Request body**: `GoogleFirestoreAdminV1RestoreDatabaseRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await firestore.databases.restore({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.get`

**GET** `v1/{+name}`

Gets information about a database.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the form `projects/{project_id}/databases/{database_id}` |

**Response**: `GoogleFirestoreAdminV1Database`

```typescript
const res = await firestore.databases.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.importDocuments`

**POST** `v1/{+name}:importDocuments`

Imports documents into Google Cloud Firestore. Existing documents with the same name are overwritten. The import occurs in the background and its progress can be monitored and managed via the Operation resource that is created. If an ImportDocuments operation is cancelled, it is possible that a subset of the data has already been imported to Cloud Firestore.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Database to import into. Should be of the form: `projects/{project_id}/databases/{database_id}`. |

**Request body**: `GoogleFirestoreAdminV1ImportDocumentsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await firestore.databases.importDocuments({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.userCreds.disable`

**POST** `v1/{+name}:disable`

Disables a user creds. No-op if the user creds are already disabled.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the form `projects/{project_id}/databases/{database_id}/userCreds/{user_creds_id}` |

**Request body**: `GoogleFirestoreAdminV1DisableUserCredsRequest`

**Response**: `GoogleFirestoreAdminV1UserCreds`

```typescript
const res = await firestore.userCreds.disable({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.userCreds.get`

**GET** `v1/{+name}`

Gets a user creds resource. Note that the returned resource does not contain the secret value itself.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the form `projects/{project_id}/databases/{database_id}/userCreds/{user_creds_id}` |

**Response**: `GoogleFirestoreAdminV1UserCreds`

```typescript
const res = await firestore.userCreds.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.userCreds.create`

**POST** `v1/{+parent}/userCreds`

Create a user creds.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. A parent name of the form `projects/{project_id}/databases/{database_id}` |
| `userCredsId` | `string` | query | No | Required. The ID to use for the user creds, which will become the final component of the user creds's resource name. ... |

**Request body**: `GoogleFirestoreAdminV1UserCreds`

**Response**: `GoogleFirestoreAdminV1UserCreds`

```typescript
const res = await firestore.userCreds.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.userCreds.enable`

**POST** `v1/{+name}:enable`

Enables a user creds. No-op if the user creds are already enabled.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the form `projects/{project_id}/databases/{database_id}/userCreds/{user_creds_id}` |

**Request body**: `GoogleFirestoreAdminV1EnableUserCredsRequest`

**Response**: `GoogleFirestoreAdminV1UserCreds`

```typescript
const res = await firestore.userCreds.enable({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.userCreds.list`

**GET** `v1/{+parent}/userCreds`

List all user creds in the database. Note that the returned resource does not contain the secret value itself.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. A parent database name of the form `projects/{project_id}/databases/{database_id}` |

**Response**: `GoogleFirestoreAdminV1ListUserCredsResponse`

```typescript
const res = await firestore.userCreds.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.userCreds.delete`

**DELETE** `v1/{+name}`

Deletes a user creds.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the form `projects/{project_id}/databases/{database_id}/userCreds/{user_creds_id}` |

**Response**: `Empty`

```typescript
const res = await firestore.userCreds.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.userCreds.resetPassword`

**POST** `v1/{+name}:resetPassword`

Resets the password of a user creds.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the form `projects/{project_id}/databases/{database_id}/userCreds/{user_creds_id}` |

**Request body**: `GoogleFirestoreAdminV1ResetUserPasswordRequest`

**Response**: `GoogleFirestoreAdminV1UserCreds`

```typescript
const res = await firestore.userCreds.resetPassword({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.documents.listDocuments`

**GET** `v1/{+parent}/{collectionId}`

Lists documents.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name. In the format: `projects/{project_id}/databases/{database_id}/documents` or `proj... |
| `collectionId` | `string` | path | Yes | Optional. The collection ID, relative to `parent`, to list. For example: `chatrooms` or `messages`. This is optional,... |
| `mask.fieldPaths` | `string` | query | No | The list of field paths in the mask. See Document.fields for a field path syntax reference. |
| `orderBy` | `string` | query | No | Optional. The optional ordering of the documents to return. For example: `priority desc, __name__ desc`. This mirrors... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of documents to return in a single response. Firestore may return fewer than this value. |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListDocuments` response. Provide this to retrieve the subsequent pa... |
| `readTime` | `string` | query | No | Perform the read at the provided time. This must be a microsecond precision timestamp within the past one hour, or if... |
| `showMissing` | `boolean` | query | No | If the list should show missing documents. A document is missing if it does not exist, but there are sub-documents ne... |
| `transaction` | `string` | query | No | Perform the read as part of an already active transaction. |

**Response**: `ListDocumentsResponse`

```typescript
const res = await firestore.documents.listDocuments({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.documents.commit`

**POST** `v1/{+database}/documents:commit`

Commits a transaction, while optionally updating documents.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `database` | `string` | path | Yes | Required. The database name. In the format: `projects/{project_id}/databases/{database_id}`. |

**Request body**: `CommitRequest`

**Response**: `CommitResponse`

```typescript
const res = await firestore.documents.commit({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.documents.listCollectionIds`

**POST** `v1/{+parent}:listCollectionIds`

Lists all the collection IDs underneath a document.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent document. In the format: `projects/{project_id}/databases/{database_id}/documents/{document_path... |

**Request body**: `ListCollectionIdsRequest`

**Response**: `ListCollectionIdsResponse`

```typescript
const res = await firestore.documents.listCollectionIds({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.documents.rollback`

**POST** `v1/{+database}/documents:rollback`

Rolls back a transaction.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `database` | `string` | path | Yes | Required. The database name. In the format: `projects/{project_id}/databases/{database_id}`. |

**Request body**: `RollbackRequest`

**Response**: `Empty`

```typescript
const res = await firestore.documents.rollback({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.documents.runQuery`

**POST** `v1/{+parent}:runQuery`

Runs a query.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name. In the format: `projects/{project_id}/databases/{database_id}/documents` or `proj... |

**Request body**: `RunQueryRequest`

**Response**: `RunQueryResponse`

```typescript
const res = await firestore.documents.runQuery({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.documents.delete`

**DELETE** `v1/{+name}`

Deletes a document.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Document to delete. In the format: `projects/{project_id}/databases/{database_id}/... |
| `currentDocument.exists` | `boolean` | query | No | When set to `true`, the target document must exist. When set to `false`, the target document must not exist. |
| `currentDocument.updateTime` | `string` | query | No | When set, the target document must exist and have been last updated at that time. Timestamp must be microsecond aligned. |

**Response**: `Empty`

```typescript
const res = await firestore.documents.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.documents.patch`

**PATCH** `v1/{+name}`

Updates or inserts a document.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource name of the document, for example `projects/{project_id}/databases/{database_id}/documents/{document_pat... |
| `currentDocument.exists` | `boolean` | query | No | When set to `true`, the target document must exist. When set to `false`, the target document must not exist. |
| `currentDocument.updateTime` | `string` | query | No | When set, the target document must exist and have been last updated at that time. Timestamp must be microsecond aligned. |
| `mask.fieldPaths` | `string` | query | No | The list of field paths in the mask. See Document.fields for a field path syntax reference. |
| `updateMask.fieldPaths` | `string` | query | No | The list of field paths in the mask. See Document.fields for a field path syntax reference. |

**Request body**: `Document`

**Response**: `Document`

```typescript
const res = await firestore.documents.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.documents.write`

**POST** `v1/{+database}/documents:write`

Streams batches of document updates and deletes, in order. This method is only available via gRPC or WebChannel (not REST).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `database` | `string` | path | Yes | Required. The database name. In the format: `projects/{project_id}/databases/{database_id}`. This is only required in... |

**Request body**: `WriteRequest`

**Response**: `WriteResponse`

```typescript
const res = await firestore.documents.write({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.documents.runAggregationQuery`

**POST** `v1/{+parent}:runAggregationQuery`

Runs an aggregation query. Rather than producing Document results like Firestore.RunQuery, this API allows running an aggregation to produce a series of AggregationResult server-side. High-Level Example: ``` -- Return the number of documents in table given a filter. SELECT COUNT(*) FROM ( SELECT * FROM k where a = true ); ```

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name. In the format: `projects/{project_id}/databases/{database_id}/documents` or `proj... |

**Request body**: `RunAggregationQueryRequest`

**Response**: `RunAggregationQueryResponse`

```typescript
const res = await firestore.documents.runAggregationQuery({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.documents.batchWrite`

**POST** `v1/{+database}/documents:batchWrite`

Applies a batch of write operations. The BatchWrite method does not apply the write operations atomically and can apply them out of order. Method does not allow more than one write per document. Each write succeeds or fails independently. See the BatchWriteResponse for the success status of each write. If you require an atomically applied set of writes, use Commit instead.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `database` | `string` | path | Yes | Required. The database name. In the format: `projects/{project_id}/databases/{database_id}`. |

**Request body**: `BatchWriteRequest`

**Response**: `BatchWriteResponse`

```typescript
const res = await firestore.documents.batchWrite({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.documents.list`

**GET** `v1/{+parent}/{collectionId}`

Lists documents.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name. In the format: `projects/{project_id}/databases/{database_id}/documents` or `proj... |
| `collectionId` | `string` | path | Yes | Optional. The collection ID, relative to `parent`, to list. For example: `chatrooms` or `messages`. This is optional,... |
| `mask.fieldPaths` | `string` | query | No | The list of field paths in the mask. See Document.fields for a field path syntax reference. |
| `orderBy` | `string` | query | No | Optional. The optional ordering of the documents to return. For example: `priority desc, __name__ desc`. This mirrors... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of documents to return in a single response. Firestore may return fewer than this value. |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListDocuments` response. Provide this to retrieve the subsequent pa... |
| `readTime` | `string` | query | No | Perform the read at the provided time. This must be a microsecond precision timestamp within the past one hour, or if... |
| `showMissing` | `boolean` | query | No | If the list should show missing documents. A document is missing if it does not exist, but there are sub-documents ne... |
| `transaction` | `string` | query | No | Perform the read as part of an already active transaction. |

**Response**: `ListDocumentsResponse`

```typescript
const res = await firestore.documents.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.documents.createDocument`

**POST** `v1/{+parent}/{collectionId}`

Creates a new document.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource. For example: `projects/{project_id}/databases/{database_id}/documents` or `projects/{p... |
| `collectionId` | `string` | path | Yes | Required. The collection ID, relative to `parent`, to list. For example: `chatrooms`. |
| `documentId` | `string` | query | No | The client-assigned document ID to use for this document. Optional. If not specified, an ID will be assigned by the s... |
| `mask.fieldPaths` | `string` | query | No | The list of field paths in the mask. See Document.fields for a field path syntax reference. |

**Request body**: `Document`

**Response**: `Document`

```typescript
const res = await firestore.documents.createDocument({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.documents.executePipeline`

**POST** `v1/{+database}/documents:executePipeline`

Executes a pipeline query.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `database` | `string` | path | Yes | Required. Database identifier, in the form `projects/{project}/databases/{database}`. |

**Request body**: `ExecutePipelineRequest`

**Response**: `ExecutePipelineResponse`

```typescript
const res = await firestore.documents.executePipeline({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.documents.partitionQuery`

**POST** `v1/{+parent}:partitionQuery`

Partitions a query by returning partition cursors that can be used to run the query in parallel. The returned partition cursors are split points that can be used by RunQuery as starting/end points for the query results.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource name. In the format: `projects/{project_id}/databases/{database_id}/documents`. Documen... |

**Request body**: `PartitionQueryRequest`

**Response**: `PartitionQueryResponse`

```typescript
const res = await firestore.documents.partitionQuery({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.documents.get`

**GET** `v1/{+name}`

Gets a single document.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The resource name of the Document to get. In the format: `projects/{project_id}/databases/{database_id}/doc... |
| `mask.fieldPaths` | `string` | query | No | The list of field paths in the mask. See Document.fields for a field path syntax reference. |
| `readTime` | `string` | query | No | Reads the version of the document at the given time. This must be a microsecond precision timestamp within the past o... |
| `transaction` | `string` | query | No | Reads the document in a transaction. |

**Response**: `Document`

```typescript
const res = await firestore.documents.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.documents.beginTransaction`

**POST** `v1/{+database}/documents:beginTransaction`

Starts a new transaction.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `database` | `string` | path | Yes | Required. The database name. In the format: `projects/{project_id}/databases/{database_id}`. |

**Request body**: `BeginTransactionRequest`

**Response**: `BeginTransactionResponse`

```typescript
const res = await firestore.documents.beginTransaction({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.documents.batchGet`

**POST** `v1/{+database}/documents:batchGet`

Gets multiple documents. Documents returned by this method are not guaranteed to be returned in the same order that they were requested.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `database` | `string` | path | Yes | Required. The database name. In the format: `projects/{project_id}/databases/{database_id}`. |

**Request body**: `BatchGetDocumentsRequest`

**Response**: `BatchGetDocumentsResponse`

```typescript
const res = await firestore.documents.batchGet({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.documents.listen`

**POST** `v1/{+database}/documents:listen`

Listens to changes. This method is only available via gRPC or WebChannel (not REST).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `database` | `string` | path | Yes | Required. The database name. In the format: `projects/{project_id}/databases/{database_id}`. |

**Request body**: `ListenRequest`

**Response**: `ListenResponse`

```typescript
const res = await firestore.documents.listen({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.backupSchedules.list`

**GET** `v1/{+parent}/backupSchedules`

List backup schedules.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent database. Format is `projects/{project}/databases/{database}`. |

**Response**: `GoogleFirestoreAdminV1ListBackupSchedulesResponse`

```typescript
const res = await firestore.backupSchedules.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.backupSchedules.patch`

**PATCH** `v1/{+name}`

Updates a backup schedule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Output only. The unique backup schedule identifier across all locations and databases for the given project. This wil... |
| `updateMask` | `string` | query | No | The list of fields to be updated. |

**Request body**: `GoogleFirestoreAdminV1BackupSchedule`

**Response**: `GoogleFirestoreAdminV1BackupSchedule`

```typescript
const res = await firestore.backupSchedules.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.backupSchedules.delete`

**DELETE** `v1/{+name}`

Deletes a backup schedule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the backup schedule. Format `projects/{project}/databases/{database}/backupSchedules/{backup_sc... |

**Response**: `Empty`

```typescript
const res = await firestore.backupSchedules.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.backupSchedules.get`

**GET** `v1/{+name}`

Gets information about a backup schedule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the backup schedule. Format `projects/{project}/databases/{database}/backupSchedules/{backup_sc... |

**Response**: `GoogleFirestoreAdminV1BackupSchedule`

```typescript
const res = await firestore.backupSchedules.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.backupSchedules.create`

**POST** `v1/{+parent}/backupSchedules`

Creates a backup schedule on a database. At most two backup schedules can be configured on a database, one daily backup schedule and one weekly backup schedule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent database. Format `projects/{project}/databases/{database}` |

**Request body**: `GoogleFirestoreAdminV1BackupSchedule`

**Response**: `GoogleFirestoreAdminV1BackupSchedule`

```typescript
const res = await firestore.backupSchedules.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.operations.list`

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
const res = await firestore.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await firestore.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `GoogleLongrunningCancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await firestore.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await firestore.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.collectionGroups.fields.patch`

**PATCH** `v1/{+name}`

Updates a field configuration. Currently, field updates apply only to single field index configuration. However, calls to FirestoreAdmin.UpdateField should provide a field mask to avoid changing any configuration that the caller isn't aware of. The field mask should be specified as: `{ paths: "index_config" }`. This call returns a google.longrunning.Operation which may be used to track the status of the field update. The metadata for the operation will be the type FieldOperationMetadata. To configure the default field settings for the database, use the special `Field` with resource name: `projects/{project_id}/databases/{database_id}/collectionGroups/__default__/fields/*`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A field name of the form: `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/f... |
| `updateMask` | `string` | query | No | A mask, relative to the field. If specified, only configuration specified by this field_mask will be updated in the f... |

**Request body**: `GoogleFirestoreAdminV1Field`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await firestore.fields.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.collectionGroups.fields.get`

**GET** `v1/{+name}`

Gets the metadata and configuration for a Field.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the form `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/fields/{... |

**Response**: `GoogleFirestoreAdminV1Field`

```typescript
const res = await firestore.fields.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.collectionGroups.fields.list`

**GET** `v1/{+parent}/fields`

Lists the field configuration and metadata for this database. Currently, FirestoreAdmin.ListFields only supports listing fields that have been explicitly overridden. To issue this query, call FirestoreAdmin.ListFields with the filter set to `indexConfig.usesAncestorConfig:false` or `ttlConfig:*`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. A parent name of the form `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}` |
| `filter` | `string` | query | No | The filter to apply to list results. Currently, FirestoreAdmin.ListFields only supports listing fields that have been... |
| `pageSize` | `integer` | query | No | The number of results to return. |
| `pageToken` | `string` | query | No | A page token, returned from a previous call to FirestoreAdmin.ListFields, that may be used to get the next page of re... |

**Response**: `GoogleFirestoreAdminV1ListFieldsResponse`

```typescript
const res = await firestore.fields.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.collectionGroups.indexes.list`

**GET** `v1/{+parent}/indexes`

Lists composite indexes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. A parent name of the form `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}` |
| `filter` | `string` | query | No | The filter to apply to list results. |
| `pageSize` | `integer` | query | No | The number of results to return. |
| `pageToken` | `string` | query | No | A page token, returned from a previous call to FirestoreAdmin.ListIndexes, that may be used to get the next page of r... |

**Response**: `GoogleFirestoreAdminV1ListIndexesResponse`

```typescript
const res = await firestore.indexes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.collectionGroups.indexes.delete`

**DELETE** `v1/{+name}`

Deletes a composite index.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the form `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/indexes/... |

**Response**: `Empty`

```typescript
const res = await firestore.indexes.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.collectionGroups.indexes.get`

**GET** `v1/{+name}`

Gets a composite index.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the form `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/indexes/... |

**Response**: `GoogleFirestoreAdminV1Index`

```typescript
const res = await firestore.indexes.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.databases.collectionGroups.indexes.create`

**POST** `v1/{+parent}/indexes`

Creates a composite index. This returns a google.longrunning.Operation which may be used to track the status of the creation. The metadata for the operation will be the type IndexOperationMetadata.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. A parent name of the form `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}` |

**Request body**: `GoogleFirestoreAdminV1Index`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await firestore.indexes.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await firestore.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.locations.list`

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
const res = await firestore.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.locations.backups.list`

**GET** `v1/{+parent}/backups`

Lists all the backups.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The location to list backups from. Format is `projects/{project}/locations/{location}`. Use `{location} = '... |
| `filter` | `string` | query | No | An expression that filters the list of returned backups. A filter expression consists of a field name, a comparison o... |

**Response**: `GoogleFirestoreAdminV1ListBackupsResponse`

```typescript
const res = await firestore.backups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.locations.backups.get`

**GET** `v1/{+name}`

Gets information about a backup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the backup to fetch. Format is `projects/{project}/locations/{location}/backups/{backup}`. |

**Response**: `GoogleFirestoreAdminV1Backup`

```typescript
const res = await firestore.backups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`
- `https://www.googleapis.com/auth/datastore`

---

### `firestore.projects.locations.backups.delete`

**DELETE** `v1/{+name}`

Deletes a backup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the backup to delete. format is `projects/{project}/locations/{location}/backups/{backup}`. |

**Response**: `Empty`

```typescript
const res = await firestore.backups.delete({
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
| `alias` | `string` | Optional. Optional name of the field to store the result of the aggregation into. If not provided... |
| `avg` | `Avg` | Average aggregator. |
| `count` | `Count` | Count aggregator. |
| `sum` | `Sum` | Sum aggregator. |

### `AggregationResult`

The result of a single bucket from a Firestore aggregation query. The keys of `aggregate_fields` are the same for all results in an aggregation query, unlike document queries which can have different fields present for each result.

| Property | Type | Description |
|----------|------|-------------|
| `aggregateFields` | `object` | The result of the aggregation functions, ex: `COUNT(*) AS total_docs`. The key is the alias assig... |

### `ArrayValue`

An array value.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<Value>` | Values in the array. |

### `Avg`

Average of the values of the requested field. * Only numeric values will be aggregated. All non-numeric values including `NULL` are skipped. * If the aggregated values contain `NaN`, returns `NaN`. Infinity math follows IEEE-754 standards. * If the aggregated value set is empty, returns `NULL`. * Always returns the result as a double.

| Property | Type | Description |
|----------|------|-------------|
| `field` | `FieldReference` | The field to aggregate on. |

### `BatchGetDocumentsRequest`

The request for Firestore.BatchGetDocuments.

| Property | Type | Description |
|----------|------|-------------|
| `documents` | `array<string>` | The names of the documents to retrieve. In the format: `projects/{project_id}/databases/{database... |
| `mask` | `DocumentMask` | The fields to return. If not set, returns all fields. If a document has a field that is not prese... |
| `newTransaction` | `TransactionOptions` | Starts a new transaction and reads the documents. Defaults to a read-only transaction. The new tr... |
| `readTime` | `string` | Reads documents as they were at the given time. This must be a microsecond precision timestamp wi... |
| `transaction` | `string` | Reads documents in a transaction. |

### `BatchGetDocumentsResponse`

The streamed response for Firestore.BatchGetDocuments.

| Property | Type | Description |
|----------|------|-------------|
| `found` | `Document` | A document that was requested. |
| `missing` | `string` | A document name that was requested but does not exist. In the format: `projects/{project_id}/data... |
| `readTime` | `string` | The time at which the document was read. This may be monotically increasing, in this case the pre... |
| `transaction` | `string` | The transaction that was started as part of this request. Will only be set in the first response,... |

### `BatchWriteRequest`

The request for Firestore.BatchWrite.

| Property | Type | Description |
|----------|------|-------------|
| `labels` | `object` | Labels associated with this batch write. |
| `writes` | `array<Write>` | The writes to apply. Method does not apply writes atomically and does not guarantee ordering. Eac... |

### `BatchWriteResponse`

The response from Firestore.BatchWrite.

| Property | Type | Description |
|----------|------|-------------|
| `status` | `array<Status>` | The status of applying the writes. This i-th write status corresponds to the i-th write in the re... |
| `writeResults` | `array<WriteResult>` | The result of applying the writes. This i-th write result corresponds to the i-th write in the re... |

### `BeginTransactionRequest`

The request for Firestore.BeginTransaction.

| Property | Type | Description |
|----------|------|-------------|
| `options` | `TransactionOptions` | The options for the transaction. Defaults to a read-write transaction. |

### `BeginTransactionResponse`

The response for Firestore.BeginTransaction.

| Property | Type | Description |
|----------|------|-------------|
| `transaction` | `string` | The transaction that was started. |

### `BitSequence`

A sequence of bits, encoded in a byte array. Each byte in the `bitmap` byte array stores 8 bits of the sequence. The only exception is the last byte, which may store 8 _or fewer_ bits. The `padding` defines the number of bits of the last byte to be ignored as "padding". The values of these "padding" bits are unspecified and must be ignored. To retrieve the first bit, bit 0, calculate: `(bitmap[0] & 0x01) != 0`. To retrieve the second bit, bit 1, calculate: `(bitmap[0] & 0x02) != 0`. To retrieve the third bit, bit 2, calculate: `(bitmap[0] & 0x04) != 0`. To retrieve the fourth bit, bit 3, calculate: `(bitmap[0] & 0x08) != 0`. To retrieve bit n, calculate: `(bitmap[n / 8] & (0x01 << (n % 8))) != 0`. The "size" of a `BitSequence` (the number of bits it contains) is calculated by this formula: `(bitmap.length * 8) - padding`.

| Property | Type | Description |
|----------|------|-------------|
| `bitmap` | `string` | The bytes that encode the bit sequence. May have a length of zero. |
| `padding` | `integer` | The number of bits of the last byte in `bitmap` to ignore as "padding". If the length of `bitmap`... |

### `BloomFilter`

A bloom filter (https://en.wikipedia.org/wiki/Bloom_filter). The bloom filter hashes the entries with MD5 and treats the resulting 128-bit hash as 2 distinct 64-bit hash values, interpreted as unsigned integers using 2's complement encoding. These two hash values, named `h1` and `h2`, are then used to compute the `hash_count` hash values using the formula, starting at `i=0`: h(i) = h1 + (i * h2) These resulting values are then taken modulo the number of bits in the bloom filter to get the bits of the bloom filter to test for the given entry.

| Property | Type | Description |
|----------|------|-------------|
| `bits` | `BitSequence` | The bloom filter data. |
| `hashCount` | `integer` | The number of hashes used by the algorithm. |

### `CollectionSelector`

A selection of a collection, such as `messages as m1`.

| Property | Type | Description |
|----------|------|-------------|
| `allDescendants` | `boolean` | When false, selects only collections that are immediate children of the `parent` specified in the... |
| `collectionId` | `string` | The collection ID. When set, selects only collections with this ID. |

### `CommitRequest`

The request for Firestore.Commit.

| Property | Type | Description |
|----------|------|-------------|
| `transaction` | `string` | If set, applies all writes in this transaction, and commits it. |
| `writes` | `array<Write>` | The writes to apply. Always executed atomically and in order. |

### `CommitResponse`

The response for Firestore.Commit.

| Property | Type | Description |
|----------|------|-------------|
| `commitTime` | `string` | The time at which the commit occurred. Any read with an equal or greater `read_time` is guarantee... |
| `writeResults` | `array<WriteResult>` | The result of applying the writes. This i-th write result corresponds to the i-th write in the re... |

### `CompositeFilter`

A filter that merges multiple other filters using the given operator.

| Property | Type | Description |
|----------|------|-------------|
| `filters` | `array<Filter>` | The list of filters to combine. Requires: * At least one filter is present. |
| `op` | `string` | The operator for combining multiple filters. |

### `Count`

Count of documents that match the query. The `COUNT(*)` aggregation function operates on the entire document so it does not require a field reference.

| Property | Type | Description |
|----------|------|-------------|
| `upTo` | `string` | Optional. Optional constraint on the maximum number of documents to count. This provides a way to... |

### `Cursor`

A position in a query result set.

| Property | Type | Description |
|----------|------|-------------|
| `before` | `boolean` | If the position is just before or just after the given values, relative to the sort order defined... |
| `values` | `array<Value>` | The values that represent a position, in the order they appear in the order by clause of a query.... |

### `Document`

A Firestore document. Must not exceed 1 MiB - 4 bytes.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time at which the document was created. This value increases monotonically when ... |
| `fields` | `object` | The document's fields. The map keys represent field names. Field names matching the regular expre... |
| `name` | `string` | The resource name of the document, for example `projects/{project_id}/databases/{database_id}/doc... |
| `updateTime` | `string` | Output only. The time at which the document was last changed. This value is initially set to the ... |

### `DocumentChange`

A Document has changed. May be the result of multiple writes, including deletes, that ultimately resulted in a new value for the Document. Multiple DocumentChange messages may be returned for the same logical change, if multiple targets are affected.

| Property | Type | Description |
|----------|------|-------------|
| `document` | `Document` | The new state of the Document. If `mask` is set, contains only fields that were updated or added. |
| `removedTargetIds` | `array<integer>` | A set of target IDs for targets that no longer match this document. |
| `targetIds` | `array<integer>` | A set of target IDs of targets that match this document. |

### `DocumentDelete`

A Document has been deleted. May be the result of multiple writes, including updates, the last of which deleted the Document. Multiple DocumentDelete messages may be returned for the same logical delete, if multiple targets are affected.

| Property | Type | Description |
|----------|------|-------------|
| `document` | `string` | The resource name of the Document that was deleted. |
| `readTime` | `string` | The read timestamp at which the delete was observed. Greater or equal to the `commit_time` of the... |
| `removedTargetIds` | `array<integer>` | A set of target IDs for targets that previously matched this entity. |

### `DocumentMask`

A set of field paths on a document. Used to restrict a get or update operation on a document to a subset of its fields. This is different from standard field masks, as this is always scoped to a Document, and takes in account the dynamic nature of Value.

| Property | Type | Description |
|----------|------|-------------|
| `fieldPaths` | `array<string>` | The list of field paths in the mask. See Document.fields for a field path syntax reference. |

### `DocumentRemove`

A Document has been removed from the view of the targets. Sent if the document is no longer relevant to a target and is out of view. Can be sent instead of a DocumentDelete or a DocumentChange if the server can not send the new value of the document. Multiple DocumentRemove messages may be returned for the same logical write or delete, if multiple targets are affected.

| Property | Type | Description |
|----------|------|-------------|
| `document` | `string` | The resource name of the Document that has gone out of view. |
| `readTime` | `string` | The read timestamp at which the remove was observed. Greater or equal to the `commit_time` of the... |
| `removedTargetIds` | `array<integer>` | A set of target IDs for targets that previously matched this document. |

### `DocumentTransform`

A transformation of a document.

| Property | Type | Description |
|----------|------|-------------|
| `document` | `string` | The name of the document to transform. |
| `fieldTransforms` | `array<FieldTransform>` | The list of transformations to apply to the fields of the document, in order. This must not be em... |

### `DocumentsTarget`

A target specified by a set of documents names.

| Property | Type | Description |
|----------|------|-------------|
| `documents` | `array<string>` | The names of the documents to retrieve. In the format: `projects/{project_id}/databases/{database... |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `ExecutePipelineRequest`

The request for Firestore.ExecutePipeline.

| Property | Type | Description |
|----------|------|-------------|
| `newTransaction` | `TransactionOptions` | Execute the pipeline in a new transaction. The identifier of the newly created transaction will b... |
| `readTime` | `string` | Execute the pipeline in a snapshot transaction at the given time. This must be a microsecond prec... |
| `structuredPipeline` | `StructuredPipeline` | A pipelined operation. |
| `transaction` | `string` | Run the query within an already active transaction. The value here is the opaque transaction ID t... |

### `ExecutePipelineResponse`

The response for Firestore.Execute.

| Property | Type | Description |
|----------|------|-------------|
| `executionTime` | `string` | The time at which the results are valid. This is a (not strictly) monotonically increasing value ... |
| `explainStats` | `ExplainStats` | Query explain stats. This is present on the **last** response if the request configured explain t... |
| `results` | `array<Document>` | An ordered batch of results returned executing a pipeline. The batch size is variable, and can ev... |
| `transaction` | `string` | Newly created transaction identifier. This field is only specified as part of the first response ... |

### `ExecutionStats`

Execution statistics for the query.

| Property | Type | Description |
|----------|------|-------------|
| `debugStats` | `object` | Debugging statistics from the execution of the query. Note that the debugging stats are subject t... |
| `executionDuration` | `string` | Total time to execute the query in the backend. |
| `readOperations` | `string` | Total billable read operations. |
| `resultsReturned` | `string` | Total number of results returned, including documents, projections, aggregation results, keys. |

### `ExistenceFilter`

A digest of all the documents that match a given target.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `integer` | The total count of documents that match target_id. If different from the count of documents in th... |
| `targetId` | `integer` | The target ID to which this filter applies. |
| `unchangedNames` | `BloomFilter` | A bloom filter that, despite its name, contains the UTF-8 byte encodings of the resource names of... |

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

### `ExplainStats`

Pipeline explain stats. Depending on the explain options in the original request, this can contain the optimized plan and / or execution stats.

| Property | Type | Description |
|----------|------|-------------|
| `data` | `object` | The format depends on the `output_format` options in the request. Currently there are two support... |

### `FieldFilter`

A filter on a specific field.

| Property | Type | Description |
|----------|------|-------------|
| `field` | `FieldReference` | The field to filter by. |
| `op` | `string` | The operator to filter by. |
| `value` | `Value` | The value to compare to. |

### `FieldReference`

A reference to a field in a document, ex: `stats.operations`.

| Property | Type | Description |
|----------|------|-------------|
| `fieldPath` | `string` | A reference to a field in a document. Requires: * MUST be a dot-delimited (`.`) string of segment... |

### `FieldTransform`

A transformation of a field of the document.

| Property | Type | Description |
|----------|------|-------------|
| `appendMissingElements` | `ArrayValue` | Append the given elements in order if they are not already present in the current field value. If... |
| `fieldPath` | `string` | The path of the field. See Document.fields for the field path syntax reference. |
| `increment` | `Value` | Adds the given value to the field's current value. This must be an integer or a double value. If ... |
| `maximum` | `Value` | Sets the field to the maximum of its current value and the given value. This must be an integer o... |
| `minimum` | `Value` | Sets the field to the minimum of its current value and the given value. This must be an integer o... |
| `removeAllFromArray` | `ArrayValue` | Remove all of the given elements from the array in the field. If the field is not an array, or if... |
| `setToServerValue` | `string` | Sets the field to the given server value. |

### `Filter`

A filter.

| Property | Type | Description |
|----------|------|-------------|
| `compositeFilter` | `CompositeFilter` | A composite filter. |
| `fieldFilter` | `FieldFilter` | A filter on a document field. |
| `unaryFilter` | `UnaryFilter` | A filter that takes exactly one argument. |

### `FindNearest`

Nearest Neighbors search config. The ordering provided by FindNearest supersedes the order_by stage. If multiple documents have the same vector distance, the returned document order is not guaranteed to be stable between queries.

| Property | Type | Description |
|----------|------|-------------|
| `distanceMeasure` | `string` | Required. The distance measure to use, required. |
| `distanceResultField` | `string` | Optional. Optional name of the field to output the result of the vector distance calculation. Mus... |
| `distanceThreshold` | `number` | Optional. Option to specify a threshold for which no less similar documents will be returned. The... |
| `limit` | `integer` | Required. The number of nearest neighbors to return. Must be a positive integer of no more than 1... |
| `queryVector` | `Value` | Required. The query vector that we are searching on. Must be a vector of no more than 2048 dimens... |
| `vectorField` | `FieldReference` | Required. An indexed vector field to search upon. Only documents which contain vectors whose dime... |

### `Function`

Represents an unevaluated scalar expression. For example, the expression `like(user_name, "%alice%")` is represented as: ``` name: "like" args { field_reference: "user_name" } args { string_value: "%alice%" } ```

| Property | Type | Description |
|----------|------|-------------|
| `args` | `array<Value>` | Optional. Ordered list of arguments the given function expects. |
| `name` | `string` | Required. The name of the function to evaluate. **Requires:** * must be in snake case (lower case... |
| `options` | `object` | Optional. Optional named arguments that certain functions may support. |

### `GoogleFirestoreAdminV1Backup`

A Backup of a Cloud Firestore Database. The backup contains all documents and index configurations for the given database at a specific point in time.

| Property | Type | Description |
|----------|------|-------------|
| `database` | `string` | Output only. Name of the Firestore database that the backup is from. Format is `projects/{project... |
| `databaseUid` | `string` | Output only. The system-generated UUID4 for the Firestore database that the backup is from. |
| `expireTime` | `string` | Output only. The timestamp at which this backup expires. |
| `name` | `string` | Output only. The unique resource name of the Backup. Format is `projects/{project}/locations/{loc... |
| `snapshotTime` | `string` | Output only. The backup contains an externally consistent copy of the database at this time. |
| `state` | `string` | Output only. The current state of the backup. |
| `stats` | `GoogleFirestoreAdminV1Stats` | Output only. Statistics about the backup. This data only becomes available after the backup is fu... |

### `GoogleFirestoreAdminV1BackupSchedule`

A backup schedule for a Cloud Firestore Database. This resource is owned by the database it is backing up, and is deleted along with the database. The actual backups are not though.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The timestamp at which this backup schedule was created and effective since. No back... |
| `dailyRecurrence` | `GoogleFirestoreAdminV1DailyRecurrence` | For a schedule that runs daily. |
| `name` | `string` | Output only. The unique backup schedule identifier across all locations and databases for the giv... |
| `retention` | `string` | At what relative time in the future, compared to its creation time, the backup should be deleted,... |
| `updateTime` | `string` | Output only. The timestamp at which this backup schedule was most recently updated. When a backup... |
| `weeklyRecurrence` | `GoogleFirestoreAdminV1WeeklyRecurrence` | For a schedule that runs weekly on a specific day. |

### `GoogleFirestoreAdminV1BackupSource`

Information about a backup that was used to restore a database.

| Property | Type | Description |
|----------|------|-------------|
| `backup` | `string` | The resource name of the backup that was used to restore this database. Format: `projects/{projec... |

### `GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata`

Metadata for google.longrunning.Operation results from FirestoreAdmin.BulkDeleteDocuments.

| Property | Type | Description |
|----------|------|-------------|
| `collectionIds` | `array<string>` | The IDs of the collection groups that are being deleted. |
| `endTime` | `string` | The time this operation completed. Will be unset if operation still in progress. |
| `namespaceIds` | `array<string>` | Which namespace IDs are being deleted. |
| `operationState` | `string` | The state of the operation. |
| `progressBytes` | `GoogleFirestoreAdminV1Progress` | The progress, in bytes, of this operation. |
| `progressDocuments` | `GoogleFirestoreAdminV1Progress` | The progress, in documents, of this operation. |
| `snapshotTime` | `string` | The timestamp that corresponds to the version of the database that is being read to get the list ... |
| `startTime` | `string` | The time this operation started. |

### `GoogleFirestoreAdminV1BulkDeleteDocumentsRequest`

The request for FirestoreAdmin.BulkDeleteDocuments. When both collection_ids and namespace_ids are set, only documents satisfying both conditions will be deleted. Requests with namespace_ids and collection_ids both empty will be rejected. Please use FirestoreAdmin.DeleteDatabase instead.

| Property | Type | Description |
|----------|------|-------------|
| `collectionIds` | `array<string>` | Optional. IDs of the collection groups to delete. Unspecified means all collection groups. Each c... |
| `namespaceIds` | `array<string>` | Optional. Namespaces to delete. An empty list means all namespaces. This is the recommended usage... |

### `GoogleFirestoreAdminV1CloneDatabaseMetadata`

Metadata for the long-running operation from the CloneDatabase request.

| Property | Type | Description |
|----------|------|-------------|
| `database` | `string` | The name of the database being cloned to. |
| `endTime` | `string` | The time the clone finished, unset for ongoing clones. |
| `operationState` | `string` | The operation state of the clone. |
| `pitrSnapshot` | `GoogleFirestoreAdminV1PitrSnapshot` | The snapshot from which this database was cloned. |
| `progressPercentage` | `GoogleFirestoreAdminV1Progress` | How far along the clone is as an estimated percentage of remaining time. |
| `startTime` | `string` | The time the clone was started. |

### `GoogleFirestoreAdminV1CloneDatabaseRequest`

The request message for FirestoreAdmin.CloneDatabase.

| Property | Type | Description |
|----------|------|-------------|
| `databaseId` | `string` | Required. The ID to use for the database, which will become the final component of the database's... |
| `encryptionConfig` | `GoogleFirestoreAdminV1EncryptionConfig` | Optional. Encryption configuration for the cloned database. If this field is not specified, the c... |
| `pitrSnapshot` | `GoogleFirestoreAdminV1PitrSnapshot` | Required. Specification of the PITR data to clone from. The source database must exist. The clone... |
| `tags` | `object` | Optional. Immutable. Tags to be bound to the cloned database. The tags should be provided in the ... |

### `GoogleFirestoreAdminV1CmekConfig`

The CMEK (Customer Managed Encryption Key) configuration for a Firestore database. If not present, the database is secured by the default Google encryption key.

| Property | Type | Description |
|----------|------|-------------|
| `activeKeyVersion` | `array<string>` | Output only. Currently in-use [KMS key versions](https://cloud.google.com/kms/docs/resource-hiera... |
| `kmsKeyName` | `string` | Required. Only keys in the same location as this database are allowed to be used for encryption. ... |

### `GoogleFirestoreAdminV1CreateDatabaseMetadata`

Metadata related to the create database operation.

### `GoogleFirestoreAdminV1CustomerManagedEncryptionOptions`

The configuration options for using CMEK (Customer Managed Encryption Key) encryption.

| Property | Type | Description |
|----------|------|-------------|
| `kmsKeyName` | `string` | Required. Only keys in the same location as the database are allowed to be used for encryption. F... |

### `GoogleFirestoreAdminV1DailyRecurrence`

Represents a recurring schedule that runs every day. The time zone is UTC.

### `GoogleFirestoreAdminV1Database`

A Cloud Firestore Database.

| Property | Type | Description |
|----------|------|-------------|
| `appEngineIntegrationMode` | `string` | The App Engine integration mode to use for this database. |
| `cmekConfig` | `GoogleFirestoreAdminV1CmekConfig` | Optional. Presence indicates CMEK is enabled for this database. |
| `concurrencyMode` | `string` | The concurrency control mode to use for this database. If unspecified in a CreateDatabase request... |
| `createTime` | `string` | Output only. The timestamp at which this database was created. Databases created before 2016 do n... |
| `databaseEdition` | `string` | Immutable. The edition of the database. |
| `deleteProtectionState` | `string` | State of delete protection for the database. |
| `deleteTime` | `string` | Output only. The timestamp at which this database was deleted. Only set if the database has been ... |
| `earliestVersionTime` | `string` | Output only. The earliest timestamp at which older versions of the data can be read from the data... |
| `etag` | `string` | This checksum is computed by the server based on the value of other fields, and may be sent on up... |
| `firestoreDataAccessMode` | `string` | Optional. The Firestore API data access mode to use for this database. If not set on write: - the... |
| `freeTier` | `boolean` | Output only. Background: Free tier is the ability of a Firestore database to use a small amount o... |
| `keyPrefix` | `string` | Output only. The key_prefix for this database. This key_prefix is used, in combination with the p... |
| `locationId` | `string` | The location of the database. Available locations are listed at https://cloud.google.com/firestor... |
| `mongodbCompatibleDataAccessMode` | `string` | Optional. The MongoDB compatible API data access mode to use for this database. If not set on wri... |
| `name` | `string` | The resource name of the Database. Format: `projects/{project}/databases/{database}` |
| `pointInTimeRecoveryEnablement` | `string` | Whether to enable the PITR feature on this database. |
| `previousId` | `string` | Output only. The database resource's prior database ID. This field is only populated for deleted ... |
| `realtimeUpdatesMode` | `string` | Immutable. The default Realtime Updates mode to use for this database. |
| `sourceInfo` | `GoogleFirestoreAdminV1SourceInfo` | Output only. Information about the provenance of this database. |
| `tags` | `object` | Optional. Input only. Immutable. Tag keys/values directly bound to this resource. For example: "1... |
| `type` | `string` | The type of the database. See https://cloud.google.com/datastore/docs/firestore-or-datastore for ... |
| `uid` | `string` | Output only. The system-generated UUID4 for this Database. |
| `updateTime` | `string` | Output only. The timestamp at which this database was most recently updated. Note this only inclu... |
| `versionRetentionPeriod` | `string` | Output only. The period during which past versions of data are retained in the database. Any read... |

### `GoogleFirestoreAdminV1DeleteDatabaseMetadata`

Metadata related to the delete database operation.

### `GoogleFirestoreAdminV1DisableUserCredsRequest`

The request for FirestoreAdmin.DisableUserCreds.

### `GoogleFirestoreAdminV1EnableUserCredsRequest`

The request for FirestoreAdmin.EnableUserCreds.

### `GoogleFirestoreAdminV1EncryptionConfig`

Encryption configuration for a new database being created from another source. The source could be a Backup or a PitrSnapshot.

| Property | Type | Description |
|----------|------|-------------|
| `customerManagedEncryption` | `GoogleFirestoreAdminV1CustomerManagedEncryptionOptions` | Use Customer Managed Encryption Keys (CMEK) for encryption. |
| `googleDefaultEncryption` | `GoogleFirestoreAdminV1GoogleDefaultEncryptionOptions` | Use Google default encryption. |
| `useSourceEncryption` | `GoogleFirestoreAdminV1SourceEncryptionOptions` | The database will use the same encryption configuration as the source. |

### `GoogleFirestoreAdminV1ExportDocumentsMetadata`

Metadata for google.longrunning.Operation results from FirestoreAdmin.ExportDocuments.

| Property | Type | Description |
|----------|------|-------------|
| `collectionIds` | `array<string>` | Which collection IDs are being exported. |
| `endTime` | `string` | The time this operation completed. Will be unset if operation still in progress. |
| `namespaceIds` | `array<string>` | Which namespace IDs are being exported. |
| `operationState` | `string` | The state of the export operation. |
| `outputUriPrefix` | `string` | Where the documents are being exported to. |
| `progressBytes` | `GoogleFirestoreAdminV1Progress` | The progress, in bytes, of this operation. |
| `progressDocuments` | `GoogleFirestoreAdminV1Progress` | The progress, in documents, of this operation. |
| `snapshotTime` | `string` | The timestamp that corresponds to the version of the database that is being exported. If unspecif... |
| `startTime` | `string` | The time this operation started. |

### `GoogleFirestoreAdminV1ExportDocumentsRequest`

The request for FirestoreAdmin.ExportDocuments.

| Property | Type | Description |
|----------|------|-------------|
| `collectionIds` | `array<string>` | IDs of the collection groups to export. Unspecified means all collection groups. Each collection ... |
| `namespaceIds` | `array<string>` | An empty list represents all namespaces. This is the preferred usage for databases that don't use... |
| `outputUriPrefix` | `string` | The output URI. Currently only supports Google Cloud Storage URIs of the form: `gs://BUCKET_NAME[... |
| `snapshotTime` | `string` | The timestamp that corresponds to the version of the database to be exported. The timestamp must ... |

### `GoogleFirestoreAdminV1ExportDocumentsResponse`

Returned in the google.longrunning.Operation response field.

| Property | Type | Description |
|----------|------|-------------|
| `outputUriPrefix` | `string` | Location of the output files. This can be used to begin an import into Cloud Firestore (this proj... |

### `GoogleFirestoreAdminV1Field`

Represents a single field in the database. Fields are grouped by their "Collection Group", which represent all collections in the database with the same ID.

| Property | Type | Description |
|----------|------|-------------|
| `indexConfig` | `GoogleFirestoreAdminV1IndexConfig` | The index configuration for this field. If unset, field indexing will revert to the configuration... |
| `name` | `string` | Required. A field name of the form: `projects/{project_id}/databases/{database_id}/collectionGrou... |
| `ttlConfig` | `GoogleFirestoreAdminV1TtlConfig` | The TTL configuration for this `Field`. Setting or unsetting this will enable or disable the TTL ... |

### `GoogleFirestoreAdminV1FieldOperationMetadata`

Metadata for google.longrunning.Operation results from FirestoreAdmin.UpdateField.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | The time this operation completed. Will be unset if operation still in progress. |
| `field` | `string` | The field resource that this operation is acting on. For example: `projects/{project_id}/database... |
| `indexConfigDeltas` | `array<GoogleFirestoreAdminV1IndexConfigDelta>` | A list of IndexConfigDelta, which describe the intent of this operation. |
| `progressBytes` | `GoogleFirestoreAdminV1Progress` | The progress, in bytes, of this operation. |
| `progressDocuments` | `GoogleFirestoreAdminV1Progress` | The progress, in documents, of this operation. |
| `startTime` | `string` | The time this operation started. |
| `state` | `string` | The state of the operation. |
| `ttlConfigDelta` | `GoogleFirestoreAdminV1TtlConfigDelta` | Describes the deltas of TTL configuration. |

### `GoogleFirestoreAdminV1FlatIndex`

An index that stores vectors in a flat data structure, and supports exhaustive search.

### `GoogleFirestoreAdminV1GoogleDefaultEncryptionOptions`

The configuration options for using Google default encryption.

### `GoogleFirestoreAdminV1ImportDocumentsMetadata`

Metadata for google.longrunning.Operation results from FirestoreAdmin.ImportDocuments.

| Property | Type | Description |
|----------|------|-------------|
| `collectionIds` | `array<string>` | Which collection IDs are being imported. |
| `endTime` | `string` | The time this operation completed. Will be unset if operation still in progress. |
| `inputUriPrefix` | `string` | The location of the documents being imported. |
| `namespaceIds` | `array<string>` | Which namespace IDs are being imported. |
| `operationState` | `string` | The state of the import operation. |
| `progressBytes` | `GoogleFirestoreAdminV1Progress` | The progress, in bytes, of this operation. |
| `progressDocuments` | `GoogleFirestoreAdminV1Progress` | The progress, in documents, of this operation. |
| `startTime` | `string` | The time this operation started. |

### `GoogleFirestoreAdminV1ImportDocumentsRequest`

The request for FirestoreAdmin.ImportDocuments.

| Property | Type | Description |
|----------|------|-------------|
| `collectionIds` | `array<string>` | IDs of the collection groups to import. Unspecified means all collection groups that were include... |
| `inputUriPrefix` | `string` | Location of the exported files. This must match the output_uri_prefix of an ExportDocumentsRespon... |
| `namespaceIds` | `array<string>` | An empty list represents all namespaces. This is the preferred usage for databases that don't use... |

### `GoogleFirestoreAdminV1Index`

Cloud Firestore indexes enable simple and complex queries against documents in a database.

| Property | Type | Description |
|----------|------|-------------|
| `apiScope` | `string` | The API scope supported by this index. |
| `density` | `string` | Immutable. The density configuration of the index. |
| `fields` | `array<GoogleFirestoreAdminV1IndexField>` | The fields supported by this index. For composite indexes, this requires a minimum of 2 and a max... |
| `multikey` | `boolean` | Optional. Whether the index is multikey. By default, the index is not multikey. For non-multikey ... |
| `name` | `string` | Output only. A server defined name for this index. The form of this name for composite indexes wi... |
| `queryScope` | `string` | Indexes with a collection query scope specified allow queries against a collection that is the ch... |
| `shardCount` | `integer` | Optional. The number of shards for the index. |
| `state` | `string` | Output only. The serving state of the index. |
| `unique` | `boolean` | Optional. Whether it is an unique index. Unique index ensures all values for the indexed field(s)... |

### `GoogleFirestoreAdminV1IndexConfig`

The index configuration for this field.

| Property | Type | Description |
|----------|------|-------------|
| `ancestorField` | `string` | Output only. Specifies the resource name of the `Field` from which this field's index configurati... |
| `indexes` | `array<GoogleFirestoreAdminV1Index>` | The indexes supported for this field. |
| `reverting` | `boolean` | Output only When true, the `Field`'s index configuration is in the process of being reverted. Onc... |
| `usesAncestorConfig` | `boolean` | Output only. When true, the `Field`'s index configuration is set from the configuration specified... |

### `GoogleFirestoreAdminV1IndexConfigDelta`

Information about an index configuration change.

| Property | Type | Description |
|----------|------|-------------|
| `changeType` | `string` | Specifies how the index is changing. |
| `index` | `GoogleFirestoreAdminV1Index` | The index being changed. |

### `GoogleFirestoreAdminV1IndexField`

A field in an index. The field_path describes which field is indexed, the value_mode describes how the field value is indexed.

| Property | Type | Description |
|----------|------|-------------|
| `arrayConfig` | `string` | Indicates that this field supports operations on `array_value`s. |
| `fieldPath` | `string` | Can be __name__. For single field indexes, this must match the name of the field or may be omitted. |
| `order` | `string` | Indicates that this field supports ordering by the specified order or comparing using =, !=, <, <... |
| `vectorConfig` | `GoogleFirestoreAdminV1VectorConfig` | Indicates that this field supports nearest neighbor and distance operations on vector. |

### `GoogleFirestoreAdminV1IndexOperationMetadata`

Metadata for google.longrunning.Operation results from FirestoreAdmin.CreateIndex.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | The time this operation completed. Will be unset if operation still in progress. |
| `index` | `string` | The index resource that this operation is acting on. For example: `projects/{project_id}/database... |
| `progressBytes` | `GoogleFirestoreAdminV1Progress` | The progress, in bytes, of this operation. |
| `progressDocuments` | `GoogleFirestoreAdminV1Progress` | The progress, in documents, of this operation. |
| `startTime` | `string` | The time this operation started. |
| `state` | `string` | The state of the operation. |

### `GoogleFirestoreAdminV1ListBackupSchedulesResponse`

The response for FirestoreAdmin.ListBackupSchedules.

| Property | Type | Description |
|----------|------|-------------|
| `backupSchedules` | `array<GoogleFirestoreAdminV1BackupSchedule>` | List of all backup schedules. |

### `GoogleFirestoreAdminV1ListBackupsResponse`

The response for FirestoreAdmin.ListBackups.

| Property | Type | Description |
|----------|------|-------------|
| `backups` | `array<GoogleFirestoreAdminV1Backup>` | List of all backups for the project. |
| `unreachable` | `array<string>` | List of locations that existing backups were not able to be fetched from. Instead of failing the ... |

### `GoogleFirestoreAdminV1ListDatabasesResponse`

The list of databases for a project.

| Property | Type | Description |
|----------|------|-------------|
| `databases` | `array<GoogleFirestoreAdminV1Database>` | The databases in the project. |
| `unreachable` | `array<string>` | In the event that data about individual databases cannot be listed they will be recorded here. An... |

### `GoogleFirestoreAdminV1ListFieldsResponse`

The response for FirestoreAdmin.ListFields.

| Property | Type | Description |
|----------|------|-------------|
| `fields` | `array<GoogleFirestoreAdminV1Field>` | The requested fields. |
| `nextPageToken` | `string` | A page token that may be used to request another page of results. If blank, this is the last page. |

### `GoogleFirestoreAdminV1ListIndexesResponse`

The response for FirestoreAdmin.ListIndexes.

| Property | Type | Description |
|----------|------|-------------|
| `indexes` | `array<GoogleFirestoreAdminV1Index>` | The requested indexes. |
| `nextPageToken` | `string` | A page token that may be used to request another page of results. If blank, this is the last page. |

### `GoogleFirestoreAdminV1ListUserCredsResponse`

The response for FirestoreAdmin.ListUserCreds.

| Property | Type | Description |
|----------|------|-------------|
| `userCreds` | `array<GoogleFirestoreAdminV1UserCreds>` | The user creds for the database. |

### `GoogleFirestoreAdminV1LocationMetadata`

The metadata message for google.cloud.location.Location.metadata.

### `GoogleFirestoreAdminV1PitrSnapshot`

A consistent snapshot of a database at a specific point in time. A PITR (Point-in-time recovery) snapshot with previous versions of a database's data is available for every minute up to the associated database's data retention period. If the PITR feature is enabled, the retention period is 7 days; otherwise, it is one hour.

| Property | Type | Description |
|----------|------|-------------|
| `database` | `string` | Required. The name of the database that this was a snapshot of. Format: `projects/{project}/datab... |
| `databaseUid` | `string` | Output only. Public UUID of the database the snapshot was associated with. |
| `snapshotTime` | `string` | Required. Snapshot time of the database. |

### `GoogleFirestoreAdminV1Progress`

Describes the progress of the operation. Unit of work is generic and must be interpreted based on where Progress is used.

| Property | Type | Description |
|----------|------|-------------|
| `completedWork` | `string` | The amount of work completed. |
| `estimatedWork` | `string` | The amount of work estimated. |

### `GoogleFirestoreAdminV1ResetUserPasswordRequest`

The request for FirestoreAdmin.ResetUserPassword.

### `GoogleFirestoreAdminV1ResourceIdentity`

Describes a Resource Identity principal.

| Property | Type | Description |
|----------|------|-------------|
| `principal` | `string` | Output only. Principal identifier string. See: https://cloud.google.com/iam/docs/principal-identi... |

### `GoogleFirestoreAdminV1RestoreDatabaseMetadata`

Metadata for the long-running operation from the RestoreDatabase request.

| Property | Type | Description |
|----------|------|-------------|
| `backup` | `string` | The name of the backup restoring from. |
| `database` | `string` | The name of the database being restored to. |
| `endTime` | `string` | The time the restore finished, unset for ongoing restores. |
| `operationState` | `string` | The operation state of the restore. |
| `progressPercentage` | `GoogleFirestoreAdminV1Progress` | How far along the restore is as an estimated percentage of remaining time. |
| `startTime` | `string` | The time the restore was started. |

### `GoogleFirestoreAdminV1RestoreDatabaseRequest`

The request message for FirestoreAdmin.RestoreDatabase.

| Property | Type | Description |
|----------|------|-------------|
| `backup` | `string` | Required. Backup to restore from. Must be from the same project as the parent. The restored datab... |
| `databaseId` | `string` | Required. The ID to use for the database, which will become the final component of the database's... |
| `encryptionConfig` | `GoogleFirestoreAdminV1EncryptionConfig` | Optional. Encryption configuration for the restored database. If this field is not specified, the... |
| `tags` | `object` | Optional. Immutable. Tags to be bound to the restored database. The tags should be provided in th... |

### `GoogleFirestoreAdminV1SourceEncryptionOptions`

The configuration options for using the same encryption method as the source.

### `GoogleFirestoreAdminV1SourceInfo`

Information about the provenance of this database.

| Property | Type | Description |
|----------|------|-------------|
| `backup` | `GoogleFirestoreAdminV1BackupSource` | If set, this database was restored from the specified backup (or a snapshot thereof). |
| `operation` | `string` | The associated long-running operation. This field may not be set after the operation has complete... |

### `GoogleFirestoreAdminV1Stats`

Backup specific statistics.

| Property | Type | Description |
|----------|------|-------------|
| `documentCount` | `string` | Output only. The total number of documents contained in the backup. |
| `indexCount` | `string` | Output only. The total number of index entries contained in the backup. |
| `sizeBytes` | `string` | Output only. Summation of the size of all documents and index entries in the backup, measured in ... |

### `GoogleFirestoreAdminV1TtlConfig`

The TTL (time-to-live) configuration for documents that have this `Field` set. Storing a timestamp value into a TTL-enabled field will be treated as the document's absolute expiration time. For Enterprise edition databases, the timestamp value may also be stored in an array value in the TTL-enabled field. Timestamp values in the past indicate that the document is eligible for immediate expiration. Using any other data type or leaving the field absent will disable expiration for the individual document.

| Property | Type | Description |
|----------|------|-------------|
| `state` | `string` | Output only. The state of the TTL configuration. |

### `GoogleFirestoreAdminV1TtlConfigDelta`

Information about a TTL configuration change.

| Property | Type | Description |
|----------|------|-------------|
| `changeType` | `string` | Specifies how the TTL configuration is changing. |

### `GoogleFirestoreAdminV1UpdateDatabaseMetadata`

Metadata related to the update database operation.

### `GoogleFirestoreAdminV1UserCreds`

A Cloud Firestore User Creds.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the user creds were created. |
| `name` | `string` | Identifier. The resource name of the UserCreds. Format: `projects/{project}/databases/{database}/... |
| `resourceIdentity` | `GoogleFirestoreAdminV1ResourceIdentity` | Resource Identity descriptor. |
| `securePassword` | `string` | Output only. The plaintext server-generated password for the user creds. Only populated in respon... |
| `state` | `string` | Output only. Whether the user creds are enabled or disabled. Defaults to ENABLED on creation. |
| `updateTime` | `string` | Output only. The time the user creds were last updated. |

### `GoogleFirestoreAdminV1VectorConfig`

The index configuration to support vector search operations

| Property | Type | Description |
|----------|------|-------------|
| `dimension` | `integer` | Required. The vector dimension this configuration applies to. The resulting index will only inclu... |
| `flat` | `GoogleFirestoreAdminV1FlatIndex` | Indicates the vector index is a flat index. |

### `GoogleFirestoreAdminV1WeeklyRecurrence`

Represents a recurring schedule that runs on a specified day of the week. The time zone is UTC.

| Property | Type | Description |
|----------|------|-------------|
| `day` | `string` | The day of week to run. DAY_OF_WEEK_UNSPECIFIED is not allowed. |

### `GoogleLongrunningCancelOperationRequest`

The request message for Operations.CancelOperation.

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

### `LatLng`

An object that represents a latitude/longitude pair. This is expressed as a pair of doubles to represent degrees latitude and degrees longitude. Unless specified otherwise, this object must conform to the WGS84 standard. Values must be within normalized ranges.

| Property | Type | Description |
|----------|------|-------------|
| `latitude` | `number` | The latitude in degrees. It must be in the range [-90.0, +90.0]. |
| `longitude` | `number` | The longitude in degrees. It must be in the range [-180.0, +180.0]. |

### `ListCollectionIdsRequest`

The request for Firestore.ListCollectionIds.

| Property | Type | Description |
|----------|------|-------------|
| `pageSize` | `integer` | The maximum number of results to return. |
| `pageToken` | `string` | A page token. Must be a value from ListCollectionIdsResponse. |
| `readTime` | `string` | Reads documents as they were at the given time. This must be a microsecond precision timestamp wi... |

### `ListCollectionIdsResponse`

The response from Firestore.ListCollectionIds.

| Property | Type | Description |
|----------|------|-------------|
| `collectionIds` | `array<string>` | The collection ids. |
| `nextPageToken` | `string` | A page token that may be used to continue the list. |

### `ListDocumentsResponse`

The response for Firestore.ListDocuments.

| Property | Type | Description |
|----------|------|-------------|
| `documents` | `array<Document>` | The Documents found. |
| `nextPageToken` | `string` | A token to retrieve the next page of documents. If this field is omitted, there are no subsequent... |

### `ListLocationsResponse`

The response message for Locations.ListLocations.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<Location>` | A list of locations that matches the specified filter in the request. |
| `nextPageToken` | `string` | The standard List next-page token. |

### `ListenRequest`

A request for Firestore.Listen

| Property | Type | Description |
|----------|------|-------------|
| `addTarget` | `Target` | A target to add to this stream. |
| `labels` | `object` | Labels associated with this target change. |
| `removeTarget` | `integer` | The ID of a target to remove from this stream. |

### `ListenResponse`

The response for Firestore.Listen.

| Property | Type | Description |
|----------|------|-------------|
| `documentChange` | `DocumentChange` | A Document has changed. |
| `documentDelete` | `DocumentDelete` | A Document has been deleted. |
| `documentRemove` | `DocumentRemove` | A Document has been removed from a target (because it is no longer relevant to that target). |
| `filter` | `ExistenceFilter` | A filter to apply to the set of documents previously returned for the given target. Returned when... |
| `targetChange` | `TargetChange` | Targets have changed. |

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `MapValue`

A map value.

| Property | Type | Description |
|----------|------|-------------|
| `fields` | `object` | The map's fields. The map keys represent field names. Field names matching the regular expression... |

### `Order`

An order on a field.

| Property | Type | Description |
|----------|------|-------------|
| `direction` | `string` | The direction to order by. Defaults to `ASCENDING`. |
| `field` | `FieldReference` | The field to order by. |

### `PartitionQueryRequest`

The request for Firestore.PartitionQuery.

| Property | Type | Description |
|----------|------|-------------|
| `pageSize` | `integer` | The maximum number of partitions to return in this call, subject to `partition_count`. For exampl... |
| `pageToken` | `string` | The `next_page_token` value returned from a previous call to PartitionQuery that may be used to g... |
| `partitionCount` | `string` | The desired maximum number of partition points. The partitions may be returned across multiple pa... |
| `readTime` | `string` | Reads documents as they were at the given time. This must be a microsecond precision timestamp wi... |
| `structuredQuery` | `StructuredQuery` | A structured query. Query must specify collection with all descendants and be ordered by name asc... |

### `PartitionQueryResponse`

The response for Firestore.PartitionQuery.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A page token that may be used to request an additional set of results, up to the number specified... |
| `partitions` | `array<Cursor>` | Partition results. Each partition is a split point that can be used by RunQuery as a starting or ... |

### `Pipeline`

A Firestore query represented as an ordered list of operations / stages.

| Property | Type | Description |
|----------|------|-------------|
| `stages` | `array<Stage>` | Required. Ordered list of stages to evaluate. |

### `PlanSummary`

Planning phase information for the query.

| Property | Type | Description |
|----------|------|-------------|
| `indexesUsed` | `array<object>` | The indexes selected for the query. For example: [ {"query_scope": "Collection", "properties": "(... |

### `Precondition`

A precondition on a document, used for conditional operations.

| Property | Type | Description |
|----------|------|-------------|
| `exists` | `boolean` | When set to `true`, the target document must exist. When set to `false`, the target document must... |
| `updateTime` | `string` | When set, the target document must exist and have been last updated at that time. Timestamp must ... |

### `Projection`

The projection of document's fields to return.

| Property | Type | Description |
|----------|------|-------------|
| `fields` | `array<FieldReference>` | The fields to return. If empty, all fields are returned. To only return the name of the document,... |

### `QueryTarget`

A target specified by a query.

| Property | Type | Description |
|----------|------|-------------|
| `parent` | `string` | The parent resource name. In the format: `projects/{project_id}/databases/{database_id}/documents... |
| `structuredQuery` | `StructuredQuery` | A structured query. |

### `ReadOnly`

Options for a transaction that can only be used to read documents.

| Property | Type | Description |
|----------|------|-------------|
| `readTime` | `string` | Reads documents at the given time. This must be a microsecond precision timestamp within the past... |

### `ReadWrite`

Options for a transaction that can be used to read and write documents. Firestore does not allow 3rd party auth requests to create read-write. transactions.

| Property | Type | Description |
|----------|------|-------------|
| `retryTransaction` | `string` | An optional transaction to retry. |

### `RollbackRequest`

The request for Firestore.Rollback.

| Property | Type | Description |
|----------|------|-------------|
| `transaction` | `string` | Required. The transaction to roll back. |

### `RunAggregationQueryRequest`

The request for Firestore.RunAggregationQuery.

| Property | Type | Description |
|----------|------|-------------|
| `explainOptions` | `ExplainOptions` | Optional. Explain options for the query. If set, additional query statistics will be returned. If... |
| `newTransaction` | `TransactionOptions` | Starts a new transaction as part of the query, defaulting to read-only. The new transaction ID wi... |
| `readTime` | `string` | Executes the query at the given timestamp. This must be a microsecond precision timestamp within ... |
| `structuredAggregationQuery` | `StructuredAggregationQuery` | An aggregation query. |
| `transaction` | `string` | Run the aggregation within an already active transaction. The value here is the opaque transactio... |

### `RunAggregationQueryResponse`

The response for Firestore.RunAggregationQuery.

| Property | Type | Description |
|----------|------|-------------|
| `explainMetrics` | `ExplainMetrics` | Query explain metrics. This is only present when the RunAggregationQueryRequest.explain_options i... |
| `readTime` | `string` | The time at which the aggregate result was computed. This is always monotonically increasing; in ... |
| `result` | `AggregationResult` | A single aggregation result. Not present when reporting partial progress. |
| `transaction` | `string` | The transaction that was started as part of this request. Only present on the first response when... |

### `RunQueryRequest`

The request for Firestore.RunQuery.

| Property | Type | Description |
|----------|------|-------------|
| `explainOptions` | `ExplainOptions` | Optional. Explain options for the query. If set, additional query statistics will be returned. If... |
| `newTransaction` | `TransactionOptions` | Starts a new transaction and reads the documents. Defaults to a read-only transaction. The new tr... |
| `readTime` | `string` | Reads documents as they were at the given time. This must be a microsecond precision timestamp wi... |
| `structuredQuery` | `StructuredQuery` | A structured query. |
| `transaction` | `string` | Run the query within an already active transaction. The value here is the opaque transaction ID t... |

### `RunQueryResponse`

The response for Firestore.RunQuery.

| Property | Type | Description |
|----------|------|-------------|
| `document` | `Document` | A query result, not set when reporting partial progress. |
| `done` | `boolean` | If present, Firestore has completely finished the request and no more documents will be returned. |
| `explainMetrics` | `ExplainMetrics` | Query explain metrics. This is only present when the RunQueryRequest.explain_options is provided,... |
| `readTime` | `string` | The time at which the document was read. This may be monotonically increasing; in this case, the ... |
| `skippedResults` | `integer` | The number of results that have been skipped due to an offset between the last response and the c... |
| `transaction` | `string` | The transaction that was started as part of this request. Can only be set in the first response, ... |

### `Stage`

A single operation within a pipeline. A stage is made up of a unique name, and a list of arguments. The exact number of arguments & types is dependent on the stage type. To give an example, the stage `filter(state = "MD")` would be encoded as: ``` name: "filter" args { function_value { name: "eq" args { field_reference_value: "state" } args { string_value: "MD" } } } ``` See public documentation for the full list.

| Property | Type | Description |
|----------|------|-------------|
| `args` | `array<Value>` | Optional. Ordered list of arguments the given stage expects. |
| `name` | `string` | Required. The name of the stage to evaluate. **Requires:** * must be in snake case (lower case wi... |
| `options` | `object` | Optional. Optional named arguments that certain functions may support. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `StructuredAggregationQuery`

Firestore query for running an aggregation over a StructuredQuery.

| Property | Type | Description |
|----------|------|-------------|
| `aggregations` | `array<Aggregation>` | Optional. Series of aggregations to apply over the results of the `structured_query`. Requires: *... |
| `structuredQuery` | `StructuredQuery` | Nested structured query. |

### `StructuredPipeline`

A Firestore query represented as an ordered list of operations / stages. This is considered the top-level function which plans and executes a query. It is logically equivalent to `query(stages, options)`, but prevents the client from having to build a function wrapper.

| Property | Type | Description |
|----------|------|-------------|
| `options` | `object` | Optional. Optional query-level arguments. |
| `pipeline` | `Pipeline` | Required. The pipeline query to execute. |

### `StructuredQuery`

A Firestore query. The query stages are executed in the following order: 1. from 2. where 3. select 4. order_by + start_at + end_at 5. offset 6. limit 7. find_nearest

| Property | Type | Description |
|----------|------|-------------|
| `endAt` | `Cursor` | A potential prefix of a position in the result set to end the query at. This is similar to `START... |
| `findNearest` | `FindNearest` | Optional. A potential nearest neighbors search. Applies after all other filters and ordering. Fin... |
| `from` | `array<CollectionSelector>` | The collections to query. |
| `limit` | `integer` | The maximum number of results to return. Applies after all other constraints. Requires: * The val... |
| `offset` | `integer` | The number of documents to skip before returning the first result. This applies after the constra... |
| `orderBy` | `array<Order>` | The order to apply to the query results. Firestore allows callers to provide a full ordering, a p... |
| `select` | `Projection` | Optional sub-set of the fields to return. This acts as a DocumentMask over the documents returned... |
| `startAt` | `Cursor` | A potential prefix of a position in the result set to start the query at. The ordering of the res... |
| `where` | `Filter` | The filter to apply. |

### `Sum`

Sum of the values of the requested field. * Only numeric values will be aggregated. All non-numeric values including `NULL` are skipped. * If the aggregated values contain `NaN`, returns `NaN`. Infinity math follows IEEE-754 standards. * If the aggregated value set is empty, returns 0. * Returns a 64-bit integer if all aggregated numbers are integers and the sum result does not overflow. Otherwise, the result is returned as a double. Note that even if all the aggregated values are integers, the result is returned as a double if it cannot fit within a 64-bit signed integer. When this occurs, the returned value will lose precision. * When underflow occurs, floating-point aggregation is non-deterministic. This means that running the same query repeatedly without any changes to the underlying values could produce slightly different results each time. In those cases, values should be stored as integers over floating-point numbers.

| Property | Type | Description |
|----------|------|-------------|
| `field` | `FieldReference` | The field to aggregate on. |

### `Target`

A specification of a set of documents to listen to.

| Property | Type | Description |
|----------|------|-------------|
| `documents` | `DocumentsTarget` | A target specified by a set of document names. |
| `expectedCount` | `integer` | The number of documents that last matched the query at the resume token or read time. This value ... |
| `once` | `boolean` | If the target should be removed once it is current and consistent. |
| `query` | `QueryTarget` | A target specified by a query. |
| `readTime` | `string` | Start listening after a specific `read_time`. The client must know the state of matching document... |
| `resumeToken` | `string` | A resume token from a prior TargetChange for an identical target. Using a resume token with a dif... |
| `targetId` | `integer` | The target ID that identifies the target on the stream. Must be a positive number and non-zero. I... |

### `TargetChange`

Targets being watched have changed.

| Property | Type | Description |
|----------|------|-------------|
| `cause` | `Status` | The error that resulted in this change, if applicable. |
| `readTime` | `string` | The consistent `read_time` for the given `target_ids` (omitted when the target_ids are not at a c... |
| `resumeToken` | `string` | A token that can be used to resume the stream for the given `target_ids`, or all targets if `targ... |
| `targetChangeType` | `string` | The type of change that occurred. |
| `targetIds` | `array<integer>` | The target IDs of targets that have changed. If empty, the change applies to all targets. The ord... |

### `TransactionOptions`

Options for creating a new transaction.

| Property | Type | Description |
|----------|------|-------------|
| `readOnly` | `ReadOnly` | The transaction can only be used for read operations. |
| `readWrite` | `ReadWrite` | The transaction can be used for both read and write operations. |

### `UnaryFilter`

A filter with a single operand.

| Property | Type | Description |
|----------|------|-------------|
| `field` | `FieldReference` | The field to which to apply the operator. |
| `op` | `string` | The unary operator to apply. |

### `Value`

A message that can hold any of the supported value types.

| Property | Type | Description |
|----------|------|-------------|
| `arrayValue` | `ArrayValue` | An array value. Cannot directly contain another array value, though can contain a map which conta... |
| `booleanValue` | `boolean` | A boolean value. |
| `bytesValue` | `string` | A bytes value. Must not exceed 1 MiB - 89 bytes. Only the first 1,500 bytes are considered by que... |
| `doubleValue` | `number` | A double value. |
| `fieldReferenceValue` | `string` | Value which references a field. This is considered relative (vs absolute) since it only refers to... |
| `functionValue` | `Function` | A value that represents an unevaluated expression. **Requires:** * Not allowed to be used when wr... |
| `geoPointValue` | `LatLng` | A geo point value representing a point on the surface of Earth. |
| `integerValue` | `string` | An integer value. |
| `mapValue` | `MapValue` | A map value. |
| `nullValue` | `string` | A null value. |
| `pipelineValue` | `Pipeline` | A value that represents an unevaluated pipeline. **Requires:** * Not allowed to be used when writ... |
| `referenceValue` | `string` | A reference to a document. For example: `projects/{project_id}/databases/{database_id}/documents/... |
| `stringValue` | `string` | A string value. The string, represented as UTF-8, must not exceed 1 MiB - 89 bytes. Only the firs... |
| `timestampValue` | `string` | A timestamp value. Precise only to microseconds. When stored, any additional precision is rounded... |

### `Write`

A write on a document.

| Property | Type | Description |
|----------|------|-------------|
| `currentDocument` | `Precondition` | An optional precondition on the document. The write will fail if this is set and not met by the t... |
| `delete` | `string` | A document name to delete. In the format: `projects/{project_id}/databases/{database_id}/document... |
| `transform` | `DocumentTransform` | Applies a transformation to a document. |
| `update` | `Document` | A document to write. |
| `updateMask` | `DocumentMask` | The fields to update in this write. This field can be set only when the operation is `update`. If... |
| `updateTransforms` | `array<FieldTransform>` | The transforms to perform after update. This field can be set only when the operation is `update`... |

### `WriteRequest`

The request for Firestore.Write. The first request creates a stream, or resumes an existing one from a token. When creating a new stream, the server replies with a response containing only an ID and a token, to use in the next request. When resuming a stream, the server first streams any responses later than the given token, then a response containing only an up-to-date token, to use in the next request.

| Property | Type | Description |
|----------|------|-------------|
| `labels` | `object` | Labels associated with this write request. |
| `streamId` | `string` | The ID of the write stream to resume. This may only be set in the first message. When left empty,... |
| `streamToken` | `string` | A stream token that was previously sent by the server. The client should set this field to the to... |
| `writes` | `array<Write>` | The writes to apply. Always executed atomically and in order. This must be empty on the first req... |

### `WriteResponse`

The response for Firestore.Write.

| Property | Type | Description |
|----------|------|-------------|
| `commitTime` | `string` | The time at which the commit occurred. Any read with an equal or greater `read_time` is guarantee... |
| `streamId` | `string` | The ID of the stream. Only set on the first message, when a new stream was created. |
| `streamToken` | `string` | A token that represents the position of this response in the stream. This can be used by a client... |
| `writeResults` | `array<WriteResult>` | The result of applying the writes. This i-th write result corresponds to the i-th write in the re... |

### `WriteResult`

The result of applying a write.

| Property | Type | Description |
|----------|------|-------------|
| `transformResults` | `array<Value>` | The results of applying each DocumentTransform.FieldTransform, in the same order. |
| `updateTime` | `string` | The last update time of the document after applying the write. Not set after a `delete`. If the w... |

