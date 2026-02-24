# Cloud Search API - API Reference

**Version**: `v1` | **Methods**: 49 | **Schemas**: 223

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `cloudsearch.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `cloudsearch.operations.lro.list` | GET | `v1/{+name}/lro` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `cloudsearch.debug.datasources.items.checkAccess` | POST | `v1/debug/{+name}:checkAccess` | Checks whether an item is accessible by specified principal. Principal must be a user; groups and... |
| `cloudsearch.debug.datasources.items.searchByViewUrl` | POST | `v1/debug/{+name}/items:searchByViewUrl` | Fetches the item whose viewUrl exactly matches that of the URL provided in the request. **Note:**... |
| `cloudsearch.debug.datasources.items.unmappedids.list` | GET | `v1/debug/{+parent}/unmappedids` | List all unmapped identities for a specific item. **Note:** This API requires an admin account to... |
| `cloudsearch.debug.identitysources.unmappedids.list` | GET | `v1/debug/{+parent}/unmappedids` | Lists unmapped user identities for an identity source. **Note:** This API requires an admin accou... |
| `cloudsearch.debug.identitysources.items.listForunmappedidentity` | GET | `v1/debug/{+parent}/items:forunmappedidentity` | Lists names of items associated with an unmapped identity. **Note:** This API requires an admin a... |
| `cloudsearch.settings.getCustomer` | GET | `v1/settings/customer` | Get customer settings. **Note:** This API requires an admin account to execute. |
| `cloudsearch.settings.updateCustomer` | PATCH | `v1/settings/customer` | Update customer settings. **Note:** This API requires an admin account to execute. |
| `cloudsearch.settings.searchapplications.list` | GET | `v1/settings/searchapplications` | Lists all search applications. **Note:** This API requires an admin account to execute. |
| `cloudsearch.settings.searchapplications.get` | GET | `v1/settings/{+name}` | Gets the specified search application. **Note:** This API requires an admin account to execute. |
| `cloudsearch.settings.searchapplications.create` | POST | `v1/settings/searchapplications` | Creates a search application. **Note:** This API requires an admin account to execute. |
| `cloudsearch.settings.searchapplications.update` | PUT | `v1/settings/{+name}` | Updates a search application. **Note:** This API requires an admin account to execute. |
| `cloudsearch.settings.searchapplications.patch` | PATCH | `v1/settings/{+name}` | Updates a search application. **Note:** This API requires an admin account to execute. |
| `cloudsearch.settings.searchapplications.delete` | DELETE | `v1/settings/{+name}` | Deletes a search application. **Note:** This API requires an admin account to execute. |
| `cloudsearch.settings.searchapplications.reset` | POST | `v1/settings/{+name}:reset` | Resets a search application to default settings. This will return an empty response. **Note:** Th... |
| `cloudsearch.settings.datasources.create` | POST | `v1/settings/datasources` | Creates a datasource. **Note:** This API requires an admin account to execute. |
| `cloudsearch.settings.datasources.delete` | DELETE | `v1/settings/{+name}` | Deletes a datasource. **Note:** This API requires an admin account to execute. |
| `cloudsearch.settings.datasources.get` | GET | `v1/settings/{+name}` | Gets a datasource. **Note:** This API requires an admin account to execute. |
| `cloudsearch.settings.datasources.update` | PUT | `v1/settings/{+name}` | Updates a datasource. **Note:** This API requires an admin account to execute. |
| `cloudsearch.settings.datasources.patch` | PATCH | `v1/settings/{+name}` | Updates a datasource. **Note:** This API requires an admin account to execute. |
| `cloudsearch.settings.datasources.list` | GET | `v1/settings/datasources` | Lists datasources. **Note:** This API requires an admin account to execute. |
| `cloudsearch.initializeCustomer` | POST | `v1:initializeCustomer` | Enables `third party` support in Google Cloud Search. **Note:** This API requires an admin accoun... |
| `cloudsearch.indexing.datasources.updateSchema` | PUT | `v1/indexing/{+name}/schema` | Updates the schema of a data source. This method does not perform incremental updates to the sche... |
| `cloudsearch.indexing.datasources.getSchema` | GET | `v1/indexing/{+name}/schema` | Gets the schema of a data source. **Note:** This API requires an admin or service account to exec... |
| `cloudsearch.indexing.datasources.deleteSchema` | DELETE | `v1/indexing/{+name}/schema` | Deletes the schema of a data source. **Note:** This API requires an admin or service account to e... |
| `cloudsearch.indexing.datasources.items.delete` | DELETE | `v1/indexing/{+name}` | Deletes Item resource for the specified resource name. This API requires an admin or service acco... |
| `cloudsearch.indexing.datasources.items.get` | GET | `v1/indexing/{+name}` | Gets Item resource by item name. This API requires an admin or service account to execute. The se... |
| `cloudsearch.indexing.datasources.items.list` | GET | `v1/indexing/{+name}/items` | Lists all or a subset of Item resources. This API requires an admin or service account to execute... |
| `cloudsearch.indexing.datasources.items.index` | POST | `v1/indexing/{+name}:index` | Updates Item ACL, metadata, and content. It will insert the Item if it does not exist. This metho... |
| `cloudsearch.indexing.datasources.items.upload` | POST | `v1/indexing/{+name}:upload` | Creates an upload session for uploading item content. For items smaller than 100 KB, it's easier ... |
| `cloudsearch.indexing.datasources.items.poll` | POST | `v1/indexing/{+name}/items:poll` | Polls for unreserved items from the indexing queue and marks a set as reserved, starting with ite... |
| `cloudsearch.indexing.datasources.items.push` | POST | `v1/indexing/{+name}:push` | Pushes an item onto a queue for later polling and updating. This API requires an admin or service... |
| `cloudsearch.indexing.datasources.items.unreserve` | POST | `v1/indexing/{+name}/items:unreserve` | Unreserves all items from a queue, making them all eligible to be polled. This method is useful f... |
| `cloudsearch.indexing.datasources.items.deleteQueueItems` | POST | `v1/indexing/{+name}/items:deleteQueueItems` | Deletes all items in a queue. This method is useful for deleting stale items. This API requires a... |
| `cloudsearch.query.suggest` | POST | `v1/query/suggest` | Provides suggestions for autocompleting the query. **Note:** This API requires a standard end use... |
| `cloudsearch.query.search` | POST | `v1/query/search` | The Cloud Search Query API provides the search method, which returns the most relevant results fr... |
| `cloudsearch.query.removeActivity` | POST | `v1/query:removeActivity` | Provides functionality to remove logged activity for a user. Currently to be used only for Chat 1... |
| `cloudsearch.query.sources.list` | GET | `v1/query/sources` | Returns list of sources that user can use for Search and Suggest APIs. **Note:** This API require... |
| `cloudsearch.stats.getIndex` | GET | `v1/stats/index` | Gets indexed item statistics aggreggated across all data sources. This API only returns statistic... |
| `cloudsearch.stats.getQuery` | GET | `v1/stats/query` | Get the query statistics for customer. **Note:** This API requires a standard end user account to... |
| `cloudsearch.stats.getUser` | GET | `v1/stats/user` | Get the users statistics for customer. **Note:** This API requires a standard end user account to... |
| `cloudsearch.stats.getSession` | GET | `v1/stats/session` | Get the # of search sessions, % of successful sessions with a click query statistics for customer... |
| `cloudsearch.stats.getSearchapplication` | GET | `v1/stats/searchapplication` | Get search application stats for customer. **Note:** This API requires a standard end user accoun... |
| `cloudsearch.stats.index.datasources.get` | GET | `v1/stats/index/{+name}` | Gets indexed item statistics for a single data source. **Note:** This API requires a standard end... |
| `cloudsearch.stats.query.searchapplications.get` | GET | `v1/stats/query/{+name}` | Get the query statistics for search application. **Note:** This API requires a standard end user ... |
| `cloudsearch.stats.user.searchapplications.get` | GET | `v1/stats/user/{+name}` | Get the users statistics for search application. **Note:** This API requires a standard end user ... |
| `cloudsearch.stats.session.searchapplications.get` | GET | `v1/stats/session/{+name}` | Get the # of search sessions, % of successful sessions with a click query statistics for search a... |
| `cloudsearch.media.upload` | POST | `v1/media/{+resourceName}` | Uploads media for indexing. The upload endpoint supports direct and resumable upload protocols an... |

### `cloudsearch.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await cloudsearch.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.debug`
- `https://www.googleapis.com/auth/cloud_search.indexing`
- `https://www.googleapis.com/auth/cloud_search.settings`
- `https://www.googleapis.com/auth/cloud_search.settings.indexing`
- `https://www.googleapis.com/auth/cloud_search.settings.query`

---

### `cloudsearch.operations.lro.list`

**GET** `v1/{+name}/lro`

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
const res = await cloudsearch.lro.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.debug`
- `https://www.googleapis.com/auth/cloud_search.indexing`
- `https://www.googleapis.com/auth/cloud_search.settings`
- `https://www.googleapis.com/auth/cloud_search.settings.indexing`
- `https://www.googleapis.com/auth/cloud_search.settings.query`

---

### `cloudsearch.debug.datasources.items.checkAccess`

**POST** `v1/debug/{+name}:checkAccess`

Checks whether an item is accessible by specified principal. Principal must be a user; groups and domain values aren't supported. **Note:** This API requires an admin account to execute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Item name, format: datasources/{source_id}/items/{item_id} |
| `debugOptions.enableDebugging` | `boolean` | query | No | If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field. |

**Request body**: `Principal`

**Response**: `CheckAccessResponse`

```typescript
const res = await cloudsearch.items.checkAccess({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.debug`

---

### `cloudsearch.debug.datasources.items.searchByViewUrl`

**POST** `v1/debug/{+name}/items:searchByViewUrl`

Fetches the item whose viewUrl exactly matches that of the URL provided in the request. **Note:** This API requires an admin account to execute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Source name, format: datasources/{source_id} |

**Request body**: `SearchItemsByViewUrlRequest`

**Response**: `SearchItemsByViewUrlResponse`

```typescript
const res = await cloudsearch.items.searchByViewUrl({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.debug`

---

### `cloudsearch.debug.datasources.items.unmappedids.list`

**GET** `v1/debug/{+parent}/unmappedids`

List all unmapped identities for a specific item. **Note:** This API requires an admin account to execute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The name of the item, in the following format: datasources/{source_id}/items/{ID} |
| `debugOptions.enableDebugging` | `boolean` | query | No | If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field. |
| `pageSize` | `integer` | query | No | Maximum number of items to fetch in a request. Defaults to 100. |
| `pageToken` | `string` | query | No | The next_page_token value returned from a previous List request, if any. |

**Response**: `ListUnmappedIdentitiesResponse`

```typescript
const res = await cloudsearch.unmappedids.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.debug`

---

### `cloudsearch.debug.identitysources.unmappedids.list`

**GET** `v1/debug/{+parent}/unmappedids`

Lists unmapped user identities for an identity source. **Note:** This API requires an admin account to execute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The name of the identity source, in the following format: identitysources/{source_id} |
| `debugOptions.enableDebugging` | `boolean` | query | No | If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field. |
| `pageSize` | `integer` | query | No | Maximum number of items to fetch in a request. Defaults to 100. |
| `pageToken` | `string` | query | No | The next_page_token value returned from a previous List request, if any. |
| `resolutionStatusCode` | `string` | query | No | Limit users selection to this status. |

**Response**: `ListUnmappedIdentitiesResponse`

```typescript
const res = await cloudsearch.unmappedids.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.debug`

---

### `cloudsearch.debug.identitysources.items.listForunmappedidentity`

**GET** `v1/debug/{+parent}/items:forunmappedidentity`

Lists names of items associated with an unmapped identity. **Note:** This API requires an admin account to execute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | The name of the identity source, in the following format: identitysources/{source_id}} |
| `debugOptions.enableDebugging` | `boolean` | query | No | If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field. |
| `groupResourceName` | `string` | query | No |  |
| `pageSize` | `integer` | query | No | Maximum number of items to fetch in a request. Defaults to 100. |
| `pageToken` | `string` | query | No | The next_page_token value returned from a previous List request, if any. |
| `userResourceName` | `string` | query | No |  |

**Response**: `ListItemNamesForUnmappedIdentityResponse`

```typescript
const res = await cloudsearch.items.listForunmappedidentity({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.debug`

---

### `cloudsearch.settings.getCustomer`

**GET** `v1/settings/customer`

Get customer settings. **Note:** This API requires an admin account to execute.

**Response**: `CustomerSettings`

```typescript
const res = await cloudsearch.settings.getCustomer({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.settings`
- `https://www.googleapis.com/auth/cloud_search.settings.indexing`

---

### `cloudsearch.settings.updateCustomer`

**PATCH** `v1/settings/customer`

Update customer settings. **Note:** This API requires an admin account to execute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `updateMask` | `string` | query | No | Update mask to control which fields get updated. If you specify a field in the update_mask but don't specify its valu... |

**Request body**: `CustomerSettings`

**Response**: `Operation`

```typescript
const res = await cloudsearch.settings.updateCustomer({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.settings`
- `https://www.googleapis.com/auth/cloud_search.settings.indexing`

---

### `cloudsearch.settings.searchapplications.list`

**GET** `v1/settings/searchapplications`

Lists all search applications. **Note:** This API requires an admin account to execute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `debugOptions.enableDebugging` | `boolean` | query | No | If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field. |
| `pageSize` | `integer` | query | No | The maximum number of items to return. |
| `pageToken` | `string` | query | No | The next_page_token value returned from a previous List request, if any. The default value is 10 |

**Response**: `ListSearchApplicationsResponse`

```typescript
const res = await cloudsearch.searchapplications.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.settings`
- `https://www.googleapis.com/auth/cloud_search.settings.query`

---

### `cloudsearch.settings.searchapplications.get`

**GET** `v1/settings/{+name}`

Gets the specified search application. **Note:** This API requires an admin account to execute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the search application. Format: searchapplications/{application_id}. |
| `debugOptions.enableDebugging` | `boolean` | query | No | If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field. |

**Response**: `SearchApplication`

```typescript
const res = await cloudsearch.searchapplications.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.settings`
- `https://www.googleapis.com/auth/cloud_search.settings.query`

---

### `cloudsearch.settings.searchapplications.create`

**POST** `v1/settings/searchapplications`

Creates a search application. **Note:** This API requires an admin account to execute.

**Request body**: `SearchApplication`

**Response**: `Operation`

```typescript
const res = await cloudsearch.searchapplications.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.settings`
- `https://www.googleapis.com/auth/cloud_search.settings.query`

---

### `cloudsearch.settings.searchapplications.update`

**PUT** `v1/settings/{+name}`

Updates a search application. **Note:** This API requires an admin account to execute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the Search Application. Format: searchapplications/{application_id}. |
| `updateMask` | `string` | query | No | Only applies to [`settings.searchapplications.patch`](https://developers.google.com/workspace/cloud-search/docs/refer... |

**Request body**: `SearchApplication`

**Response**: `Operation`

```typescript
const res = await cloudsearch.searchapplications.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.settings`
- `https://www.googleapis.com/auth/cloud_search.settings.query`

---

### `cloudsearch.settings.searchapplications.patch`

**PATCH** `v1/settings/{+name}`

Updates a search application. **Note:** This API requires an admin account to execute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the Search Application. Format: searchapplications/{application_id}. |
| `updateMask` | `string` | query | No | Only applies to [`settings.searchapplications.patch`](https://developers.google.com/workspace/cloud-search/docs/refer... |

**Request body**: `SearchApplication`

**Response**: `Operation`

```typescript
const res = await cloudsearch.searchapplications.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.settings`
- `https://www.googleapis.com/auth/cloud_search.settings.query`

---

### `cloudsearch.settings.searchapplications.delete`

**DELETE** `v1/settings/{+name}`

Deletes a search application. **Note:** This API requires an admin account to execute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the search application to be deleted. Format: applications/{application_id}. |
| `debugOptions.enableDebugging` | `boolean` | query | No | If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field. |

**Response**: `Operation`

```typescript
const res = await cloudsearch.searchapplications.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.settings`
- `https://www.googleapis.com/auth/cloud_search.settings.query`

---

### `cloudsearch.settings.searchapplications.reset`

**POST** `v1/settings/{+name}:reset`

Resets a search application to default settings. This will return an empty response. **Note:** This API requires an admin account to execute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the search application to be reset. Format: applications/{application_id}. |

**Request body**: `ResetSearchApplicationRequest`

**Response**: `Operation`

```typescript
const res = await cloudsearch.searchapplications.reset({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.settings`
- `https://www.googleapis.com/auth/cloud_search.settings.query`

---

### `cloudsearch.settings.datasources.create`

**POST** `v1/settings/datasources`

Creates a datasource. **Note:** This API requires an admin account to execute.

**Request body**: `DataSource`

**Response**: `Operation`

```typescript
const res = await cloudsearch.datasources.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.settings`
- `https://www.googleapis.com/auth/cloud_search.settings.indexing`

---

### `cloudsearch.settings.datasources.delete`

**DELETE** `v1/settings/{+name}`

Deletes a datasource. **Note:** This API requires an admin account to execute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the datasource. Format: datasources/{source_id}. |
| `debugOptions.enableDebugging` | `boolean` | query | No | If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field. |

**Response**: `Operation`

```typescript
const res = await cloudsearch.datasources.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.settings`
- `https://www.googleapis.com/auth/cloud_search.settings.indexing`

---

### `cloudsearch.settings.datasources.get`

**GET** `v1/settings/{+name}`

Gets a datasource. **Note:** This API requires an admin account to execute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the datasource resource. Format: datasources/{source_id}. |
| `debugOptions.enableDebugging` | `boolean` | query | No | If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field. |

**Response**: `DataSource`

```typescript
const res = await cloudsearch.datasources.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.settings`
- `https://www.googleapis.com/auth/cloud_search.settings.indexing`

---

### `cloudsearch.settings.datasources.update`

**PUT** `v1/settings/{+name}`

Updates a datasource. **Note:** This API requires an admin account to execute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the datasource resource. Format: datasources/{source_id}. The name is ignored when creating a datasource. |

**Request body**: `UpdateDataSourceRequest`

**Response**: `Operation`

```typescript
const res = await cloudsearch.datasources.update({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.settings`
- `https://www.googleapis.com/auth/cloud_search.settings.indexing`

---

### `cloudsearch.settings.datasources.patch`

**PATCH** `v1/settings/{+name}`

Updates a datasource. **Note:** This API requires an admin account to execute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the datasource resource. Format: datasources/{source_id}. The name is ignored when creating a datasource. |
| `debugOptions.enableDebugging` | `boolean` | query | No | If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field. |
| `updateMask` | `string` | query | No | Only applies to [`settings.datasources.patch`](https://developers.google.com/workspace/cloud-search/docs/reference/re... |

**Request body**: `DataSource`

**Response**: `Operation`

```typescript
const res = await cloudsearch.datasources.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.settings`
- `https://www.googleapis.com/auth/cloud_search.settings.indexing`

---

### `cloudsearch.settings.datasources.list`

**GET** `v1/settings/datasources`

Lists datasources. **Note:** This API requires an admin account to execute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `debugOptions.enableDebugging` | `boolean` | query | No | If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field. |
| `pageSize` | `integer` | query | No | Maximum number of datasources to fetch in a request. The max value is 1000. The default value is 1000. |
| `pageToken` | `string` | query | No | Starting index of the results. |

**Response**: `ListDataSourceResponse`

```typescript
const res = await cloudsearch.datasources.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.settings`
- `https://www.googleapis.com/auth/cloud_search.settings.indexing`

---

### `cloudsearch.initializeCustomer`

**POST** `v1:initializeCustomer`

Enables `third party` support in Google Cloud Search. **Note:** This API requires an admin account to execute.

**Request body**: `InitializeCustomerRequest`

**Response**: `Operation`

```typescript
const res = await cloudsearch.initializeCustomer({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.settings`
- `https://www.googleapis.com/auth/cloud_search.settings.indexing`

---

### `cloudsearch.indexing.datasources.updateSchema`

**PUT** `v1/indexing/{+name}/schema`

Updates the schema of a data source. This method does not perform incremental updates to the schema. Instead, this method updates the schema by overwriting the entire schema. **Note:** This API requires an admin or service account to execute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the data source to update Schema. Format: datasources/{source_id} |

**Request body**: `UpdateSchemaRequest`

**Response**: `Operation`

```typescript
const res = await cloudsearch.datasources.updateSchema({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.settings`
- `https://www.googleapis.com/auth/cloud_search.settings.indexing`

---

### `cloudsearch.indexing.datasources.getSchema`

**GET** `v1/indexing/{+name}/schema`

Gets the schema of a data source. **Note:** This API requires an admin or service account to execute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the data source to get Schema. Format: datasources/{source_id} |
| `debugOptions.enableDebugging` | `boolean` | query | No | If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field. |

**Response**: `Schema`

```typescript
const res = await cloudsearch.datasources.getSchema({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.settings`
- `https://www.googleapis.com/auth/cloud_search.settings.indexing`

---

### `cloudsearch.indexing.datasources.deleteSchema`

**DELETE** `v1/indexing/{+name}/schema`

Deletes the schema of a data source. **Note:** This API requires an admin or service account to execute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the data source to delete Schema. Format: datasources/{source_id} |
| `debugOptions.enableDebugging` | `boolean` | query | No | If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field. |

**Response**: `Operation`

```typescript
const res = await cloudsearch.datasources.deleteSchema({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.settings`
- `https://www.googleapis.com/auth/cloud_search.settings.indexing`

---

### `cloudsearch.indexing.datasources.items.delete`

**DELETE** `v1/indexing/{+name}`

Deletes Item resource for the specified resource name. This API requires an admin or service account to execute. The service account used is the one whitelisted in the corresponding data source.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the item to delete. Format: datasources/{source_id}/items/{item_id} |
| `connectorName` | `string` | query | No | The name of connector making this call. Format: datasources/{source_id}/connectors/{ID} |
| `debugOptions.enableDebugging` | `boolean` | query | No | If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field. |
| `mode` | `string` | query | No | Required. The RequestMode for this request. |
| `version` | `string` | query | No | Required. The incremented version of the item to delete from the index. The indexing system stores the version from t... |

**Response**: `Operation`

```typescript
const res = await cloudsearch.items.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.indexing`

---

### `cloudsearch.indexing.datasources.items.get`

**GET** `v1/indexing/{+name}`

Gets Item resource by item name. This API requires an admin or service account to execute. The service account used is the one whitelisted in the corresponding data source.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the item to get info. Format: datasources/{source_id}/items/{item_id} |
| `connectorName` | `string` | query | No | The name of connector making this call. Format: datasources/{source_id}/connectors/{ID} |
| `debugOptions.enableDebugging` | `boolean` | query | No | If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field. |

**Response**: `Item`

```typescript
const res = await cloudsearch.items.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.indexing`

---

### `cloudsearch.indexing.datasources.items.list`

**GET** `v1/indexing/{+name}/items`

Lists all or a subset of Item resources. This API requires an admin or service account to execute. The service account used is the one whitelisted in the corresponding data source.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the Data Source to list Items. Format: datasources/{source_id} |
| `brief` | `boolean` | query | No | When set to true, the indexing system only populates the following fields: name, version, queue. metadata.hash, metad... |
| `connectorName` | `string` | query | No | The name of connector making this call. Format: datasources/{source_id}/connectors/{ID} |
| `debugOptions.enableDebugging` | `boolean` | query | No | If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field. |
| `pageSize` | `integer` | query | No | Maximum number of items to fetch in a request. The max value is 1000 when brief is true. The max value is 10 if brief... |
| `pageToken` | `string` | query | No | The next_page_token value returned from a previous List request, if any. |

**Response**: `ListItemsResponse`

```typescript
const res = await cloudsearch.items.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.indexing`

---

### `cloudsearch.indexing.datasources.items.index`

**POST** `v1/indexing/{+name}:index`

Updates Item ACL, metadata, and content. It will insert the Item if it does not exist. This method does not support partial updates. Fields with no provided values are cleared out in the Cloud Search index. This API requires an admin or service account to execute. The service account used is the one whitelisted in the corresponding data source.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the Item. Format: datasources/{source_id}/items/{item_id} This is a required field. The maximum length is... |

**Request body**: `IndexItemRequest`

**Response**: `Operation`

```typescript
const res = await cloudsearch.items.index({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.indexing`

---

### `cloudsearch.indexing.datasources.items.upload`

**POST** `v1/indexing/{+name}:upload`

Creates an upload session for uploading item content. For items smaller than 100 KB, it's easier to embed the content inline within an index request. This API requires an admin or service account to execute. The service account used is the one whitelisted in the corresponding data source.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the Item to start a resumable upload. Format: datasources/{source_id}/items/{item_id}. The maximum length... |

**Request body**: `StartUploadItemRequest`

**Response**: `UploadItemRef`

```typescript
const res = await cloudsearch.items.upload({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.indexing`

---

### `cloudsearch.indexing.datasources.items.poll`

**POST** `v1/indexing/{+name}/items:poll`

Polls for unreserved items from the indexing queue and marks a set as reserved, starting with items that have the oldest timestamp from the highest priority ItemStatus. The priority order is as follows: ERROR MODIFIED NEW_ITEM ACCEPTED Reserving items ensures that polling from other threads cannot create overlapping sets. After handling the reserved items, the client should put items back into the unreserved state, either by calling index, or by calling push with the type REQUEUE. Items automatically become available (unreserved) after 4 hours even if no update or push method is called. This API requires an admin or service account to execute. The service account used is the one whitelisted in the corresponding data source.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the Data Source to poll items. Format: datasources/{source_id} |

**Request body**: `PollItemsRequest`

**Response**: `PollItemsResponse`

```typescript
const res = await cloudsearch.items.poll({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.indexing`

---

### `cloudsearch.indexing.datasources.items.push`

**POST** `v1/indexing/{+name}:push`

Pushes an item onto a queue for later polling and updating. This API requires an admin or service account to execute. The service account used is the one whitelisted in the corresponding data source.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the item to push into the indexing queue. Format: datasources/{source_id}/items/{ID} This is a required f... |

**Request body**: `PushItemRequest`

**Response**: `Item`

```typescript
const res = await cloudsearch.items.push({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.indexing`

---

### `cloudsearch.indexing.datasources.items.unreserve`

**POST** `v1/indexing/{+name}/items:unreserve`

Unreserves all items from a queue, making them all eligible to be polled. This method is useful for resetting the indexing queue after a connector has been restarted. This API requires an admin or service account to execute. The service account used is the one whitelisted in the corresponding data source.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the Data Source to unreserve all items. Format: datasources/{source_id} |

**Request body**: `UnreserveItemsRequest`

**Response**: `Operation`

```typescript
const res = await cloudsearch.items.unreserve({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.indexing`

---

### `cloudsearch.indexing.datasources.items.deleteQueueItems`

**POST** `v1/indexing/{+name}/items:deleteQueueItems`

Deletes all items in a queue. This method is useful for deleting stale items. This API requires an admin or service account to execute. The service account used is the one whitelisted in the corresponding data source.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the Data Source to delete items in a queue. Format: datasources/{source_id} |

**Request body**: `DeleteQueueItemsRequest`

**Response**: `Operation`

```typescript
const res = await cloudsearch.items.deleteQueueItems({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.indexing`

---

### `cloudsearch.query.suggest`

**POST** `v1/query/suggest`

Provides suggestions for autocompleting the query. **Note:** This API requires a standard end user account to execute. A service account can't perform Query API requests directly; to use a service account to perform queries, set up [Google Workspace domain-wide delegation of authority](https://developers.google.com/workspace/cloud-search/docs/guides/delegation/).

**Request body**: `SuggestRequest`

**Response**: `SuggestResponse`

```typescript
const res = await cloudsearch.query.suggest({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.query`

---

### `cloudsearch.query.search`

**POST** `v1/query/search`

The Cloud Search Query API provides the search method, which returns the most relevant results from a user query. The results can come from Google Workspace apps, such as Gmail or Google Drive, or they can come from data that you have indexed from a third party. **Note:** This API requires a standard end user account to execute. A service account can't perform Query API requests directly; to use a service account to perform queries, set up [Google Workspace domain-wide delegation of authority](https://developers.google.com/workspace/cloud-search/docs/guides/delegation/).

**Request body**: `SearchRequest`

**Response**: `SearchResponse`

```typescript
const res = await cloudsearch.query.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.query`

---

### `cloudsearch.query.removeActivity`

**POST** `v1/query:removeActivity`

Provides functionality to remove logged activity for a user. Currently to be used only for Chat 1p clients **Note:** This API requires a standard end user account to execute. A service account can't perform Remove Activity requests directly; to use a service account to perform queries, set up [Google Workspace domain-wide delegation of authority](https://developers.google.com/workspace/cloud-search/docs/guides/delegation/).

**Request body**: `RemoveActivityRequest`

**Response**: `RemoveActivityResponse`

```typescript
const res = await cloudsearch.query.removeActivity({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.query`

---

### `cloudsearch.query.sources.list`

**GET** `v1/query/sources`

Returns list of sources that user can use for Search and Suggest APIs. **Note:** This API requires a standard end user account to execute. A service account can't perform Query API requests directly; to use a service account to perform queries, set up [Google Workspace domain-wide delegation of authority](https://developers.google.com/workspace/cloud-search/docs/guides/delegation/).

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `pageToken` | `string` | query | No | Number of sources to return in the response. |
| `requestOptions.debugOptions.enableDebugging` | `boolean` | query | No | If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field. |
| `requestOptions.languageCode` | `string` | query | No | The BCP-47 language code, such as "en-US" or "sr-Latn". For more information, see http://www.unicode.org/reports/tr35... |
| `requestOptions.searchApplicationId` | `string` | query | No | The ID generated when you create a search application using the [admin console](https://support.google.com/a/answer/9... |
| `requestOptions.timeZone` | `string` | query | No | Current user's time zone id, such as "America/Los_Angeles" or "Australia/Sydney". These IDs are defined by [Unicode C... |

**Response**: `ListQuerySourcesResponse`

```typescript
const res = await cloudsearch.sources.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.query`

---

### `cloudsearch.stats.getIndex`

**GET** `v1/stats/index`

Gets indexed item statistics aggreggated across all data sources. This API only returns statistics for previous dates; it doesn't return statistics for the current day. **Note:** This API requires a standard end user account to execute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `fromDate.day` | `integer` | query | No | Day of month. Must be from 1 to 31 and valid for the year and month. |
| `fromDate.month` | `integer` | query | No | Month of date. Must be from 1 to 12. |
| `fromDate.year` | `integer` | query | No | Year of date. Must be from 1 to 9999. |
| `toDate.day` | `integer` | query | No | Day of month. Must be from 1 to 31 and valid for the year and month. |
| `toDate.month` | `integer` | query | No | Month of date. Must be from 1 to 12. |
| `toDate.year` | `integer` | query | No | Year of date. Must be from 1 to 9999. |

**Response**: `GetCustomerIndexStatsResponse`

```typescript
const res = await cloudsearch.stats.getIndex({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.stats`
- `https://www.googleapis.com/auth/cloud_search.stats.indexing`

---

### `cloudsearch.stats.getQuery`

**GET** `v1/stats/query`

Get the query statistics for customer. **Note:** This API requires a standard end user account to execute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `fromDate.day` | `integer` | query | No | Day of month. Must be from 1 to 31 and valid for the year and month. |
| `fromDate.month` | `integer` | query | No | Month of date. Must be from 1 to 12. |
| `fromDate.year` | `integer` | query | No | Year of date. Must be from 1 to 9999. |
| `toDate.day` | `integer` | query | No | Day of month. Must be from 1 to 31 and valid for the year and month. |
| `toDate.month` | `integer` | query | No | Month of date. Must be from 1 to 12. |
| `toDate.year` | `integer` | query | No | Year of date. Must be from 1 to 9999. |

**Response**: `GetCustomerQueryStatsResponse`

```typescript
const res = await cloudsearch.stats.getQuery({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.stats`
- `https://www.googleapis.com/auth/cloud_search.stats.indexing`

---

### `cloudsearch.stats.getUser`

**GET** `v1/stats/user`

Get the users statistics for customer. **Note:** This API requires a standard end user account to execute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `fromDate.day` | `integer` | query | No | Day of month. Must be from 1 to 31 and valid for the year and month. |
| `fromDate.month` | `integer` | query | No | Month of date. Must be from 1 to 12. |
| `fromDate.year` | `integer` | query | No | Year of date. Must be from 1 to 9999. |
| `toDate.day` | `integer` | query | No | Day of month. Must be from 1 to 31 and valid for the year and month. |
| `toDate.month` | `integer` | query | No | Month of date. Must be from 1 to 12. |
| `toDate.year` | `integer` | query | No | Year of date. Must be from 1 to 9999. |

**Response**: `GetCustomerUserStatsResponse`

```typescript
const res = await cloudsearch.stats.getUser({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.stats`
- `https://www.googleapis.com/auth/cloud_search.stats.indexing`

---

### `cloudsearch.stats.getSession`

**GET** `v1/stats/session`

Get the # of search sessions, % of successful sessions with a click query statistics for customer. **Note:** This API requires a standard end user account to execute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `fromDate.day` | `integer` | query | No | Day of month. Must be from 1 to 31 and valid for the year and month. |
| `fromDate.month` | `integer` | query | No | Month of date. Must be from 1 to 12. |
| `fromDate.year` | `integer` | query | No | Year of date. Must be from 1 to 9999. |
| `toDate.day` | `integer` | query | No | Day of month. Must be from 1 to 31 and valid for the year and month. |
| `toDate.month` | `integer` | query | No | Month of date. Must be from 1 to 12. |
| `toDate.year` | `integer` | query | No | Year of date. Must be from 1 to 9999. |

**Response**: `GetCustomerSessionStatsResponse`

```typescript
const res = await cloudsearch.stats.getSession({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.stats`
- `https://www.googleapis.com/auth/cloud_search.stats.indexing`

---

### `cloudsearch.stats.getSearchapplication`

**GET** `v1/stats/searchapplication`

Get search application stats for customer. **Note:** This API requires a standard end user account to execute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `endDate.day` | `integer` | query | No | Day of month. Must be from 1 to 31 and valid for the year and month. |
| `endDate.month` | `integer` | query | No | Month of date. Must be from 1 to 12. |
| `endDate.year` | `integer` | query | No | Year of date. Must be from 1 to 9999. |
| `startDate.day` | `integer` | query | No | Day of month. Must be from 1 to 31 and valid for the year and month. |
| `startDate.month` | `integer` | query | No | Month of date. Must be from 1 to 12. |
| `startDate.year` | `integer` | query | No | Year of date. Must be from 1 to 9999. |

**Response**: `GetCustomerSearchApplicationStatsResponse`

```typescript
const res = await cloudsearch.stats.getSearchapplication({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.stats`
- `https://www.googleapis.com/auth/cloud_search.stats.indexing`

---

### `cloudsearch.stats.index.datasources.get`

**GET** `v1/stats/index/{+name}`

Gets indexed item statistics for a single data source. **Note:** This API requires a standard end user account to execute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource id of the data source to retrieve statistics for, in the following format: "datasources/{source_id}" |
| `fromDate.day` | `integer` | query | No | Day of month. Must be from 1 to 31 and valid for the year and month. |
| `fromDate.month` | `integer` | query | No | Month of date. Must be from 1 to 12. |
| `fromDate.year` | `integer` | query | No | Year of date. Must be from 1 to 9999. |
| `toDate.day` | `integer` | query | No | Day of month. Must be from 1 to 31 and valid for the year and month. |
| `toDate.month` | `integer` | query | No | Month of date. Must be from 1 to 12. |
| `toDate.year` | `integer` | query | No | Year of date. Must be from 1 to 9999. |

**Response**: `GetDataSourceIndexStatsResponse`

```typescript
const res = await cloudsearch.datasources.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.stats`
- `https://www.googleapis.com/auth/cloud_search.stats.indexing`

---

### `cloudsearch.stats.query.searchapplications.get`

**GET** `v1/stats/query/{+name}`

Get the query statistics for search application. **Note:** This API requires a standard end user account to execute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource id of the search application query stats, in the following format: searchapplications/{application_id} |
| `fromDate.day` | `integer` | query | No | Day of month. Must be from 1 to 31 and valid for the year and month. |
| `fromDate.month` | `integer` | query | No | Month of date. Must be from 1 to 12. |
| `fromDate.year` | `integer` | query | No | Year of date. Must be from 1 to 9999. |
| `toDate.day` | `integer` | query | No | Day of month. Must be from 1 to 31 and valid for the year and month. |
| `toDate.month` | `integer` | query | No | Month of date. Must be from 1 to 12. |
| `toDate.year` | `integer` | query | No | Year of date. Must be from 1 to 9999. |

**Response**: `GetSearchApplicationQueryStatsResponse`

```typescript
const res = await cloudsearch.searchapplications.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.stats`
- `https://www.googleapis.com/auth/cloud_search.stats.indexing`

---

### `cloudsearch.stats.user.searchapplications.get`

**GET** `v1/stats/user/{+name}`

Get the users statistics for search application. **Note:** This API requires a standard end user account to execute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource id of the search application session stats, in the following format: searchapplications/{application_id} |
| `fromDate.day` | `integer` | query | No | Day of month. Must be from 1 to 31 and valid for the year and month. |
| `fromDate.month` | `integer` | query | No | Month of date. Must be from 1 to 12. |
| `fromDate.year` | `integer` | query | No | Year of date. Must be from 1 to 9999. |
| `toDate.day` | `integer` | query | No | Day of month. Must be from 1 to 31 and valid for the year and month. |
| `toDate.month` | `integer` | query | No | Month of date. Must be from 1 to 12. |
| `toDate.year` | `integer` | query | No | Year of date. Must be from 1 to 9999. |

**Response**: `GetSearchApplicationUserStatsResponse`

```typescript
const res = await cloudsearch.searchapplications.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.stats`
- `https://www.googleapis.com/auth/cloud_search.stats.indexing`

---

### `cloudsearch.stats.session.searchapplications.get`

**GET** `v1/stats/session/{+name}`

Get the # of search sessions, % of successful sessions with a click query statistics for search application. **Note:** This API requires a standard end user account to execute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource id of the search application session stats, in the following format: searchapplications/{application_id} |
| `fromDate.day` | `integer` | query | No | Day of month. Must be from 1 to 31 and valid for the year and month. |
| `fromDate.month` | `integer` | query | No | Month of date. Must be from 1 to 12. |
| `fromDate.year` | `integer` | query | No | Year of date. Must be from 1 to 9999. |
| `toDate.day` | `integer` | query | No | Day of month. Must be from 1 to 31 and valid for the year and month. |
| `toDate.month` | `integer` | query | No | Month of date. Must be from 1 to 12. |
| `toDate.year` | `integer` | query | No | Year of date. Must be from 1 to 9999. |

**Response**: `GetSearchApplicationSessionStatsResponse`

```typescript
const res = await cloudsearch.searchapplications.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.stats`
- `https://www.googleapis.com/auth/cloud_search.stats.indexing`

---

### `cloudsearch.media.upload`

**POST** `v1/media/{+resourceName}`

Uploads media for indexing. The upload endpoint supports direct and resumable upload protocols and is intended for large items that can not be [inlined during index requests](https://developers.google.com/workspace/cloud-search/docs/reference/rest/v1/indexing.datasources.items#itemcontent). To index large content: 1. Call indexing.datasources.items.upload with the item name to begin an upload session and retrieve the UploadItemRef. 1. Call media.upload to upload the content, as a streaming request, using the same resource name from the UploadItemRef from step 1. 1. Call indexing.datasources.items.index to index the item. Populate the [ItemContent](/cloud-search/docs/reference/rest/v1/indexing.datasources.items#ItemContent) with the UploadItemRef from step 1. For additional information, see [Create a content connector using the REST API](https://developers.google.com/workspace/cloud-search/docs/guides/content-connector#rest). **Note:** This API requires a service account to execute.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resourceName` | `string` | path | Yes | Name of the media that is being downloaded. See ReadRequest.resource_name. |

**Request body**: `Media`

**Response**: `Media`

```typescript
const res = await cloudsearch.media.upload({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud_search`
- `https://www.googleapis.com/auth/cloud_search.indexing`

---

## Schemas

### `Action`

| Property | Type | Description |
|----------|------|-------------|
| `title` | `string` | [Required] Title of the action. |
| `url` | `string` | [Optional] Url of the action. |

### `AuditLoggingSettings`

Represents the settings for Cloud audit logging

| Property | Type | Description |
|----------|------|-------------|
| `logAdminReadActions` | `boolean` | Indicates whether audit logging is on/off for admin activity read APIs i.e. Get/List DataSources,... |
| `logDataReadActions` | `boolean` | Indicates whether audit logging is on/off for data access read APIs i.e. ListItems, GetItem etc. |
| `logDataWriteActions` | `boolean` | Indicates whether audit logging is on/off for data access write APIs i.e. IndexItem etc. |
| `project` | `string` | The resource name of the GCP Project to store audit logs. Cloud audit logging will be enabled aft... |

### `BackgroundColoredText`

| Property | Type | Description |
|----------|------|-------------|
| `backgroundColor` | `string` | [Optional] Color of the background. The text color can change depending on the selected backgroun... |
| `text` | `string` | [Required] The text to display. |

### `BooleanOperatorOptions`

Used to provide a search operator for boolean properties. This is optional. Search operators let users restrict the query to specific fields relevant to the type of item being searched.

| Property | Type | Description |
|----------|------|-------------|
| `operatorName` | `string` | Indicates the operator name required in the query in order to isolate the boolean property. For e... |

### `BooleanPropertyOptions`

The options for boolean properties.

| Property | Type | Description |
|----------|------|-------------|
| `operatorOptions` | `BooleanOperatorOptions` | If set, describes how the boolean should be used as a search operator. |

### `CheckAccessResponse`

| Property | Type | Description |
|----------|------|-------------|
| `hasAccess` | `boolean` | Returns true if principal has access. Returns false otherwise. |

### `CompositeFilter`

| Property | Type | Description |
|----------|------|-------------|
| `logicOperator` | `string` | The logic operator of the sub filter. |
| `subFilters` | `array<Filter>` | Sub filters. |

### `Content`

| Property | Type | Description |
|----------|------|-------------|
| `actions` | `array<Action>` | [Optional] Actions for this card. |
| `description` | `SafeHtmlProto` | [Optional] Description of the card. |
| `subtitle` | `BackgroundColoredText` | [Optional] Subtitle of the card. |
| `title` | `BackgroundColoredText` | [Optional] Title of the card. |

### `Context`

| Property | Type | Description |
|----------|------|-------------|
| `app` | `array<string>` | [Optional] App where the card should be shown. If missing, the card will be shown in TOPAZ. |
| `dayOfWeek` | `array<integer>` | [Optional] Day of week when the card should be shown, where 0 is Monday. |
| `endDateSec` | `string` | [Optional] Date (in seconds since epoch) when the card should stop being shown. If missing, end_d... |
| `endDayOffsetSec` | `string` | [Optional] End time in seconds, within a day, when the card should stop being shown if it's withi... |
| `locale` | `array<string>` | [Optional] The locales for which the card should be triggered (e.g., en_US and en_CA). If missing... |
| `location` | `array<string>` | [Optional] Text-free locations where the card should be shown. This is expected to match the user... |
| `query` | `array<string>` | [Required only for Answer and RHS cards - will be ignored for Homepage] cards. It's the exact cas... |
| `startDateSec` | `string` | [Optional] Date (in seconds since epoch) when the card should start being shown. If missing, star... |
| `startDayOffsetSec` | `string` | [Optional] Start time in seconds, within a day, when the card should be shown if it's within [sta... |
| `surface` | `array<string>` | [Optional] Surface where the card should be shown in. If missing, the card will be shown in any s... |
| `type` | `array<string>` | [Required] Type of the card (homepage, Answer or RHS). |

### `ContextAttribute`

A named attribute associated with an item which can be used for influencing the ranking of the item based on the context in the request.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name of the attribute. It should not be empty. The maximum length is 32 characters. The name ... |
| `values` | `array<string>` | Text values of the attribute. The maximum number of elements is 10. The maximum length of an elem... |

### `CustomerIndexStats`

Aggregation of items by status code as of the specified date.

| Property | Type | Description |
|----------|------|-------------|
| `date` | `Date` | The date for which statistics were calculated. |
| `itemCountByStatus` | `array<ItemCountByStatus>` | Number of items aggregrated by status code. |

### `CustomerQueryStats`

| Property | Type | Description |
|----------|------|-------------|
| `date` | `Date` | The date for which query stats were calculated. Stats calculated on the next day close to midnigh... |
| `queryCountByStatus` | `array<QueryCountByStatus>` |  |

### `CustomerSearchApplicationStats`

Search application stats for a customer for the given date.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `string` | The count of search applications for the date. |
| `date` | `Date` | The date for which search application stats were calculated. |

### `CustomerSessionStats`

| Property | Type | Description |
|----------|------|-------------|
| `date` | `Date` | The date for which session stats were calculated. Stats are calculated on the following day, clos... |
| `searchSessionsCount` | `string` | The count of search sessions on the day |

### `CustomerSettings`

Represents settings at a customer level.

| Property | Type | Description |
|----------|------|-------------|
| `auditLoggingSettings` | `AuditLoggingSettings` | Audit Logging settings for the customer. If update_mask is empty then this field will be updated ... |
| `vpcSettings` | `VPCSettings` | VPC SC settings for the customer. If update_mask is empty then this field will be updated based o... |

### `CustomerUserStats`

| Property | Type | Description |
|----------|------|-------------|
| `date` | `Date` | The date for which session stats were calculated. Stats calculated on the next day close to midni... |
| `oneDayActiveUsersCount` | `string` | The count of unique active users in the past one day |
| `sevenDaysActiveUsersCount` | `string` | The count of unique active users in the past seven days |
| `thirtyDaysActiveUsersCount` | `string` | The count of unique active users in the past thirty days |

### `DataSource`

Datasource is a logical namespace for items to be indexed. All items must belong to a datasource. This is the prerequisite before items can be indexed into Cloud Search.

| Property | Type | Description |
|----------|------|-------------|
| `disableModifications` | `boolean` | If true, sets the datasource to read-only mode. In read-only mode, the Indexing API rejects any r... |
| `disableServing` | `boolean` | Disable serving any search or assist results. |
| `displayName` | `string` | Required. Display name of the datasource The maximum length is 300 characters. |
| `indexingServiceAccounts` | `array<string>` | List of service accounts that have indexing access. |
| `itemsVisibility` | `array<GSuitePrincipal>` | This field restricts visibility to items at the datasource level. Items within the datasource are... |
| `name` | `string` | The name of the datasource resource. Format: datasources/{source_id}. The name is ignored when cr... |
| `operationIds` | `array<string>` | IDs of the Long Running Operations (LROs) currently running for this schema. |
| `returnThumbnailUrls` | `boolean` | Can a user request to get thumbnail URI for Items indexed in this data source. |
| `shortName` | `string` | A short name or alias for the source. This value will be used to match the 'source' operator. For... |

### `DataSourceIndexStats`

Aggregation of items by status code as of the specified date.

| Property | Type | Description |
|----------|------|-------------|
| `date` | `Date` | The date for which index stats were calculated. If the date of request is not the current date th... |
| `itemCountByStatus` | `array<ItemCountByStatus>` | Number of items aggregrated by status code. |

### `DataSourceRestriction`

Restriction on Datasource.

| Property | Type | Description |
|----------|------|-------------|
| `filterOptions` | `array<FilterOptions>` | Filter options restricting the results. If multiple filters are present, they are grouped by obje... |
| `source` | `Source` | The source of restriction. |

### `Date`

Represents a whole calendar date, for example a date of birth. The time of day and time zone are either specified elsewhere or are not significant. The date is relative to the [Proleptic Gregorian Calendar](https://en.wikipedia.org/wiki/Proleptic_Gregorian_calendar). The date must be a valid calendar date between the year 1 and 9999.

| Property | Type | Description |
|----------|------|-------------|
| `day` | `integer` | Day of month. Must be from 1 to 31 and valid for the year and month. |
| `month` | `integer` | Month of date. Must be from 1 to 12. |
| `year` | `integer` | Year of date. Must be from 1 to 9999. |

### `DateOperatorOptions`

Optional. Provides a search operator for date properties. Search operators let users restrict the query to specific fields relevant to the type of item being searched.

| Property | Type | Description |
|----------|------|-------------|
| `greaterThanOperatorName` | `string` | Indicates the operator name required in the query in order to isolate the date property using the... |
| `lessThanOperatorName` | `string` | Indicates the operator name required in the query in order to isolate the date property using the... |
| `operatorName` | `string` | Indicates the actual string required in the query in order to isolate the date property. For exam... |

### `DatePropertyOptions`

The options for date properties.

| Property | Type | Description |
|----------|------|-------------|
| `operatorOptions` | `DateOperatorOptions` | If set, describes how the date should be used as a search operator. |

### `DateValues`

List of date values.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<Date>` |  |

### `DebugOptions`

Shared request debug options for all cloudsearch RPC methods.

| Property | Type | Description |
|----------|------|-------------|
| `enableDebugging` | `boolean` | If you are asked by Google to help with debugging, set this field. Otherwise, ignore this field. |

### `DeleteQueueItemsRequest`

| Property | Type | Description |
|----------|------|-------------|
| `connectorName` | `string` | The name of connector making this call. Format: datasources/{source_id}/connectors/{ID} |
| `debugOptions` | `DebugOptions` | Common debug options. |
| `queue` | `string` | The name of a queue to delete items from. |

### `DisplayedProperty`

A reference to a top-level property within the object that should be displayed in search results. The values of the chosen properties is displayed in the search results along with the display label for that property if one is specified. If a display label is not specified, only the values is shown.

| Property | Type | Description |
|----------|------|-------------|
| `propertyName` | `string` | The name of the top-level property as defined in a property definition for the object. If the nam... |

### `DoubleOperatorOptions`

Used to provide a search operator for double properties. This is optional. Search operators let users restrict the query to specific fields relevant to the type of item being searched.

| Property | Type | Description |
|----------|------|-------------|
| `operatorName` | `string` | Indicates the operator name required in the query in order to use the double property in sorting ... |

### `DoublePropertyOptions`

The options for double properties.

| Property | Type | Description |
|----------|------|-------------|
| `operatorOptions` | `DoubleOperatorOptions` | If set, describes how the double should be used as a search operator. |

### `DoubleValues`

List of double values.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<number>` |  |

### `DriveFollowUpRestrict`

Drive follow-up search restricts (e.g. "followup:suggestions").

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` |  |

### `DriveLocationRestrict`

Drive location search restricts (e.g. "is:starred").

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` |  |

### `DriveMimeTypeRestrict`

Drive mime-type search restricts (e.g. "type:pdf").

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` |  |

### `DriveTimeSpanRestrict`

The time span search restrict (e.g. "after:2017-09-11 before:2017-09-12").

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` |  |

### `EmailAddress`

A person's email address.

| Property | Type | Description |
|----------|------|-------------|
| `customType` | `string` | If the value of type is custom, this property contains the custom type string. |
| `emailAddress` | `string` | The email address. |
| `emailUrl` | `string` | The URL to send email. |
| `primary` | `boolean` | Indicates if this is the user's primary email. Only one entry can be marked as primary. |
| `type` | `string` | The type of the email account. Acceptable values are: "custom", "home", "other", "work". |

### `EnterpriseTopazFrontendTeamsLink`

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | The identifying link type |
| `url` | `SafeUrlProto` |  |

### `EnterpriseTopazFrontendTeamsPersonCorePhoneNumber`

| Property | Type | Description |
|----------|------|-------------|
| `phoneNumber` | `string` | Phone number in no particular format (as comes from the Focus profile). |
| `phoneUrl` | `SafeUrlProto` | Phone number URL |
| `type` | `string` |  |

### `EnterpriseTopazSidekickAgendaEntry`

An AgendaEntry, e.g., a Calendar Event.

| Property | Type | Description |
|----------|------|-------------|
| `agendaItemUrl` | `string` | URL of the agenda item. |
| `chronology` | `string` | The chronology from the present. |
| `creator` | `EnterpriseTopazSidekickPerson` | Person who created the event. |
| `currentUserAttendingStatus` | `string` | Attendance status for the current user making the request. This is a convenience data member in o... |
| `description` | `string` | Description of the agenda item (i.e., typically, summary in calendar event). |
| `document` | `array<EnterpriseTopazSidekickCommonDocument>` | Items related to the current AgendaEntry. E.g., related drive/mail/groups documents. |
| `endDate` | `string` | End date "Friday, August 26" in the user's timezone. |
| `endTime` | `string` | End time (HH:mm) in the user's timezone. |
| `endTimeMs` | `string` | End time in milliseconds |
| `eventId` | `string` | Event id provided by Calendar API. |
| `guestsCanInviteOthers` | `boolean` | Whether the guests can invite other guests. |
| `guestsCanModify` | `boolean` | Whether the guests can modify the event. |
| `guestsCanSeeGuests` | `boolean` | Whether the guests of the event can be seen. If false, the user is going to be reported as the on... |
| `hangoutId` | `string` | Hangout meeting identifier. |
| `hangoutUrl` | `string` | Absolute URL for the Hangout meeting. |
| `invitee` | `array<EnterpriseTopazSidekickPerson>` | People attending the meeting. |
| `isAllDay` | `boolean` | Whether the entry lasts all day. |
| `lastModificationTimeMs` | `string` | Last time the event was modified. |
| `location` | `string` | Agenda item location. |
| `notifyToUser` | `boolean` | Whether this should be notified to the user. |
| `otherAttendeesExcluded` | `boolean` | Whether guest list is not returned because number of attendees is too large. |
| `requesterIsOwner` | `boolean` | Whether the requester is the owner of the agenda entry. |
| `showFullEventDetailsToUse` | `boolean` | Whether the details of this entry should be displayed to the user. |
| `startDate` | `string` | Start date "Friday, August 26" in the user's timezone. |
| `startTime` | `string` | Start time (HH:mm) in the user's timezone. |
| `startTimeMs` | `string` | Start time in milliseconds. |
| `timeZone` | `string` | User's calendar timezone; |
| `title` | `string` | Title of the agenda item. |

### `EnterpriseTopazSidekickAgendaGroupCardProto`

| Property | Type | Description |
|----------|------|-------------|
| `agendaItem` | `array<EnterpriseTopazSidekickAgendaItem>` |  |
| `context` | `EnterpriseTopazSidekickAgendaGroupCardProtoContext` |  |
| `currentAgendaItem` | `EnterpriseTopazSidekickAgendaItem` |  |

### `EnterpriseTopazSidekickAgendaGroupCardProtoContext`

The context that resulted in the generation of the card.

| Property | Type | Description |
|----------|------|-------------|
| `context` | `string` | User friendly free text that describes the context of the card (e.g. "Next meeting with Bob"). Th... |
| `date` | `string` | Localized free text that describes the dates represented by the card. Currently, the card will on... |
| `eventsRestrict` | `string` | Represents restrictions applied to the events requested in the user's query. |

### `EnterpriseTopazSidekickAgendaItem`

| Property | Type | Description |
|----------|------|-------------|
| `conflictedGroup` | `EnterpriseTopazSidekickConflictingEventsCardProto` |  |
| `gapBefore` | `EnterpriseTopazSidekickGap` |  |
| `meeting` | `EnterpriseTopazSidekickAgendaEntry` |  |

### `EnterpriseTopazSidekickAnswerAnswerList`

A list of answers represented as free text.

| Property | Type | Description |
|----------|------|-------------|
| `labeledAnswer` | `array<EnterpriseTopazSidekickAnswerAnswerListLabeledAnswer>` | Answers that have a corresponding label. |
| `type` | `string` | Answer type. |

### `EnterpriseTopazSidekickAnswerAnswerListLabeledAnswer`

An answer with a corresponding label.

| Property | Type | Description |
|----------|------|-------------|
| `answer` | `string` | The free text answer. |
| `label` | `string` | A localized label for the answer (e.g. "Cell phone" vs "Desk phone"). |

### `EnterpriseTopazSidekickAnswerSuggestedQueryAnswerCard`

Contains a list of suggested queries. Allows the user to determine what natural language queries they can ask Cloud Search (e.g. "what can I search for?").

| Property | Type | Description |
|----------|------|-------------|
| `suggestedQueryCategory` | `array<EnterpriseTopazSidekickAnswerSuggestedQueryCategory>` | A list of queries to suggest. |

### `EnterpriseTopazSidekickAnswerSuggestedQueryCategory`

Contains a list of suggested queries for a single category.

| Property | Type | Description |
|----------|------|-------------|
| `category` | `string` | The query list category. |
| `isEnabled` | `boolean` | Whether this category is enabled. |
| `query` | `array<string>` | List of suggested queries to show the user. |

### `EnterpriseTopazSidekickAssistCardProto`

Wrapper proto for the Assist cards.

| Property | Type | Description |
|----------|------|-------------|
| `agendaGroupCardProto` | `EnterpriseTopazSidekickAgendaGroupCardProto` | Agenda group card. |
| `cardMetadata` | `EnterpriseTopazSidekickCardMetadata` | Card metadata such as chronology and render mode of the card. |
| `cardType` | `string` | Card type. |
| `conflictingMeetingsCard` | `EnterpriseTopazSidekickConflictingEventsCardProto` | Conflicting events card. |
| `documentListCard` | `EnterpriseTopazSidekickDocumentPerCategoryList` | Answer card for documents that are applicable to the current query. |
| `documentsWithMentions` | `EnterpriseTopazSidekickDocumentPerCategoryList` | Documents with mentions. |
| `findMeetingTimeCard` | `EnterpriseTopazSidekickFindMeetingTimeCardProto` | Find meeting time card. |
| `genericAnswerCard` | `EnterpriseTopazSidekickGenericAnswerCard` | Generic answer card. |
| `getAndKeepAheadCard` | `EnterpriseTopazSidekickGetAndKeepAheadCardProto` | Get and keep ahead card. |
| `meeting` | `EnterpriseTopazSidekickAgendaEntry` | Meeting card. |
| `meetingNotesCard` | `EnterpriseTopazSidekickMeetingNotesCardProto` | Meeting notes card. |
| `meetingNotesCardRequest` | `EnterpriseTopazSidekickMeetingNotesCardRequest` | Request for meeting notes card. |
| `peopleDisambiguationCard` | `EnterpriseTopazSidekickPeopleDisambiguationCard` | The people disambiguation card. |
| `peoplePromotionCard` | `PeoplePromotionCard` | People Search promotion card. |
| `personAnswerCard` | `EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard` | Answer card that represents a single person. |
| `personProfileCard` | `EnterpriseTopazSidekickPersonProfileCard` | Full profile card. |
| `personalizedDocsCard` | `EnterpriseTopazSidekickPersonalizedDocsCardProto` | Card with recommended documents for the user. |
| `relatedPeopleAnswerCard` | `EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard` | Answer card that represents a list of people related to a person. |
| `shareMeetingDocsCard` | `EnterpriseTopazSidekickShareMeetingDocsCardProto` | Sahre meeting docs card. |
| `sharedDocuments` | `EnterpriseTopazSidekickDocumentPerCategoryList` | Shared documents. |
| `suggestedQueryAnswerCard` | `EnterpriseTopazSidekickAnswerSuggestedQueryAnswerCard` | Answer card for what natural language queries the user can ask. |
| `thirdPartyAnswerCard` | `ThirdPartyGenericCard` | Third party answer cards. |
| `workInProgressCardProto` | `EnterpriseTopazSidekickRecentDocumentsCardProto` | Work In Progress card. |

### `EnterpriseTopazSidekickCardMetadata`

Card metadata.

| Property | Type | Description |
|----------|------|-------------|
| `cardCategory` | `string` | Declares a preference for how this card should be packed in MSCR. All cards in a response must co... |
| `cardId` | `string` | An ID to identify the card and match actions to it. Be thoughtful of new card IDs since actions w... |
| `chronology` | `string` | Chronology. |
| `debugInfo` | `string` | Debug info (only reported if request's debug_level > 0). |
| `nlpMetadata` | `EnterpriseTopazSidekickNlpMetadata` | Information about the NLP done to get the card. |
| `rankingParams` | `EnterpriseTopazSidekickRankingParams` | Ranking params. |
| `renderMode` | `string` | Render mode. |

### `EnterpriseTopazSidekickCommonDebugInfo`

Container of debugging information in all object levels. Extend as needed.

| Property | Type | Description |
|----------|------|-------------|
| `message` | `string` | Debug message. |

### `EnterpriseTopazSidekickCommonDocument`

Representation of a document. NEXT_TAG: 15

| Property | Type | Description |
|----------|------|-------------|
| `accessType` | `string` | Access type, i.e., whether the user has access to the document or not. |
| `debugInfo` | `EnterpriseTopazSidekickCommonDebugInfo` | Information for debugging. |
| `documentId` | `string` | Document id. |
| `driveDocumentMetadata` | `EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata` | Drive document metadata. |
| `genericUrl` | `string` | Generic Drive-based url in the format of drive.google.com/open to be used for deeplink |
| `justification` | `EnterpriseTopazSidekickCommonDocumentJustification` | Justification on why the document is selected. |
| `mimeType` | `string` | MIME type |
| `provenance` | `string` | Document provenance. |
| `reason` | `string` | Justification of why this document is being returned. |
| `snippet` | `string` | A sampling of the text from the document. |
| `thumbnailUrl` | `string` | Thumbnail URL. |
| `title` | `string` | Title of the document. |
| `type` | `string` | Type of the document. |
| `url` | `string` | Absolute URL of the document. |

### `EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata`

Meta data for drive documents.

| Property | Type | Description |
|----------|------|-------------|
| `documentId` | `string` | The drive document cosmo id. Client could use the id to build a URL to open a document. Please us... |
| `isPrivate` | `boolean` | Additional field to identify whether a document is private since scope set to LIMITED can mean bo... |
| `lastCommentTimeMs` | `string` | Timestamp of the most recent comment added to the document in milliseconds since epoch. |
| `lastEditTimeMs` | `string` | Timestamp of the most recent edit from the current user in milliseconds since epoch. |
| `lastModificationTimeMillis` | `string` | Last modification time of the document (independent of the user that modified it). |
| `lastUpdatedTimeMs` | `string` | Timestamp of the last updated time of the document in milliseconds since epoch. |
| `lastViewTimeMs` | `string` | Timestamp of the most recent view from the current user in milliseconds since epoch. |
| `owner` | `EnterpriseTopazSidekickCommonPerson` | The owner of the document. |
| `scope` | `string` | ACL scope of the document which identifies the sharing status of the doc (e.g., limited, shared w... |

### `EnterpriseTopazSidekickCommonDocumentJustification`

Justification of why we are reporting the document.

| Property | Type | Description |
|----------|------|-------------|
| `justification` | `string` | A locale aware message that explains why this document was selected. |
| `reason` | `string` | Reason on why the document is selected. Populate for trending documents. |

### `EnterpriseTopazSidekickCommonPerson`

Common representation of a person.

| Property | Type | Description |
|----------|------|-------------|
| `birthday` | `EnterpriseTopazSidekickCommonPersonBirthday` | The birthday. |
| `cellPhone` | `string` | Cell phone number. |
| `department` | `string` | The department the person works in (e.g. Engineering). |
| `deskLocation` | `string` | Desk location (e.g. US-MTV-PR55-5-5B1I). |
| `deskPhone` | `string` | Work desk phone number. |
| `displayName` | `string` | The full name. |
| `email` | `string` | Email. |
| `familyName` | `string` | The last name. |
| `fullAddress` | `string` | The fully formatted address (e.g. 1255 Pear Avenue, Mountain View 94043, United States). |
| `gaiaId` | `string` | This field is deprecated. The obfuscated_id should be used instead. |
| `givenName` | `string` | The first name. |
| `jobTitle` | `string` | The person's job title (e.g. Software Engineer). |
| `manager` | `EnterpriseTopazSidekickCommonPerson` | The manager. |
| `obfuscatedId` | `string` | The obfuscated GAIA ID. |
| `photoUrl` | `string` | The URL for the Focus profile picture. |
| `streetAddress` | `string` | The street address (e.g. 1255 Pear Avenue). |

### `EnterpriseTopazSidekickCommonPersonBirthday`

| Property | Type | Description |
|----------|------|-------------|
| `value` | `string` | Unstructured birthday. |

### `EnterpriseTopazSidekickConflictingEventsCardProto`

Conflicting meetings card proto.

| Property | Type | Description |
|----------|------|-------------|
| `conflictingEvent` | `array<EnterpriseTopazSidekickAgendaEntry>` | All the events that conflict with main_event. |
| `mainEvent` | `EnterpriseTopazSidekickAgendaEntry` | The event identified as being the most important. |

### `EnterpriseTopazSidekickDocumentGroup`

Represents a mapping between a document type and its corresponding documents. Use for Work in Progress card in v1 homepage.

| Property | Type | Description |
|----------|------|-------------|
| `groupType` | `string` | Document group type |
| `personalizedDocument` | `array<EnterpriseTopazSidekickCommonDocument>` | The list of corresponding documents. |

### `EnterpriseTopazSidekickDocumentPerCategoryList`

| Property | Type | Description |
|----------|------|-------------|
| `documents` | `array<EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry>` |  |
| `helpMessage` | `string` | Localized message explaining how the documents were derived (e.g. from the last 30 days activity)... |
| `listType` | `string` |  |
| `listTypeDescription` | `string` | Description of the types of documents present in the list. |
| `responseMessage` | `string` | Response message in case no documents are present in the card. |

### `EnterpriseTopazSidekickDocumentPerCategoryListDocumentPerCategoryListEntry`

| Property | Type | Description |
|----------|------|-------------|
| `category` | `string` |  |
| `document` | `EnterpriseTopazSidekickCommonDocument` |  |
| `rationale` | `string` | Reason this document was selected. |

### `EnterpriseTopazSidekickFindMeetingTimeCardProto`

Response to find meeting time among a set of people.

| Property | Type | Description |
|----------|------|-------------|
| `commonAvailableTimeSlots` | `array<EnterpriseTopazSidekickTimeSlot>` | Slots when all attendees have availability. |
| `invitees` | `array<EnterpriseTopazSidekickPerson>` | Invitees to the event. |
| `requester` | `EnterpriseTopazSidekickPerson` | Requester. |
| `scheduledMeeting` | `EnterpriseTopazSidekickScheduledMeeting` | Details about the scheduled meeting, if one exists. |
| `skippedInvitees` | `array<EnterpriseTopazSidekickPerson>` | Invitees that have been skipped in the computation, most likely because they are groups. |
| `timeBoundaries` | `EnterpriseTopazSidekickTimeSlot` | Min and max timestamp used to find a common available timeslot. |
| `timezoneId` | `string` | Timezone ID. |

### `EnterpriseTopazSidekickGap`

| Property | Type | Description |
|----------|------|-------------|
| `displayRemainingTime` | `string` | Localized time string in the format: 1 hour 15 minutes |
| `endTime` | `string` | Localized time string in the format:(Locale CZ) 8:30 odp. |
| `endTimeMs` | `string` |  |
| `remainingTime` | `string` |  |
| `startTime` | `string` | Localized time string in the format:(Locale CZ) 8:30 odp. |
| `startTimeMs` | `string` |  |

### `EnterpriseTopazSidekickGenericAnswerCard`

| Property | Type | Description |
|----------|------|-------------|
| `answer` | `string` | The answer. |
| `title` | `string` | Title or header of the card. |

### `EnterpriseTopazSidekickGetAndKeepAheadCardProto`

Get and keep ahead card

| Property | Type | Description |
|----------|------|-------------|
| `declinedEvents` | `EnterpriseTopazSidekickGetAndKeepAheadCardProtoDeclinedEvents` |  |
| `mentionedDocuments` | `EnterpriseTopazSidekickDocumentPerCategoryList` |  |
| `sharedDocuments` | `EnterpriseTopazSidekickDocumentPerCategoryList` |  |

### `EnterpriseTopazSidekickGetAndKeepAheadCardProtoDeclinedEvents`

A list of events where all guests declined.

| Property | Type | Description |
|----------|------|-------------|
| `events` | `array<EnterpriseTopazSidekickAgendaEntry>` |  |

### `EnterpriseTopazSidekickMeetingNotesCardError`

Errors in the creation of meeting notes.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | The description of the reason why create-meeting-notes failed. |
| `event` | `EnterpriseTopazSidekickAgendaEntry` | The event to request meeting notes creation |
| `reason` | `string` | The reason why create-meeting-notes failed. |

### `EnterpriseTopazSidekickMeetingNotesCardProto`

Information about the meeting notes created.

| Property | Type | Description |
|----------|------|-------------|
| `event` | `EnterpriseTopazSidekickAgendaEntry` | The event to request meeting notes creation. |
| `fileId` | `string` | Google Drive ID (a.k.a. resource ID) of the file. |
| `title` | `string` | Title we want to show for meeting notes in the answer card |
| `url` | `string` | New URL. |

### `EnterpriseTopazSidekickMeetingNotesCardRequest`

Meeting notes card request.

| Property | Type | Description |
|----------|------|-------------|
| `canCreateFor` | `array<string>` | Who are the meeting notes created for. |
| `error` | `EnterpriseTopazSidekickMeetingNotesCardError` | The error and reason if known error occured. |
| `event` | `EnterpriseTopazSidekickAgendaEntry` | The event to request meeting notes creation |

### `EnterpriseTopazSidekickNlpMetadata`

Metadata about the NLP interpretation of the query.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | Confidence of the interpretation that generated this card. |

### `EnterpriseTopazSidekickPeopleAnswerDisambiguationInfo`

Metadata for disambiguation.

| Property | Type | Description |
|----------|------|-------------|
| `disambiguation` | `array<EnterpriseTopazSidekickPeopleAnswerDisambiguationInfoDisambiguationPerson>` | A list of people that also matched the query. This list is not complete. |
| `name` | `string` | The name that was extracted from the query. This may be in the form of the given name, last name,... |

### `EnterpriseTopazSidekickPeopleAnswerDisambiguationInfoDisambiguationPerson`

A person that also matches the query, but was not selected due to a lower affinity with the requesting user.

| Property | Type | Description |
|----------|------|-------------|
| `person` | `EnterpriseTopazSidekickCommonPerson` | The profile of this person. |
| `query` | `string` | The query that can be used to produce an answer card with the same attribute, but for this person. |

### `EnterpriseTopazSidekickPeopleAnswerPeopleAnswerCardHeader`

Recommended header to display for the card.

| Property | Type | Description |
|----------|------|-------------|
| `title` | `string` | The suggested title to display. This defaults to the user's query. |

### `EnterpriseTopazSidekickPeopleAnswerPersonAnswerCard`

An answer card for a single person.

| Property | Type | Description |
|----------|------|-------------|
| `answer` | `array<SafeHtmlProto>` | List of answers. |
| `answerText` | `EnterpriseTopazSidekickAnswerAnswerList` | List of answers. |
| `disambiguationInfo` | `EnterpriseTopazSidekickPeopleAnswerDisambiguationInfo` | Disambiguation information. |
| `header` | `EnterpriseTopazSidekickPeopleAnswerPeopleAnswerCardHeader` | The header to display for the card. |
| `responseStatus` | `string` | The response status. |
| `statusMessage` | `string` | Localized user friendly message to display to the user in the case of missing data or an error. |
| `subject` | `EnterpriseTopazSidekickCommonPerson` | The profile of the person that was the subject of the query. |

### `EnterpriseTopazSidekickPeopleAnswerRelatedPeopleAnswerCard`

An answer card for a list of people that are related to the subject of the query.

| Property | Type | Description |
|----------|------|-------------|
| `disambiguationInfo` | `EnterpriseTopazSidekickPeopleAnswerDisambiguationInfo` | Disambiguation information. |
| `header` | `EnterpriseTopazSidekickPeopleAnswerPeopleAnswerCardHeader` | The header to display for the card. |
| `relatedPeople` | `array<EnterpriseTopazSidekickCommonPerson>` | A list of people that are related to the query subject. |
| `relationType` | `string` | Defines the type of relation the list of people have with the subject of the card. |
| `responseStatus` | `string` | The response status. |
| `statusMessage` | `string` | Localized user friendly message to display to the user in the case of missing data or an error. |
| `subject` | `EnterpriseTopazSidekickCommonPerson` | The profile of the person that was the subject of the query. |

### `EnterpriseTopazSidekickPeopleDisambiguationCard`

| Property | Type | Description |
|----------|------|-------------|
| `person` | `array<EnterpriseTopazSidekickCommonPerson>` | Candidate persons for the query. |

### `EnterpriseTopazSidekickPerson`

Person.

| Property | Type | Description |
|----------|------|-------------|
| `affinityLevel` | `string` | The level of affinity this person has with the requesting user. |
| `attendingStatus` | `string` | Attendance status of the person when included in a meeting event. |
| `email` | `string` | Email. |
| `gaiaId` | `string` | Gaia id. |
| `isGroup` | `boolean` | Whether the invitee is a group. |
| `name` | `string` | Name. |
| `obfuscatedGaiaId` | `string` | Obfuscated Gaia id. |
| `photoUrl` | `string` | Absolute URL to the profile photo of the person. |

### `EnterpriseTopazSidekickPersonProfileCard`

| Property | Type | Description |
|----------|------|-------------|
| `relatedPeople` | `array<EnterpriseTopazSidekickPersonProfileCardRelatedPeople>` |  |
| `subject` | `EnterpriseTopazSidekickCommonPerson` | The subject of the card. |

### `EnterpriseTopazSidekickPersonProfileCardRelatedPeople`

| Property | Type | Description |
|----------|------|-------------|
| `relatedPerson` | `array<EnterpriseTopazSidekickCommonPerson>` | Related people. |
| `relation` | `string` | Relation type. |

### `EnterpriseTopazSidekickPersonalizedDocsCardProto`

Personalized docs card proto.

| Property | Type | Description |
|----------|------|-------------|
| `documentGroup` | `array<EnterpriseTopazSidekickDocumentGroup>` | Document group. |

### `EnterpriseTopazSidekickRankingParams`

Ranking params.

| Property | Type | Description |
|----------|------|-------------|
| `endTimeMs` | `string` | The end-time that this object will expect to occur. If the type is marked as FIXED, then this end... |
| `priority` | `string` | The priority to determine between objects that have the same start_time_ms The lower-value of pri... |
| `score` | `number` | The score of the card to be used to break priority-ties |
| `spanMs` | `string` | The span that this card will take in the stream Expected to be set when type is set to FLEXIBLE. |
| `startTimeMs` | `string` | The start-time that this object will bid-for If the type is marked as FIXED, then this start-time... |
| `type` | `string` | The packing type of this object. |

### `EnterpriseTopazSidekickRecentDocumentsCardProto`

| Property | Type | Description |
|----------|------|-------------|
| `document` | `array<EnterpriseTopazSidekickCommonDocument>` |  |

### `EnterpriseTopazSidekickScheduledMeeting`

Details about scheduled meetings.

| Property | Type | Description |
|----------|------|-------------|
| `meetingLocation` | `string` | The meeting location. |
| `meetingTime` | `EnterpriseTopazSidekickTimeSlot` | The meeting time slot. |
| `meetingTitle` | `string` | The meeting title. |

### `EnterpriseTopazSidekickShareMeetingDocsCardProto`

Share meeting docs card proto.

| Property | Type | Description |
|----------|------|-------------|
| `document` | `array<EnterpriseTopazSidekickCommonDocument>` | Documents to share for the given meeting. |
| `event` | `EnterpriseTopazSidekickAgendaEntry` | Event. |

### `EnterpriseTopazSidekickTimeSlot`

Slot of time.

| Property | Type | Description |
|----------|------|-------------|
| `endTimeDay` | `string` | Day end time at the user's timezone. |
| `endTimeHourAndMinute` | `string` | Hour and minute of the end time at the user's timezone. |
| `endTimeInMillis` | `string` | End time in milliseconds. |
| `startTimeDay` | `string` | Day start time at user's timezone. |
| `startTimeHourAndMinute` | `string` | Hour and minute of the start time at the user's timezone. |
| `startTimeInMillis` | `string` | Start time in milliseconds. |

### `EnumOperatorOptions`

Used to provide a search operator for enum properties. This is optional. Search operators let users restrict the query to specific fields relevant to the type of item being searched. For example, if you provide no operator for a *priority* enum property with possible values *p0* and *p1*, a query that contains the term *p0* returns items that have *p0* as the value of the *priority* property, as well as any items that contain the string *p0* in other fields. If you provide an operator name for the enum, such as *priority*, then search users can use that operator to refine results to only items that have *p0* as this property's value, with the query *priority:p0*.

| Property | Type | Description |
|----------|------|-------------|
| `operatorName` | `string` | Indicates the operator name required in the query in order to isolate the enum property. For exam... |

### `EnumPropertyOptions`

The options for enum properties, which allow you to define a restricted set of strings to match user queries, set rankings for those string values, and define an operator name to be paired with those strings so that users can narrow results to only items with a specific value. For example, for items in a request tracking system with priority information, you could define *p0* as an allowable enum value and tie this enum to the operator name *priority* so that search users could add *priority:p0* to their query to restrict the set of results to only those items indexed with the value *p0*.

| Property | Type | Description |
|----------|------|-------------|
| `operatorOptions` | `EnumOperatorOptions` | If set, describes how the enum should be used as a search operator. |
| `orderedRanking` | `string` | Used to specify the ordered ranking for the enumeration that determines how the integer values pr... |
| `possibleValues` | `array<EnumValuePair>` | The list of possible values for the enumeration property. All EnumValuePairs must provide a strin... |

### `EnumValuePair`

The enumeration value pair defines two things: a required string value and an optional integer value. The string value defines the necessary query term required to retrieve that item, such as *p0* for a priority item. The integer value determines the ranking of that string value relative to other enumerated values for the same property. For example, you might associate *p0* with *0* and define another enum pair such as *p1* and *1*. You must use the integer value in combination with ordered ranking to set the ranking of a given value relative to other enumerated values for the same property name. Here, a ranking order of DESCENDING for *priority* properties results in a ranking boost for items indexed with a value of *p0* compared to items indexed with a value of *p1*. Without a specified ranking order, the integer value has no effect on item ranking.

| Property | Type | Description |
|----------|------|-------------|
| `integerValue` | `integer` | The integer value of the EnumValuePair which must be non-negative. Optional. |
| `stringValue` | `string` | The string value of the EnumValuePair. The maximum length is 32 characters. |

### `EnumValues`

List of enum values.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<string>` | The maximum allowable length for string values is 32 characters. |

### `ErrorInfo`

Error information about the response.

| Property | Type | Description |
|----------|------|-------------|
| `errorMessages` | `array<ErrorMessage>` |  |

### `ErrorMessage`

Error message per source response.

| Property | Type | Description |
|----------|------|-------------|
| `errorMessage` | `string` |  |
| `source` | `Source` |  |

### `FacetBucket`

A bucket in a facet is the basic unit of operation. A bucket can comprise either a single value OR a contiguous range of values, depending on the type of the field bucketed. FacetBucket is currently used only for returning the response object.

| Property | Type | Description |
|----------|------|-------------|
| `count` | `integer` | Number of results that match the bucket value. Counts are only returned for searches when count a... |
| `filter` | `Filter` | Filter to be passed in the search request if the corresponding bucket is selected. |
| `percentage` | `integer` | Percent of results that match the bucket value. The returned value is between (0-100], and is rou... |
| `value` | `Value` |  |

### `FacetOptions`

Specifies operators to return facet results for. There will be one FacetResult for every source_name/object_type/operator_name combination.

| Property | Type | Description |
|----------|------|-------------|
| `integerFacetingOptions` | `IntegerFacetingOptions` | If set, describes integer faceting options for the given integer property. The corresponding inte... |
| `numFacetBuckets` | `integer` | Maximum number of facet buckets that should be returned for this facet. Defaults to 10. Maximum v... |
| `objectType` | `string` | If object_type is set, only those objects of that type will be used to compute facets. If empty, ... |
| `operatorName` | `string` | The name of the operator chosen for faceting. @see cloudsearch.SchemaPropertyOptions |
| `sourceName` | `string` | Source name to facet on. Format: datasources/{source_id} If empty, all data sources will be used. |

### `FacetResult`

Source specific facet response

| Property | Type | Description |
|----------|------|-------------|
| `buckets` | `array<FacetBucket>` | FacetBuckets for values in response containing at least a single result with the corresponding fi... |
| `objectType` | `string` | Object type for which facet results are returned. Can be empty. |
| `operatorName` | `string` | The name of the operator chosen for faceting. @see cloudsearch.SchemaPropertyOptions |
| `sourceName` | `string` | Source name for which facet results are returned. Will not be empty. |

### `FieldViolation`

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | The description of the error. |
| `field` | `string` | Path of field with violation. |

### `Filter`

A generic way of expressing filters in a query, which supports two approaches: **1. Setting a ValueFilter.** The name must match an operator_name defined in the schema for your data source. **2. Setting a CompositeFilter.** The filters are evaluated using the logical operator. The top-level operators can only be either an AND or a NOT. AND can appear only at the top-most level. OR can appear only under a top-level AND.

| Property | Type | Description |
|----------|------|-------------|
| `compositeFilter` | `CompositeFilter` |  |
| `valueFilter` | `ValueFilter` |  |

### `FilterOptions`

Filter options to be applied on query.

| Property | Type | Description |
|----------|------|-------------|
| `filter` | `Filter` | Generic filter to restrict the search, such as `lang:en`, `site:xyz`. |
| `objectType` | `string` | If object_type is set, only objects of that type are returned. This should correspond to the name... |

### `FreshnessOptions`

Indicates which freshness property to use when adjusting search ranking for an item. Fresher, more recent dates indicate higher quality. Use the freshness option property that best works with your data. For fileshare documents, last modified time is most relevant. For calendar event data, the time when the event occurs is a more relevant freshness indicator. In this way, calendar events that occur closer to the time of the search query are considered higher quality and ranked accordingly.

| Property | Type | Description |
|----------|------|-------------|
| `freshnessDuration` | `string` | The duration after which an object should be considered stale. The default value is 180 days (in ... |
| `freshnessProperty` | `string` | This property indicates the freshness level of the object in the index. If set, this property mus... |

### `GSuitePrincipal`

| Property | Type | Description |
|----------|------|-------------|
| `gsuiteDomain` | `boolean` | This principal represents all users of the Google Workspace domain of the customer. |
| `gsuiteGroupEmail` | `string` | This principal references a Google Workspace group name. |
| `gsuiteUserEmail` | `string` | This principal references a Google Workspace user account. |

### `GetCustomerIndexStatsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `averageIndexedItemCount` | `string` | Average item count for the given date range for which billing is done. |
| `stats` | `array<CustomerIndexStats>` | Summary of indexed item counts, one for each day in the requested range. |

### `GetCustomerQueryStatsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `stats` | `array<CustomerQueryStats>` |  |
| `totalQueryCount` | `string` | Total successful query count (status code 200) for the given date range. |

### `GetCustomerSearchApplicationStatsResponse`

Response format for search application stats for a customer.

| Property | Type | Description |
|----------|------|-------------|
| `averageSearchApplicationCount` | `string` | Average search application count for the given date range. |
| `stats` | `array<CustomerSearchApplicationStats>` | Search application stats by date. |

### `GetCustomerSessionStatsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `stats` | `array<CustomerSessionStats>` |  |

### `GetCustomerUserStatsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `stats` | `array<CustomerUserStats>` |  |

### `GetDataSourceIndexStatsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `averageIndexedItemCount` | `string` | Average item count for the given date range for which billing is done. |
| `stats` | `array<DataSourceIndexStats>` | Summary of indexed item counts, one for each day in the requested range. |

### `GetSearchApplicationQueryStatsResponse`

Response format for getting query stats for a search application between given dates.

| Property | Type | Description |
|----------|------|-------------|
| `stats` | `array<SearchApplicationQueryStats>` | Query stats per date for a search application. |
| `totalQueryCount` | `string` | Total successful query count (status code 200) for the given date range. |

### `GetSearchApplicationSessionStatsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `stats` | `array<SearchApplicationSessionStats>` |  |

### `GetSearchApplicationUserStatsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `stats` | `array<SearchApplicationUserStats>` |  |

### `HtmlOperatorOptions`

Used to provide a search operator for html properties. This is optional. Search operators let users restrict the query to specific fields relevant to the type of item being searched.

| Property | Type | Description |
|----------|------|-------------|
| `operatorName` | `string` | Indicates the operator name required in the query in order to isolate the html property. For exam... |

### `HtmlPropertyOptions`

The options for html properties.

| Property | Type | Description |
|----------|------|-------------|
| `operatorOptions` | `HtmlOperatorOptions` | If set, describes how the property should be used as a search operator. |
| `retrievalImportance` | `RetrievalImportance` | Indicates the search quality importance of the tokens within the field when used for retrieval. C... |

### `HtmlValues`

List of html values.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<string>` | The maximum allowable length for html values is 2048 characters. |

### `IndexItemOptions`

| Property | Type | Description |
|----------|------|-------------|
| `allowUnknownGsuitePrincipals` | `boolean` | Specifies if the index request should allow Google Workspace principals that do not exist or are ... |

### `IndexItemRequest`

| Property | Type | Description |
|----------|------|-------------|
| `connectorName` | `string` | The name of connector making this call. Format: datasources/{source_id}/connectors/{ID} |
| `debugOptions` | `DebugOptions` | Common debug options. |
| `indexItemOptions` | `IndexItemOptions` |  |
| `item` | `Item` | The name of the item. Format: datasources/{source_id}/items/{item_id} |
| `mode` | `string` | Required. The RequestMode for this request. |

### `InitializeCustomerRequest`

Request message for `InitializeCustomer` method.

### `IntegerFacetingOptions`

Used to specify integer faceting options.

| Property | Type | Description |
|----------|------|-------------|
| `integerBuckets` | `array<string>` | Buckets for given integer values should be in strictly ascending order. For example, if values su... |

### `IntegerOperatorOptions`

Used to provide a search operator for integer properties. This is optional. Search operators let users restrict the query to specific fields relevant to the type of item being searched.

| Property | Type | Description |
|----------|------|-------------|
| `greaterThanOperatorName` | `string` | Indicates the operator name required in the query in order to isolate the integer property using ... |
| `lessThanOperatorName` | `string` | Indicates the operator name required in the query in order to isolate the integer property using ... |
| `operatorName` | `string` | Indicates the operator name required in the query in order to isolate the integer property. For e... |

### `IntegerPropertyOptions`

The options for integer properties.

| Property | Type | Description |
|----------|------|-------------|
| `integerFacetingOptions` | `IntegerFacetingOptions` | If set, describes integer faceting options for the given integer property. The corresponding inte... |
| `maximumValue` | `string` | The maximum value of the property. The minimum and maximum values for the property are used to ra... |
| `minimumValue` | `string` | The minimum value of the property. The minimum and maximum values for the property are used to ra... |
| `operatorOptions` | `IntegerOperatorOptions` | If set, describes how the integer should be used as a search operator. |
| `orderedRanking` | `string` | Used to specify the ordered ranking for the integer. Can only be used if isRepeatable is false. |

### `IntegerValues`

List of integer values.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<string>` |  |

### `Interaction`

Represents an interaction between a user and an item.

| Property | Type | Description |
|----------|------|-------------|
| `interactionTime` | `string` | The time when the user acted on the item. If multiple actions of the same type exist for a single... |
| `principal` | `Principal` | The user that acted on the item. |
| `type` | `string` |  |

### `Item`

Represents a single object that is an item in the search index, such as a file, folder, or a database record.

| Property | Type | Description |
|----------|------|-------------|
| `acl` | `ItemAcl` | Access control list for this item. |
| `content` | `ItemContent` | Item content to be indexed and made text searchable. |
| `itemType` | `string` | The type for this item. |
| `metadata` | `ItemMetadata` | The metadata information. |
| `name` | `string` | The name of the Item. Format: datasources/{source_id}/items/{item_id} This is a required field. T... |
| `payload` | `string` | Additional state connector can store for this item. The maximum length is 10000 bytes. |
| `queue` | `string` | Queue this item belongs to. The maximum length is 100 characters. |
| `status` | `ItemStatus` | Status of the item. Output only field. |
| `structuredData` | `ItemStructuredData` | The structured data for the item that should conform to a registered object definition in the sch... |
| `version` | `string` | Required. The indexing system stores the version from the datasource as a byte string and compare... |

### `ItemAcl`

Access control list information for the item. For more information see [Map ACLs](https://developers.google.com/workspace/cloud-search/docs/guides/acls).

| Property | Type | Description |
|----------|------|-------------|
| `aclInheritanceType` | `string` | Sets the type of access rules to apply when an item inherits its ACL from a parent. This should a... |
| `deniedReaders` | `array<Principal>` | List of principals who are explicitly denied access to the item in search results. While principa... |
| `inheritAclFrom` | `string` | The name of the item to inherit the Access Permission List (ACL) from. Note: ACL inheritance *onl... |
| `owners` | `array<Principal>` | Optional. List of owners for the item. This field has no bearing on document access permissions. ... |
| `readers` | `array<Principal>` | List of principals who are allowed to see the item in search results. Optional if inheriting perm... |

### `ItemContent`

Content of an item to be indexed and surfaced by Cloud Search. Only UTF-8 encoded strings are allowed as inlineContent. If the content is uploaded and not binary, it must be UTF-8 encoded.

| Property | Type | Description |
|----------|------|-------------|
| `contentDataRef` | `UploadItemRef` | Upload reference ID of a previously uploaded content via write method. |
| `contentFormat` | `string` |  |
| `hash` | `string` | Hashing info calculated and provided by the API client for content. Can be used with the items.pu... |
| `inlineContent` | `string` | Content that is supplied inlined within the update method. The maximum length is 102400 bytes (10... |

### `ItemCountByStatus`

| Property | Type | Description |
|----------|------|-------------|
| `count` | `string` | Number of items matching the status code. |
| `indexedItemsCount` | `string` | Number of items matching the status code for which billing is done. This excludes virtual contain... |
| `statusCode` | `string` | Status of the items. |

### `ItemMetadata`

Available metadata fields for the item.

| Property | Type | Description |
|----------|------|-------------|
| `containerName` | `string` | The name of the container for this item. Deletion of the container item leads to automatic deleti... |
| `contentLanguage` | `string` | The BCP-47 language code for the item, such as "en-US" or "sr-Latn". For more information, see ht... |
| `contextAttributes` | `array<ContextAttribute>` | A set of named attributes associated with the item. This can be used for influencing the ranking ... |
| `createTime` | `string` | The time when the item was created in the source repository. |
| `hash` | `string` | Hashing value provided by the API caller. This can be used with the items.push method to calculat... |
| `interactions` | `array<Interaction>` | A list of interactions for the item. Interactions are used to improve Search quality, but are not... |
| `keywords` | `array<string>` | Additional keywords or phrases that should match the item. Used internally for user generated con... |
| `mimeType` | `string` | The original mime-type of ItemContent.content in the source repository. The maximum length is 256... |
| `objectType` | `string` | The type of the item. This should correspond to the name of an object definition in the schema re... |
| `searchQualityMetadata` | `SearchQualityMetadata` | Additional search quality metadata of the item |
| `sourceRepositoryUrl` | `string` | Link to the source repository serving the data. Seach results apply this link to the title. White... |
| `title` | `string` | The title of the item. If given, this will be the displayed title of the Search result. The maxim... |
| `updateTime` | `string` | The time when the item was last modified in the source repository. |

### `ItemStatus`

This contains item's status and any errors.

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | Status code. |
| `processingErrors` | `array<ProcessingError>` | Error details in case the item is in ERROR state. |
| `repositoryErrors` | `array<RepositoryError>` | Repository error reported by connector. |

### `ItemStructuredData`

Available structured data fields for the item.

| Property | Type | Description |
|----------|------|-------------|
| `hash` | `string` | Hashing value provided by the API caller. This can be used with the items.push method to calculat... |
| `object` | `StructuredDataObject` | The structured data object that should conform to a registered object definition in the schema fo... |

### `ListDataSourceResponse`

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |
| `sources` | `array<DataSource>` |  |

### `ListItemNamesForUnmappedIdentityResponse`

| Property | Type | Description |
|----------|------|-------------|
| `itemNames` | `array<string>` |  |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |

### `ListItemsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<Item>` |  |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |

### `ListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<Operation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `ListQuerySourcesResponse`

List sources response.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` |  |
| `sources` | `array<QuerySource>` |  |

### `ListSearchApplicationsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |
| `searchApplications` | `array<SearchApplication>` |  |

### `ListUnmappedIdentitiesResponse`

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |
| `unmappedIdentities` | `array<UnmappedIdentity>` |  |

### `MapInfo`

Geo information used for rendering a map that shows the user's work location.

| Property | Type | Description |
|----------|------|-------------|
| `lat` | `number` | Latitude in degrees |
| `locationUrl` | `SafeUrlProto` | URL to a view of a map centered on the user's work location in Campus Maps (for google.com) or Go... |
| `long` | `number` | Longitude in degrees |
| `mapTile` | `array<MapTile>` | MapTiles for the area around a user's work location |
| `zoom` | `integer` | The zoom level of the map. A constant zoom value of 18 is used for now to match the zoom of the m... |

### `MapTile`

Information used to render a map tile image in the proper location on a map.

| Property | Type | Description |
|----------|------|-------------|
| `imageUrl` | `SafeUrlProto` | URL to an image file containing an office layout of the user's location for their organization, i... |
| `tileX` | `number` | Map tile x coordinate |
| `tileY` | `number` | Map tile y coordinate |

### `MatchRange`

Matched range of a snippet [start, end).

| Property | Type | Description |
|----------|------|-------------|
| `end` | `integer` | End of the match in the snippet. |
| `start` | `integer` | Starting position of the match in the snippet. |

### `Media`

Media resource.

| Property | Type | Description |
|----------|------|-------------|
| `resourceName` | `string` | Name of the media resource. |

### `Metadata`

Metadata of a matched search result.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | The creation time for this document or object in the search result. |
| `displayOptions` | `ResultDisplayMetadata` | Options that specify how to display a structured data search result. |
| `fields` | `array<NamedProperty>` | Indexed fields in structured data, returned as a generic named property. |
| `mimeType` | `string` | Mime type of the search result. |
| `objectType` | `string` | Object type of the search result. |
| `owner` | `Person` | Owner (usually creator) of the document or object of the search result. |
| `source` | `Source` | The named source for the result, such as Gmail. |
| `thumbnailUrl` | `string` | The thumbnail URL of the result. |
| `updateTime` | `string` | The last modified date for the object in the search result. If not set in the item, the value ret... |

### `Metaline`

A metaline is a list of properties that are displayed along with the search result to provide context.

| Property | Type | Description |
|----------|------|-------------|
| `properties` | `array<DisplayedProperty>` | The list of displayed properties for the metaline. The maximum number of properties is 5. |

### `Name`

A person's name.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The read-only display name formatted according to the locale specified by the viewer's account or... |

### `NamedProperty`

A typed name-value pair for structured data. The type of the value should be the same as the registered type for the `name` property in the object definition of `objectType`.

| Property | Type | Description |
|----------|------|-------------|
| `booleanValue` | `boolean` |  |
| `dateValues` | `DateValues` |  |
| `doubleValues` | `DoubleValues` |  |
| `enumValues` | `EnumValues` |  |
| `htmlValues` | `HtmlValues` |  |
| `integerValues` | `IntegerValues` |  |
| `name` | `string` | The name of the property. This name should correspond to the name of the property that was regist... |
| `objectValues` | `ObjectValues` |  |
| `textValues` | `TextValues` |  |
| `timestampValues` | `TimestampValues` |  |

### `ObjectDefinition`

The definition for an object within a data source.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name for the object, which then defines its type. Item indexing requests should set the objec... |
| `options` | `ObjectOptions` | The optional object-specific options. |
| `propertyDefinitions` | `array<PropertyDefinition>` | The property definitions for the object. The maximum number of elements is 1000. |

### `ObjectDisplayOptions`

The display options for an object.

| Property | Type | Description |
|----------|------|-------------|
| `metalines` | `array<Metaline>` | Defines the properties that are displayed in the metalines of the search results. The property va... |
| `objectDisplayLabel` | `string` | The user friendly label to display in the search result to indicate the type of the item. This is... |

### `ObjectOptions`

The options for an object.

| Property | Type | Description |
|----------|------|-------------|
| `displayOptions` | `ObjectDisplayOptions` | The options that determine how the object is displayed in the Cloud Search results page. |
| `freshnessOptions` | `FreshnessOptions` | The freshness options for an object. |
| `suggestionFilteringOperators` | `array<string>` | Operators that can be used to filter suggestions. For Suggest API, only operators mentioned here ... |

### `ObjectPropertyOptions`

The options for object properties.

| Property | Type | Description |
|----------|------|-------------|
| `subobjectProperties` | `array<PropertyDefinition>` | The properties of the sub-object. These properties represent a nested object. For example, if thi... |

### `ObjectValues`

List of object values.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<StructuredDataObject>` |  |

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `PeoplePromotionCard`

| Property | Type | Description |
|----------|------|-------------|
| `people` | `array<PersonCore>` |  |

### `PeopleSuggestion`

This field contains information about the person being suggested.

| Property | Type | Description |
|----------|------|-------------|
| `person` | `Person` | Suggested person. All fields of the person object might not be populated. |

### `Person`

Object to represent a person.

| Property | Type | Description |
|----------|------|-------------|
| `emailAddresses` | `array<EmailAddress>` | The person's email addresses |
| `name` | `string` | The resource name of the person to provide information about. See [`People.get`](https://develope... |
| `obfuscatedId` | `string` | Obfuscated ID of a person. |
| `personNames` | `array<Name>` | The person's name |
| `phoneNumbers` | `array<PhoneNumber>` | The person's phone numbers |
| `photos` | `array<Photo>` | A person's read-only photo. A picture shown next to the person's name to help others recognize th... |

### `PersonCore`

Information for rendering a person. NEXT ID: 37

| Property | Type | Description |
|----------|------|-------------|
| `addressMeAs` | `string` | Instructions for how to address this person (e.g. custom pronouns). For google.com this is a set ... |
| `adminTo` | `array<PersonCore>` | People the profile owner is an admin to. Note that not all fields of these PersonCores will be se... |
| `admins` | `array<PersonCore>` | The profile owner's admins in no particular order. Note that not all fields of these PersonCores ... |
| `availabilityStatus` | `string` |  |
| `birthday` | `Date` | Person birthday. |
| `calendarUrl` | `SafeUrlProto` | The URL to open the profile owner's primary calendar. |
| `chatUrl` | `SafeUrlProto` | The URL to start a chat conversation with the profile owner. For google.com this is a Hangouts URL. |
| `costCenter` | `string` | Person's cost center as a string, e.g. "926: Googler Apps". |
| `department` | `string` | The person's Organization department, e.g. "People Operations". For google.com this is usually ca... |
| `directReports` | `array<PersonCore>` | A subset of the profile owner's direct reports. The number of entities here may be less than tota... |
| `dottedLineManagers` | `array<PersonCore>` | The profile owner's direct dotted line managers in no particular order. Note that not all fields ... |
| `dottedLineReports` | `array<PersonCore>` | A subset of the profile owner's dotted-line reports. The number of entities here may be less than... |
| `emails` | `array<string>` | E-mail addresses of the person. The primary or preferred email should be first. |
| `employeeId` | `string` | Person's employee number (external ID of type "organization") For google.com this is the badge nu... |
| `fingerprint` | `string` | A fingerprint used by PAPI to reliably determine if a resource has changed Externally it is used ... |
| `ftePermille` | `string` | Full-time equivalent (in ‰) (e.g. 800 for a person who's working 80%). |
| `geoLocation` | `MapInfo` |  |
| `gmailUrl` | `string` |  |
| `jobTitle` | `string` | Profile owner's job title (e.g. "Software Engineer"). For google.com this is the Workday preferre... |
| `keywordTypes` | `array<string>` | List of keys to use from the map 'keywords'. |
| `keywords` | `object` | Custom keywords the domain admin has added. |
| `links` | `array<EnterpriseTopazFrontendTeamsLink>` | Custom links the profile owner has added. |
| `location` | `string` | Detailed desk location within the company. For google.com this is the desk location code (e.g. "D... |
| `managers` | `array<PersonCore>` | The profile owner's management chain from top to bottom, where managers[0] is the CEO, manager[N-... |
| `mission` | `string` | Custom mission statement the profile owner has added. |
| `name` | `string` | Human-readable Unicode display name. |
| `officeLocation` | `string` | Office/building identifier within the company. For google.com this is the office code (e.g. "DE-M... |
| `personId` | `string` | The person's obfuscated Gaia ID. |
| `phoneNumbers` | `array<EnterpriseTopazFrontendTeamsPersonCorePhoneNumber>` |  |
| `photoUrl` | `SafeUrlProto` | Person photo. |
| `postalAddress` | `string` | Postal address of office/building. |
| `totalDirectReportsCount` | `integer` | Total count of the profile owner's direct reports. |
| `totalDlrCount` | `integer` | Total count of the profile owner's dotted-line reports. |
| `totalFteCount` | `string` | The sum of all profile owner's reports and their own full-time-equivalents in ‰ (e.g. 1800 if one... |
| `username` | `string` | External ID of type "login_id" for the profile. For google.com this is the username/LDAP. |
| `waldoComeBackTime` | `string` |  |

### `PhoneNumber`

A person's Phone Number

| Property | Type | Description |
|----------|------|-------------|
| `phoneNumber` | `string` | The phone number of the person. |
| `type` | `string` |  |

### `Photo`

A person's photo.

| Property | Type | Description |
|----------|------|-------------|
| `url` | `string` | The URL of the photo. |

### `PollItemsRequest`

| Property | Type | Description |
|----------|------|-------------|
| `connectorName` | `string` | The name of connector making this call. Format: datasources/{source_id}/connectors/{ID} |
| `debugOptions` | `DebugOptions` | Common debug options. |
| `limit` | `integer` | Maximum number of items to return. The maximum value is 100 and the default value is 20. |
| `queue` | `string` | Queue name to fetch items from. If unspecified, PollItems will fetch from 'default' queue. The ma... |
| `statusCodes` | `array<string>` | Limit the items polled to the ones with these statuses. |

### `PollItemsResponse`

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<Item>` | Set of items from the queue available for connector to process. These items have the following su... |

### `Principal`

Reference to a user, group, or domain.

| Property | Type | Description |
|----------|------|-------------|
| `groupResourceName` | `string` | This principal is a group identified using an external identity. The name field must specify the ... |
| `gsuitePrincipal` | `GSuitePrincipal` | This principal is a Google Workspace user, group or domain. |
| `userResourceName` | `string` | This principal is a user identified using an external identity. The name field must specify the u... |

### `ProcessingError`

| Property | Type | Description |
|----------|------|-------------|
| `code` | `string` | Error code indicating the nature of the error. |
| `errorMessage` | `string` | The description of the error. |
| `fieldViolations` | `array<FieldViolation>` | In case the item fields are invalid, this field contains the details about the validation errors. |

### `PropertyDefinition`

The definition of a property within an object.

| Property | Type | Description |
|----------|------|-------------|
| `booleanPropertyOptions` | `BooleanPropertyOptions` |  |
| `datePropertyOptions` | `DatePropertyOptions` |  |
| `displayOptions` | `PropertyDisplayOptions` | The options that determine how the property is displayed in the Cloud Search results page if it's... |
| `doublePropertyOptions` | `DoublePropertyOptions` |  |
| `enumPropertyOptions` | `EnumPropertyOptions` |  |
| `htmlPropertyOptions` | `HtmlPropertyOptions` |  |
| `integerPropertyOptions` | `IntegerPropertyOptions` |  |
| `isFacetable` | `boolean` | Indicates that the property can be used for generating facets. Cannot be true for properties whos... |
| `isRepeatable` | `boolean` | Indicates that multiple values are allowed for the property. For example, a document only has one... |
| `isReturnable` | `boolean` | Indicates that the property identifies data that should be returned in search results via the Que... |
| `isSortable` | `boolean` | Indicates that the property can be used for sorting. Cannot be true for properties that are repea... |
| `isSuggestable` | `boolean` | Indicates that the property can be used for generating query suggestions. |
| `isWildcardSearchable` | `boolean` | Indicates that users can perform wildcard search for this property. Only supported for Text prope... |
| `name` | `string` | The name of the property. Item indexing requests sent to the Indexing API should set the property... |
| `objectPropertyOptions` | `ObjectPropertyOptions` |  |
| `textPropertyOptions` | `TextPropertyOptions` |  |
| `timestampPropertyOptions` | `TimestampPropertyOptions` |  |

### `PropertyDisplayOptions`

The display options for a property.

| Property | Type | Description |
|----------|------|-------------|
| `displayLabel` | `string` | The user friendly label for the property that is used if the property is specified to be displaye... |

### `PushItem`

Represents an item to be pushed to the indexing queue.

| Property | Type | Description |
|----------|------|-------------|
| `contentHash` | `string` | Content hash of the item according to the repository. If specified, this is used to determine how... |
| `metadataHash` | `string` | The metadata hash of the item according to the repository. If specified, this is used to determin... |
| `payload` | `string` | Provides additional document state information for the connector, such as an alternate repository... |
| `queue` | `string` | Queue to which this item belongs. The `default` queue is chosen if this field is not specified. T... |
| `repositoryError` | `RepositoryError` | Populate this field to store Connector or repository error details. This information is displayed... |
| `structuredDataHash` | `string` | Structured data hash of the item according to the repository. If specified, this is used to deter... |
| `type` | `string` | The type of the push operation that defines the push behavior. |

### `PushItemRequest`

| Property | Type | Description |
|----------|------|-------------|
| `connectorName` | `string` | The name of connector making this call. Format: datasources/{source_id}/connectors/{ID} |
| `debugOptions` | `DebugOptions` | Common debug options. |
| `item` | `PushItem` | Item to push onto the queue. |

### `QueryActivity`

Details about a user's query activity.

| Property | Type | Description |
|----------|------|-------------|
| `query` | `string` | User input query to be logged/removed. |

### `QueryCountByStatus`

| Property | Type | Description |
|----------|------|-------------|
| `count` | `string` |  |
| `statusCode` | `integer` | This represents the http status code. |

### `QueryInterpretation`

| Property | Type | Description |
|----------|------|-------------|
| `interpretationType` | `string` |  |
| `interpretedQuery` | `string` | The interpretation of the query used in search. For example, queries with natural language intent... |
| `interpretedQueryActualResultCount` | `integer` | The actual number of results returned by the interpreted query. |
| `interpretedQueryEstimatedResultCount` | `string` | The estimated number of results returned by the interpreted query. |
| `reason` | `string` | The reason for interpretation of the query. This field will not be UNSPECIFIED if the interpretat... |

### `QueryInterpretationConfig`

Default options to interpret user query.

| Property | Type | Description |
|----------|------|-------------|
| `forceDisableSupplementalResults` | `boolean` | Set this flag to disable supplemental results retrieval, setting a flag here will not retrieve su... |
| `forceVerbatimMode` | `boolean` | Enable this flag to turn off all internal optimizations like natural language (NL) interpretation... |

### `QueryInterpretationOptions`

Options to interpret user query.

| Property | Type | Description |
|----------|------|-------------|
| `disableNlInterpretation` | `boolean` | Flag to disable natural language (NL) interpretation of queries. Default is false, Set to true to... |
| `disableSupplementalResults` | `boolean` | Use this flag to disable supplemental results for a query. Supplemental results setting chosen at... |
| `enableVerbatimMode` | `boolean` | Enable this flag to turn off all internal optimizations like natural language (NL) interpretation... |

### `QueryItem`

Information relevant only to a query entry.

| Property | Type | Description |
|----------|------|-------------|
| `isSynthetic` | `boolean` | True if the text was generated by means other than a previous user search. |

### `QueryOperator`

The definition of a operator that can be used in a Search/Suggest request.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Display name of the operator |
| `enumValues` | `array<string>` | Potential list of values for the opeatror field. This field is only filled when we can safely enu... |
| `greaterThanOperatorName` | `string` | Indicates the operator name that can be used to isolate the property using the greater-than opera... |
| `isFacetable` | `boolean` | Can this operator be used to get facets. |
| `isRepeatable` | `boolean` | Indicates if multiple values can be set for this property. |
| `isReturnable` | `boolean` | Will the property associated with this facet be returned as part of search results. |
| `isSortable` | `boolean` | Can this operator be used to sort results. |
| `isSuggestable` | `boolean` | Can get suggestions for this field. |
| `lessThanOperatorName` | `string` | Indicates the operator name that can be used to isolate the property using the less-than operator. |
| `objectType` | `string` | The name of the object corresponding to the operator. This field is only filled for schema-specif... |
| `operatorName` | `string` | The name of the operator. |
| `type` | `string` | The type of the operator. |

### `QuerySource`

List of sources that the user can search using the query API.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Display name of the data source. |
| `operators` | `array<QueryOperator>` | List of all operators applicable for this source. |
| `shortName` | `string` | A short name or alias for the source. This value can be used with the 'source' operator. |
| `source` | `Source` | The name of the source |

### `QuerySuggestion`

This field does not contain anything as of now and is just used as an indicator that the suggest result was a phrase completion.

### `RemoveActivityRequest`

Remove Logged Activity Request.

| Property | Type | Description |
|----------|------|-------------|
| `requestOptions` | `RequestOptions` | Request options, such as the search application and clientId. |
| `userActivity` | `UserActivity` | User Activity containing the data to be deleted. |

### `RemoveActivityResponse`

Remove Logged Activity Response. will return an empty response for now. Will be revisited in later phases.

### `RepositoryError`

Errors when the connector is communicating to the source repository.

| Property | Type | Description |
|----------|------|-------------|
| `errorMessage` | `string` | Message that describes the error. The maximum allowable length of the message is 8192 characters. |
| `httpStatusCode` | `integer` | Error codes. Matches the definition of HTTP status codes. |
| `type` | `string` | The type of error. |

### `RequestOptions`

Shared request options for all RPC methods.

| Property | Type | Description |
|----------|------|-------------|
| `debugOptions` | `DebugOptions` | Debug options of the request |
| `languageCode` | `string` | The BCP-47 language code, such as "en-US" or "sr-Latn". For more information, see http://www.unic... |
| `searchApplicationId` | `string` | The ID generated when you create a search application using the [admin console](https://support.g... |
| `timeZone` | `string` | Current user's time zone id, such as "America/Los_Angeles" or "Australia/Sydney". These IDs are d... |

### `ResetSearchApplicationRequest`

| Property | Type | Description |
|----------|------|-------------|
| `debugOptions` | `DebugOptions` | Common debug options. |

### `ResponseDebugInfo`

Debugging information about the response.

| Property | Type | Description |
|----------|------|-------------|
| `formattedDebugInfo` | `string` | General debug info formatted for display. |

### `RestrictItem`

Information relevant only to a restrict entry. NextId: 12

| Property | Type | Description |
|----------|------|-------------|
| `driveFollowUpRestrict` | `DriveFollowUpRestrict` |  |
| `driveLocationRestrict` | `DriveLocationRestrict` |  |
| `driveMimeTypeRestrict` | `DriveMimeTypeRestrict` | Drive Types. |
| `driveTimeSpanRestrict` | `DriveTimeSpanRestrict` |  |
| `searchOperator` | `string` | The search restrict (e.g. "after:2017-09-11 before:2017-09-12"). |

### `ResultCounts`

Result count information

| Property | Type | Description |
|----------|------|-------------|
| `sourceResultCounts` | `array<SourceResultCount>` | Result count information for each source with results. |

### `ResultDebugInfo`

Debugging information about the result.

| Property | Type | Description |
|----------|------|-------------|
| `formattedDebugInfo` | `string` | General debug info formatted for display. |

### `ResultDisplayField`

Display Fields for Search Results

| Property | Type | Description |
|----------|------|-------------|
| `label` | `string` | The display label for the property. |
| `operatorName` | `string` | The operator name of the property. |
| `property` | `NamedProperty` | The name value pair for the property. |

### `ResultDisplayLine`

The collection of fields that make up a displayed line

| Property | Type | Description |
|----------|------|-------------|
| `fields` | `array<ResultDisplayField>` |  |

### `ResultDisplayMetadata`

| Property | Type | Description |
|----------|------|-------------|
| `metalines` | `array<ResultDisplayLine>` | The metalines content to be displayed with the result. |
| `objectTypeLabel` | `string` | The display label for the object. |

### `RetrievalImportance`

| Property | Type | Description |
|----------|------|-------------|
| `importance` | `string` | Indicates the ranking importance given to property when it is matched during retrieval. Once set,... |

### `SafeHtmlProto`

IMPORTANT: It is unsafe to accept this message from an untrusted source, since it's trivial for an attacker to forge serialized messages that don't fulfill the type's safety contract -- for example, it could contain attacker controlled script. A system which receives a SafeHtmlProto implicitly trusts the producer of the SafeHtmlProto. So, it's generally safe to return this message in RPC responses, but generally unsafe to accept it in RPC requests.

| Property | Type | Description |
|----------|------|-------------|
| `privateDoNotAccessOrElseSafeHtmlWrappedValue` | `string` | IMPORTANT: Never set or read this field, even from tests, it is private. See documentation at the... |

### `SafeUrlProto`

Message containing a string that is safe to use in URL contexts in DOM APIs and HTML documents, where the URL context does not refer to a resource that loads code.

| Property | Type | Description |
|----------|------|-------------|
| `privateDoNotAccessOrElseSafeUrlWrappedValue` | `string` | IMPORTANT: Never set or read this field, even from tests, it is private. See documentation at the... |

### `Schema`

The schema definition for a data source.

| Property | Type | Description |
|----------|------|-------------|
| `objectDefinitions` | `array<ObjectDefinition>` | The list of top-level objects for the data source. The maximum number of elements is 10. |
| `operationIds` | `array<string>` | IDs of the Long Running Operations (LROs) currently running for this schema. After modifying the ... |

### `ScoringConfig`

Scoring configurations for a source while processing a Search or Suggest request.

| Property | Type | Description |
|----------|------|-------------|
| `disableFreshness` | `boolean` | Whether to use freshness as a ranking signal. By default, freshness is used as a ranking signal. ... |
| `disablePersonalization` | `boolean` | Whether to personalize the results. By default, personal signals will be used to boost results. |

### `SearchApplication`

SearchApplication

| Property | Type | Description |
|----------|------|-------------|
| `dataSourceRestrictions` | `array<DataSourceRestriction>` | Retrictions applied to the configurations. The maximum number of elements is 10. |
| `defaultFacetOptions` | `array<FacetOptions>` | The default fields for returning facet results. The sources specified here also have been include... |
| `defaultSortOptions` | `SortOptions` | The default options for sorting the search results |
| `displayName` | `string` | Display name of the Search Application. The maximum length is 300 characters. |
| `enableAuditLog` | `boolean` | Indicates whether audit logging is on/off for requests made for the search application in query A... |
| `name` | `string` | The name of the Search Application. Format: searchapplications/{application_id}. |
| `operationIds` | `array<string>` | Output only. IDs of the Long Running Operations (LROs) currently running for this schema. Output ... |
| `queryInterpretationConfig` | `QueryInterpretationConfig` | The default options for query interpretation |
| `returnResultThumbnailUrls` | `boolean` | With each result we should return the URI for its thumbnail (when applicable) |
| `scoringConfig` | `ScoringConfig` | Configuration for ranking results. |
| `sourceConfig` | `array<SourceConfig>` | Configuration for a sources specified in data_source_restrictions. |

### `SearchApplicationQueryStats`

Search application level query stats per date

| Property | Type | Description |
|----------|------|-------------|
| `date` | `Date` | The date for which query stats were calculated. Stats calculated on the next day close to midnigh... |
| `queryCountByStatus` | `array<QueryCountByStatus>` |  |

### `SearchApplicationSessionStats`

| Property | Type | Description |
|----------|------|-------------|
| `date` | `Date` | The date for which session stats were calculated. Stats are calculated on the following day, clos... |
| `searchSessionsCount` | `string` | The count of search sessions on the day |

### `SearchApplicationUserStats`

| Property | Type | Description |
|----------|------|-------------|
| `date` | `Date` | The date for which session stats were calculated. Stats calculated on the next day close to midni... |
| `oneDayActiveUsersCount` | `string` | The count of unique active users in the past one day |
| `sevenDaysActiveUsersCount` | `string` | The count of unique active users in the past seven days |
| `thirtyDaysActiveUsersCount` | `string` | The count of unique active users in the past thirty days |

### `SearchItemsByViewUrlRequest`

| Property | Type | Description |
|----------|------|-------------|
| `debugOptions` | `DebugOptions` | Common debug options. |
| `pageToken` | `string` | The next_page_token value returned from a previous request, if any. |
| `viewUrl` | `string` | Specify the full view URL to find the corresponding item. The maximum length is 2048 characters. |

### `SearchItemsByViewUrlResponse`

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<Item>` |  |
| `nextPageToken` | `string` | Token to retrieve the next page of results, or empty if there are no more results in the list. |

### `SearchQualityMetadata`

Additional search quality metadata of the item.

| Property | Type | Description |
|----------|------|-------------|
| `quality` | `number` | An indication of the quality of the item, used to influence search quality. Value should be betwe... |

### `SearchRequest`

The search API request. NEXT ID: 24

| Property | Type | Description |
|----------|------|-------------|
| `contextAttributes` | `array<ContextAttribute>` | Context attributes for the request which will be used to adjust ranking of search results. The ma... |
| `dataSourceRestrictions` | `array<DataSourceRestriction>` | The sources to use for querying. If not specified, all data sources from the current search appli... |
| `facetOptions` | `array<FacetOptions>` |  |
| `pageSize` | `integer` | Maximum number of search results to return in one page. Valid values are between 1 and 100, inclu... |
| `query` | `string` | The raw query string. See supported search operators in the [Narrow your search with operators](h... |
| `queryInterpretationOptions` | `QueryInterpretationOptions` | Options to interpret the user query. |
| `requestOptions` | `RequestOptions` | Request options, such as the search application and user timezone. |
| `sortOptions` | `SortOptions` | The options for sorting the search results |
| `start` | `integer` | Starting index of the results. |

### `SearchResponse`

The search API response. NEXT ID: 19

| Property | Type | Description |
|----------|------|-------------|
| `debugInfo` | `ResponseDebugInfo` | Debugging information about the response. |
| `errorInfo` | `ErrorInfo` | Error information about the response. |
| `facetResults` | `array<FacetResult>` | Repeated facet results. |
| `hasMoreResults` | `boolean` | Whether there are more search results matching the query. |
| `queryInterpretation` | `QueryInterpretation` | Query interpretation result for user query. Empty if query interpretation is disabled. |
| `resultCountEstimate` | `string` | The estimated result count for this query. |
| `resultCountExact` | `string` | The exact result count for this query. |
| `resultCounts` | `ResultCounts` | Expanded result count information. |
| `results` | `array<SearchResult>` | Results from a search query. |
| `spellResults` | `array<SpellResult>` | Suggested spelling for the query. |
| `structuredResults` | `array<StructuredResult>` | Structured results for the user query. These results are not counted against the page_size. |

### `SearchResult`

Results containing indexed information for a document. Next ID: 16

| Property | Type | Description |
|----------|------|-------------|
| `clusteredResults` | `array<SearchResult>` | If source is clustered, provide list of clustered results. There will only be one level of cluste... |
| `debugInfo` | `ResultDebugInfo` | Debugging information about this search result. |
| `metadata` | `Metadata` | Metadata of the search result. |
| `snippet` | `Snippet` | The concatenation of all snippets (summaries) available for this result. |
| `title` | `string` | Title of the search result. |
| `url` | `string` | The URL of the search result. The URL contains a Google redirect to the actual item. This URL is ... |

### `Snippet`

Snippet of the search result, which summarizes the content of the resulting page.

| Property | Type | Description |
|----------|------|-------------|
| `matchRanges` | `array<MatchRange>` | The matched ranges in the snippet. |
| `snippet` | `string` | The snippet of the document. May contain escaped HTML character that should be unescaped prior to... |

### `SortOptions`

| Property | Type | Description |
|----------|------|-------------|
| `operatorName` | `string` | The name of the operator corresponding to the field to sort on. The corresponding property must b... |
| `sortOrder` | `string` | Ascending is the default sort order |

### `Source`

Defines sources for the suggest/search APIs.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Source name for content indexed by the Indexing API. |
| `predefinedSource` | `string` | Predefined content source for Google Apps. |

### `SourceConfig`

Configurations for a source while processing a Search or Suggest request.

| Property | Type | Description |
|----------|------|-------------|
| `crowdingConfig` | `SourceCrowdingConfig` | The crowding configuration for the source. |
| `scoringConfig` | `SourceScoringConfig` | The scoring configuration for the source. |
| `source` | `Source` | The source for which this configuration is to be used. |

### `SourceCrowdingConfig`

Set search results crowding limits. Crowding is a situation in which multiple results from the same source or host "crowd out" other results, diminishing the quality of search for users. To foster better search quality and source diversity in search results, you can set a condition to reduce repetitive results by source.

| Property | Type | Description |
|----------|------|-------------|
| `numResults` | `integer` | Maximum number of results allowed from a datasource in a result page as long as results from othe... |
| `numSuggestions` | `integer` | Maximum number of suggestions allowed from a source. No limits will be set on results if this val... |

### `SourceResultCount`

Per source result count information.

| Property | Type | Description |
|----------|------|-------------|
| `hasMoreResults` | `boolean` | Whether there are more search results for this source. |
| `resultCountEstimate` | `string` | The estimated result count for this source. |
| `resultCountExact` | `string` | The exact result count for this source. |
| `source` | `Source` | The source the result count information is associated with. |

### `SourceScoringConfig`

Set the scoring configuration. This allows modifying the ranking of results for a source.

| Property | Type | Description |
|----------|------|-------------|
| `sourceImportance` | `string` | Importance of the source. |

### `SpellResult`

| Property | Type | Description |
|----------|------|-------------|
| `suggestedQuery` | `string` | The suggested spelling of the query. |
| `suggestedQueryHtml` | `SafeHtmlProto` | The sanitized HTML representing the spell corrected query that can be used in the UI. This usuall... |
| `suggestionType` | `string` | Suggestion triggered for the current query. |

### `StartUploadItemRequest`

Start upload file request.

| Property | Type | Description |
|----------|------|-------------|
| `connectorName` | `string` | The name of connector making this call. Format: datasources/{source_id}/connectors/{ID} |
| `debugOptions` | `DebugOptions` | Common debug options. |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `StructuredDataObject`

A structured data object consisting of named properties.

| Property | Type | Description |
|----------|------|-------------|
| `properties` | `array<NamedProperty>` | The properties for the object. The maximum number of elements is 1000. |

### `StructuredResult`

Structured results that are returned as part of search request.

| Property | Type | Description |
|----------|------|-------------|
| `person` | `Person` | Representation of a person |

### `SuggestRequest`

Request of suggest API.

| Property | Type | Description |
|----------|------|-------------|
| `dataSourceRestrictions` | `array<DataSourceRestriction>` | The sources to use for suggestions. If not specified, the data sources are taken from the current... |
| `query` | `string` | Partial query for which autocomplete suggestions will be shown. For example, if the query is "sea... |
| `requestOptions` | `RequestOptions` | Request options, such as the search application and user timezone. |

### `SuggestResponse`

Response of the suggest API.

| Property | Type | Description |
|----------|------|-------------|
| `suggestResults` | `array<SuggestResult>` | List of suggestions. |

### `SuggestResult`

One suggestion result.

| Property | Type | Description |
|----------|------|-------------|
| `peopleSuggestion` | `PeopleSuggestion` | This is present when the suggestion indicates a person. It contains more information about the pe... |
| `querySuggestion` | `QuerySuggestion` | This field will be present if the suggested query is a word/phrase completion. |
| `source` | `Source` | The source of the suggestion. |
| `suggestedQuery` | `string` | The suggested query that will be used for search, when the user clicks on the suggestion |

### `TextOperatorOptions`

Used to provide a search operator for text properties. This is optional. Search operators let users restrict the query to specific fields relevant to the type of item being searched.

| Property | Type | Description |
|----------|------|-------------|
| `exactMatchWithOperator` | `boolean` | If true, the text value is tokenized as one atomic value in operator searches and facet matches. ... |
| `operatorName` | `string` | Indicates the operator name required in the query in order to isolate the text property. For exam... |

### `TextPropertyOptions`

The options for text properties.

| Property | Type | Description |
|----------|------|-------------|
| `operatorOptions` | `TextOperatorOptions` | If set, describes how the property should be used as a search operator. |
| `retrievalImportance` | `RetrievalImportance` | Indicates the search quality importance of the tokens within the field when used for retrieval. |

### `TextValues`

List of text values.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<string>` | The maximum allowable length for text values is 2048 characters. |

### `ThirdPartyGenericCard`

| Property | Type | Description |
|----------|------|-------------|
| `cardId` | `string` | Unique identifier for the card. |
| `category` | `string` | Category that the card belongs to. |
| `content` | `Content` | [Required] Card content. |
| `context` | `Context` | [Required] Context where the card should be triggered. |
| `isDismissible` | `boolean` | Whether the card can be dismissed. |
| `priority` | `integer` | Priority of the card, where 0 is the highest priority. |

### `TimestampOperatorOptions`

Used to provide a search operator for timestamp properties. This is optional. Search operators let users restrict the query to specific fields relevant to the type of item being searched.

| Property | Type | Description |
|----------|------|-------------|
| `greaterThanOperatorName` | `string` | Indicates the operator name required in the query in order to isolate the timestamp property usin... |
| `lessThanOperatorName` | `string` | Indicates the operator name required in the query in order to isolate the timestamp property usin... |
| `operatorName` | `string` | Indicates the operator name required in the query in order to isolate the timestamp property. For... |

### `TimestampPropertyOptions`

The options for timestamp properties.

| Property | Type | Description |
|----------|------|-------------|
| `operatorOptions` | `TimestampOperatorOptions` | If set, describes how the timestamp should be used as a search operator. |

### `TimestampValues`

List of timestamp values.

| Property | Type | Description |
|----------|------|-------------|
| `values` | `array<string>` |  |

### `UnmappedIdentity`

| Property | Type | Description |
|----------|------|-------------|
| `externalIdentity` | `Principal` | The resource name for an external user. |
| `resolutionStatusCode` | `string` | The resolution status for the external identity. |

### `UnreserveItemsRequest`

| Property | Type | Description |
|----------|------|-------------|
| `connectorName` | `string` | The name of connector making this call. Format: datasources/{source_id}/connectors/{ID} |
| `debugOptions` | `DebugOptions` | Common debug options. |
| `queue` | `string` | The name of a queue to unreserve items from. |

### `UpdateDataSourceRequest`

| Property | Type | Description |
|----------|------|-------------|
| `debugOptions` | `DebugOptions` | Common debug options. |
| `source` | `DataSource` |  |
| `updateMask` | `string` | Only applies to [`settings.datasources.patch`](https://developers.google.com/workspace/cloud-sear... |

### `UpdateSchemaRequest`

| Property | Type | Description |
|----------|------|-------------|
| `debugOptions` | `DebugOptions` | Common debug options. |
| `schema` | `Schema` | The new schema for the source. |
| `validateOnly` | `boolean` | If true, the schema will be checked for validity, but will not be registered with the data source... |

### `UploadItemRef`

Represents an upload session reference. This reference is created via upload method. This reference is valid for 30 days after its creation. Updating of item content may refer to this uploaded content via contentDataRef.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name of the content reference. The maximum length is 2048 characters. |

### `UserActivity`

User's single or bulk query activity. This can be a logging query or deletion query.

| Property | Type | Description |
|----------|------|-------------|
| `queryActivity` | `QueryActivity` | Contains data which needs to be logged/removed. |

### `VPCSettings`

| Property | Type | Description |
|----------|------|-------------|
| `project` | `string` | The resource name of the GCP Project to be used for VPC SC policy check. VPC security settings on... |

### `Value`

Definition of a single value with generic type.

| Property | Type | Description |
|----------|------|-------------|
| `booleanValue` | `boolean` |  |
| `dateValue` | `Date` |  |
| `doubleValue` | `number` |  |
| `integerValue` | `string` |  |
| `stringValue` | `string` |  |
| `timestampValue` | `string` |  |

### `ValueFilter`

| Property | Type | Description |
|----------|------|-------------|
| `operatorName` | `string` | The `operator_name` applied to the query, such as *price_greater_than*. The filter can work again... |
| `value` | `Value` | The value to be compared with. |

